---
tags:
  - lesson
  - login
  - log in
  - remote desktop
  - website
  - ThinLinc
---

# Login to a remote desktop

!!!- info "Learning outcomes"

    - Practice using the documentation of your HPC center
    - Understand what a remote desktop environment is
    - Can log in to a remote desktop environment using a website
    - (optional) Can log in to a remote desktop environment
      using a local ThinLinc client

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation of their HPC cluster
    - Learners understand what a remote desktop environment is
    - Learners can log in to a remote desktop environment using a website
    - (optional) Learners can log in to a remote desktop environment
      using a local ThinLinc client

    Teaching non-goals are:

    - Explain that the website used uses ThinLinc

    Prior questions:

    - What is a remote desktop environment?
    - TODO

    Feedback questions:

    - Q: What is a remote desktop environment?
        - A: a typical graphical environment to interact with your computer
    - Q: TODO

## What is a remote desktop environment?

- TODO: add image of remote desktop environment using website
- TODO: add image of remote desktop environment using local ThinLinc client

You are very likely to be using a desktop environment
of your local computer right now.
All NAISS HPC clusters provide such a desktop environment, yet remotely.

## Why login to a remote desktop environment?

A remote desktop environment is more a more familiar way to work with
computers (and HPC clusters) for most people.

A remote desktop environment, especially via a website,
is perfect for introducing your low-tech-savvy colleague
to the NAISS HPC clusters.

## Two ways to access a remote desktop

Method                 |Features
-----------------------|-----------------------------------------------
Website                |Requires no installation, clunkier to work with
A local ThinLinc client|Need to install ThinLinc, works more smoothly

## Exercises

???- question "Need a video?"

    The solution of these exercises can be found:

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC cluster|Login method         |YouTube video
    -----------|---------------------|---------------------------------------------
    Alvis      |Local ThinLinc client|[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/75)
    Alvis      |Website              |[YouTube video](https://youtu.be/KO98JvEB2oc)
    Bianca     |Local ThinLinc client|Impossible, hence no video
    Bianca     |Website              |[YouTube video](https://youtu.be/Ni9nyCf7me8)
    COSMOS     |Local ThinLinc client|[YouTube video](https://youtu.be/wn7TgElj_Ng)
    COSMOS     |Website              |[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/75)
    Dardel     |Local ThinLinc client|[YouTube video](https://youtu.be/qgI2SigIuCk)
    Dardel     |Website              |[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/75)
    Kebnekaise |Local ThinLinc client|[YouTube video](https://youtu.be/_jpj0GW9ASc)
    Kebnekaise |Website              |[YouTube video](https://youtu.be/_O4dQn8zPaw)
    Pelle      |Local ThinLinc client|[YouTube video](https://youtu.be/0rVy83X89Go)
    Pelle      |Website              |[YouTube video](https://youtu.be/XjLMA0cAu1o)
    Rackham    |Local ThinLinc client|[YouTube video](https://youtu.be/PqEpsn74l0g)
    Rackham    |Website              |[YouTube video](https://youtu.be/HQ2iuKRPabc)
    Tetralith  |Local ThinLinc client|[YouTube video](https://youtu.be/JsHzQSFNGxY)
    Tetralith  |Website              |[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/75)

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
    Rackham    |Easy      |Uses password
    Tetralith  |Easy      |Uses password
    Vera       |Easy      |Uses password

    <!-- markdownlint-enable MD013 -->

Here, we log in to your HPC cluster's remote desktop environment.

### Exercise 1: login to your HPC cluster's remote desktop environment using a website

Go to the documentation of your HPC center,
then answer these questions:

- Find the page about how to login to your HPC cluster's remote desktop
  environment using a website

???- question "I cannot find it. Where is it?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC cluster|Login method         |Documentation
    -----------|---------------------|---------------------------------------------------------------------------------------------------
    Alvis      |Website              |[Documentation](https://www.c3se.chalmers.se/documentation/connecting/remote_graphics/)
    Bianca     |Website              |[Documentation](https://docs.uppmax.uu.se/getting_started/login_bianca_remote_desktop_website/)
    Dardel     |Website              |[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/75)
    Kebnekaise |Website              |[Documentation](https://docs.hpc2n.umu.se/documentation/access/)
    Pelle      |Website              |[Documentation](https://docs.uppmax.uu.se/getting_started/login_pelle_remote_desktop_website/)
    Rackham    |Website              |[Documentation](https://docs.uppmax.uu.se/getting_started/login_rackham_remote_desktop_website/)
    Tetralith  |Website              |[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/75)

    <!-- markdownlint-enable MD013 -->

- Log in to your HPC cluster's remote desktop environment using a website

### (optional) Exercise 2: login using a local ThinLinc client

Go to the documentation of your HPC center,
then answer these questions:

- Find the page about how to login to your HPC cluster's remote desktop
  environment using a local ThinLinc client

???- question "I cannot find it. Where is it?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC cluster|Login method         |Documentation
    -----------|---------------------|------------------------------------------------------------------------------------------------------------
    Alvis      |Local ThinLinc client|[TODO](https://github.com/UPPMAX/naiss_file_transfer_course/issues/75)
    Bianca     |Local ThinLinc client|[Documentation](https://docs.uppmax.uu.se/software/thinlinc_on_bianca/)
    COSMOS     |Local ThinLinc client|[Documentation](https://lunarc-documentation.readthedocs.io/en/latest/getting_started/using_hpc_desktop/)
    Dardel     |Local ThinLinc client|[Documentation](https://support.pdc.kth.se/doc/contact/contact_support/?sub=login/interactive_hpc/)
    Kebnekaise |Local ThinLinc client|[Documentation](https://docs.hpc2n.umu.se/documentation/access/)
    Pelle      |Local ThinLinc client|[Documentation](https://docs.uppmax.uu.se/getting_started/login_pelle_remote_desktop_local_thinlinc_client/)
    Rackham    |Local ThinLinc client|[Documentation](https://docs.uppmax.uu.se/getting_started/login_rackham_console_password/)
    Tetralith  |Local ThinLinc client|[Documentation](https://www.nsc.liu.se/support/graphics/)

    <!-- markdownlint-enable MD013 -->

- Log in to your HPC cluster using a local ThinLinc client
