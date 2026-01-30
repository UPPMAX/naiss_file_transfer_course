---
tags:
  - lesson
  - login
  - log in
  - remote desktop
  - website
  - web browser
  - browser
  - Firefox
  - Opera
  - Chrome
  - Chromium
---

# Login to a desktop environment via a web browser

!!!- info "Learning outcomes"

    - Practice using the documentation of your HPC center
    - Understand what a remote desktop environment is
    - Can log in to a remote desktop environment using a web browser

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation of their HPC cluster
    - Learners understand what a remote desktop environment is
    - Learners can log in to a remote desktop environment using a web browser

    Teaching non-goals are:

    - Explain that the website used uses ThinLinc

    Prior questions:

    - What is a remote desktop environment?

    Feedback questions:

    - Q: What is a remote desktop environment?
        - A: a typical graphical environment to interact with your computer

## What is a remote desktop environment?

![A remote desktop environment, accessed via a web browser](desktop_web_browser.png)

> A remote desktop environment, accessed via a web browser

You are very likely to be using a desktop environment
of your local computer right now.
All NAISS HPC clusters provide such a desktop environment, yet remotely.

## Why login to a remote desktop environment?

A remote desktop environment is more a more familiar way to work with
computers (and HPC clusters) for most people.

A remote desktop environment, especially via a web browser,
is perfect for introducing your low-tech-savvy colleague
to the NAISS HPC clusters.

## Why use a web browser?

Because you've probably already installed one :-)

## Exercises

???- question "Need a video?"

    The solution of these exercises can be found:

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC cluster|YouTube video
    -----------|---------------------------------------------
    Alvis      |[YouTube video](https://youtu.be/KO98JvEB2oc)
    Bianca     |[YouTube video](https://youtu.be/Ni9nyCf7me8)
    COSMOS     |[YouTube video](https://youtu.be/57QB1nvdYts)
    Dardel     |[YouTube video showing that this is impossible](https://youtu.be/z4F5eMzxK2c)
    Kebnekaise |[YouTube video](https://youtu.be/_O4dQn8zPaw)
    LUMI       |Not needed yet
    Pelle      |[YouTube video](https://youtu.be/XjLMA0cAu1o)
    Tetralith  |[YouTube video showing that this is impossible](https://youtu.be/orcA9zXkHWs)

    <!-- markdownlint-enable MD013 -->

???- question "How difficult will this be?"

    This depends only on your HPC cluster:

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Difficulty|Reason
    -----------|----------|-------------------------------
    Alvis      |Medium    |Uses SSH keys, must be in SUNET
    Berzelius  |Easy      |Uses password
    Bianca     |Medium    |Uses password, must be in SUNET
    COSMOS     |Easy      |Uses password
    Dardel     |Impossible|Cannot access Dardel via a web browser
    Kebnekaise |Easy      |Uses password
    LUMI       |Medium    |Uses SSH keys
    Pelle      |Medium    |Uses password, uses 2FA
    Tetralith  |Impossible|Cannot access Tetralith via a web browser
    Vera       |Easy      |Uses password

    <!-- markdownlint-enable MD013 -->

Here, we log in to your HPC cluster's remote desktop environment
using a web browser,
starting from the documentation of your favorite HPC cluster.

???- question "Where is the documentation of my favorite HPC cluster?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Documentation
    -----------|------------
    Alvis      |[Documentation](https://www.c3se.chalmers.se)
    Berzelius  |[Documentation](https://www.nsc.liu.se)
    Bianca     |[Documentation](https://docs.uppmax.uu.se)
    COSMOS     |[Documentation](https://lunarc-documentation.readthedocs.io)
    Dardel     |[Documentation](https://menzzana.github.io/NAISS-support-web)
    Kebnekaise |[Documentation](https://docs.hpc2n.umu.se/)
    LUMI       |[Documentation](https://docs.csc.fi)
    Pelle      |[Documentation](https://docs.uppmax.uu.se)
    Rackham    |[Documentation](https://docs.uppmax.uu.se)
    Tetralith  |[Documentation](https://www.nsc.liu.se)
    Vera       |[Documentation](https://www.c3se.chalmers.se)

    <!-- markdownlint-enable MD013 -->

### Exercise 1: login to your HPC cluster's remote desktop environment

Go to the documentation of your HPC center,
then answer these questions:

- Find the page about how to login to your HPC cluster's remote desktop
  environment using a web browser

???- question "I cannot find it. Where is it?"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC cluster|Documentation
    -----------|---------------------------------------------------------------------------------------------------
    Alvis      |[Documentation](https://www.c3se.chalmers.se/documentation/connecting/remote_graphics/)
    Bianca     |[Documentation](https://docs.uppmax.uu.se/getting_started/login_bianca_remote_desktop_website/)
    COSMOS     |[Documentation](https://lunarc-documentation.readthedocs.io/en/latest/getting_started/using_hpc_desktop/#accessing-the-lunarc-hpc-desktop-from-a-web-browser)
    Dardel     |[Documentation which states that this is impossible](https://menzzana.github.io/NAISS-support-web/dardel/faq/faq/#does-dardel-have-a-desktop-environment-that-can-be-accessed-from-a-web-browser)
    Kebnekaise |[Documentation](https://docs.hpc2n.umu.se/documentation/access/)
    LUMI       |Not needed yet
    Pelle      |[Documentation](https://docs.uppmax.uu.se/getting_started/login_pelle_remote_desktop_website/)
    Tetralith  |[Documentation that does not mention this](https://www.nsc.liu.se/support/2fa/clients/thinlinc/)

    <!-- markdownlint-enable MD013 -->

- Log in to your HPC cluster's remote desktop environment using a web browser
