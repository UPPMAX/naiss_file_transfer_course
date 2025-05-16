---
tags:
  - lesson
  - file transfer
  - FileZilla
---

# File transfer using FileZilla

!!!- info "Learning outcomes"

    - Practice using the documentation of your favorite HPC cluster
    - Can install FileZilla
    - Can transfer files using FileZilla

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation
      of their favorite HPC cluster
    - Learners have installed FileZilla
    - Learners have transferred files using FileZilla

    Prior questions:

    - What is a file tranfer?
    - How can one do a file transfer?
    - Can you name some programs that can do file transfer?
    - Who has heard of FileZilla?
    - Who has already used FileZilla?
    - What are features of FileZilla?

    Feedback questions:

    - Q: What are features of FileZilla?
        - A: visual
        - A: intuitive to use
        - A: can save passwords
        - A: can use `.ppk` files
    - Q: What are weaknesses of FileZilla?
        - A: cannot transfer between two remote locations
        - A: an interrupted file transfer means a new transfer from the start

![FileZilla connected to Rackham](filezilla_login_to_rackham.png)

> FileZilla being able to do file transfer to/from
> UPPMAX's Rackham HPC cluster.

## Why use FileZilla

Fairly sure you'll want to upload or download files to your HPC cluster.
Here we do so.

We use a free and open-source graphical tool to do this,
called FileZilla.
It works under Linux, Mac and Windows.

???- question "What are similar graphical tools?"

    Tool                                      |Platforms
    ------------------------------------------|-------------------
    [WinSCP](https://winscp.net/eng/index.php)|Windows
    [CyberDuck](https://cyberduck.io/)        |Linux, Mac, Windows


## Exercises

???- question "Need a video?"

    Here are videos that do this exercises for the different HPC clusters:

    HPC Cluster|Link to video
    -----------|-------------------------------------------------
    Alvis      |[Here](https://youtu.be/A8zfd0o0uzI)
    Berzelius  |Cannot: is not a NAISS cluster
    Bianca     |[Here](https://youtu.be/V-iPQLjvByc)
    COSMOS     |[Here](https://youtu.be/T4qqN_ljsS8)
    Dardel     |[Here](https://youtu.be/_3EmkN619Xo)
    Kebnekaise |Cannot: is not a NAISS cluster
    LUMI       |[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/34)
    Rackham    |[Here](https://youtu.be/CyJbWHZbvJU)
    Tetralith  |[Here](https://youtu.be/qzV3oY5fZbE)
    Vera       |Cannot: is not a NAISS cluster

???- question "How difficult will this be?"

    This depends mostly on your HPC cluster:

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Difficulty|Reason
    -----------|----------|-------------------------------------------
    Alvis      |Hard      |Need `.ppk` files
    Berzelius  |Easy      |Simple procedure, specialized documentation
    Bianca     |Easy      |Simple procedure, specialized documentation
    COSMOS     |Medium    |No specialized documentation yet
    Dardel     |Hard      |Need `.ppk` files
    Kebnekaise |Easy      |Simple procedure, specialized documentation
    LUMI       |Hard      |Need `.ppk` files
    Rackham    |Easy      |Simple procedure, specialized documentation
    Tetralith  |Easy      |Simple procedure, specialized documentation
    Vera       |Medium    |No specialized documentation yet

    <!-- markdownlint-enable MD013 -->

### Exercise 0: pick a Zoom room

We will use breakout rooms, as this is best for learning.
Ideally, each breakout room has 2 learners for the same HPC cluster.
As it cannot be predicted how many learners show up per cluster,
we do this dynamically:

- Go to the main breakout room of your HPC cluster

HPC cluster name|Main breakout room
----------------|------------------
Alvis 1         |Room 1
Alvis 2         |Room 2
Bianca          |Room 3
COSMOS 1        |Room 4
COSMOS 2        |Room 5
Dardel 1        |Room 6
Dardel 2        |Room 7
Dardel 3        |Room 8
Dardel 4        |Room 9
Dardel 5        |Room 10
Tetralith 1     |Room 11
Tetralith 2     |Room 12
Other 1         |Room 13
Other 2         |Room 14

- When the main breakout room reaches 4 learners, decide upon 2 to
  move to a free breakout room. Repeat until the group size is below 4.
- When you are the only one in your main breakout room,
  the teachers will let you decide to either work in silence or
  to join another group. You will be taken care of well :-)

### Exercise 1: install FileZilla

Install FileZilla.

Under Ubuntu, you can can use the Ubuntu App Center.

???- question "How does the Ubuntu App Center look like?"

    Here:

    ![FileZilla in the Ubuntu App Center](filezilla_in_ubuntu_app_center.png)

For non-Ubuntu users, search the web, download and install.

???- question "Where can I find it?"

    The FileZilla website can be found at
    [https://filezilla-project.org/](https://filezilla-project.org/).

    Clicking on 'Download FileZilla client' takes you to the
    FileZilla download page at
    [https://filezilla-project.org/download.php?type=client](https://filezilla-project.org/download.php?type=client).

    Download the file, maybe unzip it and run the installer

### Exercise 2: transfer a file

Use the documentation of your HPC cluster for help.

- Search for the procedure on how to transfer a file
  to/from your HPC cluster using FileZilla

???- question "Where is that documentation?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Link to documentation
    -----------|------------
    Alvis      |None. Closest is [here](https://www.c3se.chalmers.se/documentation/file_transfer/bulk_data_transfer/). Use [this documentation](https://docs.uppmax.uu.se/naiss/alvis_file_transfer_using_filezilla/) instead
    Berzelius  |[here](https://www.nsc.liu.se/support/2fa/clients/windows/filezilla/)
    Bianca     |[here](https://docs.uppmax.uu.se/software/bianca_file_transfer_using_filezilla/)
    COSMOS     |None. Closest is [here](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_winscp/). Use [this documentation](https://docs.uppmax.uu.se/naiss/cosmos_file_transfer_using_filezilla/) instead
    Dardel     |None. Closest is [here](https://support.pdc.kth.se/doc/contact/contact_support/), under 'Data management -> File transfer'. Use [this documentation](https://docs.uppmax.uu.se/naiss/dardel_file_transfer_using_filezilla/) instead
    Kebnekaise |[here (Linux and Mac)](https://www.hpc2n.umu.se/documentation/guides/linux-connection) and [here (Windows)](https://www.hpc2n.umu.se/documentation/guides/windows-connection)
    LUMI       |None. Closest is [here](https://docs.csc.fi/data/moving/graphical_transfer/). Use [this documentation](https://docs.uppmax.uu.se/naiss/lumi_file_transfer_using_filezilla/) instead
    Rackham    |[here](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_filezilla)
    Tetralith  |[here](https://www.nsc.liu.se/support/2fa/clients/windows/filezilla/)
    Vera       |None. Closest is [here](https://www.c3se.chalmers.se/documentation/file_transfer/filesystem/#copying-files-into-and-out-of-the-system)

    <!-- markdownlint-enable MD013 -->

- Follow that procedure to transfer a file
- Use the file explorer to verify that files indeed are transferred

