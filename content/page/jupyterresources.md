---
subtitle: "Jupyter Tool Resources"
tags: [jupyter, python]
---

## Jupyter Resources

One of the simplest and most versatile ways to use python is through Jupyter Lab. In order to get it working within your virtual environment, follow these steps:

### Installation

- [Follow the earlier steps to access terminal in one of the servers](/page/serveraccessresources)
- [Activate your virtual environment](/page/pythonresources)
- Run the following commands:
  - If you created an empty environment, use the following command
  first:
    - `conda install jupyterlab -y`
  - `jupyter lab --no-browser --port 9XXX --notebook-dir=/`
    - Replace `9XXX` with the number used for the SSH port forwarding
      - e.g. `jupyter lab --no-browser --port 9032 --notebook-dir=`
  - Copy and paste the URL in the terminal into a web browser
    - e.g. `http://localhost:9032/?token=XXXXXXXXXXXXXXX`

---

### Jupyter Lab Introduction

{{< youtube 7wfPqAyYADY >}}
