FROM archlinux:base-20240929.0.266368
LABEL maintainer=yann.lacroix.dev@gmail.com
RUN pacman -Sy --noconfirm pgcli python-keyrings-alt python-typing_extensions
