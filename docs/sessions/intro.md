---
tags:
  - session
  - lesson
  - intro
  - introduction
  - overview
---

# Introduction

!!!- info "Learning outcomes"

    - Can find an overview of the course
    - Have seen the file transfer tools at this course

???- question "For teachers"

    Teaching goals are:

    - Learners can find an overview of the course
    - Learners have seen the file transfer tools at this course

    Lesson plan:

    ```mermaid
    gantt
      title Introduction
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
    - What does one need to do a file transfer?
    - How does it look like to do a file transfer?
    - Can you name some programs that can do file transfer?

## Overview

Here is an overview of the sessions and their relations:

```mermaid
flowchart TD
  account[Account for HPC cluster]
  filezilla[1.Transfer files using FileZilla]
  login_console[2.Login to console environment]
  rsync[3.Transfer files using rsync]
  scp[4.Transfer files using scp]
  sftp[5.Transfer files using sftp]

  account --> filezilla
  account --> login_console
  login_console --> rsync
  login_console --> scp
  login_console --> sftp
```

As per [prerequisites](../prereqs/README.md):

- you already have an account at an HPC cluster
- you can already log in to a console environment at your HPC cluster
  using SSH

Here is an overview of the file transfer tools in this course:

Tool       |Features
-----------|-----------------------------------------------------------
FileZilla  |Graphical, intuitive, simple
`rsync`    |Terminal, powerful, flexible, feels like a regular file copy
`scp`      |Terminal, simple, feels like a regular file copy
`sftp`     |Terminal, simple, feels like a file transfer portal

