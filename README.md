This repository is created for showing how to setup COMP201 environment using Docker container.

1. Install Docker.

2. Run the following command:

```
docker run -it katurkmen/comp201-environment
```

-> If you want to copy files to your Docker container, please use docker cp command.

Link to docker cp command: https://docs.docker.com/engine/reference/commandline/cp/

Running the given command will create a ubuntu container which has following apps/packages:

1. Python3

2. GCC / G++ / GFortran / GCC-Multilib (For compiling 32 bit.)

3. GDB

4. Vim
