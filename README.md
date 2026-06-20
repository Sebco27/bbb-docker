# 📦 BigBlueButton Docker 🐋

Version: 3.0.23

## Features
- Easy installation
- Runs on any major linux distributon (Debian, Ubuntu, CentOS,...)

## currently missing / broken
- NAT support
- bbb-transcription-controller
- livekit

## Development setup
1. Ensure you use a docker version ≥ 23.0 : `$ docker --version`
2. Clone this repository
   ```sh
   git clone --recurse-submodules https://github.com/Sebco27/bbb-docker.git bbb-docker
   ```
3. Start dev server
   ```sh
   cd bbb-docker
   ./scripts/build.sh
   ```
3. Use API Mate with the link presented in the console to create & join a conference

