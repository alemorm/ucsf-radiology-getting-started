---
subtitle: "Python Tool Resources"
tags: [python]
---

## Python Resources 

The servers have several versions of python, with the default version being python 2.7. The best practice when coding in python is to set up a virtual environment with the libraries you will be using. To do this, follow these steps:

---

### Set up a virtual environment

- Use the following command to initialize the latest conda in the servers:
  - `` `which conda | sed -E 's:.*[ ](/.*l7).+:\1/\*/\*/\*3-edge/bin/conda:'` init bash tcsh``
  - Close the current terminal and open a new one for the changes to take place

- Use the following commands to set up the directory where the python environments and packages will be stored:
  - `mkdir /path/to/save/dir`
  - `conda config --append envs_dirs /path/to/save/dir/envs`
  - `conda config --append pkgs_dirs /path/to/save/dir/pkgs`

> **Note: Your home directory has limited space so it is recommended to pick a directory in a bigger filesystem. Please ask your colleagues or supervisor about which specific directories are allocated for your group.**

- Use the following command to create a new [Anaconda (includes numpy, scipy, pandas, matplotlib, jupyter, etc)](https://www.anaconda.com/open-source) python environment named `environmentname` (this can be any word without spaces):

  - #### Python 2
    - `conda create -n environmentname python=2.7 anaconda -y`

  - #### Python 3
    - `conda create -n environmentname python=3.X  anaconda -y`
      - The python 3 versions available are `3.5`, `3.6`, `3.7`, and `3.8`

- To create an empty python environment, so you can add your own packages, just remove `anaconda` from the above command and install your own packages with:
  - `conda install packagename`

---

#### Using the new environment

- To activate the virtual environment use the following command:
  - `conda activate environmentname`
  - The name of the virtual environment will be displayed to the left of the command line
  - After activating the virtual environment, run the following command to update pip to the latest version:
    - `pip install -U pip -y`
- To deactivate the virtual environment use the following command:
  - `conda deactivate`

---

### Advanced

- [Conda cheatsheet for more conda options](/materials/conda-cheatsheet.pdf)

- [Refer to the Scientific Computing Services (SCS) official vnc tutorial for more advanced options](https://wiki.radiology.ucsf.edu/bin/view/SCS/Tutorials/PythonIntro/)
