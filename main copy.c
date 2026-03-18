#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* ===== ENUM ===== */
typedef enum {
    UNDERGRADUATE,
    POSTGRADUATE
} ProgramType;

/* ===== UNION ===== */
typedef union {
    float cgpa;
    char researchTopic[100];
} AcademicInfo;

/* ===== STRUCT ===== */
typedef struct {
    char name[50];
    int age;
    ProgramType program;
    AcademicInfo academicInfo;
} Student;

/* ===== MAIN FUNCTION ===== */
int main() {
    int n;

    printf("Enter the number of students: ");
    scanf("%d", &n);

    /* Allocate memory */
    Student *students = (Student *)malloc(n * sizeof(Student));

    /* Check if malloc worked */
    if (students == NULL) {
        printf("Memory allocation failed!\n");
        return 1;
    }

    /* ===== INPUT ===== */
    for (int i = 0; i < n; i++) {
        printf("\nStudent %d:\n", i + 1);

        printf("Enter name: ");
        scanf("%s", students[i].name);

        printf("Enter age: ");
        scanf("%d", &students[i].age);

        int prog;
        printf("Enter program (0 = Undergraduate, 1 = Postgraduate): ");
        scanf("%d", &prog);

        students[i].program = (ProgramType)prog;

        if (students[i].program == UNDERGRADUATE) {
            printf("Enter CGPA: ");
            scanf("%f", &students[i].academicInfo.cgpa);
        } else {
            printf("Enter Research Topic: ");
            scanf("%s", students[i].academicInfo.researchTopic);
        }
    }

    /* ===== OUTPUT ===== */
    printf("\n--- Student Details ---\n");

    for (int i = 0; i < n; i++) {
        printf("\nStudent %d:\n", i + 1);
        printf("Name: %s\n", students[i].name);
        printf("Age: %d\n", students[i].age);

        if (students[i].program == UNDERGRADUATE) {
            printf("Program: Undergraduate\n");
            printf("CGPA: %.2f\n", students[i].academicInfo.cgpa);
        } else {
            printf("Program: Postgraduate\n");
            printf("Research Topic: %s\n", students[i].academicInfo.researchTopic);
        }
    }

    /* Free memory */
    free(students);

    return 0;
}