# Getting Started

This guide is a collection of useful resources and instructions to access the Radiology Department servers, set up a working python virtual environment and access tools such as Jupyter Lab, Matlab, TensorFlow and Pycharm.

<a name="contents"></a>
## Table of contents 
- [Linux Basics](#linux-basics)
- [Git Basics](#git-basics)
- [MRI Basics](#mri-basics)
- [Matlab 3D Visualization](#imagine)
- [Accessing the servers](#servers)
	- [List of Radiology servers](#list)
	- [SSH](#ssh)
		- [Mac and Linux users](#maclinux)
		- [PC users](#pc)
	- [VNC](#vnc)
- [Using python and Matlab](#python-matlab)
	- [Matlab](#matlab)
	- [Python](#python)
		- [Python 2.7](#python2venv)
		- [Python 3.6](#python3venv)
- [Python coding tools](#python-tools)
	- [Jupyter Lab](#jupyter)
		- [Python 2.7](#python2jupyter)
		- [Python 3.6](#python3jupyter)
- [Machine Learning Libraries](#machine-learning)
	- [Tensorflow](#tensorflow)
		- [Python 2.7](#python2tensorflow)
		- [Python 3.6](#python3tensorflow)	
	- [Pytorch](#pytorch)
		- [Python 2.7](#python2pytorch)
		- [Python 3.6](#python3pytorch)


<br/>

<a name="linux-basics"></a>
## Linux Basics [<span style="font-size:0.5em;">🔝</span>](#contents)

Here is an [useful cheatsheet with a collection of basic Linux commands](Resources/linux-cheatsheet.pdf). The radiology servers are running a Linux distribution called Red Hat (current version is 7).

	
<br/>

<a name="git-basics"></a> 
## Git Basics [<span style="font-size:0.5em;">🔝</span>](#contents)

Please refer to Peder Larson's [Git tutorial](Resources/git_tutorial.pdf) for a beginner's intro guide to the git versioning language.

<br/>

<a name="mri-basics"></a> 
## MRI Basics [<span style="font-size:0.5em;">🔝</span>](#contents)

Helpful introduction to MRI physics, image formation, image artifacts and terminology.

[Taken from Siemens](https://www.siemens-healthineers.com/en-us/magnetic-resonance-imaging/magnetom-world/publications/mr-basics)

- [*MRI Physics*](Resources/magnets_spins_and_resonances-00016929.pdf)

- [*MRI Acquisition and Artifacts*](Resources/magnets_flows_and_artifacts-00016930.pdf)

- [*MRI Glossary*](Resources/mr_glossary-00016927.pdf)

- [*MRI Acronyms*](Resources/mri_acronyms-00033460.pdf)

<br/>

<a name="imagine"></a> 
## Useful 3D visualization app in Matlab [<span style="font-size:0.5em;">🔝</span>](#contents) 

[https://github.com/imagineStudios/Imagine-Legacy](https://github.com/imagineStudios/Imagine-Legacy)

Clone or download the repository above and the add the directory where it was cloned or downloaded to your Matlab path to run it from the command window with the following command:

- `imagine2(3D_data)`
- Replace *3D_data* with your actual 3D data structure


<br/>

<a name="servers"></a>
## Accessing the servers [<span style="font-size:0.5em;">🔝</span>](#contents)

The patient files are located within UCSF Radiology private Linux servers. Here is how to access them:

<a name="list"></a> 
### List of Radiology servers 

Please refer to the [full list of Radiology servers](Resources/listofservers.md) for a comprehensive list of servers grouped by CPU and GPU power.


<br/>

<a name="ssh"></a> 
### SSH 

<a name="maclinux"></a> 
#### Mac and Linux users

- Open a terminal and type the following:
	* `ssh username@servername.radiology.ucsf.edu -L 9XXX:localhost:9XXX`
	* For the above command make sure to replace the *username* with your own, the *servername* with any of the listed server names and the *9XXX* with a number above 9020 
		* e.g. `ssh jdoe@diffusion.radiology.ucsf.edu -L 9032:localhost:9032`
	* There will be a prompt for your UCSF password  

<a name="pc"></a>
#### PC users 

- Use PuTTY, Cygwin, MobaXterm or any other SSH service:
	* Write *servername.radiology.ucsf.edu* as the host name 
		* e.g. *titan.radiology.ucsf.edu*
	* Specify the local port forwarding, using the same number *9XXX*, higher than 9020, both the source port and the destination port 
	* There will be a prompt for your UCSF password


<br/>

<a name="vnc"></a> 
### VNC 

### Note From SCS

Unlike SSH, VNC allows you to access a virtual display of the servers. This lets you browse through the file system and open visual applications such as Matlab and a web browser in a virtual operating system. Follow these steps:

- Download and install [VNC Viewer](https://www.realvnc.com/en/connect/download/viewer/).
- Once installed you will need to SSH to the server to which you will VNC into and type the following command into a terminal:
	* `myvncserver`
    * Towards the very bottom of the output, where it says *New desktop is servername.radiology.ucsf.edu:7*, take note of the last number as that will be the display number you will need to access the VNC server.

![image](Resources/vncserversample.png "Sample Image")

- Open VNC Viewer and type the server information in the form that was written in that last line under 'VNC Server' 
	* e.g. *bone-vm1.radiology.ucsf.edu:7*
	* You will be prompted for your UCSF username and password.

<br/>

<a name="python-matlab"></a>
## Using python and Matlab [<span style="font-size:0.5em;">🔝</span>](#contents)

The servers have many versions of Matlab and python (both 2.7 and 3.X).

<a name="matlab"></a>
### Matlab 

Using Matlab is quite simple, all it requires is typing the following command into a terminal in a VNC server:

- `matlab &`
- The default matlab is usually R2015b, although it could change. In order to use a specific version, specify which version you would like to run 
	* e.g. `matlab_2013a &`


<br/>

<a name="python"></a>
### Python 



The servers have several versions of python, with the default version being python 2.7. The best practice when coding in python is to set up a virtual environment with the libraries you will be using. To do this, follow these steps:

<a name="python2venv"></a>
#### Python 2.7 Virtual Environment 

- Use the following command:
	* `virtualenv /path/to/new/virtual/environment`
	* Replace */path/to/new/virtual/environment* to the desired directory which will contain the new virtual environment 
		* e.g. `virtualenv /home/jdoe/python2virtualenv`
	* `cd /path/to/new/virtual/environment/bin` 
		* e.g. `cd /home/jdoe/python2virtualenv/bin`
		* `source activate.csh`
		* The name of the virtual environment will be displayed to the left of the command line
	* To deactivate the virtual environment use the following command:
		* `deactivate`

<a name="python3venv"></a>
#### Python 3.6 Virtual Environment 

- Use the following commands to set up a python 3.6 virtual environment:
	* `/netopt/rhel7/versions/python/Anaconda3-5.2.0/bin/python3 -m venv path/to/new/virtual/environment`
	* Replace */path/to/new/virtual/environment* to the desired directory which will contain the new virtual environment 
		* e.g. `/netopt/rhel7/versions/python/Anaconda3-5.2.0/bin/python3 -m venv /home/jdoe/python3venv`
	* `cd /path/to/new/virtual/environment/bin` 
		* e.g. `cd /home/jdoe/python3venv/bin`
		* `source activate.csh`
		* The name of the virtual environment will be displayed to the left of the command line
	* After activating the virtual environment, run the following command to update pip to the latest version:
		* `pip install -U pip`
	* To deactivate the virtual environment use the following command:
		* `deactivate`
	* Modify the *activate.csh* file with the following commands to add the CUDA libraries needed for tensorflow:
		* `subl activate.csh` 
			* Make sure you are in the *bin* folder under the environment directory
		* In the text editor, paste one of the following two cases and then save the file:
			* Make sure you deactivate and activate the virtual environment after this step to load the changes

**Stable CUDA and cuDNN libraries for older TensorFlow releases (<= 1.4):**

```bash
#Setup blas and find CUDA cuDNN
setenv INTEL /netopt/intel/composer_xe_2015.3.187/bin
   if ( -f ${INTEL}/compilervars.csh ) then
   source ${INTEL}/compilervars.csh intel64
endif
setenv LD_LIBRARY_PATH $LD_LIBRARY_PATH\:/netopt/rhel7/versions/cuda/cuda-8.0/lib64\:/netopt/rhel7/versions/cuda/cuda-8.0/extras/CUPTI/lib64\:/netopt/share/bin/local/bone/tensorflow_r1.0/cuDNN-6.0/lib64
```


<br/>


**Latest CUDA and cuDNN libraries for latest TensorFlow release:**

```bash
#Setup blas and find CUDA cuDNN
setenv INTEL /netopt/intel/composer_xe_2015.3.187/bin
   if ( -f ${INTEL}/compilervars.csh ) then
   source ${INTEL}/compilervars.csh intel64
endif
setenv LD_LIBRARY_PATH $LD_LIBRARY_PATH\:/netopt/rhel7/versions/cuda/cuda-9.2/lib64\:/netopt/rhel7/versions/cuda/cuda-9.2/extras/CUPTI/lib64\:/netopt/rhel7/versions/cuda/cudnn-v6-8.0/lib64
setenv PATH $PATH\:/netopt/rhel7/versions/cuda/cuda-9.2/bin
```


<br/>

<a name="python-tools"></a>
## Python coding tools [<span style="font-size:0.5em;">🔝</span>](#contents)

<a name="jupyter"></a>
### Jupyter Lab 

One of the simplest and most versatile ways to use python is through Jupyter Lab. In order to get it working within your virtual environment, follow these steps:

<a name="python2jupyter"></a>
#### Python 2.7 Virtual Environment 

- Follow the earlier steps to SSH into one of the servers
- Activate your virtual environment
- Run the following commands:
	* `pip install jupyter`
	* `pip install jupyterlab`
	* `jupyter lab --no-browser --port 9XXX --notebook-dir=/` 
		* Replace *9XXX* with the number used for the SSH port forwarding 
			* e.g. `jupyter lab --no-browser --port 9032 --notebook-dir=/`
	* Copy and paste the URL into a web browser

<a name="python3jupyter"></a>
#### Python 3.6 Virtual Environment 

- Follow the earlier steps to SSH into one of the servers
- Activate your virtual environment
- Run the following commands:
	* `pip install jupyter`
	* `pip install jupyterlab`
	* `pip install -U prompt_toolkit==2.0.4`
		* This fixes an existing compatibility bug with the newest prompt_toolkit releases and jupyter libraries
	* `jupyter lab --no-browser --port 9XXX --notebook-dir=/` 
		* Replace *9XXX* with the number used for the SSH port forwarding 
		* e.g. `jupyter lab --no-browser --port 9032 --notebook-dir=/`
	* Copy and paste the URL into a web browser


<br/>

<a name="machine-learning"></a>
## Machine Learning Libraries [<span style="font-size:0.5em;">🔝</span>](#contents)

<a name="tensorflow"></a>
### TensorFlow 

<a name="python2tensorflow"></a>
#### Python 2.7 Virtual Evironment 

- Install TensorFlow version 1.4.0 (other versions are also stable) into your python 2.7 virtual environment by activating the virtual environment running the following commands in the terminal:
	* `pip install -U tensorflow-gpu==1.4.0`
		* Version can be one of the following: *1.0.0, 1.1.0, 1.2.0, or 1.3.0*
	* `pip install simpleITK`

<a name="python3tensorflow"></a> 
#### Python 3.6 Virtual Environment 

- Install TensorFlow version 1.4.0 (other versions are also stable) into your python 3.6 virtual environment by activating the virtual environment running the following commands in the terminal:
	* `pip install -U tensorflow-gpu==1.4.0`
		* Version can be one of the following: *1.0.0, 1.1.0, .1.2.0, or 1.3.0*
	* `pip install simpleITK`
- If you used the latest releases of CUDA and cuDNN, you have the option to install the latest version of TensorFlow:
	* `pip install -U tensorflow-gpu`
	* `pip install simpleITK`


<br/>

<a name="pytorch"></a>
### PyTorch 

<a name="python2pytorch"></a>
#### Python 2.7 Virtual Environment 

To install PyTorch in your Python 2.7 virtual environment, run the following command:

- `pip install torch torchvision`

<a name="python3pytorch"></a>
#### Python 3.6 Virtual Environment 

To install PyTorch in your Python 3.6 virtual environment, run the following command:

- `pip install torch torchvision`
