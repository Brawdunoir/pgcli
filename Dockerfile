FROM archlinux:base-20241006.0.268140

# Maintainer information
LABEL maintainer="yann.lacroix.dev@gmail.com"
LABEL org.opencontainers.image.source="https://github.com/Brawdunoir/pgcli"

# Update the system, install packages, and clean up the package cache
RUN pacman -Sy --noconfirm && \
    pacman -S --noconfirm --needed \
        pgcli \
        python-typing_extensions && \
    pacman -Sc --noconfirm && \
    rm -rf /var/cache/pacman/pkg/* /tmp/*

# # Set a non-root user for security
RUN useradd -m -u 1000 pgcli
USER pgcli

# Default entrypoint or command (if you want to specify something)
ENTRYPOINT ["pgcli"]
