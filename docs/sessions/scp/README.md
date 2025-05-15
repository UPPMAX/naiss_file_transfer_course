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

    Prior questions:

    - Who has heard of `scp`?
    - Who has already used `scp`?

## Overview other terminal transfer tools

- `scp` has the similar arguments as for the linux copy function `cp`.
- `sftp` is more versatile with more file management capabilities.
- `rsync` is perfect for syncing and have many capabilities

- All are considered secure.

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

???- question "But what is ``wget`` and ``curl``?"

    - These tools are used to download files from websites or ftp servers
    - ``wget`` saves downloaded contents to local files, like
        - ``wget ftp://ftp.sunet.se/mirror/archive/ftp.sunet.se/pub/pictures/space/*``
        - ``wget https://upload.wikimedia.org/wikipedia/commons/3/37/Grace_Hopper_and_UNIVAC.jpg -O grace_hopper.jpg``
        - typical usecases:
            - download data from a service
            - download a program or compressed source code
        - supports HTTP, HTTPS, and FTP
        - user-friendly for basic tasks
        - good for mirroring websites
            - downloading entire directories recursively for offline viewing or backups.
        - most popular from Unix-based systems, like Linux

    - ``curl`` outputs the content to the terminal by default.
        - add ``-O`` to download as file.
        - supports a wide range of protocols: HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP...
        - often preferred for scripting and automation due to its versatility
        - interacting with APIs, handling complex web requests
        - often available by default on Windows and MacOS.

<!-- markdownlint-enable MD013 -->

**SCP is an abbreviation for ``Secure Copy Protocol``**

!!! note "Pros"

    - Simple
    - One-line command
    - Secure
    - Use cases
        - copy just a file
        - copy just a specific directory (with sub-directories).

!!! warning "When not to use"

    - When needing several one-line commands
        - requires credentials every time
    - When looking to do more than a basic file transfer, SCP falls short.
    - When you on the fly need to create or list directories or delete files.
    - A file with the same name in the same directory is transferred, will be overwritten.
    - Transfers that are interrupted you have to restart the entire transfer.

## Procedure

<!-- markdownlint-disable MD013 --><!-- Let's break 80 characters per line -->


!!! tip

    - We use `<content>` to tell that this should be replaced by applicable names or paths etcetera...
    - We use ``[content]`` to tell that this argument is not necessary

- In the terminal

```bash
scp <from> <to>
```

Where `<from>` is the file(s) you want to copy, and `<to>` is the destination.

Copy a file **from your local computer** to the cluster:

```bash
scp <local_filename> <username>@<cluster adress>:<path-to-folder/>
```

Copy a file **from the cluster** to your local computer, do the command above in reverse order:

```bash
scp <username>@<cluster adress>:<path-to-folder>/<remote_filename> <local_folder or "." for _present_ folder>
```

???- example "Example for Tetralith"

    This is how you copy a file from your local computer directly to your HOME folder (~/):

    ```bash
    scp <local_filename> <username>@tetralith.nsc.liu.se:~/
    ```

    where `<local_filename>` is the path to a local filename,
    and `<username>` is your Tetralith username, for example:

    ```bash
    scp my_file.txt x_nisse@tetralith.nsc.liu.se:/home/sven
    ```

    To copy a file from Tetralith to your local computer,
    do the command above in reverse order:

    ```bash
    scp <username>@tetralith.nsc.liu.se:/home/<username>/<remote_filename> <local_folder>
    ```

    where `<remote_filename>` is the path to a remote filename,
    `<username>` is your UPPMAX username,
    and `<local_folder>` is your local folder, for example:

    ```bash
    scp sven@rackham.uppmax.uu.se:/home/sven/my_remote_file.txt /home/sven
    ```

    If asked, give your center's password.
    You can get rid of this prompt if you have setup SSH keys


!!! warning

    - There is no warning if a file is about to be overwritten.
        - There is no ``scp -i ...`` as for ``rm -i`` that asks if you really want to remove the file.
    - 'rsync' may be a better tool if you want to sync existing content.

???- tip "Cheat sheet for ``scp``"

    - ``scp`` followed by none or any of the following option flags and the files and servers involved

    - scp provides a number of options that control every aspect of its behavior. The most widely used options are:

    - ``-P`` - Specifies the remote host ssh port.
    - ``-p`` - Preserves file modification and access times.
    - ``-q`` - Use this option if you want to suppress the progress meter and non-error messages.
    - ``-C`` - This option forces scp to compress the data as it is sent to the destination machine.
    - ``-r`` - This option tells scp to copy directories recursively.

## Exercises

!!! warning "You may want to prioritize next session instead!"

???- question "Exercise 0: Use the documentation of your HPC cluster"

    - Search for how to transfer files to/from your HPC cluster using `scp`. At which URL is it described?
        - Tip: not all HPC centers have documented this, so you *should* give up searching after a while.

???- question "Where is that documentation?"

    HPC Cluster|Link to documentation
    -----------|------------
    Alvis      |[here](https://www.c3se.chalmers.se/documentation/file_transfer/).
    Berzelius  |[here](https://www.nsc.liu.se/support/copying-data/)
    Bianca     |Available for download via the transit server, see [here](https://docs.uppmax.uu.se/cluster_guides/transfer_bianca/#transit-server)
    COSMOS     |**FIX?** None. Closest is [here](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_winscp/).
    Dardel     |[here](https://support.pdc.kth.se/doc/contact/contact_support/?sub=data_management/file_transfer_scp/)
    Kebnekaise |[here](https://docs.hpc2n.umu.se/documentation/filesystems/#scp)
    LUMI       |**To do**
    Rackham    |[here](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_scp/)
    Tetralith  |[here](https://www.nsc.liu.se/support/copying-data/)
    Vera       |**FIX?** None. Closest is [here](https://www.c3se.chalmers.se/documentation/file_transfer/).

???- question "Exercise 1: Upload a file from your computer, using scp"

    Tips

    - (If you want to create a file in local terminal: ``$ touch local_file``)
    - (You can check the file structure in an ssh session)
    - Send it to an existing folder (e.g. ``transfer``) on Tetralith
    - Check on server that it is there

    ???- tip "Answer (Tetralith example)"

        Locally

        - (If you want to create a file in *local* terminal: ``$ touch local_file``)
        - Send it to an existing folder (e.g. ``transfer``) on Tetralith: ``$ scp local_file <username>@tetralith.nsc.liu.se:~/transfer/``

        Check on server that it is there

        - ``$ ls ~/transfer``

        - [Video for Tetralith>(https://youtu.be/rvL-s5vi13I)

???- question "Exercise 2: Download a file from your the server to you computer, using scp"

    Tips

    - (If you want to create a file in *remote* ssh terminal: ``$ touch remote_file``)
    - Send it to an existing local folder
    - Check locally that it is there

    ???- tip "Answer (Tetralith example)"

        On Server

        - (If you want to create a remote file first, in an SSH session, do: ``$ touch remote_file``)
        - Get it to an existing local folder (e.g. ``transfer``): ``$ scp <username>@tetralith.nsc.liu.se:~/transfer/remote_file .``

        Check locally that it is there

        - ``$ ls``
        - (or in the File explorer)

        - [Video for Tetralith](https://youtu.be/iErrwxxwrX0)

