# Learning - Shell Scripting & AWK Tutorial

A hands-on learning project focused on bash scripting, AWK text processing, and log file analysis. This repository contains practical scripts, sample data, and utilities for learning command-line data manipulation and system administration tasks.

## Project Overview

This project demonstrates fundamental Linux/Unix utilities and scripting techniques, with emphasis on:
- **Bash scripting** for automation and log analysis
- **AWK programming** for text and data processing
- **Log file analysis** and reporting
- **Data extraction and transformation**

## File Structure

### Scripts

- **[log-analyser.sh](log-analyser.sh)** - Bash script for analyzing log files
  - Summarizes log file statistics (total lines, error/warning/info/debug counts)
  - Extracts the last 5 ERROR entries
  - Removes DEBUG lines to create a clean log
  - Shows ERROR timestamps
  - Lists most frequent ERROR messages
  - **Usage**: `./log-analyser.sh <logfile>`

- **[print_salary.awk](print_salary.awk)** - AWK script for data extraction
  - Extracts employee names and their corresponding salaries
  - Simple AWK one-liner example for field processing

### Data Files

- **[awk.txt](awk.txt)** - Sample employee dataset
  - Contains: name, age, department, salary
  - 8 employee records for practice data processing
  - Use with AWK scripts for filtering and reporting

- **[tutorial.txt](tutorial.txt)** - Mixed sample data for learning
  - Log entries with timestamps and severity levels (ERROR, WARNING, INFO, DEBUG)
  - User account records (user ID, name, email, status)
  - Product inventory data (product ID, name, price, category, stock)
  - Realistic data for practicing grep, awk, and sed commands

- **[notes.txt](notes.txt)** - Learning reflections and notes
  - Personal observations on learning and project development
  - Thoughts on creative problem-solving and technical work

## Key Concepts & Techniques

### AWK Processing
- Field extraction using `$1, $2, $3, $4`
- Pattern-action programming model
- String manipulation and filtering

### Bash Scripting
- Input validation and error handling
- Text processing with grep, sed, awk
- Output formatting and redirection
- Command piping and chaining

### Log Analysis
- Counting occurrences with `grep -c`
- Extracting specific patterns
- Sorting and filtering data
- Removing unwanted records

## Quick Start

### Run the log analyzer:
```bash
./log-analyser.sh tutorial.txt
```

### Extract salaries with AWK:
```bash
awk -f print_salary.awk awk.txt
```

### Practice with sample data:
```bash
# Count specific log levels
grep "ERROR" tutorial.txt | wc -l

# Extract user information
grep "user" tutorial.txt

# Process products by category
awk -F',' '$4=="Electronics" {print $2, $3}' tutorial.txt
```

## Learning Goals

- Understand bash script structure and best practices
- Master AWK field and pattern processing
- Develop practical log analysis automation skills
- Practice text manipulation and data extraction
- Build reliable command-line utilities

## Notes

This is a learning project created to practice shell scripting, AWK, and data processing techniques. All files are designed to be beginner-friendly with realistic examples for everyday system administration tasks.
