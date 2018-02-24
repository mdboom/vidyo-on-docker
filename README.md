This is a docker configuration for running Vidyo inside a supported version of
Linux, in this case CentOS 7.

I've tested this on a Fedora 27 host and it seems to work for me. I have no idea
whether it will work in other hosts. Vidyo 3.6.3 crashes on startup for me in
the host, and this Docker configuration doesn't, so that's progress.

Most of the hard work here is from mviereck's
[x11docker](https://github.com/mviereck/x11docker) project. I'm just applying it
to Vidyo here.

## Building

- Install `docker`, and get it working for your user. I used [these
  instructions](https://developer.fedoraproject.org/tools/docker/docker-installation.html).

- Download `VidyoDesktopInstaller-sl564-TAG_VD_3_6_3_017.rpm`
  and place it in the root of this project.

- Build the docker image:

    `docker build -t vidyo .`

- Clone the `x11docker` tool:

    `git clone https://github.com/mviereck/x11docker.git`

## Running

- Start `vidyo`:

    `./run_vidyo`

- You probably want to symlink `./run_vidyo` from somewhere on your
  `$PATH`.

    `ln -s /path/to/run_vidyo ~/bin/run_vidyo`

Caveat: the configuration for Vidyo is shared between the "native" Vidyo
and Vidyo-in-Docker.
