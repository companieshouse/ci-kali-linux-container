# Kali Linux doesn't version its images.  The pinned digest here may go away in the future, and we'll need to change it.
# See https://hub.docker.com/r/kalilinux/kali-rolling/tags
FROM kalilinux/kali-last-release:latest@sha256:932dfbc788a8201afa8ef439ba376877375247b827344ff9141ab182d5fbd883

RUN apt-get update && apt-get install --yes --no-install-recommends \
    kali-linux-headless=2026.3.9 \
    && rm -rf /var/lib/apt/lists/*
