# Use the official ROS 1 Kinetic image
FROM osrf/ros:kinetic-desktop-full

# Set up environment variables
ENV ROS_DISTRO=kinetic
ENV ROS_PACKAGE_PATH=/opt/ros/$ROS_DISTRO/share


# Source ROS setup
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc

# Set working directory
WORKDIR /root

# Default command to keep the container running
CMD ["bash"]
