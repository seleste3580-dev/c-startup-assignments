#include <stdio.h>
// Function prototypes for area calculations
    double circle_area(double diameter);
    double square_area(double length);
    double rectangle_area(double length, double width);
    double triangle_area(double base, double height);
// Main function to demonstrate area calculations
    int main() {
        double diameter = 10.0;
        double length = 5.0;
        double width = 3.0;
        double base = 4.0;
        double height = 6.0;

        printf("Area of circle with diameter %.2f: %.2f\n", diameter, circle_area(diameter));
        printf("Area of square with length %.2f: %.2f\n", length, square_area(length));
        printf("Area of rectangle with length %.2f and width %.2f: %.2f\n", length, width, rectangle_area(length, width));
        printf("Area of triangle with base %.2f and height %.2f: %.2f\n", base, height, triangle_area(base, height));

        return 0;
    }
