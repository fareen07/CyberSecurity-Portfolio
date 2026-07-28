# Project 5 – Bash Scripting & Automated Log Analyzer

## Overview

This project introduces Bash scripting and automation in Linux. The goal was to learn how to write executable shell scripts, use variables, collect user input, make decisions with conditional statements, automate repetitive tasks using loops, create reusable functions, and build a simple cybersecurity log analyzer.

The final project combines all of these concepts into a script that analyzes a Linux log file and generates a security report.

---

## Objectives

- Learn Bash scripting fundamentals.
- Create executable shell scripts.
- Use variables and command substitution.
- Accept user input.
- Make decisions using if, elif, and else statements.
- Repeat tasks using loops.
- Create reusable functions.
- Automate Linux log analysis.

---

## Skills Learned

- Writing Bash scripts
- Using the shebang (`#!/bin/bash`)
- Setting execute permissions with `chmod`
- Variables
- User input with `read`
- Output using `echo`
- Command substitution using `$(command)`
- Conditional statements
- Comparison operators
- File existence testing
- For loops
- While loops
- Functions
- Linux log analysis
- Basic security automation

---

## Bash Concepts Covered

### 1. Shebang

```bash
#!/bin/bash
```

The shebang tells Linux to execute the script using the Bash shell.

---

### 2. Variables

Example:

```bash
NAME="Fareen"
COUNTRY="United Kingdom"
```

Variables store information that can be reused throughout the script.

---

### 3. Displaying Output

```bash
echo "Hello World"
```

The `echo` command prints text or variables to the terminal.

---

### 4. Reading User Input

```bash
read NAME
```

The `read` command allows the user to enter information during script execution.

---

### 5. Command Substitution

Example:

```bash
USER=$(whoami)
DATE=$(date)
```

Command substitution runs a Linux command and stores its output inside a variable.

Commands used:

- `whoami`
- `date`
- `grep`
- `grep -c`

---

### 6. Conditional Statements

Example:

```bash
if [ "$FAILED" -eq 0 ]
then
    echo "No failed login attempts."
elif [ "$FAILED" -le 5 ]
then
    echo "Some failed login attempts."
else
    echo "Possible brute-force attack."
fi
```

Conditional statements allow the script to make decisions.

---

### 7. Comparison Operators

| Operator | Meaning |
|----------|---------|
| `-eq` | Equal to |
| `-ne` | Not equal |
| `-gt` | Greater than |
| `-lt` | Less than |
| `-ge` | Greater than or equal |
| `-le` | Less than or equal |

---

### 8. Logical Operators

AND

```bash
&&
```

OR

```bash
||
```

NOT

```bash
!
```

These operators combine or reverse conditions.

---

### 9. File Testing

Example:

```bash
if [ ! -f "$LOGFILE" ]
```

The script checks whether the log file exists before attempting to analyze it.

---

### 10. For Loops

Example:

```bash
for USER in admin root fareen
do
    echo "Checking account: $USER"
done
```

A for loop repeats commands for every item in a list.

---

### 11. While Loops

Example:

```bash
COUNT=1

while [ "$COUNT" -le 5 ]
do
    echo "Checking server $COUNT"
    COUNT=$((COUNT+1))
done
```

A while loop repeats commands while a condition remains true.

---

### 12. Functions

Example:

```bash
print_header() {
    echo "=========================="
    echo "Linux Log Analysis Report"
    echo "=========================="
}
```

Functions allow code to be written once and reused multiple times.

---

## Final Project – Automated Linux Log Analyzer

The final script performs the following tasks:

- Prints a report header.
- Verifies that the log file exists.
- Retrieves the current analyst username.
- Retrieves the current system date.
- Counts failed login attempts.
- Counts successful login attempts.
- Displays a formatted report.
- Determines the security status based on the number of failed logins.

Example output:

```

==================================
Linux Log Analysis Report
==================================

Analyst: fareen
Date: Wed Jul 29 ...

Log File: sample.log

Failed Logins: 5
Successful Logins: 3

Status:
Warning: Some failed login attempts detected.

```

---

## Commands Used

- chmod
- grep
- grep -c
- whoami
- date
- read
- echo
- exit
- if
- elif
- else
- for
- while
- functions

---

## Files Included

- first_script.sh
- variables.sh
- input.sh
- if_statements.sh
- failed_logins.sh
- for_loop.sh
- functions.sh
- log_analyzer.sh
- sample.log

---

## Challenges Faced

During this project I encountered several common Bash scripting issues, including:

- Incorrect variable syntax.
- Missing spaces inside conditional statements.
- File permission problems.
- Missing execute permissions.
- Understanding command substitution.
- Understanding loops and functions.
- Handling missing log files.
- Debugging Bash syntax errors.

Resolving these issues improved my understanding of Linux scripting and troubleshooting.

---

## What I Learned

This project helped me understand how Linux commands can be combined into automated scripts.

I learned how to:

- Write reusable Bash programs.
- Automate repetitive Linux tasks.
- Build decision-making scripts.
- Process Linux log files automatically.
- Improve script readability using functions.
- Validate files before processing.
- Produce structured security reports.

---

## Key Takeaway

Bash scripting is an essential skill for Linux system administration and cybersecurity. Automating repetitive tasks improves efficiency, reduces human error, and allows security analysts to process log files quickly. This project demonstrates the ability to combine Linux commands, scripting, and security concepts into a practical automation tool.
