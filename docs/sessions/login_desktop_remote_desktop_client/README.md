---
tags:
  - lesson
  - login
  - log in
  - remote desktop
  - website
  - ThinLinc
---

# Login to a desktop environment via a remote desktop client

!!!- info "Learning outcomes"

    - Practice using the documentation of your HPC center
    - Can log in to a remote desktop environment
      using a remote desktop client

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation of their HPC cluster
    - Learners can log in to a remote desktop environment
      using a remote desktop client

## What is A remote desktop client?

![A remote desktop environment, accessed via a local ThinLinc client](desktop_program.png)

> A remote desktop environment, accessed via a local ThinLinc client

A remote desktop client is a program we run on our local computer
to access a remote desktop environment.

Depending on your HPC cluster, there may be a different
remote desktop client being recommended.

HPC cluster|Remote desktop client
-----------|---------------------
Alvis      |Remmina, `krdp`
Bianca     |None
COSMOS     |ThinLinc
Dardel     |ThinLinc
Kebnekaise |ThinLinc
Pelle      |ThinLinc
Tetralith  |ThinLinc

## Exercises

???- question "Need a video?"

    The solution of these exercises can be found:

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC cluster|YouTube video
    -----------|----------------------------------------------------------------
    Alvis      |[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/75)
    Bianca     |Impossible, hence no video
    COSMOS     |[YouTube video](https://youtu.be/wn7TgElj_Ng)
    Dardel     |[YouTube video](https://youtu.be/qgI2SigIuCk)
    Kebnekaise |[YouTube video](https://youtu.be/_jpj0GW9ASc)
    Pelle      |[YouTube video](https://youtu.be/0rVy83X89Go)
    Tetralith  |[YouTube video](https://youtu.be/JsHzQSFNGxY)

    <!-- markdownlint-enable MD013 -->

???- question "How difficult will this be?"

    This depends only on your HPC cluster:

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    TODO: revise this table

    HPC Cluster|Difficulty|Reason
    -----------|----------|-------------------------------
    Alvis      |Medium    |Uses SSH keys, must be in SUNET
    Berzelius  |Easy      |Uses password
    Bianca     |Medium    |Uses password, must be in SUNET
    COSMOS     |Easy      |Uses password
    Dardel     |Medium    |Uses SSH keys
    Kebnekaise |Easy      |Uses password
    LUMI       |Medium    |Uses SSH keys
    Pelle      |Easy      |Uses password
    Tetralith  |Easy      |Uses password
    Vera       |Easy      |Uses password

    <!-- markdownlint-enable MD013 -->

Here, we log in to your HPC cluster's remote desktop environment.

### Exercise 1: login using a local ThinLinc client

Go to the documentation of your HPC center,
then answer these questions:

- Find the page about how to login to your HPC cluster's remote desktop
  environment using a local ThinLinc client

???- question "I cannot find it. Where is it?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC cluster|Documentation
    -----------|---------------------------------------------------------------------------------------------------------
    Alvis      |[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/75)
    Bianca     |[Documentation](https://docs.uppmax.uu.se/software/thinlinc_on_bianca/)
    COSMOS     |[Documentation](https://lunarc-documentation.readthedocs.io/en/latest/getting_started/using_hpc_desktop/)
    Dardel     |[Documentation](https://menzzana.github.io/NAISS-support-web/contact/contact_support/?sub=login/interactive_hpc/)
    Kebnekaise |[Documentation](https://docs.hpc2n.umu.se/documentation/access/)
    Pelle      |[Documentation](https://docs.uppmax.uu.se/getting_started/login_pelle_remote_desktop_local_thinlinc_client/)
    Tetralith  |[Documentation](https://www.nsc.liu.se/support/graphics/)

    <!-- markdownlint-enable MD013 -->

- Log in to your HPC cluster using a local ThinLinc client
