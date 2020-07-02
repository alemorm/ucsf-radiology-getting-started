---
subtitle: "SSH Information"
tags: [ssh,linux]
---

## SSH

#### Mac and Linux users

- Open a terminal and type the following:
  - `ssh username@servername.radiology.ucsf.edu -L 9XXX:localhost:9XXX`
  - For the above command make sure to replace the `username` with your own, the  `servername` with any of the [listed server names (requires UCSF login)][ucsfservers] and the `9XXX` with a number above `9020`
  - There will be a prompt for your UCSF password  

#### PC users

- Use [WSL], [PuTTY], [Cygwin] or any other SSH tool:
  - Use `servername.radiology.ucsf.edu` as the host name
  - Specify the local port forwarding, using the same number `9XXX`, higher than `9020`, both the source port and the destination port
  - There will be a prompt for your UCSF password

<!-- Links -->
[ucsfservers]: https://ucsf.box.com/s/yx3hv4trm4kniy1in0op2y7nzeukouf2
[wsl]: https://docs.microsoft.com/en-us/windows/wsl/install-win10
[putty]: https://www.ssh.com/ssh/putty/download
[cygwin]: https://cygwin.com/install.html
