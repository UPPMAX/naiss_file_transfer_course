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

We use a free and open-source command-line tool to do this,
called `rsync`.
It works under Linux, Mac and Windows.

## Exercises

???- question "Need a video?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Link to documentation
    -----------|------------
    Alvis      |[here](https://youtu.be/dzqQ-HBjIfo)
    Berzelius  |.
    Bianca     |[here](https://youtu.be/QlGhgPm_h7I)
    COSMOS     |.
    Dardel     |[here](https://youtu.be/IustC5zai68)
    Kebnekaise |.
    LUMI       |.
    Rackham    |[here](https://youtu.be/p-27aIh2acA)
    Tetralith  |[here](https://youtu.be/3-OF8nkCdtM)
    Vera       |.

    <!-- markdownlint-enable MD013 -->

???- question "How difficult will this be?"

    This depends mostly on your HPC cluster:

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Difficulty|Reason
    -----------|----------|-----------------------------
    Alvis      |Medium    |No specialized documentation
    Berzelius  |Easy      |Has specialized documentation
    Bianca     |Hard      |Has specialized documentation, complex procedure
    COSMOS     |Medium    |No specialized documentation
    Dardel     |Medium    |No specialized documentation
    Kebnekaise |Easy      |Has specialized documentation
    LUMI       |Easy      |Has specialized documentation
    Rackham    |Easy      |Has specialized documentation
    Tetralith  |Easy      |Has specialized documentation
    Vera       |Easy      |Has specialized documentation

    <!-- markdownlint-enable MD013 -->

### Exercise 1: transfer a file

Use the documentation of your HPC cluster.

- **For maximally 5 minutes**, search for how to transfer files
  to/from your HPC cluster
  using `rsync`. Which URL is it described?
  Take a look at the answer if you
  cannot find it: sometimes there *is* no documentation

???- question "Where is that documentation?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Link to documentation
    -----------|------------
    Alvis      |Closest is [here](https://www.c3se.chalmers.se/documentation/file_transfer/bulk_data_transfer/). For now, use [here](https://docs.uppmax.uu.se/naiss/alvis_file_transfer_using_rsync/)
    Berzelius  |[Here](https://www.nsc.liu.se/support/copying-data/)
    Bianca     |[Here](https://docs.uppmax.uu.se/software/bianca_file_transfer_using_rsync/)
    COSMOS     |None. Closest is [here](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_wget_curl/). Use [the `scp` documentation](../scp/README.md) and replace `scp` by `rsync`
    Dardel     |Closest is [here](https://support.pdc.kth.se/doc/contact/contact_support/?sub=data_management/file_transfer_scp/)
    Kebnekaise |[Here](https://docs.hpc2n.umu.se/documentation/filesystems/#rsync)
    LUMI       |[here](https://docs.lumi-supercomputer.eu/firststeps/movingdata/#copying-files-with-rsync)
    Rackham    |[Here](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_rsync/)
    Tetralith  |[Here](https://www.nsc.liu.se/support/copying-data/)
    Vera       |[Here](https://vera-doc.psc.edu/#transferring-files)

    <!-- markdownlint-enable MD013 -->

If the center maintaining you HPC cluster has not documented how to use
`rsync`, follow [the Rackham documentation](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_rsync/).

- Copy a file from your local computer to your Rackham home folder. Verify this worked.
- Copy a file from your Rackham home folder to your local computer. Verify this worked.
