---
tags:
  - lesson
  - session
  - file transfer
  - rsync
---

# File transfer using `rsync`

!!!- info "Learning outcomes"

    - Practice using the documentation of your favorite HPC cluster
    - Can transfer files using `rsync`

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation
      of their favorite HPC cluster
    - Learners have transferred files using `rsync`

    Lesson plan:

    ```mermaid
    gantt
      title File transfer using rsync
      dateFormat X
      axisFormat %s
      section First hour
      Prior : prior, 0, 5s
      Present: present, after prior, 2s
      %% It took me 6 mins, here I do that time x2
      Challenge: crit, challenge, after present, 12s
      %% Here I use the same time it took me to give feedback
      Feedback: feedback, after challenge, 6s
    ```

    Prior questions:

    - How can one do a file transfer from the terminal?
    - Can you name some programs that can do file transfer from the terminal?
    - Who has heard of `rsync`?
    - Who has already used `rsync`?

    Notes:
    - Bianca users will have the most complex procedure by far

## Why?

Fairly sure you'll want to upload or download files to your
favorite HPC cluster.
Here we do so.

We use a free and open-source graphical tool to do this,
called `rsync`.
It works under Linux, Mac and Windows.

## Exercises

???- question "Need a video?"

    Here `TODO` is a video that shows
    the solution of these exercises

### Exercise 1: transfer a file

Use [the UPPMAX documentation](http://docs.uppmax.uu.se/)
for help.

- Search for the procedure on how to transfer a file
  to/from Rackham using rsync

???- question "Where is that documentation?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Link to documentation
    -----------|------------
    Alvis      |Closest is [here](https://www.c3se.chalmers.se/documentation/for_users/intro-alvis/slides/#parallel-filesystems)
    Berzelius  |[Here](https://www.nsc.liu.se/support/copying-data/)
    Bianca     |[Here](https://docs.uppmax.uu.se/software/bianca_file_transfer_using_rsync/)
    COSMOS     |None. Closest is [here](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_wget_curl/)
    Dardel     |Closest is [here](https://support.pdc.kth.se/doc/support/?sub=data_management/file_transfer_scp/)
    Kebnekaise |[Here](https://docs.hpc2n.umu.se/documentation/filesystems/#rsync)
    LUMI       |.
    Rackham    |[Here](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_rsync/)
    Tetralith  |.
    Vera       |.

    <!-- markdownlint-enable MD013 -->

- Copy a file from your local computer to your Rackham home folder. Verify this worked.
- Copy a file from your Rackham home folder to your local computer. Verify this worked.
