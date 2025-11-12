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

HPC Cluster|`scp`     |FileZilla |`rsync`|`sftp`
-----------|----------|----------|-------|------
Alvis      |Easy      |Hard      |Medium |Medium
Berzelius  |Easy      |Easy      |Easy   |Medium
Bianca     |Hard      |Easy      |Hard   |Medium
COSMOS     |Easy      |Medium    |Medium |Medium
Dardel     |Easy      |Hard      |Medium |Medium
Kebnekaise |Easy      |Easy      |Easy   |Medium
LUMI       |Easy      |Hard      |Medium |Hard
Pelle      |Easy      |Easy      |Easy   |Medium
Rackham    |Easy      |Easy      |Easy   |Medium
Sigma      |Easy      |Medium    |Easy   |Medium
Tetralith  |Easy      |Easy      |Easy   |Medium
Vera       |Easy      |Medium    |Easy   |Medium

!!! tips

    - Archive folders with many files! - Less overhead and many files on the fly are included in the transfer!
    - Compress files and folders! - Less size will be faster to transfer!
