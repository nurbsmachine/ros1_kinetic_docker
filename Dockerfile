# Use the official ROS 1 Kinetic full desktop image
FROM osrf/ros:kinetic-desktop-full

# Set up environment variables
ENV ROS_DISTRO=kinetic
ENV ROS_PACKAGE_PATH=/opt/ros/$ROS_DISTRO/share

# Source ROS setup
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc

# Set working directory
WORKDIR /root

# Install basic tools (for package management)
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy the dependency installation script into the container
COPY install_dependencies.sh /root/install_dependencies.sh

# Give execution permission to the script
RUN chmod +x /root/install_dependencies.sh

# Default command to keep the container running
CMD ["bash"]

