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
# =========================================================================
# d) RUN ... debconf-set-selections
# In Debian-based systems, 'debconf' manages package installation questions.
# Some security tools like Wireshark prompt the user to ask if non-root users should capture packets.
# This instruction uses a pipe (|) to redirect the pre-defined answer "true" into the debconf database (BHB Ch. 1).
# This "pre-answers" the question automatically so the Docker build process never stalls waiting for human input.
# =========================================================================
RUN echo "wireshark-common wireshark-common/install-setuid boolean true" | debconf-set-selections
# =========================================================================
# e) The big RUN apt-get update && apt-get install ...
# - 'apt-get update' downloads the latest list of available packages from repositories.
# - 'apt-get install' actually downloads and deploys the listed software.
# - The '-y' flag automatically answers "yes" to installation confirmations.
# - '--no-install-recommends' prevents installing non-essential recommended packages, keeping the image small.
#
# Why ONE big RUN instruction chained with '&&' and '\'?
# In Docker, every RUN command creates a separate layer. If we split updates, installs, and clean-ups 
# into multiple RUN commands, the temporary files get permanently locked inside intermediate layers, 
# bloating the image size. Chaining them with '&&' (execute next if previous succeeded - BHB Ch. 1) 
# ensures everything runs in a single layer, allowing us to clean up files before the layer is saved.
#
# Key tools purposes (BHB Ch. 2 & Ch. 3):
# - gawk, sed, grep: Powerful text manipulation utilities used to parse, filter, and modify text streams.
# - shellcheck: A static analysis tool used to find syntax bugs and bad practices in shell scripts.
# - nmap, tcpdump, tshark: Critical network discovery and packet capture utilities for security labs.
# - tor, proxychains4: Tools utilized to route internet traffic through proxies for privacy and anonymity.
# - jq: A command-line processor specifically built to parse and extract data from JSON formats.
# - man-db: Re-enables the manual pages documentation utility, which is stripped by default in Docker.
# =========================================================================
RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    coreutils \
    bash \
    zsh \
    git \
    git-lfs \
    curl \
    wget \
    ca-certificates \
    less \
    locales \
    man-db \
    procps \
    gawk \
    sed \
    grep \
    jq \
    shellcheck \
    nmap \
    tcpdump \
    tshark \
    tor \
    proxychains4 \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
    && echo "es_EC.UTF-8 UTF-8" >> /etc/locale.gen \
# =========================================================================
# f) sed -i '.../etc/locale.gen' && locale-gen
# 'sed' is a Stream Editor used to modify text profiles on the fly (BHB Ch. 2).
# The '-i' option modifies the file 'in-place' (directly changing it without creating a copy).
# Here, it ensures the targeted locales are active in '/etc/locale.gen', and 'locale-gen' builds them.
# This explicitly enables both English and Spanish system configurations.
#
# g) apt-get clean && rm -rf /var/lib/apt/lists/*
# This is the cleanup phase. 'apt-get clean' deletes the downloaded package installation files (.deb).
# 'rm -rf' removes the raw repository lists directory. Executing this at the very end of the 
# chained RUN block guarantees no junk metadata gets saved into the final image layer.
# =========================================================================
    && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && sed -i -e 's/# es_EC.UTF-8 UTF-8/es_EC.UTF-8 UTF-8/' /etc/locale.gen \
    && locale-gen \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
# =========================================================================
# h) SHELL ["/bin/bash", "-c"]
# By default, Docker executes RUN commands using '/bin/sh' (the minimalist system shell).
# This instruction overrides it to use '/bin/bash', ensuring that advanced features like 
# arrays, advanced loops, and robust string expansions are supported during subsequent steps (BHB Ch. 1).
# =========================================================================
SHELL ["/bin/bash", "-c"]

# =========================================================================
# i) WORKDIR /workspace
# This command sets the default active working directory inside the container's file system.
# It behaves just like running a 'cd /workspace' command. Any subsequent instruction (RUN, CMD) 
# will run inside this folder, and it's where your project files are mounted.
# =========================================================================
WORKDIR /workspace

# =========================================================================
# j) RUN git config --system ... && git lfs install --system
# Configures Git settings at the global system level, meaning these rules apply to all users 
# within the container. It configures the safe directory to prevent ownership permission conflicts 
# and initializes Git Large File Storage (LFS) to handle tracking big binary datasets.
# =========================================================================
RUN git config --system --add safe.directory /workspace \
    && git lfs install --system