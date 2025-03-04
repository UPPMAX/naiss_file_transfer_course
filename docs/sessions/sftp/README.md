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

- The difference from ``rsync`` and ``scp`` is that you login to a SFTP session
    - just like a log in to a server with SSH.
- You use the terminal to transfer the files.

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

???- question "Dardel uses ``psftp``, what is that?"

    - It is just a SFTP component of the client PuTTY.
    - Same commands as for SFTP.

## Procedure

- [`sftp` in UPPMAX documentation](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_sftp)

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

???- question "Where is that documentation?"

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
    
<!-- markdownlint-enable MD013 -->

### Example for Rackham

#### Connect to SFTP session

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

#### Upload/download files to/from Rackham

In `sftp` session, upload/download files to/from Rackham.

Basic `sftp` command can be found [here](https://github.com/UPPMAX/UPPMAX-documentation/blob/main/docs/software/sftp.md).

!!! tip "Cheat sheet in the SFTP session"

    - ``?``/``help`` - List of all commands or explain a command, eg ? get

    Remote
    
    - ``put`` - Copy a file from the local computer to the remote host
    - ``cd`` - Change the active directory path on the remote host
    - ``dir``/``ls`` - List the contents of the current directory on the remote host
    - ``pwd`` - Show the present working directory path on the remote host
    - ``mkdir`` - Create a directory on the remote host
    - ``rename`` - Rename a file on the remote host
    - ``rm`` - Delete a file on the remote host
    - ``rmdir`` - Remove an empty directory on the remote host
    - ``exit``/``quit`` - Close the connection and leave SFTP

    Locally

    - ``get`` - opy a file from the remote host to the local computer
    - ``lcd`` - Change the active directory on the local system
    - ``lls`` - List the contents of the current directory on the local computer
    - ``lmkdir`` - Create a directory on the local computer
    - ``lpwd`` - Show the present working directory on the local computer

!!! note "Transferring many files?"

    - As always, it is better to transfer few large files than many small files.
    - Therefore, make archive(s) and while doing that, compress as well, see [last section](../scp/README.md/#many-files).

## Exercises
<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->
Use the documentation of your HPC cluster.

- Search for how to transfer files to/from your HPC cluster using `scp`. Which URL is it described?
  Tip: not all HPC centers have documented this, so you *should* give up searching after a while.

???+ question "Exercise 1: Establish the sftp connection and find the relevant folders locally and remotely"

    Tips

    - Connect from you local terminal
    - Orient yourself remotely and locally with ``ls``, ``cd``,``pwd``,``lls`` etc...
    - Where are you remotely?
    - Go to the course folder where you have files
    - Where are you locally?
    - Go to your local folder used for the course
    
    ???- tip "Answer (Tetralith example)"

        Locally
      
        - Establish connection
        
        ```shell
        $ sftp sm_bcarl@tetralith.nsc.liu.se
        (sm_bcarl@tetralith.nsc.liu.se) Password:
        (sm_bcarl@tetralith.nsc.liu.se) Verification code:
        Connected to tetralith.nsc.liu.se.
        ```
        
        - Use ``pwd`` to find where you are remotely
        - Use ``cd`` to reach relevant remote folder
        - Use ``lpwd`` to find where you are locally
        - Use ``lcd`` to reach relevant local folder

        - Video for Tetralith
        
???+ question "Exercise 1: Upload"

    Tips

    - (If you want to create a file in local terminal: ``$ touch local_file``)
    - Send it to an existing folder (e.g. ``transfer``) on Tetralith
    - Check on server that it is there
    
    ???- tip "Answer (Tetralith example)"

        Locally
        
        - (If you want to create a file in local terminal: ``$ touch local_file``)
        - Send it to an existing folder (e.g. ``transfer``) on Tetralith: ``$ scp local_file [username]@tetralith.nsc.liu.se:~/transfer/``

        Check on server that it is there
        
        - ``$ ls ~/transfer``
        
        - Video for Tetralith
        
???+ question "Exercise 2: Download"

    Tips

    - (If you want to create a file in local terminal: ``$ touch local_file``)
    - Send it to an existing folder (e.g. ``transfer``) on Tetralith
    - Check on server that it is there
    
    ???- tip "Answer (Tetralith example)"

        Locally
        
        - (If you want to create a file in local terminal: ``$ touch local_file``)
        - Send it to an existing folder (e.g. ``transfer``) on Tetralith: ``$ scp local_file [username]@tetralith.nsc.liu.se:~/transfer/``

        Check on server that it is there
        
        - ``$ ls ~/transfer``
        
        - Video for Tetralith
## Some other tools

### Graphical tools

- [WinSCP](https://winscp.net/eng/index.php)
- [CyberDuck](https://cyberduck.io/)
  
### Terminal

- [Rclone](https://rclone.org/): Rclone is a command-line program to manage and sync your files on cloud storage.

