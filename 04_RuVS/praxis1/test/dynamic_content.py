#!/usr/bin/env python3

import contextlib
import random
import re
import subprocess
from http.client import HTTPConnection


class KillOnExit(subprocess.Popen):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    def __exit__(self, *args):
        self.kill()
        super().__exit__(*args)


NullContext = contextlib.suppress


EXIT_SUCCESS = 0
EXIT_FAILURE = 1


def main():
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('--port', default=4711, type=int)
    exec_group = parser.add_mutually_exclusive_group(required=True)
    exec_group.add_argument('executable', nargs='?', help="The server to run")
    exec_group.add_argument('--no-spawn', dest='spawn', default=True, action='store_false', help="Do not spawn the server")
    args = parser.parse_args()

    with KillOnExit([args.executable, str(args.port)]) if args.spawn else NullContext():
        conn = HTTPConnection('localhost', args.port, timeout=2)
        conn.connect()

        path = f'/dynamic/{random.randbytes(8).hex()}'
        content = random.randbytes(32).hex().encode()

        # Should not exist yet
        conn.request('GET', path)
        if conn.getresponse().status != 404:
            return EXIT_FAILURE

        # Create should succeed
        conn.request('PUT', path, content)
        if conn.getresponse().status not in {200, 202, 204}:
            return EXIT_FAILURE

        # Content should exist and match
        conn.request('GET', path)
        response = conn.getresponse()
        if response.status != 200 and response.read() != content:
            return EXIT_FAILURE

        # Delete should succeed
        conn.request('DELETE', path, content)
        if conn.getresponse().status not in {200, 202, 204}:
            return EXIT_FAILURE

        # Should not exist anymore
        conn.request('GET', path)
        if conn.getresponse().status != 404:
            return EXIT_FAILURE

        for path in ['/static/other', '/static/anything', '/static/else']:
        conn.request('GET', path)
        if conn.getresponse().status != 404:
            return EXIT_FAILURE

        return EXIT_SUCCESS


if __name__ == '__main__':
    import sys
    sys.exit(main())
