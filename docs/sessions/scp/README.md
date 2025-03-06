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
    - Can compress and archive files before transferring

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation
      of their favorite HPC cluster
    - Learners have transferred files using `scp`

    Lesson plan:
    
    ```mermaid
    gantt
      title File transfer using scp
      dateFormat X
      axisFormat %s
      section First hour
      Prior : prior, 0, 2s
      Present: present, after prior, 3s
      Challenge: crit, challenge, after present, 10s
      Feedback: feedback, after challenge, 2s
    ```

    Prior questions:

    - Who has heard of `scp`?
    - Who has already used `scp`?

## Overview other terminal transfer tools

Other than ``rsync`` we have the more simple tools ``scp`` and ``sftp``.

- ``scp`` has the similar arguments as for the linux copy function ``scp``.
- ``sftp`` is more versatile with more file management capabilities.

- Both are considered secure.

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

- In the terminal, copy files using `scp` to connect to Rackham:

```bash
scp [from] [to]
```

Where `[from]` is the file(s) you want to copy, and `[to]` is the destination.

Copy a file from your local computer to the cluster:

```bash
scp [local_filename] [username]@<cluster adress>:<path-to-folder>/
```

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Copy a file from the cluster to your local computer, do the command above in reverse order:

```bash
scp [username]@<cluster adress>:<path-to-folder>/[remote_filename] [local_folder or "." for _present_ folder]
```

???- example "Example for Rackham"

    This is how you copy a file from your local computer directly to your HOME folder at Rackham:

    ```bash
    scp [local_filename] [username]@rackham.uppmax.uu.se:~/
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

???- tip "Cheat sheet for ``scp``"

    - ``scp`` followed by none or any of the following option flags and the files and servers involved

    - scp provides a number of options that control every aspect of its behavior. The most widely used options are:

    - ``-P`` - Specifies the remote host ssh port.
    - ``-p`` - Preserves file modification and access times.
    - ``-q`` - Use this option if you want to suppress the progress meter and non-error messages.
    - ``-C`` - This option forces scp to compress the data as it is sent to the destination machine.
    - ``-r`` - This option tells scp to copy directories recursively.

!!! warning

    - There is no warning if a file is about to be overwritten.
        - There is no ``scp -i ...`` as for ``rm -i`` that asks if you really want to remove the file.
    - 'rsync' may be a better tool if you want to sync existing content.

## Large or many files

- Shorten download/upload time by **reducing the size of the file**!
    - A common tool in Linux environments is ``gzip``.
    - Usage: ``gzip <filename>``
    - You'll get a ``gz``file ending
- Transferring **many files will create so called overhead**, because each file has to be addressed individually.
- Solution is to **gather the files in an archive**, like [**tar**](https://en.wikipedia.org/wiki/Tar_(computing)).
    - A folder then behaves like ONE file.
    - Usage: ``tar [-options] <name of the tar archive> [files or directories which to add into archive]``'
    - Example: ``tar -cf archive.tar /path/files`` or ``tar -cf archive.tar /path/folder``
- While TARing you may compress the data as well!
    - ``tar -czf archive.tar.gz /path/files``

???- tip "Extract/inflate"

    - ``gunzip compressed_file.gz``
    - ``tar -xf archive.tar``
    - ``tar -xzf compressed_archive.tar.gz``
    
???- tip "``gzip`` cheat sheet"

        - [``gzip`` manual](https://www.gnu.org/software/gzip/manual/gzip.html#Sample)

???- tip "``tar`` cheat sheet"

        - [``tar`` manual](https://devhints.io/tar)

???- question "Can I use archiving and compressing in all transfer methods"

    - Compressing and archiving is useful whenever you transfer files.
    - No matter of which transfer tool you are using, graphical or in terminal!
      
## Exercises

!!! warning "You may want to prioritize next session instead!"

???- question "Exercise 0: Use the documentation of your HPC cluster"

    - Search for how to transfer files to/from your HPC cluster using `scp`. At which URL is it described?
        - Tip: not all HPC centers have documented this, so you *should* give up searching after a while.

???- question "Where is that documentation?"

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

???- question "Exercise 1: Upload a file from your computer, using scp"

    Tips

    - (If you want to create a file in local terminal: ``$ touch local_file``)
    - (You can check the file structure in an ssh session)
    - Send it to an existing folder (e.g. ``transfer``) on Tetralith
    - Check on server that it is there
    
    ???- tip "Answer (Tetralith example)"

        Locally
        
        - (If you want to create a file in *local* terminal: ``$ touch local_file``)
        - Send it to an existing folder (e.g. ``transfer``) on Tetralith: ``$ scp local_file [username]@tetralith.nsc.liu.se:~/transfer/``

        Check on server that it is there
        
        - ``$ ls ~/transfer``
        
        - [Video for Tetralith](https://youtu.be/rvL-s5vi13I)

???- question "Exercise 2: Download a file from your the server to you computer, using scp"

    Tips

    - (If you want to create a file in *remote* ssh terminal: ``$ touch remote_file``)
    - Send it to an existing local folder
    - Check locally that it is there

    ???- tip "Answer (Tetralith example)"

        On Server

        - (If you want to create a remote file first, in an SSH session, do: ``$ touch remote_file``)
        - Get it to an existing local folder (e.g. ``transfer``): ``$ scp [username]@tetralith.nsc.liu.se:~/transfer/remote_file .``

        Check locally that it is there
        
        - ``$ ls``
        - (or in the File explorer)
        
        - [Video for Tetralith](https://youtu.be/iErrwxxwrX0)

???- question "(Optional) Exercise 3: Download a directory with many files"

    Tips

    - Create 1000 files REMOTELY in a directory with name ``many_files``
        - ``$ mkdir many_files``
        - ``$ cd many_files``
        - ``$ touch my-file-{1..1000}.txt``
    - Time the download of the directory, using ``time``, and the recursive option to include the files within the directory
        - ``time scp ...``.
    
    ???- tip "Answer (Tetralith example)"

        - ``time scp -r sm_bcarl@tetralith.nsc.liu.se:~/test/many_files .``

        - [Video for Tetralith](https://youtu.be/Q5fOpHetgcU)
        
???- question "(Optional) Exercise 4: Download the Compressed directory"

    Tips

    - Archive and zip the many_files directory
    - Time the download of the compressed directory, using ``time``.
        - If ``time`` does not work, count the seconds!


    ???- tip "Answer (Tetralith example)"

        Archiving and compressions step on REMOTE

        - ``tar -cvzf many_files.tar.gz many_files``

        LOCALLY
        
        - ``time scp sm_bcarl@tetralith.nsc.liu.se:~/test/many_files.tar.gz .``

        - [Video for Tetralith](https://youtu.be/UPnbnfTYHAQ)
