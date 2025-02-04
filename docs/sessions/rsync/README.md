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

    The procedure can be found at
  [the UPPMAX page on using rsync on Rackham](https://docs.uppmax.uu.se/software/rsync_on_rackham/)

- Copy a file from your local computer to your Rackham home folder. Verify this worked.
- Copy a file from your Rackham home folder to your local computer. Verify this worked.
