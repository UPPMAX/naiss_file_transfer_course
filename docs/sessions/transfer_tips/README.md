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

- Shorten download/upload time by **reducing the size of the file**!
    - A common tool in Linux environments is ``gzip``.
    - Usage: ``gzip <filename>``. You'll get a ``gz``file ending
- Transferring **many files will create so called overhead**
    - each file has to be addressed individually.
- Solution is to **gather the files in an archive**, like [**tar**](https://en.wikipedia.org/wiki/Tar_(computing)).
    - A folder with content then behaves like ONE file.
    - Usage: ``tar -cf archive.tar /path/files`` or ``tar -cf archive.tar /path/folder``
- While TARing you may *compress* the data as well!
    - ``tar -czf archive.tar.gz /path/files``

???- tip "Extract/inflate"

    - ``gunzip compressed_file.gz``
    - ``tar -xf archive.tar``
    - ``tar -xzf compressed_archive.tar.gz``

???- tip "``gzip`` cheat sheet"

        - [``gzip`` manual](https://www.gnu.org/software/gzip/manual/gzip.html#Sample)

???- tip "``tar`` cheat sheet"

        - [``tar`` manual](https://devhints.io/tar)

???- question "Can I use archiving and compressing in all transfer methods?"

    - Yes!


## Exercises

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
