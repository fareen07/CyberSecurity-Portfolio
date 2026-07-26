# Project 3: Linux Log Analysis

## Objective

The objective of this project was to analyze a Linux log file using common command-line tools. The project demonstrates how a SOC Analyst can search, filter, and summarize log data to identify suspicious activity.

---

## Skills Practiced

- Log analysis
- Searching log files using `grep`
- Counting log entries using `wc`
- Extracting fields using `cut`
- Sorting data using `sort`
- Counting repeated entries using `uniq`
- Using Linux pipelines (`|`) to combine commands

---

## Commands Used

### View the log file

```bash
cat sample.log
```

### View the first few lines

```bash
head sample.log
```

### View the last few lines

```bash
tail sample.log
```

### Search for failed login attempts

```bash
grep "Failed" sample.log
```

### Count failed login attempts

```bash
grep "Failed" sample.log | wc -l
```

### Count successful logins

```bash
grep "Login successful" sample.log | wc -l
```

### Display usernames from failed logins

```bash
grep "Failed" sample.log | cut -d " " -f 7
```

### Sort usernames

```bash
grep "Failed" sample.log | cut -d " " -f 7 | sort
```

### Count failed login attempts per user

```bash
grep "Failed" sample.log | cut -d " " -f 7 | sort | uniq -c
```

---

## Findings

- The log contained **5 failed login attempts**.
- The log contained **3 successful login attempts**.
- The **admin** account experienced **3 failed login attempts**.
- The **root** account experienced **2 failed login attempts**.
- The **admin** account was the most targeted account in the log.

---

## What I Learned

Through this project I learned how to:

- Search log files efficiently using `grep`.
- Count matching log entries using `wc -l`.
- Extract specific information from logs using `cut`.
- Organize data using `sort`.
- Count duplicate values using `uniq -c`.
- Combine multiple Linux commands using the pipe (`|`) to perform log analysis.

## Key Takeaway

This project showed me how Linux command-line tools can be combined to quickly analyze log files. Instead of manually reading every log entry, I learned how to filter, extract, and summarize data using command pipelines, which is an essential skill for a SOC Analyst.
