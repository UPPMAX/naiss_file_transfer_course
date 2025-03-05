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


## Procedure

In the terminal, run `sftp` to connect to Rackham by doing:

```bash
sftp [username]@<cluster address>
```

In `sftp` session, upload/download files to/from the server.

- ``put <filename>`` - Copy a file from the local computer to the remote host
- ``get <filename>`` - Copy a file from the remote host to the local computer

???- example "Example for Rackham"

    Connect to SFTP session

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

    In `sftp` session, upload/download files to/from the server.

    - ``put <filename>`` - Copy a file from the local computer to the remote host
    - ``get <filename>`` - Copy a file from the remote host to the local computer

???- tip "Cheat sheet in the SFTP session"

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

    - ``get`` - Copy a file from the remote host to the local computer
    - ``lcd`` - Change the active directory on the local system
    - ``lls`` - List the contents of the current directory on the local computer
    - ``lmkdir`` - Create a directory on the local computer
    - ``lpwd`` - Show the present working directory on the local computer

!!! note "Transferring many files?"

    - As always, it is better to transfer few large files than many small files.
    - Therefore, make archive(s) and while doing that, compress as well, see [last section](../scp/README.md/#large-or-many-files).

## Server to server

- You can transfer files in an SSH session on one cluster to another cluster.
- ``rsync``, ``scp``, or ``sftp`` will all work!
- "Local" will now be the server you connect from, that is, where you run the commands.

## Exercises
<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

??? question "Use the documentation of your HPC cluster"

    - Search for how to transfer files to/from your HPC cluster using `scp`. Which URL is it described?
        - Tip: not all HPC centers have documented this, so you *should* give up searching after a while.

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
  
???- question "Dardel documentation uses ``psftp``, what is that?"

    - It is just a SFTP component of the client PuTTY.
    - Same commands as for SFTP.

???- question "Exercise 1: Establish the sftp connection and find the relevant folders locally and remotely"

    Tips

    - Connect from your local terminal
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
        
???- question "Exercise 2: Upload"

    Tips

    - (If you want to create a file in local terminal: ``$ touch local_file_sftp``)
    - Send it to an existing folder (e.g. ``transfer``) on Tetralith
    - Check on server (in sftp session) that it is there
    
    ???- tip "Answer (Tetralith example)"

        Locally
        
        - (If you want to create a file in local terminal: ``$ touch local_file_sftp``)
        - use the put command: ``> put local_file_sftp``

        Check on server (in sftp session) that it is there
        
        - ``> ls ~/transfer``
        
        - Video for Tetralith
        
???- question "Exercise 3: Download"

    Tips
    
    - (If you want to create a file in remote terminal: ``$ touch remote_file_sftp``)
    - Send it to an existing local folder
    - Check locally (in sftp session) that it is there
    
    ???- tip "Answer (Tetralith example)"

        On Server

        - (If you want to create a file first: ``$ touch remote_file-sftp``)
        - use the get command: ``> get remote_file_sftp``

        Check locally (in sftp session) that it is there
        
        - ``> lls ~/transfer``

        - (or in the File explorer)
        
        
        - Video for Tetralith

???- question "(Optional if you have multiple cluster/server accounts) Exercise 4: Transfer with favorite terminal tool between servers"

    Tips

    - Have a SSH session running on your favorite cluster
    - Use a terminal tool (``rsync``, ``scp``, or ``sftp``) to establish connection between your account on Tetralith or Alvis and your present server.
        - address to Tetralith: use address from [Getting started](https://www.nsc.liu.se/support/getting-started/)
        - address to Alvis: use address from [Login using a Terminal](https://www.c3se.chalmers.se/documentation/for_users/getting_started/how_to_login_using_ssh/)
    - Transfer a file between the clusters
    - Check that it is there!

    ???- tip "Answer (Example with Tetralith to Rackham , using sftp)"

        Same principles as we learned before!

        Connection from Tetralith:

        ```console
        [sm_bcarl@tetralith3 ~]$ sftp bjornc@rackham.uppmax.uu.se
        The authenticity of host 'rackham.uppmax.uu.se (89.44.250.84)' can't be established.
        ECDSA key fingerprint is SHA256:W/MazH3WrH0wKrHBOJpPbDaU4qeYGqiv3FRPsdXIsb4.
        This key is not known by any other names
        Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
        Warning: Permanently added 'rackham.uppmax.uu.se' (ECDSA) to the list of known hosts.
        bjornc@rackham.uppmax.uu.se's password:
        Connected to rackham.uppmax.uu.se.
        ```

        - Proceed with ``put`` if you want to transfer from Tetralith (now local) to Rackham (remote)

## Some other tools

!!!- tip "Graphical tools"

    - [WinSCP](https://winscp.net/eng/index.php)
    - [CyberDuck](https://cyberduck.io/)
  
!!!- tip "Terminal tools"

    - [Rclone](https://rclone.org/): Rclone is a command-line program to manage and sync your files on cloud storage.
