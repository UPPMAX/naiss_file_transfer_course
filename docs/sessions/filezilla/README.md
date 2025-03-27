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

    Lesson plan:

    ```mermaid
    gantt
      title File transfer using FileZilla
      dateFormat X
      axisFormat %s
      section First hour
      Prior : prior, 0, 5s
      Present: present, after prior, 2s
      %% It took me 7 mins, here I do that time x2
      Challenge: crit, challenge, after present, 14s
      Feedback: feedback, after challenge, 7s
    ```

    Prior questions:

    - What is a file tranfer?
    - How can one do a file transfer?
    - Can you name some programs that can do file transfer?
    - Who has heard of FileZilla?
    - Who has already used FileZilla?
    - What are features of FileZilla?

![FileZilla connected to Rackham](filezilla_login_to_rackham.png)

> FileZilla being able to do file transfer to/from
> UPPMAX's Rackham HPC cluster.

## Why?

Fairly sure you'll want to upload or download files to your HPC cluster.
Here we do so.

We use a free and open-source graphical tool to do this,
called FileZilla.
It works under Linux, Mac and Windows.

## Exercises

???- question "Need a video?"

    Here are videos that do this exercises for the differt HPC clusters:

    You can find a video with solutions to these exercises:

    HPC Cluster|Link to video
    -----------|-------------------------------------------------
    Alvis      |[Here](https://youtu.be/A8zfd0o0uzI)
    Berzelius  |Cannot: is not a NAISS cluster
    Bianca     |[Here](https://youtu.be/V-iPQLjvByc)
    COSMOS     |[Here](https://youtu.be/T4qqN_ljsS8)
    Dardel     |[Here](https://youtu.be/_3EmkN619Xo)
    Kebnekaise |Cannot: is not a NAISS cluster
    LUMI       |To do
    Rackham    |[Here](https://youtu.be/CyJbWHZbvJU)
    Tetralith  |[Here](https://youtu.be/qzV3oY5fZbE)
    Vera       |Cannot: is not a NAISS cluster

### Exercise 0: pick a Zoom room

We will use breakout rooms, as this is best for learning.
Ideally, each breakout room has 2 learners for the same HPC cluster.
As it cannot be predicted how many learners show up per cluster,
we do this dynamically:

- Go to the main breakout room of your HPC cluster

HPC cluster name|Main breakout room
----------------|------------------
Alvis           |Room 1
Bianca          |Room 2
COSMOS          |Room 3
Dardel          |Room 4
Kebnekaise      |Room 5
Rackham         |Room 6
Tetralith       |Room 7
.               |Room 8
.               |Room 9

- When the main breakout room reaches 4 learners, decide upon 2 to
  move to a free breakout room. Repeat until the group size is below 4.
- When you are the only one in your main breakout room,
  the teachers will let you decide to either work in silence or
  to join another group. You will be takes care of well :-)

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
    Alvis      |None. Closest is [here](https://www.c3se.chalmers.se/documentation/for_users/filesystem/#copying-files-into-and-out-of-the-system). Use [this documentation](https://docs.uppmax.uu.se/naiss/alvis_file_transfer_using_filezilla/) instead
    Berzelius  |[here](https://www.nsc.liu.se/support/2fa/clients/windows/filezilla/)
    Bianca     |[here](https://docs.uppmax.uu.se/software/bianca_file_transfer_using_filezilla/)
    COSMOS     |None. Closest is [here](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_winscp/). Use [this documentation](https://docs.uppmax.uu.se/naiss/cosmos_file_transfer_using_filezilla/) instead
    Dardel     |None. Closest is [here](https://support.pdc.kth.se/doc/contact/contact_support/), under 'Data management -> File transfer'. Use [this documentation](https://docs.uppmax.uu.se/naiss/dardel_file_transfer_using_filezilla/) instead
    Kebnekaise |[here (Linux and Mac)](https://www.hpc2n.umu.se/documentation/guides/linux-connection) and [here (Windows)](https://www.hpc2n.umu.se/documentation/guides/windows-connection)
    LUMI       |To do
    Rackham    |[here](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_filezilla)
    Tetralith  |[here](https://www.nsc.liu.se/support/2fa/clients/windows/filezilla/)
    Vera       |None. Closest is [here](https://www.c3se.chalmers.se/documentation/for_users/filesystem/#copying-files-into-and-out-of-the-system).

    <!-- markdownlint-enable MD013 -->

- Follow that procedure to transfer a file
- Use the file explorer to verify that files indeed are transferred


## Some other tools

!!!- tip "Graphical tools"

    - [WinSCP](https://winscp.net/eng/index.php) - for Windows
    - [CyberDuck](https://cyberduck.io/) - other popular tool, available for all platforms
  
