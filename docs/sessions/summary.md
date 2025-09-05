---
tags:
  - summary
  - conclusion
---

# Summary

Here is a summary of the file transfer tools discussed in this course:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Tool       |Features                                                    |Things to remember
-----------|------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------
FileZilla  |Graphical, intuitive, simple                                |SFTP, `my_cluster.se` and `my_username`
`scp`      |Terminal, simple, feels like a regular file copy            |`scp my_file.txt my_username@my_cluster.se:/home/my_username/` and `scp -r my_folder my_username@my_cluster.se:/home/my_username/`
`rsync`    |Terminal, powerful, flexible, feels like a regular file copy|`rsync my_file.txt my_username@my_cluster.se:/home/my_username/` and `rsync --recursive my_folder my_username@my_cluster.se:/home/my_username/`
`sftp`     |Terminal, simple, feels like a file transfer portal         |`sftp` and `put` and `get`

Below is an overview of how complex file transfer is,
per cluster and per tool:

HPC Cluster|`scp`     |FileZilla |`rsync`
-----------|----------|----------|-------
Alvis      |Easy      |Hard      |Medium
Berzelius  |Easy      |Easy      |Easy
Bianca     |Hard      |Easy      |Hard
COSMOS     |Easy      |Medium    |Medium
Dardel     |Easy      |Hard      |Medium
Kebnekaise |Easy      |Easy      |Easy
LUMI       |Easy      |Hard      |Medium
Pelle      |Easy      |Easy      |Easy
Rackham    |Easy      |Easy      |Easy
Tetralith  |Easy      |Easy      |Easy
Vera       |Easy      |Medium    |Easy

!!! tips

    - Archive folders with many files! - Less overhead and many files on the fly are included in the transfer!
    - Compress files and folders! - Less size will be faster to transfer!
