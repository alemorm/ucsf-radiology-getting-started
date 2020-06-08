---
subtitle: "Server Access Tool"
tags: [ssh,vnc,linux]
---

## Radiology Server Access

All of the imaging and medical patient data is located within UCSF Radiology encrypted Linux servers. Here is how to access them:

### List of Radiology servers

Please refer to the [full list of Radiology servers (requires UCSF login)](https://git.radiology.ucsf.edu/amoralesmartinez/ucsf-radiology-getting-started/-/blob/e7fd1b024c14f8e15713db1e7431efdaf8faa970/content/materials/listofservers.md) for a comprehensive list of servers grouped by CPU and GPU resources.

---

Here are the two main ways to access the servers:

### SSH

#### Mac and Linux users

- Open a terminal and type the following:
  - `ssh username@servername.radiology.ucsf.edu -L 9XXX:localhost:9XXX`
  - For the above command make sure to replace the `username` with your own, the  `servername` with any of the [listed server names (requires UCSF login)](https://git.radiology.ucsf.edu/amoralesmartinez/ucsf-radiology-getting-started/-/blob/e7fd1b024c14f8e15713db1e7431efdaf8faa970/content/materials/listofservers.md) and the `9XXX` with a number above `9020`
  - There will be a prompt for your UCSF password  

#### PC users

- Use [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10), [PuTTY](https://www.ssh.com/ssh/putty/download), [Cygwin](https://cygwin.com/install.html) or any other SSH service:
  - Write `servername.radiology.ucsf.edu` as the host name
  - Specify the local port forwarding, using the same number `9XXX`, higher than `9020`, both the source port and the destination port
  - There will be a prompt for your UCSF password

---

### VNC

Unlike SSH, VNC allows you to access a virtual display of the servers. This lets you browse through the file system and open visual applications such as Matlab and a web browser in a virtual operating system. Follow these steps to start a VNC session:

- Download and install [VNC Viewer](https://www.realvnc.com/en/connect/download/viewer/).
- Once installed you will need to SSH to the server to which you will VNC into and type the following command into a terminal:
  - `myvncserver`
  - Towards the bottom of the output, where it says `New desktop is servername.radiology.ucsf.edu:7`, take note of the last number as that will be the display number you will need to access the VNC server.

![image](/materials/vncserversample.png "VNC Output")

- Open VNC Viewer and type the server information in the form that was written in that last line under 'VNC Server'
  - e.g. `servername.radiology.ucsf.edu:7`
  - You will be prompted for your UCSF username and password.
