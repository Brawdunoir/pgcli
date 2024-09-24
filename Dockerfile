FROM archlinux:base-20240922.0.264758
LABEL maintainer=yann.lacroix.dev@gmail.com
RUN pacman -Sy --noconfirm pgcli python-keyrings-alt python-typing_extensions
