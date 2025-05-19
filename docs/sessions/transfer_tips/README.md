---
tags:
  - session
  - lesson
  - servers
  - clusters
  - archiving
  - zip
  - gzip
  - tar
---

# Transfer tips

!!!- info "Learning outcomes"

    - (Optional) Can compress and archive files before transferring
    - (Optional) Can transfer between clusters

## Large or many files

- Shorten download/upload time by **reducing the size of a file**!
    - A common tool in Linux environments is ``gzip``.
    - Usage: ``gzip <filename>``. You'll get a ``gz``file ending
- Transferring **many files will create so called overhead**
    - each file has to be addressed individually.
- Solution is to **gather the files in an archive**, like [**tar**](https://en.wikipedia.org/wiki/Tar_(computing)).
    - A folder with content then behaves like ONE file.
    - Usage: ``tar -cf archive.tar /path/files`` or ``tar -cf archive.tar /path/folder``
- While TARing you may *compress* the data as well!
    - ``tar -czf archive.tar.gz [/path/files]``

???- tip "Extract/inflate"

    - ``gunzip compressed_file.gz``
    - ``tar -xf archive.tar``
    - ``tar -xzf compressed_archive.tar.gz``
    - the extracted folders will inherit the old name and internal structure

???- question "Can I use archiving and compressing in all transfer methods?"

    - Yes!

???- example "Workflow"

    - Archive and compress a folder with many large files

        ``tar -czf manylargefiles_folder.tar.gz manylargefiles_folder/``

    - Transfer data

        - Use FileZilla/scp/rsync/sftp

    - Extract at target destination

        ``tar -xzf manylargefiles_folder.tar.gz``

    - You should now have ``manylargefiles_folder/`` again at the target destination!

???- tip "Cheat sheets"

    - [``gzip`` manual](https://www.gnu.org/software/gzip/manual/gzip.html#Sample)
    - [``tar`` manual](https://devhints.io/tar)

## Server to server

- You can transfer files in an SSH session on one cluster to another cluster.
- ``rsync``, ``scp``, or ``sftp`` will all work!
- "Local" will now be the server you run the command (scp/rsync/sftp) from.


## Exercises

<!-- markdownlint-disable MD013 --><!-- Let's break the 80 characters per line -->

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


???- question "(Optional): Exercise 3: Test the difference between transferring one or several files (using SFTP)"

    Tips

    In an SSH session (not SFTP) with REMOTE/server

    - To not interfer with last exercise make a new folder by creating 3000 files REMOTELY in a directory with name ``many_files``
        - ``$ mkdir many_files``
        - ``$ cd many_files_sftp``
        - ``$ touch file_{1..3000}.txt``
        - Check content: ``$ ls``  for checking
        - Leave directory to be able to perform next step: ``$ cd ..``
    - Also archive the ``many_files_sftp`` folder to ``many_files_sftp.tar``
        - The original directory is still there! Check!

    Establish the SFTP session (Exercise 1 in SFT session)

    - Download (to local) the *directory* and note the time needed
    (not shown in numbers so **count the seconds!**)
    - Download (to local) the ``.tar`` file and note the time needed
    - Was there a significant difference?

    ???- tip "Answer (Example with Tetralith)"

        Archiving and compressions step REMOTELY

        - ``tar -cvf many_files_sftp.tar many_files``

        Establish SFTP connection

        - ``$ sftp sm_bcarl@tetralith.nsc.liu.se``

        Download

        - ``> get -r many_files_sftp`` (we need the recursive command ``-r``)
        - ``> get many_files_sftp.tar.gz``

        - [Video for Tetralith](https://youtu.be/h9HDegau1DI)


???- question "(Optional if you have multiple cluster/server accounts) Exercise 4: Transfer with favorite terminal tool between servers"

    Tips

    - Have a SSH session running on your favorite cluster
    - Use a terminal tool (``rsync``, ``scp``, or ``sftp``) to establish connection between your account on Tetralith or Alvis and your present server.
        - address to Tetralith: use address from [Getting started](https://www.nsc.liu.se/support/getting-started/)
        - address to Alvis: use address from [Login using a Terminal](https://www.c3se.chalmers.se/documentation/connecting/ssh/)
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

        - [Video for Tetralith to Rackham](https://youtu.be/KwpVhxnRDQc)
