/*
 * File: empdb.c
 * -------------
 * This program tests the functions defined for employees
 * collected into a database.
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
} *employeeT;

/*
 * Type: employeeDB
 * ----------------
 * This structure represents an entire database of employees.
 */

typedef struct {
    employeeT staff[MaxEmployees];
    int nEmployees;
} *employeeDB;

/* Private function declarations */


static employeeDB ReadEmployeeDatabase(void);
static employeeT ReadOneEmployee(void);
static void ListEmployees(employeeDB db);
static void GiveRaise(employeeDB db);
static double AverageSalary(employeeDB db);

/* Main program */

main()
{
    employeeDB db;

    db = ReadEmployeeDatabase();
    ListEmployees(db);
    printf("Average salary = %g\n", AverageSalary(db));
    GiveRaise(db);
    printf("Average after raises = %g\n", AverageSalary(db));
}

static employeeDB ReadEmployeeDatabase(void)
{
    employeeDB db;
    employeeT emp;
    int nEmployees;

    db = New(employeeDB);
    nEmployees = 0;
    printf("Enter employee data (use blank name to stop).\n");
    while ((emp = ReadOneEmployee()) != NULL) {
        db->staff[nEmployees] = emp;
        nEmployees++;
    }
    db->nEmployees = nEmployees;
    return (db);
}

/*
 * Function: ReadOneEmployee
 * Usage: emp = ReadOneEmployee();
 * -------------------------------
 * This function reads in the data for a single employee
 * and returns the structure pointer as a value of type
 * employee.  If the user types in a blank line as the
 * name, the function treats this as a "no more data"
 * indicator and returns the value NULL.
 */

static employeeT ReadOneEmployee(void)
{
    employeeT emp;
    string name;

    printf("Name: ");
    name = GetLine();
    if (StringLength(name) == 0) return (NULL);
    emp = New(employeeT);
    emp->name = name;
    printf("Title: ");
    emp->title = GetLine();
    printf("SSNum: ");
    emp->ssnum = GetLine();
    printf("Salary: ");
    emp->salary = GetReal();
    printf("Withholding: ");
    emp->withholding = GetInteger();
    return (emp);
}

static void ListEmployees(employeeDB db)
{
    int i;

    for (i = 0; i < db->nEmployees; i++) {
        printf("%s (%s)\n", db->staff[i]->name,
                            db->staff[i]->title);
    }
}

static void GiveRaise(employeeDB db)
{
    int i;

    for (i = 0; i < db->nEmployees; i++) {
        if (db->staff[i]->withholding >= 5) {
            db->staff[i]->salary *= 2;
        }
    }
}

static double AverageSalary(employeeDB db)
{
    double total;
    int i;

    total = 0;
    for (i = 0; i < db->nEmployees; i++) {
        total += db->staff[i]->salary;
    }
    return (total / db->nEmployees);
}
