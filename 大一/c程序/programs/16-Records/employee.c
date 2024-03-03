/*
 * File: employee.c
 * ----------------
 * This program tests the functions defined for records of type
 * employeeT.
 */

#include <stdio.h>
#include "genlib.h"
#include "strlib.h"
#include "simpio.h"

/*
 * Constants
 * ---------
 * MaxEmployees -- Maximum number of employees
 */

#define MaxEmployees 100

/*
 * Type: employeeT
 * ---------------
 * This structure defines the fields for an employee.
 */

typedef struct {
    string name;
    string title;
    string ssnum;
    double salary;
    int withholding;
} employeeT;

/*
 * Global variables
 * ----------------
 * staff       -- Array of employees
 * nEmployees  -- Number of employees
 * manager     -- Used to produce a figure for the code
 */

static employeeT staff[MaxEmployees];
static int nEmployees;

static employeeT manager = {
    "Ebenezer Scrooge", "Partner", "271-82-8183", 250.00, 1
};

/* Private function declarations */

static void InitEmployeeTable(void);
static void ListEmployees(employeeT staff[], int nEmployees);
static double AverageSalary(employeeT staff[], int nEmployees);

/* Main program */

main()
{
    InitEmployeeTable();
    ListEmployees(staff, nEmployees);
}

static void InitEmployeeTable(void)
{
    employeeT emp;

    emp.name = "Ebenezer Scrooge";
    emp.title = "Partner";
    emp.ssnum = "271-82-8183";
    emp.salary = 250.00;
    emp.withholding = 1;
    staff[0] = emp;
    emp.name = "Bob Cratchit";
    emp.title = "Clerk";
    emp.ssnum = "314-15-9265";
    emp.salary = 15.00;
    emp.withholding = 7;
    staff[1] = emp;
    nEmployees = 2;
}

static void ListEmployees(employeeT staff[], int nEmployees)
{
    int i;

    for (i = 0; i < nEmployees; i++) {
        printf("%s (%s)\n", staff[i].name, staff[i].title);
    }
}

static double AverageSalary(employeeT staff[], int nEmployees)
{
    double total;
    int i;

    total = 0;
    for (i = 0; i < nEmployees; i++) {
        total += staff[i].salary;
    }
    return (total / nEmployees);
}
