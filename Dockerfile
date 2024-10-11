FROM archlinux:base-20241006.0.268140
LABEL maintainer=yann.lacroix.dev@gmail.com
RUN pacman -Sy --noconfirm pgcli python-keyrings-alt python-typing_extensions
