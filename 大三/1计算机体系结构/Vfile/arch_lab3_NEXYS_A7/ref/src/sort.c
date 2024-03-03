#include "trap.h"
#include "put.h"

#define N 20

int a[N] = {2, 12, 14, 6, 13, 15, 16, 10, 0, 18, 11, 19, 9, 1, 7, 5, 4, 3, 8, 17};
int b[N] = {7, 3, 0, 13, 2, 6, 5, 9, 10, 4, 18, 11, 14, 16, 1, 17, 19, 15, 8, 12};

void bubble_sort(int a[]) {
	int i, j, t;
	for(j = 0; j < N; j ++) {
		for(i = 0; i < N - 1 - j; i ++) {
			if(a[i] > a[i + 1]) {
				t = a[i];
				a[i] = a[i + 1];
				a[i + 1] = t;
			}
		}
	}
}

void select_sort(int a[]) {
	int i, j, k, t;
	for(i = 0; i < N - 1; i ++) {
		k = i;
		for(j = i + 1; j < N; j ++) {
			if(a[j] > a[k]) {
				k = j;
			}
		}

		t = a[i];
		a[i] = a[k];
		a[k] = t;
	}
}

void display(int a[]) {
    int i;
    for (i = 0; i < N; i++) {
        // print("%d ", a[i]);
		puti(a[i]);
		puts(" ");
    }
	puts("\n");
    // print("\n");
}

int main() {
    display(a);
	bubble_sort(a);
    display(a);

	int i;
	for(i = 0; i < N; i++) {
		check(a[i] == i);
	}

	check(i == N);

    display(b);
	select_sort(b);
    display(b);

	for(i = 0; i < N; i++) {
		check(b[i] == N - i - 1);
	}

	check(i == N);

	return 0;
}
