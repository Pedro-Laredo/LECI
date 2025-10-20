#include <stdio.h>

void DisplayArray(double* a, size_t n) {
    
    if (a == NULL || n == 0) {
        printf("Invalid array or size.\n");
        return;
    }
    
    printf("Array = [");

    // Loop through the array elements
    for (size_t i = 0; i < n; i++) {
        printf(" %.2f", a[i]);  // Print each element with 2 decimal places

        // Add a comma and space after every element except the last one
        if (i < n - 1) {
            printf(",");
        }
    }

    printf(" ]\n");
}

int main() {
    double arr[3] = {1.0, 2.0, 3.0};
    size_t size = sizeof(arr) / sizeof(arr[0]);

    DisplayArray(arr, size);

    return 0;
}
