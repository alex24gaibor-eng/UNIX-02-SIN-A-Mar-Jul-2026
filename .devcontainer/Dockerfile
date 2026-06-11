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