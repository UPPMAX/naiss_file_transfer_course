---
tags:
  - lesson
  - login
  - log in
  - terminal
  - console
---

# Login via a terminal

!!!- info "Learning outcomes"

    - Practice using the documentation of your HPC center
    - Understand what a console environment is
    - Understand what a terminal is
    - Understand what a prompt is
    - Understand that after login, one is on a login node
    - If needed: has installed an SSH client
        - Windows: MobaXTerm
    - Can log in to the console environment using a terminal

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation of their HPC cluster
    - Learners understand what a console environment is
    - Learners understand what a terminal is
    - Learners understand what a prompt is
    - Learners understand that after login, one is on a login node
    - If needed, learners have installed an SSH client
        - Windows: MobaXTerm
    - Learners have logged in to the console environment using a terminal

    Teaching non-goals are:

    - Use X forwarding

    Prior questions:

    - What is a console environment?
    - What is a terminal?
    - What is a prompt?
    - What is SSH?
    - What is an SSH client?
    - Do you know any SSH clients?
    - What is a login node?
    - How to behave on a login node?

    Feedback questions:

    - Q: What is a console environment?
        - A: a text-only environment
    - Q: What is a terminal?
        - A: the text-only program to work with your computer
    - Q: What is a prompt?
        - A: the text before the place where you type
    - Q: What is the purpose of a prompt?
        - A: it shows, among others, in which folder you are
    - Q: What is SSH?
        - A: a protocol to transfer files
    - Q: What is an SSH client?
        - A: the program to transfer files via SSH with
    - Q: What is a login node?
        - A: the first computer of your HPC cluster you arrive at
    - Q: How to behave on a login node?
        - A: only do light calculations

## Why?

Using a terminal is powerful, where a remote desktop is clumsy.
Copy-pasting text to a terminal on the remote desktop
will quickly make you wonder if it cannot be done in a smarter way.

???- question "But, this is already in the prerequisites???"

    Yes, we indeed require you to have done this
    [in the prerequisites](../../prereqs/README.md).

    The goal of this sessions (see 'Learning outcomes' above)
    is to gain more understanding about what you've already done.

## A terminal and SSH clients

A terminal is a text-only program that can do many things, for example,
starting a program.
An SSH client is a program that allows you to connect to another computer.
Some SSH clients can run from a terminal or vice versa.

## Exercises

???- question "Need a video?"

    The solution of these exercises can be found in
    [the FAQ 'How can I login to an HPC cluster?'](../../faq/README.md#how-can-i-login-to-an-hpc-cluster)

???- question "How difficult will this be?"

    This depends mostly your operating system and HPC cluster:

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    Operating system|Difficulty|Reason
    ----------------|----------|-----------------------------------
    Linux           |Easy      |Pre-installed and working SSH agent
    MacOS           |Hard      |Access rights clash with SSH agent
    Windows         |Medium    |Need to install MobaXterm

    HPC Cluster|Difficulty|Reason
    -----------|----------|-------------------------------
    Alvis      |Hard      |Uses SSH keys, must be in SUNET
    Berzelius  |Easy      |Uses password
    Bianca     |Medium    |Uses password, must be in SUNET
    COSMOS     |Easy      |Uses password
    Dardel     |Medium    |Uses SSH keys
    Kebnekaise |Easy      |Uses password
    LUMI       |Medium    |Uses SSH keys
    Rackham    |Easy      |Uses password
    Tetralith  |Easy      |Uses password
    Vera       |Easy      |Uses password

    <!-- markdownlint-enable MD013 -->

Here, we log in to your HPC cluster's console environment via a terminal.

### Exercise 1: a terminal

Go to the documentation of your HPC center,
then answer these questions:

- Find the page on terminals, if any

???- question "I cannot find it. Where is it?"

    - [UPPMAX's Rackham](https://docs.uppmax.uu.se/software/terminal/)

    If it is absent, use your favorite search engine instead.

- What is a prompt?

???- question "Answer"

    The prompt is the text at the start of the line you can type on.
    It indicates that the terminal is waiting for user input.

### Exercise 2: install an SSH client if needed

Go to the documentation of your HPC center,
then answer these questions:

- Find the page on SSH clients

???- question "Answer"

    - [UPPMAX's Rackham](https://docs.uppmax.uu.se/software/ssh_client/)

    If it is absent, use your favorite search engine instead.

- Try starting a terminal and type `ssh` and then enter.
  If you do not get an error message, you are lucky to have an SSH client
  installed!

???- question "How does it look like when `ssh` works?"

    Your output will look similar to this:

    ```bash
    richel@richel-N141CU:~$ ssh
    usage: ssh [-46AaCfGgKkMNnqsTtVvXxYy] [-B bind_interface] [-b bind_address]
               [-c cipher_spec] [-D [bind_address:]port] [-E log_file]
               [-e escape_char] [-F configfile] [-I pkcs11] [-i identity_file]
               [-J destination] [-L address] [-l login_name] [-m mac_spec]
               [-O ctl_cmd] [-o option] [-P tag] [-p port] [-R address]
               [-S ctl_path] [-W host:port] [-w local_tun[:remote_tun]]
               destination [command [argument ...]]
           ssh [-Q query_option]
    ```

- If there is an error, install the recommended SSH client

### Exercise 3: login via SSH

Go to the documentation of your HPC center,
then answer these questions:

- Find the page about how to login to your HPC cluster via SSH and a password

???- question "I cannot find it. Where is it?"

    - [UPPMAX's Rackham](https://docs.uppmax.uu.se/getting_started/login_rackham_console_password/)

- Log in to your HPC cluster

???- question "How does that look like?"

    For UPPMAX's Rackham, your output will look similar to this:

    <!-- Indeed, line lengths beyond 80 characters -->
    <!-- markdownlint-disable MD013 -->

    ```bash
    sven@richel-N141CU:~/GitHubs/uppmax_intro_day_1/docs/sessions$ ssh -X sven@rackham.uppmax.uu.se
    sven@rackham.uppmax.uu.se's password:
    Last login: Thu Aug  8 18:35:17 2024 from vpnpool189-229.anst.uu.se
     _   _ ____  ____  __  __    _    __  __
    | | | |  _ \|  _ \|  \/  |  / \   \ \/ /   | System:    rackham1
    | | | | |_) | |_) | |\/| | / _ \   \  /    | User:      sven
    | |_| |  __/|  __/| |  | |/ ___ \  /  \    |
     \___/|_|   |_|   |_|  |_/_/   \_\/_/\_\   |

    ###############################################################################

            User Guides: https://docs.uppmax.uu.se/

            Write to support@uppmax.uu.se, if you have questions or comments.


    [sven@rackham1 ~]$
    ```

    <!-- markdownlint-enable MD013 -->


Welcome on a login node!
