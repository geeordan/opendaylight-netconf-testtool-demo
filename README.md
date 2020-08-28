# OpenDaylight Netconf Testtool Demo
This repo features the installation of OpenDaylight and the use of Netconf Testtool to simulate mounting a netconf capable device to the OpenDaylight controller as well as configuring it using the OpenConfig:Interfaces YANG model.

Note: Tested using CentOS 7.x

## Installation & Usage
Step 1: Clone the repo to a virtual machine or physical machine running CentOS 7.x

Step 2: Cd into the directory and execute ```./setup_odl.sh```

Step 3: Once the script has finished, in your terminal, you will be prompted with ```opendaylight-user@root>```. Enter the commands ```feature:repo-refresh``` and ```feature:install odl-ovsdb-library odl-restconf-all odl-ovsdb-southbound-api odl-ovsdb-southbound-impl odl-ovsdb-southbound-impl-rest odl-mdsal-apidocs odl-netconf-topology``` to finish configuring OpenDaylight.

Step 4: In a new terminal window/tab, cd into the main directory once again and execute the command ```java -jar netconf-testtool-1.8.2-executable.jar --schemas-dir testtool-models/``` to start the Netconf Testtool and load the YANG models associated with it.

Step 5 - Option 1: Assuming Jupyter Notebook has been installed (```pip install notebook```), open Testtool.ipynb and replace the ```controller_ip``` variable with the IP address of your controller. Execute all of the cells in the notebook to mount your simulated netconf device and add an interface to it using OpenConfig:Interfaces.

Step 5 - Option 2: If you would like to mount and configure the testtool on the device hosting the controller, execute the scrips in the cURL_scripts directory.
Note: By default, the controller IP address has been assigned to ```localhost``` in all of the scripts. If the controller IP address differs, configure all of the scripts accordingly.

