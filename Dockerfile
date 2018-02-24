# Use CentOS 7 as the parent image
FROM centos:7

# Set the working directory to /app
WORKDIR /packages

# Copy the current directory contents into the container at /app
ADD VidyoDesktopInstaller-sl564-TAG_VD_3_6_3_017.rpm /packages

# Install any needed packages specified in requirements.txt
RUN yum install -y zenity pulseaudio alsa-lib libXv mesa-libGLU libXScrnSaver mesa-dri-drivers dejavu-sans-fonts
RUN rpm -Uvh /packages/VidyoDesktopInstaller-sl564-TAG_VD_3_6_3_017.rpm

# Run app.py when the container launches
CMD ["VidyoDesktop"]
