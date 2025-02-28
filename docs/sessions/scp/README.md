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

!!!- But what is ``wget`` and ``curl``?

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->


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
    - Secure
    - Use cases
        - simple copy of files between local and remote host
          or between two remote hosts.

!!! warning "When not to use"

    - When looking to do more than a basic file transfer, SCP falls short.
    - SCP is unable to create or list directories or delete files.
    - a file with the same name in the same directory is transferred, wil be overwritten.
    - transfers that are interrupted  you have to restart the entire transfer.

## Procedure

???- question "Where is that documentation?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Link to documentation
    -----------|------------
    Alvis      |[here](https://www.c3se.chalmers.se/documentation/for_users/intro-alvis/slides/#transfering-files).
    Berzelius  |[here](https://www.nsc.liu.se/support/copying-data/)
    Bianca     |Available for download via the transit server, see [here](https://docs.uppmax.uu.se/cluster_guides/transfer_bianca/#transit-server)
    COSMOS     |**FIX?** None. Closest is [here](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_winscp/).
    Dardel     |[here](https://support.pdc.kth.se/doc/support/?sub=data_management/file_transfer_scp/)
    Kebnekaise |[here](https://docs.hpc2n.umu.se/documentation/filesystems/#scp)
    LUMI       |**To do**
    Rackham    |[here](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_scp/)
    Tetralith  |[here](https://www.nsc.liu.se/support/copying-data/)
    Vera       |**FIX?** None. Closest is [here](https://www.c3se.chalmers.se/documentation/for_users/intro-alvis/slides/#transfering-files).

### Example

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

To copy a file from Rackham to your local computer,
do the command above in reverse order:

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

### Cheat sheet

- ``scp``

- scp provides a number of options that control every aspect of its behavior. The most widely used options are:

    ``-P`` - Specifies the remote host ssh port.
    ``-p`` - Preserves file modification and access times.
    ``-q`` - Use this option if you want to suppress the progress meter and non-error messages.
    ``-C`` - This option forces scp to compress the data as it is sent to the destination machine.
    ``-r`` - This option tells scp to copy directories recursively.
  
## Exercises

Use the documentation of your HPC cluster.

- Search for how to transfer files to/from your HPC cluster using `scp`. Which URL is it described?
  Tip: not all HPC centers have documented this, so you *should* give up searching after a while.

???+ question "Exercise 1: Upload"

???+ question "Exercise 2: Download"

???+ question "Exercise 3: Directory"

???+ question "Exercise 4: Compressed directory"
