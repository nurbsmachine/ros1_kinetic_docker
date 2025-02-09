# This repository is for ros1 kinetic docker used for the IAAC E-Club activities. 
## Index
  - [Overview](#overview) 
  - [Getting Started](#getting-started)
  - [Demo](#demo)
  - [Authors](#authors)
  - [References](#references)
  - [Credits](#credits)
<!--  Other options to write Readme
  - [Deployment](#deployment)
  - [Used or Referenced Projects](Used-or-Referenced-Projects)
-->
## IAAC E-Club - Njord Autonomous Ship project
<!--Write a few sentences of academic context and project description -->  
This project aims to demonstrate the software for an autonomous boat building challenge using ROS, developed within the scope of the E-Club  
## Overview
<!-- Write Overview about this project -->
The project's justification, state-of-the-art, and inspiration live in this section.

## Getting Started

### Prerequisites
Ensure that you fulfill the following criteria to replicate this project.
* Ubuntu LTS 20.04 
* Python 3.7 <
* Docker

### Depencies
The project's dependencies include:
* ROS - for interfacing with the robot





### Deployment
How to deploy this on a live system
* Clone the Repo `git clone https://github.com/YOUR_USERNAME/ros1_kinetic_docker.git
cd ros1_kinetic_docker`
* Build the Docker image `docker build -t ros1_kinetic .` 
* Run the Container `docker run -it --rm ros1_kinetic`
* Start ROS `source /opt/ros/kinetic/setup.bash`
           `roscore`
* Split you Terminal and input `docker ps`
* This will give you the docker containers that are running right now.
* Copy the container ID and input the following `docker exec -it <container_name_or_id> bash`
* Now you have the access to you docker in you terminal. *This must be done for every new terminal that you open.*


## Demo
Here is what the project can do and what are the results.

The project can be launched with the following command:
* `roslaunch package_name package_name.launch`

This opens up `rviz` and shows the robot moving around

## Authors
  - Arun_Prasad AKA NurbsMachine https://www.linkedin.com/in/architectarunprasad/ - Software System Design
  - Geetham Pasumarthy AKA AlphaLord (insert linkedin/webpage link) - Software System Design

## References

## Credits
  - [Name](insert linkedin/webpage link) - role

<!--  DO NOT REMOVE
-->
#### Acknowledgements

- Creation of GitHub template: [Marita Georganta](https://www.linkedin.com/in/marita-georganta/) - Robotic Sensing Expert
- Creation of MRAC-IAAC GitHub Structure: [Huanyu Li](https://www.linkedin.com/in/huanyu-li-457590268/) - Robotic Researcher


