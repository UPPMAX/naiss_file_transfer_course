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
    - (Optional) Can compress and archive files before transferring

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation
      of their favorite HPC cluster
    - Learners have transferred files using `scp`
    - (Optional) Can compress and archive files before transferring

!!! info

    - We start with a transferring tool in the command line.
    - Let's focus on the easiest.
    - Next session we try a tool with a graphical interface!
    
## Overview of terminal transfer tools

<!-- markdownlint-disable MD013 --><!-- Let's break 80 characters per line -->

!!! info

    - Terminal transfer tools are handy when you are already working in the terminal and can sometimes be superior to Graphical tools.

        - No switching applications
        - Your hands stay on the keyboard, you don't need to grab the mouse
        - Tab completion can make finding files faster
        - If you work on servers or over ssh you might not be able to use a graphical user interface (GUI).

- `scp` has the similar arguments as for the linux copy function `cp`.
- `sftp` is more versatile with more file management capabilities. [Optional lesson](../sftp/README.md)
- `rsync` is perfect for syncing and have many capabilities.  [Optional lesson](../sftp/README.md)

- All are considered secure!

!!! question "But what is ``wget`` and ``curl``?"

    - These tools are used to download files from websites or ftp servers

    ??? info "``wget``"
    
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

    ??? info "``curl``"

        - ``curl`` outputs the content to the terminal by default.
        - add ``-O`` to download as file.
        - supports a wide range of protocols: HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP...
        - often preferred for scripting and automation due to its versatility
        - interacting with APIs, handling complex web requests
        - often available by default on Windows and MacOS.


**SCP is an abbreviation for ``Secure Copy Protocol``**

!!! note "Pros"

    - Simple
    - One-line command
    - Use cases
        - copy just a file
        - copy just a specific directory (with sub-directories).

!!! warning "When not to use"

    - When needing **several one-line** commands
        - requires credentials every time
    - When looking to do **more than a basic** file transfer, SCP falls short.
    - Transfers that are **interrupted** you have to restart the entire transfer.
    - A file with the **same name** in the same directory is transferred, will be overwritten.

!!! warning "Risk of overwriting files"

    - There is no warning if a file is about to be overwritten.
        - There is no `scp -i ...` as for `rm -i` that asks if you really want to remove the file.
    - `rsync` may be a better tool if you want to sync existing content.

!!! attention

    - Some Windows users may need to use ``pscp`` instead of `scp`.
    - The syntax is however the same in general.

??? question "Prior questions"

    - Who has heard of `scp`?
    - Who has already used `scp`?

## Procedure

- Run the scp commands on YOUR computer, since you probably do not have a server address to your computer!
- In the terminal (from **local**, not server session)

    ```bash
    scp <from> <to>
    ```

- Where `<from>` is the file(s) you want to copy, and `<to>` is the destination.


???- example "Example for Tetralith"

    This is how you copy a file from your local computer directly to your HOME folder (~/):

    ```bash
    scp my_file.txt x_nisse@tetralith.nsc.liu.se:~/
    ```

    To copy a file from Tetralith to your local computer (and present folder),
    do the command above in reverse order:

    ```bash
    scp x_nisse@tetralith.nsc.liu.se:/home/x_nisse/remote_file.txt .
    ```

    - If asked, give your center's password, and possibly, 2nd-factor 6-digit code.
    - You can get rid of this prompt if you have setup SSH keys

???- info "Set paths"

    Copy a file **from your local computer** to the cluster:

    ```bash
    scp <local_file/folder> <username>@<cluster adress>:<path-to-folder/>
    ``` 

## Large or many files

### Compress

- Shorten download/upload time by **reducing the size of a file**!
    - A common tool in Linux environments is ``gzip``.
    - Usage: ``gzip <filename>``. You'll get a ``gz``file ending

!!! tip "Options for compressing during the transfer"

    - ``scp -C ...``

    - The file(-s) are then decompressed on the destination.

??? warning "compressing is processor intensive"    
    
    - Can delay transfer of that reason.
    - Might need to test what is the best solution.

### Archive many files

- Transferring **many files will create so called overhead**
    - each file has to be addressed individually.
- Solution is to **gather the files in an archive**, like [**tar**](https://en.wikipedia.org/wiki/Tar_(computing)).
    - A folder with content then behaves like ONE file.
    - Usage: ``tar -cf archive.tar /path/files`` or ``tar -cf archive.tar /path/folder``
- While TARing you may *compress* the data as well!
    - ``tar -czf archive.tar.gz [/path/files]``

???- example "Workflow"

    - Archive and compress a folder with many large files

        ``tar -czf manylargefiles_folder.tar.gz manylargefiles_folder/``

    - Transfer data

    - Extract at target destination

        ``tar -xzf manylargefiles_folder.tar.gz``

    - You should now have ``manylargefiles_folder/`` again at the target destination!

!!! tip "Archiving is often worth more than compressing"

???- question "Can I use archiving and compressing in all transfer methods?"

    - Yes!


## Exercises

???- question "Exercise 0: Use the documentation of your HPC cluster"

    - Search for how to transfer files to/from your HPC cluster using `scp`. At which URL is it described?
        - Tip: not all HPC centers have documented this, so you *should* give up searching after a while.

            - If the center maintaining you HPC cluster has not documented how to use `scp`, follow [the Rackham documentation](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_scp).

???- question "Where is that documentation?"

    HPC Cluster|Documentation
    -----------|------------
    Alvis      |[Documentation](https://www.c3se.chalmers.se/documentation/file_transfer/).
    Berzelius  |[Documentation](https://www.nsc.liu.se/support/copying-data/)
    Bianca     |Available for download via the transit server, see [documentation](https://docs.uppmax.uu.se/cluster_guides/transfer_bianca/#transit-server)
    COSMOS     |[Documented on UPPMAX page](https://docs.uppmax.uu.se/naiss/cosmos_file_transfer_using_scp/).
    Dardel     |[Documentation](https://support.pdc.kth.se/doc/contact/contact_support/?sub=data_management/file_transfer_scp/)
    Kebnekaise |[Documentation](https://docs.hpc2n.umu.se/documentation/filesystems/#scp)
    LUMI       |[Documentation](https://docs.lumi-supercomputer.eu/firststeps/movingdata/#copying-files-with-scp)
    Pelle      |[Documentation](https://docs.uppmax.uu.se/software/pelle_file_transfer_using_scp/)
    Rackham    |[Documentation](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_scp/)
    Tetralith  |[Documentation](https://www.nsc.liu.se/support/copying-data/)
    Vera       |[Documentation](https://www.c3se.chalmers.se/documentation/file_transfer/).

???- question "Exercise 1: Upload a file from your computer, using scp"

    Tips

    - Useful terminal commands (both locally and remotely)
        - ``pwd`` - which folder am I in?
        - ``cd [path]`` - change folder (go up in hierarchy with ``cd ..``)
        - ``ls`` - list content of folder
        - ``mkdir`` - make a new folder
        - ``touch`` - create empty file

    - (If you want to create a file in local terminal: ``$ touch local_file``)
    - (You can check the file structure in an ssh session)
    - Send it to an existing folder (e.g. ``transfer``) on Tetralith
        - use ``mkdir <folder name>`` if it is not there
    - Check on server that it is there

    ???- tip "Answer (Tetralith example)"

        Locally

        - (If you want to create a file in *local* terminal: ``$ touch local_file``)
        - Send it to an existing folder (e.g. ``transfer``) on Tetralith:

        - ``$ scp local_file <username>@tetralith.nsc.liu.se:~/transfer/``

        Check on server that it is there

        - ``$ ls ~/transfer``

        - [Video for Tetralith](https://youtu.be/iErrwxxwrX0)

???- question "Exercise 2: Download a file from the server to your computer, using scp"

    Tips

    - (If you want to create a file in *remote* ssh terminal: ``$ touch remote_file``)
    - Send it to an existing local folder
    - Check locally that it is there

    ???- tip "Answer (Tetralith example)"

        On Server

        - (If you want to create a remote file first, in an SSH session, do: ``$ touch remote_file``)
        - Get it the present local folder: ``$ scp <username>@tetralith.nsc.liu.se:~/transfer/remote_file .``

        Check locally that it is there


???- question "(Optional) Exercise 1: Download a directory with many files"

    Tips

    - Be in the ``transfer`` directory (or similar) and create 3000 (empty) files REMOTELY in a directory with name ``many_files``
        - ``$ mkdir many_files``
        - ``$ cd many_files``
        - ``$ touch my-file-{1..3000}.txt``
    - Time the download of the directory, using ``time``, and the recursive option to include the files within the directory
        - ``time scp ...``.

    ???- tip "Answer (Tetralith example)"

        - ``time scp -r sm_bcarl@tetralith.nsc.liu.se:~/test/many_files .``

        - [Video for Tetralith](https://youtu.be/Q5fOpHetgcU)

???- question "(Optional) Exercise 2: Test the difference between transferring one or several files (using scp)"

    Tips

    - Archive the many_files directory
        - The original directory is still there! Check!

    - Time the download of the original directory, using ``time scp ...``.
        - If ``time`` does not work, count the seconds!

    - Time the download of the compressed directory, using ``time scp ...``.
        - If ``time`` does not work, count the seconds!

    - Focus on the ``user`` line, because ``real`` includes the time for establishing connection and giving the credentials!
    - Do you spott any difference?

    ???- tip "Answer (Tetralith example)"

        Archiving and step on REMOTE

        - ``tar -cvf many_files.tar many_files``
            - The original directory is still there! Check!

        LOCALLY

        - ``time scp -r sm_bcarl@tetralith.nsc.liu.se:~/transfer/many_files .`` - note the ``-r`` for recursive and including files in the folder.
        - ``time scp sm_bcarl@tetralith.nsc.liu.se:~/transfer/many_files.tar .``

        - [Video for Tetralith](https://youtu.be/UPnbnfTYHAQ)

        - ``$ ls``
        - (or in the File explorer)

        - [Video for Tetralith](https://youtu.be/iErrwxxwrX0)

## Extra

???- tip "Cheat sheet for extra ``scp``"

    - ``scp`` followed by none or any of the following option flags and the files and servers involved

    - scp provides a number of options that control every aspect of its behavior. The most widely used options are:

    - ``-P`` - Specifies the remote host ssh port.
    - ``-p`` - Preserves file modification and access times.
    - ``-q`` - Use this option if you want to suppress the progress meter and non-error messages.
    - ``-C`` - This option forces scp to compress the data as it is sent to the destination machine.
    - ``-r`` - This option tells scp to copy directories recursively.

???- tip "Cheat sheets for ``gzip`` and ``tar``"

    - [``gzip`` manual](https://www.gnu.org/software/gzip/manual/gzip.html#Sample)
    - [``tar`` manual](https://devhints.io/tar)

