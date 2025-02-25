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
    Alvis      |**FIX** None. Closest is [here](https://www.c3se.chalmers.se/documentation/for_users/filesystem/#copying-files-into-and-out-of-the-system). Use [this documentation](https://docs.uppmax.uu.se/naiss/alvis_file_transfer_using_filezilla/) instead
    Berzelius  |[here](https://www.nsc.liu.se/support/copying-data/)
    Bianca     |[here](https://docs.uppmax.uu.se/software/bianca_file_transfer_using_sftp/), [through transit](https://docs.uppmax.uu.se/cluster_guides/transfer_transit/#using-sftp)
    COSMOS     |**FIX** None. Closest is [here](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_winscp/). Use [this documentation](https://docs.uppmax.uu.se/naiss/cosmos_file_transfer_using_filezilla/) instead
    Dardel     |[here](https://support.pdc.kth.se/doc/support/?sub=data_management/file_transfer_scp/)
    Kebnekaise |**FIX** [here (Linux and Mac)](https://www.hpc2n.umu.se/documentation/guides/linux-connection) and [here (Windows)](https://www.hpc2n.umu.se/documentation/guides/windows-connection)
    LUMI       |**To do**
    Rackham    |[here](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_sftp)
    Tetralith  |[here](https://www.nsc.liu.se/support/copying-data/)
    Vera       |**FIX** None. Closest is [here](https://www.c3se.chalmers.se/documentation/for_users/filesystem/#copying-files-into-and-out-of-the-system).

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

## Cheat sheet

Basic `sftp` command can be found [here](https://github.com/UPPMAX/UPPMAX-documentation/blob/main/docs/software/sftp.md).

## Exercises

???+ question "Exercise 1: Upload"

???+ question "Exercise 2: Download"
