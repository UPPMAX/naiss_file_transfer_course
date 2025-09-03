---
tags:
  - lesson
  - session
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
    [CyberDuck](https://cyberduck.io/)        |Linux, Mac, Windows
    [WinSCP](https://winscp.net/eng/index.php)|Windows


## Exercises

???- question "Need a video?"

    Here are videos that do this exercises for the different HPC clusters:

    HPC Cluster|YouTube video
    -----------|------
    Alvis      |[YouTube video](https://youtu.be/A8zfd0o0uzI)
    Berzelius  |Cannot: is not a NAISS cluster
    Bianca     |[YouTube video](https://youtu.be/V-iPQLjvByc)
    COSMOS     |[YouTube video](https://youtu.be/T4qqN_ljsS8)
    Dardel     |[YouTube video](https://youtu.be/_3EmkN619Xo)
    Kebnekaise |Cannot: is not a NAISS cluster
    LUMI       |[YouTube video](https://youtu.be/PjzMuMIyj40)
    Pelle      |[YouTube video](https://youtu.be/NOHYNj1vW28)
    Rackham    |[YouTube video](https://youtu.be/CyJbWHZbvJU)
    Tetralith  |[YouTube video](https://youtu.be/qzV3oY5fZbE)
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
    LUMI       |Hard      |Need `.ppk` files, [CSC refuses to document this](https://github.com/UPPMAX/naiss_file_transfer_course/issues/34#issuecomment-2882884189), however there is [specialized documentation at UPPMAX](https://docs.uppmax.uu.se/naiss/lumi_file_transfer_using_filezilla/)
    Pelle      |Easy      |Simple procedure, specialized documentation
    Rackham    |Easy      |Simple procedure, specialized documentation
    Tetralith  |Easy      |Simple procedure, specialized documentation
    Vera       |Medium    |No specialized documentation yet

    <!-- markdownlint-enable MD013 -->

## Exercise 1: transfer a file

Use the documentation of your HPC cluster for help.

- **For maximally 5 minutes**, search for the procedure on how to transfer a file
  to/from your HPC cluster using FileZilla. Take a look at the answer if you
  cannot find it: sometimes there *is* no documentation

???- question "Where is that documentation?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Documentation
    -----------|------------
    Alvis      |None. [Documentation that is closest](https://www.c3se.chalmers.se/documentation/file_transfer/bulk_data_transfer/). Use [the UPPMAX documentation](https://docs.uppmax.uu.se/naiss/alvis_file_transfer_using_filezilla/) instead
    Berzelius  |[Documentation](https://www.nsc.liu.se/support/2fa/clients/windows/filezilla/)
    Bianca     |[Documentation](https://docs.uppmax.uu.se/software/bianca_file_transfer_using_filezilla/)
    COSMOS     |None. [Documentation that is closest](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_winscp/). Use [this documentation](https://docs.uppmax.uu.se/naiss/cosmos_file_transfer_using_filezilla/) instead
    Dardel     |None. [Documentation that is closest](https://support.pdc.kth.se/doc/contact/contact_support/), under 'Data management -> File transfer'. Use [this documentation](https://docs.uppmax.uu.se/naiss/dardel_file_transfer_using_filezilla/) instead
    Kebnekaise |[Documentation (Linux and Mac)](https://www.hpc2n.umu.se/documentation/guides/linux-connection) and [documentation (Windows)](https://www.hpc2n.umu.se/documentation/guides/windows-connection)
    LUMI       |None. [CSC refuses to document this](https://github.com/UPPMAX/naiss_file_transfer_course/issues/34#issuecomment-2882884189). Use [the UPPMAX documentation](https://docs.uppmax.uu.se/naiss/lumi_file_transfer_using_filezilla/) instead
    Pelle      |[Documentation](https://docs.uppmax.uu.se/software/pelle_file_transfer_using_filezilla)
    Rackham    |[Documentation](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_filezilla)
    Tetralith  |[Documentation](https://www.nsc.liu.se/support/2fa/clients/windows/filezilla/)
    Vera       |None. [Documentation that is closest](https://www.c3se.chalmers.se/documentation/file_transfer/filesystem/#copying-files-into-and-out-of-the-system)

    <!-- markdownlint-enable MD013 -->

- Follow that procedure to transfer a file
- Use the file explorer to verify that files indeed are transferred
