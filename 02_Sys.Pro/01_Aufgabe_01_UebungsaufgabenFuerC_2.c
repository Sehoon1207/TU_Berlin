#include <stdio.h>
#include <stdlib.h>

void upgrade(int *meinezahl) {
    *meinezahl = 18;
}

int main() {
    int *meinezahl = malloc(sizeof(int));
    *meinezahl = 5;
    upgrade(meinezahl);
    printf("%d\n", *meinezahl);
}