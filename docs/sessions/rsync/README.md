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

    Feedback:

    - When would you recommend a colleague to use `rsync`, and when not?

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

    HPC Cluster|YouTube video
    -----------|------
    Alvis      |[YouTube video](https://youtu.be/dzqQ-HBjIfo)
    Berzelius  |Cannot: is not a NAISS cluster
    Bianca     |[YouTube video](https://youtu.be/QlGhgPm_h7I)
    COSMOS     |[YouTube video](https://youtu.be/hpug-nhLZ6Y)
    Dardel     |[YouTube video](https://youtu.be/IustC5zai68)
    Kebnekaise |Cannot: is not a NAISS cluster
    LUMI       |[YouTube video](https://youtu.be/-UONn-4CJWs)
    Pelle      |[YouTube video](https://youtu.be/mEo4mfSmpp0)
    Tetralith  |[YouTube video](https://youtu.be/3-OF8nkCdtM)
    Vera       |Cannot: is not a NAISS cluster

    <!-- markdownlint-enable MD013 -->

???- question "How difficult will this be?"

    This depends on:

    - operating system
    - your HPC cluster

    Per operating system, it differs how easy it is to install `rsync`:

    Operating system|Difficulty
    ----------------|----------
    Linux           |Easy
    Mac             |Unsure
    Windows         |Unsure

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Difficulty|Reason
    -----------|----------|-----------------------------
    Alvis      |Medium    |No specialized documentation
    Berzelius  |Easy      |Has specialized documentation
    Bianca     |Hard      |Has specialized documentation, complex procedure
    COSMOS     |Medium    |No specialized documentation
    Dardel     |Medium    |No specialized documentation
    Kebnekaise |Easy      |Has specialized documentation
    LUMI       |Medium    |[CSC refuses to document this](https://github.com/UPPMAX/naiss_file_transfer_course/issues/40#issuecomment-3233169329), but [UPPMAX has specialized documentation](https://docs.uppmax.uu.se/naiss/lumi_file_transfer_using_rsync/)
    Pelle      |Easy      |Has specialized documentation
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

    HPC Cluster|Documentation
    -----------|-------------
    Alvis      |[Documentation that is closest](https://www.c3se.chalmers.se/documentation/file_transfer/bulk_data_transfer/). For now, use [the UPPMAX documentation](https://docs.uppmax.uu.se/naiss/alvis_file_transfer_using_rsync/)
    Berzelius  |[Documentation](https://www.nsc.liu.se/support/copying-data/)
    Bianca     |[Documentation](https://docs.uppmax.uu.se/software/bianca_file_transfer_using_rsync/)
    COSMOS     |None. [Documentation that is closest](https://lunarc-documentation.readthedocs.io/en/latest/guides/data_transfer/io_wget_curl/). Use [the `scp` documentation](../scp/README.md) and replace `scp` by `rsync`
    Dardel     |[Documentation that is closest](https://menzzana.github.io/NAISS-support-web/contact/contact_support/?sub=data_management/file_transfer_scp/)
    Kebnekaise |[Documentation](https://docs.hpc2n.umu.se/documentation/filesystems/#rsync)
    LUMI       |[CSC refuses to document this](https://github.com/UPPMAX/naiss_file_transfer_course/issues/40#issuecomment-3233169329), but [UPPMAX has specialized documentation](https://docs.uppmax.uu.se/naiss/lumi_file_transfer_using_rsync/)
    Pelle      |[Documentation](https://docs.uppmax.uu.se/software/pelle_file_transfer_using_rsync/)
    Sigma      |[Documentation that is closest](https://www.c3se.chalmers.se/documentation/file_transfer/bulk_data_transfer/). For now, use [the UPPMAX documentation](https://docs.uppmax.uu.se/naiss/alvis_file_transfer_using_rsync/)
    Tetralith  |[Documentation](https://www.nsc.liu.se/support/copying-data/)
    Vera       |[Documentation that is closest](https://www.c3se.chalmers.se/documentation/file_transfer/bulk_data_transfer/). For now, use [the UPPMAX documentation](https://docs.uppmax.uu.se/naiss/alvis_file_transfer_using_rsync/)

    <!-- markdownlint-enable MD013 -->

If the center maintaining you HPC cluster has not documented how to use
`rsync`,
follow [the Pelle documentation](https://docs.uppmax.uu.se/software/pelle_file_transfer_using_rsync/).

- Copy a file from your local computer to your HPC cluster's home folder.
  Verify that this worked.
- Copy a file from your HPC cluster's home folder to your local computer.
  Verify that this worked.

## (optional) Exercise 2: transfer a compressed file

One of the biggest bottlenecks for file transfer speed is file size.

In this optional exercise, we'll compress the file before transferring,
and decompress it at its destination. `rsync` can do this,
by adding the `--compress` flag, e.g.

```bash
rsync --compress my_local_file.txt sven@pelle.uppmax.uu.se:/home/sven/
```

- Download an example file from [`examplefile.com`](https://www.examplefile.com/),
  that has the size you are interested in,
  for example
  [this 100 MB text file](https://www.examplefile.com/file-download/25)

- Let `rsync` transfer the file with and without using the `--compress` flag.
  Does the compress and decompress make the operation faster as a whole?

???- question "Answer"

    This depends.

    The slower the network/internet connection is, the likelier it is that
    `--compress` will make the transfer faster.
