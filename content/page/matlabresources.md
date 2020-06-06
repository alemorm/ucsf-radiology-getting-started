---
subtitle: "Matlab Tool Resources"
tags: [matlab]
---

## Matlab Resources

The servers have many versions of Matlab.

Using Matlab is quite simple, all it requires is typing the following command into a terminal in a VNC server:

- `matlab &`
- The default matlab is usually R2015b, although this could change. In order to use a specific version, specify which version you would like to run:
  - e.g. `matlab_2013a &`
- To check all versions of matlab available in the server, run the following command:
  - `bash -c "compgen -c | grep -E '^matlab.*[ab]' | sort"`
  - At the time of this writing (6/4/2020) the available versions are:
    - `matlab_2006a`
    - `matlab_2007a`
    - `matlab_2011a`
    - `matlab_2012a`
    - `matlab_2012b`
    - `matlab_2013a`
    - `matlab_2014b`
    - `matlab_2015b`
    - `matlab_2016b`
    - `matlab_2017a`
    - `matlab_2018a`
    - `matlab_2019a`
    - `matlab_latest (points to matlab_2019a)`

---

#### Useful 3D visualization app in Matlab

[Imagine](https://github.com/imagineStudios/Imagine-Legacy) is an useful visualization tool for 3D images, use the following commands:
- `cd ~ && git clone https://github.com/imagineStudios/Imagine-Legacy.git`

From the matlab command window, use the following commands:

- `addpath ~/imagine`
- `imagine2(3D_data)`
  - Replace `3D_data` with your actual 3D data structure

---
