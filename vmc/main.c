#include <stdio.h>
#include <stdlib.h>

// all possible 2 bit inputs
int two_input_combinations[4][2] = {
    {0,0},
    {0,1},
    {1,0},
    {1,1}
};
int num_two_inputs = 4;


void print_all_two_bit_inputs() {
    for (int i=0; i < num_two_inputs; i++) {
        printf("%d,%d\n", 
                two_input_combinations[i][0], 
                two_input_combinations[i][1]);
    }
}

// represents the NAND logic gate
int nand(int a, int b) {
    if ((a == 0) && (b == 0))
        return 1;
    return 0;
}

int main() {
    puts("Hello, World! ahahahha");
    print_all_two_bit_inputs();
    return EXIT_SUCCESS;
}
