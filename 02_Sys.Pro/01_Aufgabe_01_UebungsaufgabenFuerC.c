#include <stdio.h>

void upgrade(int meinezahl) {
    meinezahl = 18;
}

int main() {
    int meinezahl = 5;
    upgrade(meinezahl);
    printf("%d\n", meinezahl);
}