---
subtitle: "VNC Information"
tags: [vnc, linux]
---

## VNC

Unlike SSH, VNC allows you to access a virtual display of the servers. This lets you browse through the file system and open visual applications such as Matlab and a web browser in a virtual operating system. Follow these steps to start a VNC session:

- Download and install [VNC Viewer][vncviewer].
- Once installed you will need to SSH to the server to which you will VNC into and type the following command into a terminal:
  - `myvncserver`
  - Towards the bottom of the output, take note of the last number as that will be the display number you will need to access the VNC server. Shown as `radiology.ucsf.edu:7` highlighted below.

![vncimage]

- Open VNC Viewer and type the server information in the following form:
  - e.g. `servername.radiology.ucsf.edu:7`
  - You will be prompted for your UCSF username and password.

- To change the resolution of the VNC display to match your monitor resolution type the following command into a VNC terminal:
  - `xrandr`
    - Choose a resolution from the available options.
    - E.g. for 2560x1600 if it has index 11, type the following command into a VNC terminal:
      - `xrandr -s 11`

---

### Advanced

- Refer to the Scientific Computing Services (SCS) [official VNC tutorial][scsvnc] for more advanced options (requires UCSF login)

---

<!-- Links -->
[vncviewer]: https://www.realvnc.com/en/connect/download/viewer/
[vncimage]: /materials/vncserversample.png "VNC Output"
[scsvnc]: https://wiki.radiology.ucsf.edu/bin/view/SCS/Tutorials/RealVNCAdvanced/