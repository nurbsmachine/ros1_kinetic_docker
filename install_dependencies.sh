#!/bin/bash
set -e  # Exit if any command fails

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install ROS Kinetic dependencies
echo "Installing ROS Kinetic dependencies..."
sudo apt install -y \
    ros-kinetic-uuv-simulator \
    ros-kinetic-gazebo-ros \
    ros-kinetic-rviz \
    ros-kinetic-navigation \
    ros-kinetic-tf \
    ros-kinetic-robot-state-publisher \
    ros-kinetic-xacro

# Install additional tools
echo "Installing additional tools..."
sudo apt install -y \
    nano \
    tmux \
    htop

# Set up ROS workspace
echo "Setting up ROS workspace..."
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src

# Clone the uuv_simulator package
echo "Cloning uuv_simulator package..."
git clone https://github.com/uuvsimulator/uuv_simulator.git

# Go back to the workspace root
cd ~/catkin_ws

# Build the workspace
echo "Building the workspace..."
catkin_make

# Source the workspace setup
echo "Source workspace setup..."
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

echo "All dependencies and workspace setup completed successfully!"

