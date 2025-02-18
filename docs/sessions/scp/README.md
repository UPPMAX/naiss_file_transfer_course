---
tags:
  - session
  - lesson
  - SCP
  - scp
---

# File transfer using `scp`

!!!- info "Learning outcomes"

    - Practice using the documentation of your favorite HPC cluster
    - Can transfer files using `scp`

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation
      of their favorite HPC cluster
    - Learners have transferred files using `scp`

    Lesson plan:

    Prior questions:

    - How can one do a file transfer from the terminal?
    - Can you name some programs that can do file transfer from the terminal?
    - Who has heard of `scp`?
    - Who has already used `scp`?

## Overview other terminal transfer tools

Other than ``rsync`` we have the more simple tools ``scp`` and ``sftp``.

- ``scp`` has the similar arguments as for the linux copy function ``scp``.
- ``sftp`` is more versatile with more file management capabilities.

- Both are considered secure.

**SCP is an abbreviation for ``Secure Copy Protocol``**

!!! note "Pros"

    - Simple
    - Secure
    - Use cases
        - simple copy of files between local and remote host or between two remote hosts.

!!! warning "When not to use"

    - When looking to do more than a basic file transfer, SCP falls short.
    - SCP is unable to create or list directories or delete files.
    - a file with the same name in the same directory is transferred, wil be overwritten.
    - transfers that are interrupted  you have to restart the entire transfer.

## Procedure

- [``scp`` in UPPMAX documentation](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_scp/)

- In the terminal, copy files using `scp` to connect to Rackham:

```bash
scp [from] [to]
```

Where `[from]` is the file(s) you want to copy, and `[to]` is the destination.
This is quite a shorthand notation!

This is how you copy a file from your local computer to Rackham:

```bash
scp [local_filename] [username]@rackham.uppmax.uu.se:/home/[username]
```

where `[local_filename]` is the path to a local filename,
and `[username]` is your UPPMAX username, for example:

```bash
scp my_file.txt sven@rackham.uppmax.uu.se:/home/sven
```

To copy a file from Rackham to your local computer, do the command above in reverse order:

```bash
scp [username]@rackham.uppmax.uu.se:/home/[username]/[remote_filename] [local_folder]
```

where `[remote_filename]` is the path to a remote filename,
`[username]` is your UPPMAX username,
and `[local_folder]` is your local folder, for example:

```bash
scp sven@rackham.uppmax.uu.se:/home/sven/my_remote_file.txt /home/sven
```

If asked, give your center's password.
You can get rid of this prompt if you have setup SSH keys

### Many files

- zip
- tar

## Cheat sheet

- ``scp``

## Exercises

???- note "Teacher"

     prepare examples with one file and many files

???+ question "Exercise 1: Upload"

???+ question "Exercise 2: Download"

???+ question "Exercise 3: Directory"

???+ question "Exercise 4: Compressed directory"
