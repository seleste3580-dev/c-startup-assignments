#include <math.h>
// Function prototypes for area calculations
    double circle_area(double diameter);
    double square_area(double length);
    double rectangle_area(double length, double width);
    double triangle_area(double base, double height);
// Function definitions for area calculations
    double circle_area(double diameter) {
       double radius = diameter / 2.0;
       return M_PI * radius * radius; 
    }

    double square_area(double length) {
        return length * length;
    }

    double rectangle_area(double length, double width) {
        return length * width;
    }

    double triangle_area(double base, double height) {
        return 0.5 * base * height;
    }