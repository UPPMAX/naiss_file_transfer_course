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

## Introduction

**SFTP is an abbreviation of 'SSH File Transfer Protocol' and
 'SSH' is an abbreviation of 'Secure Shell protocol'.**

!!! note "Pros"

    - Secure
    - Use cases:
        - copying large or many files
        - asks if you want to overwrite target files
        - possible to resume file transfer after a broken connection.
        - handle bulk file transfers
        - modify directories
        - and encrypt or decrypt specific files
        
!!! warning "When not to use"

    - Rsync is better for "syncing"
    
## Procedure

- [`sftp` in UPPMAX documentation](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_sftp)

???- question "Where is that documentation?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Link to documentation
    -----------|------------
    Alvis      |**FIX?** None.
    Berzelius  |[here](https://www.nsc.liu.se/support/copying-data/)
    Bianca     |[here](https://docs.uppmax.uu.se/software/bianca_file_transfer_using_sftp/), [through transit](https://docs.uppmax.uu.se/cluster_guides/transfer_transit/#using-sftp)
    COSMOS     |[here](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_sftp/)
    Dardel     |The similar psftp is described [here](https://support.pdc.kth.se/doc/support/?sub=data_management/file_transfer_scp/)
    Kebnekaise |[Here](https://docs.hpc2n.umu.se/documentation/filesystems/#sftp)
    LUMI       |**To do**
    Rackham    |[here](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_sftp)
    Tetralith  |[here](https://www.nsc.liu.se/support/copying-data/)
    Vera       |**FIX?** None.

### Example
    
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

Basic `sftp` command can be found [here](https://github.com/UPPMAX/UPPMAX-documentation/blob/main/docs/software/sftp.md).

!!! tip "Cheat sheet in ftp session"

    - ?/help - List of all commands or explain a command, eg ? get

    Remote
    
    - put - Copy a file from the local computer to the remote host
    - cd - Change the active directory path on the remote host
    - dir/ls - List the contents of the current directory on the remote host
    - pwd - Show the present working directory path on the remote host
    - mkdir - Create a directory on the remote host
    - rename - Rename a file on the remote host
    - rm - Delete a file on the remote host
    - rmdir - Remove an empty directory on the remote host
    - exit/quit - Close the connection and leave SFTP

    Locally

    - get - opy a file from the remote host to the local computer
    - lcd - Change the active directory on the local system
    - lls - List the contents of the current directory on the local computer
    - lmkdir - Create a directory on the local computer
    - lpwd - Show the present working directory on the local computer

## Exercises

???+ question "Exercise 1: Upload"

???+ question "Exercise 2: Download"

## Misc

!!!- But what is ``wget`` and ``curl``?

    - These tools are used to download files from websites or ftp servers
    - ``wget`` saves downloaded contents to local files, like
        - ``wget ftp://ftp.sunet.se/mirror/archive/ftp.sunet.se/pub/pictures/space/*``
        - ``wget https://upload.wikimedia.org/wikipedia/commons/3/37/Grace_Hopper_and_UNIVAC.jpg -O grace_hopper.jpg``
        - typical usecases:
            - download data from a service
            - download a program or compressed source code
        - supports HTTP, HTTPS, and FTP
        - user-friendly for basic tasks
        - good for mirroring websites, downloading entire directories recursively for offline viewing or backups.
        - most popular from Unix-based systems, like Linux
    
    - ``curl`` outputs the content to the terminal by default.
        - add ``-O`` to download as file.
        - supports a wide range of protocols, such as HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP, etc
        - curl  is often preferred for scripting and automation due to its versatility
        - interacting with APIs, handling complex web requests
        - often available by default on Windows and MacOS.
