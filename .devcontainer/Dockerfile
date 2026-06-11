# =========================================================================
# a) FROM kalilinux/kali-rolling:latest
# A base image is the starting blueprint or minimalist OS environment inside the container.
# We choose Kali Linux here because it comes pre-packaged with advanced tools for network 
# security, penetration testing, and systems auditing (BHB Ch. 3).
#
# b) Image / layer / cache idea:
# Docker builds images sequentially, where each instruction (FROM, RUN, ENV) creates a new immutable layer.
# Docker caches these layers to speed up future builds. If you change a line, its cache AND the cache 
# of every line below it is broken (invalidated). Therefore, we place stable and rare-changing 
# instructions (like base images and general variables) at the top to optimize build times.
# =========================================================================
FROM kalilinux/kali-rolling:latest
# =========================================================================
# c) ENV (DEBIAN_FRONTEND, LANG, LC_ALL, TERM)
# Environment variables are dynamic values that configure how processes behave in the shell (BHB Ch. 1).
# - DEBIAN_FRONTEND=noninteractive: Tells apt-get to suppress interactive configuration screens or 
#   questions during installation, preventing the build from getting stuck.
# - LANG and LC_ALL: Set the global language, character set encoding (UTF-8), and localization rules.
# - TERM=xterm-256color: Instructs the terminal emulator to support rich 256-color output for scripts.
# =========================================================================
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    TERM=xterm-256color