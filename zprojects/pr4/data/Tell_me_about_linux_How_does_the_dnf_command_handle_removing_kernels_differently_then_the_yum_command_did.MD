In Fedora, the `dnf` package manager is the successor of the `yum` package manager. The main difference between how `dnf` and `yum` handle removing kernels is that `dnf` automatically removes old kernels, while `yum` requires the use of a separate tool to remove them.

With `dnf` on Fedora, the default behavior is to keep the three most recent kernels installed on your system, and remove any others. This is done automatically during the process of upgrading to a new kernel.

In contrast, with `yum`, it was not possible to remove old kernels using only the `yum` command itself. You needed to install an additional utility, called `package-cleanup`, and specifically instruct it to remove the old kernels. This made the process more complicated and time-consuming.

Overall, the automatic kernel removal feature of `dnf` makes managing your system's kernel versions easier and more straightforward.
