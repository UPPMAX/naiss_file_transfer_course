# Cluster to cluster transfer

- You can transfer files in an SSH session on one cluster to another cluster.
- ``rsync``, ``scp``, or ``sftp`` will all work!
- "Local" will now be the server you run the command (``scp``/``rsync``/``sftp``) from.

??? example "Pelle to Tetralith with ``scp``"

    - Log in to Pelle
    - Choose or create the file "localfile"
    
    - ``scp localfile x_nisse@tetralith.nsc.liu.se:~/``
    - Check in another ssh session for Tetralith, it is there.

???- question "(Optional if you have multiple cluster/server accounts) Exercise 4: Transfer with favorite terminal tool between servers"

    Tips

    - Have a SSH session running on your favorite cluster
    - Use a terminal tool (``rsync``, ``scp``, or ``sftp``) to establish connection between your account on Tetralith or Alvis and your present server.
        - address to Tetralith: use address from [Getting started](https://www.nsc.liu.se/support/getting-started/)
        - address to Alvis: use address from [Login using a Terminal](https://www.c3se.chalmers.se/documentation/connecting/ssh/)
    - Transfer a file between the clusters
    - Check that it is there!

    ???- tip "Answer (Example with Tetralith to Rackham , using sftp)"

        Same principles as we learned before!

        Connection from Tetralith:

        ```console
        [sm_bcarl@tetralith3 ~]$ sftp bjornc@rackham.uppmax.uu.se
        The authenticity of host 'rackham.uppmax.uu.se (89.44.250.84)' can't be established.
        ECDSA key fingerprint is SHA256:W/MazH3WrH0wKrHBOJpPbDaU4qeYGqiv3FRPsdXIsb4.
        This key is not known by any other names
        Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
        Warning: Permanently added 'rackham.uppmax.uu.se' (ECDSA) to the list of known hosts.
        bjornc@rackham.uppmax.uu.se's password:
        Connected to rackham.uppmax.uu.se.
        ```

        - Proceed with ``put`` if you want to transfer from Tetralith (now local) to Rackham (remote)

        - [Video for Tetralith to Rackham](https://youtu.be/KwpVhxnRDQc)
