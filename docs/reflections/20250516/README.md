# Reflection 2025-05-16

- Author: RB
- Date: 2025-05-16

## Schedule

Time  |Teacher|Topic
------|-------|-------------------------------------------------
9:00  |R      |Intro
9:05  |R      |File transfer using FileZilla
.     |R      |Login with terminal
9:50  |.      |Break
10:05 |R      |Login with terminal
.     |B      |File transfer using scp
11:00 |.      |Break
11:15 |BR     |Help decide what to pick, split up according to choice
.     |R      |(optional) File transfer using `rsync`
.     |B      |(optional) Transfer tips
.     |B      |(optional) File transfer using `sftp`
11:45 |B      |Summary
11:50 |R      |Evaluation
12:00 |.      |Done!

## Observations during lessons

During the lessons I observed the timings of me and BC:

Time |Who|Description
-----|---|----------------------------
9:04 |R  |Start monologue Introduction
9:11 |R  |Start monologue FileZilla
9:18 |R  |Open BO rooms
9:25 |R  |Done with first visit to BO room
9:50 |.  |Break
10:05|R  |Start monologue SSH
10:08|B  |Start monologue `scp`
10:14|B  |Start questions
10:17|B  |Open BO rooms
11:00|.  |Break
11:15|B+R|Start monologues
11:25|B+R|Open BO rooms
11:45|B  |Start monologue wrapup
11:50|R  |Start evaluation

The goal was to determine the percentage of exercises:

Time       |Monologue|Dialogue|Exercise|Percentage exercise
-----------|---------|--------|--------|-------------------
9:00-9:50  |18 mins  |0 mins  |32 mins |64 percent
10:05-11:00|9 mins   |3 mins  |33 mins |60 percent
11:15-12:00|25 mins  |0 mins  |20 mins |44 percent
9:00-12:00 |52 mins  |3 mins  |85 mins |61 percent

So 61% of the time it was time for exercises.

I also tracked BC moving through different BO rooms in the `scp`
session (he was never in the main room), just to get a baseline
of speed:

Time |BO room with BC|Duration
-----|---------------|--------
10:17|1 (start)      |6 mins
10:23|2              |7 mins
10:31|1              |7 mins
10:38|2              |6 mins
10:44|1              |16 mins
11:00|Break          |.

## Reflection

I am reasonably happy with how this day went:
the atmosphere within the little group (me, BC and 4 learners)
was very good and it seems people had fun.

What I am conflicted
about is that I abandoned the teaching cycle (i.e. no Prior
and no Feedback), even though I prepared for it.
The reasons were (1) I want to use a short amount of time,
to assure BC has proper time to teach, (2) I felt it was not worth it for
such a small group.

Three out of four learners had an HPC cluster that uses SSH keys, and
hence need a `.ppk` file for using FileZilla. We pick FileZilla because
it is intuitive, but for them it is the opposite. Maybe we should do `scp`
first, as this is easy for everyone. Hence, if most people use
Alvis and Dardel, reverse the schedule to this:

Time  |Teacher|Topic
------|-------|-------------------------------------------------
9:00  |R      |Intro
9:05  |R      |Login with terminal [moved earlier]
.     |B      |File transfer using scp [moved earlier]
9:50  |.      |Break
10:05 |R      |File transfer using FileZilla [moved later]
11:00 |.      |Break

- [ ] Suggest to use this schedule if Alvis + Dardel people are in the
  majority

One learner slowed us down: he had not logged in to his HPC cluster.

- [ ] [Put URL to Zoom room on HPC clusters](https://github.com/UPPMAX/naiss_file_transfer_course/issues/33)

During the teaching, I found out that the `rsync` answers were incomplete,
and created an issue to fix it.

- [ ] [Add missing `rsync` videos](https://github.com/UPPMAX/naiss_file_transfer_course/issues/40)

While preparing, I did find out LUMI has not documented FileZilla usage.
I contacted CSC support. I've already gotten the reply, but not on
time for today.

- [ ] [Add LUMI solution and video for FileZilla](https://github.com/UPPMAX/naiss_file_transfer_course/issues/34)

I think me and BC worked well as a teach. For sure, I enjoyed how well we,
for example, discuss to have an earlier break. Sometimes BC got what he
wanted and sometimes I.

In conclusion: I am still unsure how well the teaching went, regardless
of the very happy learners.

## Evaluation results

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Question                                                 |Mean|Comment
---------------------------------------------------------|----|------------------------------------------------------------------
I am comfortable using the documentation of my HPC center|4.3 |indeed, there was some bad documentation for the HPC clusters used
I can compress and archive files before transferring     |4.3 |unsure, I have not seen learners struggle with this
I can log in to my HPC cluster using SSH                 |5   |indeed, this is a prerequisite
I can transfer data using FileZilla                      |4   |indeed, this is the hardest and we skipped
I can transfer data using rsync                          |4.7 |unsure, only 2 out of 4 chose to do this
I can transfer data using scp                            |5   |indeed, worked like a charm
I can transfer data using sftp                           |5   |unsure, did anyone do this...?
I can transfer files between clusters                    |4   |indeed, no practice/exercise

<!-- markdownlint-enable MD013 -->

### Say something positive about Richèl

- Very happy
- Good positive energy!
- Richèl explained the concepts in a clear and engaging way,
  and I especially appreciated the short videos he used
  to show the implementation, thank you for your time and effort

Great!

### Say something about Richèl he can improve

- (perhaps he's got a bit too much of that energy,
  it gets somewhat intense at times)
- No suggestions, I found the workshop well structured and clear

Great!

## Conclusion

I would grade my own teaching as 8/10, because:

- We were able to establish a productive, fun and relaxed learning
  atmosphere
- I did abandon parts of the literature
