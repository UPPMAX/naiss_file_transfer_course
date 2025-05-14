---
tags:
  - prereqs
  - prerequisites
  - requirements
  - preparation
  - to do before
---

# Prerequisites

???- question "For teachers: how did we decide upon these?"

    See [here](https://github.com/UPPMAX/naiss_file_transfer_course/issues/14)

These are the **four** prerequisites for following this course:

- Prerequisite 1/4:
  Be able to login to your cluster's remote desktop environment
- Prerequisite 2/4:Be able to login using an SSH client
- Prerequisite 3/4: Be able to navigate the filesystem under Linux
- Prerequisite 4/4: have a good Zoom setup

???- question "Any questions about this?"

    See [the 'Prerequisites' section of the Frequently Asked Questions](../faq/README.md#prerequisites)

???- question "How can I check this?"

    See [the 'Prerequisites' section of the Frequently Asked Questions](../faq/README.md#prerequisites)

???- question "What if I have another question?"

    See the [Frequently Asked Questions](../faq/README.md)

## Preparations of your (local) computer environment

- **[FileZilla](https://filezilla-project.org/download.php?type=client)** installed
- A **terminal**
    - **Linux and Mac** users are **good to go** with the built-in terminal
        - Most terminal transfer tools are included.
        - Install `rsync` on Mac (if needed, see below)
          with `brew rsync` in the terminal
    - **Windows** users are recommended to install
      [**MobaXterm**](https://mobaxterm.mobatek.net/)
        - MobaXterm has all needed transfer tools included.
        - `CMD` and PowerShell does not natively include
          some of the transfer tools.
            - It may be a hard time trying to install them during class session.
- The transfer tools may or may not be installed,
see the terminal point above. Check below.

???- question "Test to see if you have the needed terminal transfer tools installed"

    - Open the terminal you will use.
    - Test the following commands as they are. There will be some kind of error output.
        - If they are related to missing arguments you are OK.
        - If they tell you the tool is not found it is not there,
          you need to install it:
    - `scp`
    - `sftp`
    - `rsync`
