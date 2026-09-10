FROM archlinux:latest

# Add needed tools
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm k3b cdparanoia ffmpeg breeze breeze-icons breeze-cursors

# Permissions
RUN groupadd -f optical && \
    groupadd -f storage

RUN echo 'sudo usermod -aG optical,storage $(whoami) 2>/dev/null' >> /etc/profile.d/distrobox-groups.sh && \
    chmod +x /etc/profile.d/distrobox-groups.sh
