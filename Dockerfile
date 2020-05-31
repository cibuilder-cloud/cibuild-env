from archlinux:latest

RUN pacman --sync --noconfirm --refresh --sysupgrade && \
    pacman --sync --noconfirm \
      python git gcc cmake && \
    find /var/cache/pacman/pkg -mindepth 1 -delete

WORKDIR /work