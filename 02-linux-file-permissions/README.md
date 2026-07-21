# Project 2 - Linux File Permissions

## Objective

Learn how Linux controls access to files using permissions, ownership, users, and groups.

## Commands Used

- `ls -l`
- `ls -la`
- `chmod`
- `whoami`
- `id`
- `cat`
- `nano`
- `./script.sh`

## What I Learned

- Linux permissions are divided into owner, group, and others.
- `r` means read, `w` means write, and `x` means execute.
- Numeric permissions use `4` for read, `2` for write, and `1` for execute.
- `chmod 600` gives only the owner read and write access.
- `chmod 700` gives only the owner read, write, and execute access.
- The execute permission is required to run a script directly.
- `./script.sh` runs a script from the current directory.
- Groups help manage access for multiple users.
- File permissions support the Principle of Least Privilege.

## Files

- `secret.txt` - Used to practise restrictive permissions.
- `public.txt` - Used to compare permissions.
- `script.sh` - A basic executable Bash script.
- `screenshots/` - Contains evidence from the lab.

## Security Relevance

Incorrect permissions can expose sensitive data or allow unauthorised users to modify and execute files. Proper permissions reduce this risk by giving users only the access they require.
