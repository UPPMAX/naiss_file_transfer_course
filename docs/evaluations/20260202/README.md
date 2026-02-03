# Evaluation 2026-02-02

- [Lesson plan](../../lesson_plans/20260202/README.md)
- [Evaluation](../../evaluations/20260202/README.md)
- [Reflection](../../reflections/20260202/README.md)
- Number of registrations: 64
- Number of learners present: 25 (41% show-up rate)
- Number of responses: 15 (60% fill-in rate)
- Success score: 74%
- [Chat log](meeting_saved_new_chat.txt)
- [Evaluation, by the learners](evaluation.csv)
- [Anonymous feedback from the learners](any_feedback.csv)

## Analysis

- [Analysis script](analyse.R)
- [Average confidences](average_confidences.csv)
- [Success score](success_score.txt)
- [Any other feedback](other_feedback.txt)

![All confidences](all_confidences.png)

![Average confidence per question](average_confidences_per_question.png)

![Confidences per question](confidences_per_question.png)

These are all the questions:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Question                                                             |Mean confidence
---------------------------------------------------------------------|---------------
I am comfortable using the documentation of my HPC center            |3.6
I can compress and archive files before transferring                 |3.3
I can log in to my favorite HPC cluster using SSH                    |4.2
I can log in to my favorite HPC cluster using a remote desktop client|3.7
I can log in to my favorite HPC cluster using a web browser          |3
I can transfer data using FileZilla                                  |3.5
I can transfer data using rscync                                     |2.6
I can transfer data using scp                                        |4.1
I can transfer data using sftp                                       |2.5
I can transfer files between clusters                                |2.6

<!-- markdownlint-enable MD013 -->

Now, only the ones we focussed on:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Question                                                             |Mean confidence
---------------------------------------------------------------------|---------------
I am comfortable using the documentation of my HPC center            |3.6
I can log in to my favorite HPC cluster using SSH                    |4.2
I can log in to my favorite HPC cluster using a remote desktop client|3.7
I can log in to my favorite HPC cluster using a web browser          |3
I can transfer data using FileZilla                                  |3.5
I can transfer data using scp                                        |4.1
Average                                                              |3.7

Note that 'I can log in to my favorite HPC cluster using a web browser' is not
possible on all HPC clusters, hence the value will be lower.

<!-- markdownlint-enable MD013 -->

The average of 3.7 means a success score of 74%.

## Any other feedback?

- :-)
- I did all of the things before in self-study when I started with HPC
  a couple of months ago but it was great to have some dedicated time
  to read the documentation in more detail during this course
  and have a platform for questions. Thanks for your time!
- I received no zoom link to the course, but I did some self studying instead.
  I could not find any documentation about how to use a web browser
  to log in to Tetralith.
  Please add that information in the course!
  SSH does not work for me behind a firewall.
- Awesome course, but it would be nice to have more time,
  like 4h instead of 3h to really have time to do all the exercises
- I like the course because it starts from the basics,
  and i like that it's not too fast.
  Thank you very much for organizing this!
- Great and informative course! There some minor questions resulting of
  missing information in the course docs but were cleared
  after consulting the instructors.
- I think I would have needed more time to figure everything out.
  Now at least I think I have a better way of finding out
  how to do stuff by myself.
- I think it would have been better to start the day by explaining
  what an HPC cluster is, then practicing logging into the cluster,
  then having LINUX 101 and after that having the file transferring course.
  I had already figured out on my own how to log in to the clusters
  since I thought I needed it for the LINUX course.
  So for me, too much time was placed on learning how to log in
  and to little time on how to transfer files.
  I also feel like the documentation on LUNARC is lacking.
- Richel has a nice sense of humor that keeps things lively and active.
  Bjorn's explanation of the file transfer was much appreciated.
  I learnt some nifty tools in the command line thanks to Sahar.
- There are different clusters (I think this is the name?)
  and it can be difficult to know the process on the particular
  one we are working on. Documentation seems to be all over the place,
  although at least it feels better knowing
  that I am not the only one with this problem.
- The use of the Word document to answer questions was unorthodox,
  although it did work well.
- Areas that could be improved:
    - Have a single NAISS Intro Week course page,
      with timetables and links to the materials
      (the email you sent is a good starting point)
    - Explain a bit more of WHY we do things.
      It can be obvious to a practitioner,
      but to someone new it can be confusing.
    - Continuously take feedback like this and the NAISS Intro Week
      will naturally get better and better over time :)
