#include <stdio.h>
int main() {
    char name[50];
    int year;
    char department[50];
    char course[50];
    printf("Enter your name: ");
    scanf("%s", name);
    printf("Enter your year: ");
    scanf("%d", &year);
    printf("Enter your department: ");
    scanf("%s", department);
    printf("Enter your course: ");
    scanf("%s", course);
    printf("My name is %s\n in year %d\n in the department of %s\n currently enrolled in %s\n", name, year, department, course);
    return 0;
}