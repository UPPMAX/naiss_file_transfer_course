---
tags:
  - session
  - lesson
  - SFTP
  - sftp
---

# File transfer using `sftp`

!!!- info "Learning outcomes"

    - Practice using the documentation of your favorite HPC cluster
    - Can transfer files using `sftp`

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation
      of their favorite HPC cluster
    - Learners have transferred files using `sftp`

    Lesson plan:

    Prior questions:

    - How can one do a file transfer from the terminal?
    - Can you name some programs that can do file transfer from the terminal?
    - Who has heard of `sftp`?
    - Who has already used `sftp`?

# Introduction

**SFTP is an abbreviation of 'SSH File Transfer Protocol', where 'SSH' is an abbreviation of 'Secure Shell protocol'**

!!! note "Pros"

    - Simple
    - Secure
    - Use cases
        - primarily to copy files between a local host and a remote host or between two remote hosts
    - When not to use

## Procedure

- [Page on UPPMAX documentation on ``sftp``](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_sftp)

### Example Rackham

In the terminal, run `sftp` to connect to Rackham by doing:

```bash
sftp [username]@rackham.uppmax.uu.se
```

where `[username]` is your UPPMAX username, for example:

```bash
sftp sven@rackham.uppmax.uu.se
```

If asked, give your center's password.
You can get rid of this prompt if you have setup SSH keys

Upload/download files to/from Rackham

In `sftp`, upload/download files to/from Rackham.

Basic `sftp` command can be found [here](https://github.com/UPPMAX/UPPMAX-documentation/blob/main/docs/software/sftp.md).

## Cheat sheet

Basic `sftp` command can be found [here](https://github.com/UPPMAX/UPPMAX-documentation/blob/main/docs/software/sftp.md).

## Exercises

???+ Exercise 1: Upload

???+ Exercise 2: Download
