---
tags:
  - FAQ
  - frequently asked questions
  - questions
---

# Frequently Asked Questions

## When to follow the course

### When should I follow this course?

When you want to transfer files.

### When should I consider to **not** follow this course?

These are the reasons to consider to **not** follow this course:

#### Reason 1: you want to learn advanced things

When you have done your first file transfers and
expect to learn new and more advanced things.

In this case, the course will go too slow for you.

However, you will probably be put to work by the teachers
to help out other learners.
If you like to test your own knowledge by teaching others,
you will likely thrive in the course.

#### Reason 2: you have social anxiety

When you have social anxiety.

In this case, the course will be too social for you.

However, in this course, it is perfectly OK to give a wrong
answer or to say 'I do not know'. This is what a former
learner had to say on this:

You are welcome to try and leave anytime you want.
The course material is made for self-study too, with videos
for all exercises.
Do fill in [the evaluation](../evaluation.md)
when you leave early :-)

## Prerequisites

### Why are there so many prerequisites?

Because of constraints.

While planning the course,
we started out with two hour to
teach about login and filesystem navigation,
and four hours to do actual fle transfer.

When the constraint was added that the
course must be maximally three hours,
it meant that we would teach what the course
is about in the minority of the time.
As teachers, we accepted this at first,
and would only teach FileZilla and `rsync`.

However, then another constraint was added:
there should be more file transfer tools
discussed.

Instead of lecturing (we should not `[Hattie, 2023]`),
we decided to add prerequisites instead

### What are the prerequisites for following this course?

See [prerequisites](../prereqs/README.md).

### How can I check if I have registered?"

You should have gotten a welcome email within a couple
of days.

When it doubt, register another time :-)

### How can I check if I have a user account on a Swedish academic HPC cluster?"

When you can login at [https://supr.naiss.se/](https://supr.naiss.se/).

???- question "How does that look like?"

    It should look similar to this:

    ![A user that logged into SUPR](supr_logged_in.png)

### How can I get a user account in NAISS?"

Register at [https://supr.naiss.se/person/register/](https://supr.naiss.se/person/register/).

### How can I get a user account (user name) on a Swedish academic HPC cluster?"

- You need to be part of a project first.
- Also those with cluster accounts already may benefit in getting access to other clusters, since we will practice transferring files between clusetrs.
- Ask for membership of NAISS 2025/22-717 and get 1-2 cluster user account (if you don’t already have one) on Tetralith and Dardel
- Steps:
    - In SUPR, go to Projects in the menu, and Request Membership in Project NAISS 2025/22-717.
    - Teacher will approve you as soon as he/she can, and
    - when approved you can go to: [https://supr.naiss.se/account/](https://supr.naiss.se/account/) and sign up for a cluster account(s) at **Tetralith** and **Dardel**.

### How can I check if I can login to an HPC cluster using SSH?"

This depends on the HPC cluster you are using.

???- question "How does that look like on UPPMAX's Rackham?"

    For UPPMAX's Rackham, it look similar to this:

    ![Logged into Rackham](rackham_logged_in.png)

### How can I login to an HPC cluster?

See the documentation of your HPC cluster.

Also, these videos may be useful:

HPC cluster|Login method         |Video
-----------|---------------------|---------------------------------------------------------------
Alvis      |SSH                  |[here](https://youtu.be/PJZ3W907qCU)
Bianca     |Website              |[here](https://youtu.be/Ni9nyCf7me8)
Bianca     |SSH                  |[here](https://youtu.be/7mKDxnXqi_M)
COSMOS     |Local ThinLinc client|[here](https://youtu.be/wn7TgElj_Ng)
COSMOS     |SSH                  |[here](https://youtu.be/sMsenzWERTg)
Dardel     |SSH                  |[here](https://youtu.be/I8cNqiYuA-4)
Kebnekaise |Local ThinLinc client|[here](https://youtu.be/_jpj0GW9ASc)
Kebnekaise |SSH                  |[here](https://youtu.be/pIiKOKBHIeY)
Kebnekaise |Website              |[here](https://youtu.be/_O4dQn8zPaw)
Rackham    |Local ThinLinc client|[here](https://youtu.be/PqEpsn74l0g)
Rackham    |SSH                  |[here](https://youtu.be/TSVGSKyt2bQ)
Rackham    |Website              |[here](https://youtu.be/HQ2iuKRPabc)
Tetralith  |SSH                  |[here](https://youtu.be/wtGIzSBiulY)

### Is it OK if I can login to an HPC cluster using other methods?"

Probably: yes

- Using a website: yes
- Using a local ThinLinc client: yes

### How can I login to an HPC cluster?"

Follow the instructions of your favorite HPC center
or [the UPPMAX instruction](https://docs.uppmax.uu.se/getting_started/login_rackham_console_password/)

### How can I check if I have a good Zoom setup?"

- You are in a room where you can talk
- You talk into a (standalone or headset) microphone
- Others can clearly hear you when you talk
- Others can see you
- You can hear others clearly when they talk

### How can I get a good Zoom setup?"

- Find/schedule/book a room where you can talk
- Buy a simple headset

### What if I don't have a good Zoom setup? Is that OK?"

No.

You will feel left out, as the course in highly interactive.
It would be weird to the other learners.

## Teaching

### Why is the course learner-centered?

Because that is good teaching.

This course defines good teaching as 'evidence-based methods to let learners
acquire new skills and the monitoring of this acquisition'.
This means that it should be observed that learners need more/less to time
to practice and following the schedule based on that. Learner-centered teaching
has an effect size from 0.36 `[Hattie ranking]`
or 0.64/0.70 `[Cornelius-White, 2007][Hattie, 2012]`.

## Website

### Why is the repository owner `UPPMAX` instead of NAISS?

Because NAISS does not have a GitHub owner page yet.

## References

- `[Cornelius-White, 2007]` Cornelius-White, Jeffrey.
  "Learner-centered teacher-student relationships are effective:
  A meta-analysis." Review of educational research 77.1 (2007): 113-143.
- `[Hattie, 2023]` Hattie, John. Visible learning:
  The sequel: A synthesis of over 2,100 meta-analyses relating to achievement.
  Routledge, 2023. The effect size of lecturing can be found on page 363,
  which has an effect size of -0.26 with a robustness index of 4 out of 5
  and is based on 3 meta analyses using 273 studies using 27,296 people,
  measuring for 614 effects with a standard error of 0.08.
  One example open access study is `[Knight & Wood, 2005].`
- `[Hattie ranking]` [The Hattie Ranking](https://visible-learning.org/hattie-ranking-influences-effect-sizes-learning-achievement/)
- `[Knight & Wood, 2005]` Knight, Jennifer K., and William B. Wood.
  "Teaching more by lecturing less." Cell biology education 4.4 (2005): 298-310.
  [paper](https://www.lifescied.org/doi/full/10.1187/05-06-0082)
