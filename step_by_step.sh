#!/bin/bash
# source /etc/profile.d/modules.sh
module load Python/3.10.8-GCCcore-12.2.0
moodule load GROMACS/2020.5-foss-2020b-Python-3.8.6
python -m venv /mnt/nfs/home/b8048283/workspace/python-envs/crossflow
source /mnt/nfs/home/b8048283/workspace/python-envs/crossflow/bin/activate
module load Python/3.10.8-GCCcore-12.2.0
which pip
pip install --upgrade pip
pip install jupyterlab
pip install crossflow dask-jobqueue
pip install mdtraj
pip install mdplus rdkit
pip install openbabel
wget https://vina.scripps.edu/wp-content/uploads/sites/55/2020/12/autodock_vina_1_1_2_linux_x86.tgz
tar zxvf autodock_vina_1_1_2_linux_x86.tgz
export PATH=$PATH:/$VINA/bin
################################################################
# set .bashrc file
# crossflow
module load Python/3.10.8-GCCcore-12.2.0
module load GROMACS/2020.5-foss-2020b-Python-3.8.6
source /mnt/nfs/home/b8048283/workspace/python-envs/crossflow/bin/activate
module load Python/3.10.8-GCCcore-12.2.0
export PATH=$PATH:/mnt/nfs/home/b8048283/workspace/autodock_vina_1_1_2_linux_x86/bin
################################################################
# open jupyter lab from my personal laptop
# step-1: initiat JupyterLab on HPC
ssh aidan
ssh rocket
source /mnt/nfs/home/b8048283/workspace/python-envs/crossflow/bin/activate
jupyter lab --ip=0.0.0.0 --no-browser --port=8888
# below are output:
################################################################
(crossflow) [b8048283@login02 ~]$ jupyter lab --ip=0.0.0.0 --no-browser --port=8888
[I 2023-11-22 02:20:11.669 ServerApp] Package jupyterlab took 0.0001s to import
[I 2023-11-22 02:20:11.732 ServerApp] Package jupyter_lsp took 0.0616s to import
[W 2023-11-22 02:20:11.732 ServerApp] A `_jupyter_server_extension_points` function was not found in jupyter_lsp. Instead, a `_jupyter_server_extension_paths` function was found and will be used for now. This function name will be deprecated in future releases of Jupyter Server.
[I 2023-11-22 02:20:11.759 ServerApp] Package jupyter_server_terminals took 0.0267s to import
[I 2023-11-22 02:20:11.761 ServerApp] Package notebook_shim took 0.0001s to import
[W 2023-11-22 02:20:11.761 ServerApp] A `_jupyter_server_extension_points` function was not found in notebook_shim. Instead, a `_jupyter_server_extension_paths` function was found and will be used for now. This function name will be deprecated in future releases of Jupyter Server.
[I 2023-11-22 02:20:11.763 ServerApp] jupyter_lsp | extension was successfully linked.
[I 2023-11-22 02:20:11.775 ServerApp] jupyter_server_terminals | extension was successfully linked.
[I 2023-11-22 02:20:11.795 ServerApp] jupyterlab | extension was successfully linked.
[I 2023-11-22 02:20:12.634 ServerApp] notebook_shim | extension was successfully linked.
[I 2023-11-22 02:20:12.792 ServerApp] notebook_shim | extension was successfully loaded.
[I 2023-11-22 02:20:12.797 ServerApp] jupyter_lsp | extension was successfully loaded.
[I 2023-11-22 02:20:12.804 ServerApp] jupyter_server_terminals | extension was successfully loaded.
[I 2023-11-22 02:20:12.808 LabApp] JupyterLab extension loaded from /mnt/nfs/home/b8048283/workspace/python-envs/crossflow/lib/python3.10/site-packages/jupyterlab
[I 2023-11-22 02:20:12.808 LabApp] JupyterLab application directory is /mnt/nfs/home/b8048283/workspace/python-envs/crossflow/share/jupyter/lab
[I 2023-11-22 02:20:12.809 LabApp] Extension Manager is 'pypi'.
[I 2023-11-22 02:20:12.815 ServerApp] jupyterlab | extension was successfully loaded.
[I 2023-11-22 02:20:12.815 ServerApp] The port 8888 is already in use, trying another port.
[I 2023-11-22 02:20:12.816 ServerApp] Serving notebooks from local directory: /mnt/nfs/home/b8048283
[I 2023-11-22 02:20:12.816 ServerApp] Jupyter Server 2.11.0 is running at:
[I 2023-11-22 02:20:12.816 ServerApp] http://login02.cluster:8889/lab?token=bda90b698de4187ec2a320fe616ad93cbe6bed52487a1d23
[I 2023-11-22 02:20:12.816 ServerApp]     http://127.0.0.1:8889/lab?token=bda90b698de4187ec2a320fe616ad93cbe6bed52487a1d23
[I 2023-11-22 02:20:12.816 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 2023-11-22 02:20:12.825 ServerApp] 
    
    To access the server, open this file in a browser:
        file:///mnt/nfs/home/b8048283/.local/share/jupyter/runtime/jpserver-25846-open.html
    Or copy and paste one of these URLs:
        http://login02.cluster:8889/lab?token=bda90b698de4187ec2a320fe616ad93cbe6bed52487a1d23
        http://127.0.0.1:8889/lab?token=bda90b698de4187ec2a320fe616ad93cbe6bed52487a1d23
[I 2023-11-22 02:20:12.965 ServerApp] Skipped non-installed server(s): bash-language-server, dockerfile-language-server-nodejs, javascript-typescript-langserver, jedi-language-server, julia-language-server, pyright, python-language-server, python-lsp-server, r-languageserver, sql-language-server, texlab, typescript-language-server, unified-language-server, vscode-css-languageserver-bin, vscode-html-languageserver-bin, vscode-json-languageserver-bin, yaml-language-server
[W 2023-11-22 02:28:02.205 LabApp] Could not determine jupyterlab build status without nodejs
################################################################
# setting the SSH port transmitio?
# from loca laptop ssh to aidan
(base) xuminer@xuminerdeMacBook-Air ~ % ssh -L 8889:localhost:8889 aidan      
-sh-4.2$ ssh -L 8889:localhost:8889 rocket
# turn on google chrome on local laptop, And input the URL that is given above
http://127.0.0.1:8889/lab?token=bda90b698de4187ec2a320fe616ad93cbe6bed52487a1d23










































# And use a text editor to create a shell script jstart.sh containing:
"""
#! /usr/bin/env bash
# start a jupyterLab server
export JUPYTER_RUNTIME_DIR=${PWD}
jupyter lab --ip=0.0.0.0 --no-browser
"""
# Make it executable, and then run it:
chmod +x jstart.sh
./jstart.sh
# Once the server has started, you should see some lines in the output that look something like:
...
Or copy and paste one of these URLs:
   http://<host>:<port>/lab?token=bdffd21a331e98f6e8c8da7941292d55921510edf10d4f9c
   http://127.0.0.1:<port>/lab?token=bdffd21a331e98f6e8c8da7941292d55921510edf10d4f9c
...
# where <host> is something like ln01 or ln02 and <port> is something like 8888 or 8889. You will need these for the next step.

# You wont get a prompt back though - this terminal window is now busy, so you can move the window for it out of the way on your laptop screen (but dont close it - you will need it in a minute).
# step 6 (on your laptop/desktop): Set up port forwarding
# Open a second terminal session on your laptop, and connect to Archer2 again, but as follows:
# 
ssh -L<port>:<host>:<port> <username>@login.archer2.ac.uk
# You will be prompted for your password in the usual way. You won’t use this terminal window any more, so again you can move the window for it out of the way on your laptop screen (but don’t close it).
# 
# Step 7 (on your laptop/desktop): Connect to your jupyterlab server
# Open your browser, and paste the second of the two URLs printed when your Jupyterlab server started up (the one that begins http://127.0.0.1) into the address bar, and hit return. After a short while you should find yourself connected to your server, and positioned in your work directory on Archer.
# 
# From now on, everything that happens in this workshop will be done via this Jupyterlab connection. Once you have finished you will log out of this window, and then exit both terminal sessions to clean everything up. If you need to reatart things, just go back to Step 5 above.


