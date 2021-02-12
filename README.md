# Why to Use Docker Container for COMP201?
1. It creates a environment on your local machine and provides you a root access.
2. Once you have installed the docker container, you will no longer need internet connection to work with your COMP201 assignment / project.
3. It is much faster to deploy and destroy since everything is on your local computer.

**WARNING: Docker containers will not save its content if you do not either commit to your Git repository or save it your local machine. If you close and destroy it, your work will be gone. Please always commit your changes.**

# Setup
1. [Download](https://www.docker.com) and install Docker.

2. Open your shell and execute the following command:

```
docker run -it --privileged kaanturkmen/comp201-environment
```

If steps are completed in a correct way, you should be seeing a screen similar to the below image.

![Terminal Screen](https://user-images.githubusercontent.com/63169561/107820697-424b1d00-6d8c-11eb-9932-1518084eacd0.png)

P.S. You will need your docker container id in the future, easiest way to obtain it is copying the part after root@,
for above image, docker id is e47d0e6c371d.

# Flags

| Flags        | Purpose        |
| ------------- |:-------------:|
| -i      | Keep STDIN open even if not attached. |
| -t     | Allocate a pseudo-TTY.|
| --privileged | Gives extended privileges to the container. (i.e running setarch command.)|

# Transfering Files to the Docker Container

Transfering files can be done with the [docker cp](https://docs.docker.com/engine/reference/commandline/cp/) command.

1. Get the id of the container which you are currently working on. (If you have not obtained already) Open another terminal, run the following command, and find most recent up and running IMAGE which is named "kaanturkmen/comp201-environment". Then, copy the container id.

```
docker container ls
```
2. After you successfully obtained the container id, run the following command.

```
docker cp <FILE_PATH_IN_YOUR_LOCAL> <YOUR_DOCKER_CONTAINER_ID>:/home
```
Replace <FILE_PATH_IN_YOUR_LOCAL> and <YOUR_DOCKER_ID> with appropriate variables.

Example usage can be found below:
```
docker cp ~/Desktop/main.c e47d0e6c371d:/home
```

This will transfer the specified file / folder to the home directory of your docker container.

P.S. Please keep in mind that, you do not need to add a flag for recursive. (i.e. copying folder which is not empty.)

# Available Apps and Packages

| Apps / Packages        | Purpose        |
| ------------- |:-------------:|
| Python3 | Python 3 support. |
| GCC / G++ / GFortran / GCC-Multilib | Enables to compile 32 bit.|
| GDB | Debugger for C which is taughted in COMP201 class.|
| Vim | Text editor support from the terminal. |
| Git | Version control support on Docker Container.|
| Nasm | Assembler and Disassembler for the Intel x86 Architecture.|
| Valgrind | Valgrind support on Docker Container. (i.e. finding memory leak.)|

# How to Contribute?
1. If you want to add a new application or package to the docker image, create a pull request and let me know why it is needed.
2. If the required application or package is not available in package, and you do not know how to add to the image, create an issue.
