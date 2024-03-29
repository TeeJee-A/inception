# inception

## Container

A container is a ***lightweight***, ***standalone***, and executable package of software that includes everything needed to run a piece of software, including the code, a ***runtime***, libraries, environment variables, and config files.
    
    --> lightweight: that means the container have a smaller footprint than virtual machines. A container does not include a full copy of an operating system like a VM does, but only includes the libraries and dependencies needed for the specific application to run. this makes the container much smaller in size and quicker to start than VM.

    --> standalone: that means the container they are self-contained and do not depend on the host operating system or other containers. Each container includes everything it needs to run, including the code, runtime, libraries, and environment variables. This makes it easy to move a container from one environment to another, such as from a developer's laptop to a test or production environment, without any changes to the container.
    
    --> runtime: that means the container it includes the necessary software and libraries to run the application contained within it. The runtime is responsible for starting and managing the processes of the application, as well as providing a way to interact with the underlying operating system.

Containers provide a way to package abd dustribyte software in a portable and consistent manner, allowing it to run consistently across different environments, such as development, testing, and production.

Containers are different from Virtual Machines (VMs) in that a VM includes a full copy of an operating system and virtualized hardware, while a container includes just the libraries and dependencies needed for the specific application. Because of this, containers are generally more lightweight and have better performance than VMs.

###### How does Container work?

Containers work by isolating the application and its dependencies inside a container, which is a lightwight and standalone package that includes everything needed to run the application, including the code, a runtime, libraries, environment variables, and config files.

The containerization technology uses ***kernel features***, such as namespaces and cgroups, to provide isolation between the container and the host operating system. This isolation is what makes it possible for multiple containers to run on a single host without interfering with one another.
    --> kernel features: refer to the built-in functionality provided by the operating system kernel that is used to support containerization technology. The kernel is the core of an operating system that manages system resources and provides the interface between software and hardware.

    Two of the main kernel features used by containerization technology are namespaces and cgroups.

Here is a high-level overview of how containers work:
1 - A developer creates a container image, which is a ***snapshot*** of the application and its dependencies, using a containerization suzh as ***Docker***
    --> snapshot: is a point-in-time copy of a system, data, or application. It captures the state of the system, data, or application at a specific moment, and can be used to restore the system of that state at a later time.

    in the context of containerization, a snapshot can refer to a container image, which is a snapshot of the application and its dependencies.

    A container image is created by a developer, and can be stored in a container registry, such as ***Docker Hub***, where it can be easily shared and distributed among different environments and teams. Once the image is stored in a registry, it can be pulled and run on any host machine that supports the containerization technology.

    A container image can also be used to create a new container, which can be run on a host machine. The container will have the same state and configuration as the image when it was created, making it easy to reproduce consistent environments, which is especially useful in development and testing stages.

    --> Docker: look below

## Docker



## Containerization

The containerization technology allows the application to run in a ***sandboxed environment***, isolated from the host operating system and other conatainers. This isolation provides benefits such as security, resource management, and consistency.

    --> sandboxed environment: that means the container are isolated from the host operating system and other containers. this isolation is achieved through the use of kernel features such as ~namespaces~ and ~cgroups~.

        --> namespaces: provide a way to isolate various system resources, such as the file system, network, and ~process tree~. Each container runs in its own namespace, which means that it has its own view of the file system, network interfaces, and process tree, separate from the host and other containers.

            --> process tree: is a hierarchical representation of processes running on a computer. Each process has a parent process that started it, and can have child processes that it started. These child process can have their own child processes, creating a tree-like structure. The top-most process in the tree is called the "init" or "systemd" process and is the first process that starts when the operating system boots.

        --> cgroups: or control groups, provide a way to limit and manage the resources that a container can access, such as CPU, memory, and |/O. This allows for fine-grained control over how resources are allocated to containers, making it possible to run multiple containers on a single host without overloading the host.

        Together, namespaces and cgroups provide a powerful and secure way to isolate containers from one another and from the host, making it possible to run multiple containers on a single host without interfeting with each other. This isolation, or sandboxing, is a key feature of containerization technology and is what makes containers so useful for packaging and distributing software in a consistent and portable way.
