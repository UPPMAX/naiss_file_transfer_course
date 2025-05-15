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
    - (Optional) Can transfer files using `sftp`

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation
      of their favorite HPC cluster
    - Learners have transferred files using `sftp`

    Prior questions:

    - Who has heard of `sftp`?
    - Who has already used `sftp`?

## Introduction

**SFTP is an abbreviation of 'SSH File Transfer Protocol' and
 'SSH' is an abbreviation of 'Secure Shell protocol'.**

- The difference from ``rsync`` and ``scp`` is that you login to a SFTP session
    - just like a log in to a server with SSH.
- You use the terminal to transfer the files.
- You need the credentials only when establishing the connection.

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

<!-- markdownlint-disable MD013 --><!-- Let's break 80 characters per line -->

- Run the sftp commands on YOUR computer, since you probably do not have a server address to your computer!
- In the terminal (from **local**, not server session)

```bash
sftp <username>@<cluster address>
```

In `sftp` session, go to right folders and upload/download files to/from the server. You can do this as long as the connection is active!

- ``pwd/cd/ls`` - **browse** and list files in **server file system**
- ``lpwd/lcd/lls`` - **browse** and list files in **local file system**
- ``put <file/folder>`` - **Copy** a file/folder **from the local** computer to the remote host
- ``get <file/folder>`` - **Copy** a file/folder **from the remote** host to the local computer

???- tip "Syntax for command arguments"

    - We use `<content>` to tell that this should be replaced by applicable names or paths etcetera...
    - We use ``[content]`` to tell that this argument is not necessary
    - Run the sftp commands on YOUR computer, since you probably do not have a server address to your computer!

???- example "Example for Tetralith"

    Connect to SFTP session

    In the terminal, run `sftp` to connect to Tetralith by doing:

    ```bash
    sftp x_nisse@tetralith.nsc.liu.se
    ```

    If asked, give your center's password.
    You can get rid of this prompt if you have setup SSH keys

    Upload/download files to/from Tetralith

    In `sftp` session, upload/download files/folders to/from the server.

    - ``put localfile.txt`` - Copy a file from the local computer to the remote host
    - ``get serverfile.txt`` - Copy a file from the remote host to the local computer

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

## Exercises

??? question "Use the documentation of your HPC cluster"

    - Search for how to transfer files to/from your HPC cluster using `scp`. Which URL is it described?
        - Tip: not all HPC centers have documented this, so you *should* give up searching after a while.
            - If the center maintaining you HPC cluster has not documented how to use `sftp`, follow [the Rackham documentation](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_sftp).

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

???- question "Where is that documentation?"

    HPC Cluster|Link to documentation
    -----------|------------
    Alvis      |**FIX?** None.
    Berzelius  |[here](https://www.nsc.liu.se/support/copying-data/)
    Bianca     |[here](https://docs.uppmax.uu.se/software/bianca_file_transfer_using_sftp/), [through transit](https://docs.uppmax.uu.se/cluster_guides/transfer_transit/#using-sftp)
    COSMOS     |[here](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_sftp/)
    Dardel     |The similar psftp is described [here](https://support.pdc.kth.se/doc/contact/contact_support/?sub=data_management/file_transfer_scp/)
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

        - [Video for Tetralith](https://youtu.be/fP7xAakCrUU)

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

        - [Video for Tetralith](https://youtu.be/m9zpf-s_VqY)

???- question "Exercise 3: Download"

    Tips

    - (If you want to create a file in remote terminal: ``$ touch remote_file_sftp``)
    - Send it to an existing local folder
    - Check locally (in sftp session) that it is there

    ???- tip "Answer (Tetralith example)"

        On Server

        - use the get command: ``> get remote_file_sftp``

        Check locally (in sftp session) that it is there

        - ``> lls ~/transfer``

        - (or in the File explorer)


        - [Video for Tetralith](https://youtu.be/kgV77ZYGouw)


## Some other tools

!!!- tip "Terminal tools"

    - [Rclone](https://rclone.org/): Rclone is a command-line program to manage and sync your files on cloud storage.
