# Toggle Shelly

This project contains two bash scripts for toggling to switches for a shelly device. It also contains code to prevent switching the light to many times.

## Configuration
Add your shelly device's IP address to the scripts


# Shelly Light Control Scripts

This repository contains a set of Bash scripts for controlling lights connected to a Shelly relay. The scripts allow you to toggle two different lights on and off using simple commands.

## Features

- Toggle two separate switches
- Prevent rapid toggling when a key is pressed and held
- Easy to integrate with keyboard shortcuts or other automation tools

## Prerequisites

- A Shelly relay device connected to your local network
- Bash shell environment
- `wget` command-line tool installed

## Setup

1. Clone this repository to your local machine.
2. Edit the `toggle_relay0.sh` and `toggle_relay1.sh` files to add your Shelly device's IP address:
   ```bash
   shelly_ip=YOUR_SHELLY_IP_ADDRESS
   ```
   Replace `YOUR_SHELLY_IP_ADDRESS` with the actual IP address of your Shelly device.

## Usage

### Toggling the first relay

To toggle relay 0:

```bash
./toggle_relay0_shortcut.sh
```

### Toggling the second relay

To toggle relay 1:

```bash
./toggle_relay1_shortcut.sh
```

## How It Works

- The `toggle_relay0_shortcut.sh` and `toggle_relay1_shortcut.sh` scripts use `flock` to prevent multiple instances from running simultaneously, avoiding rapid toggling if a key is pressed and held.
- These shortcut scripts then call their respective main scripts (`toggle_relay0.sh` and `toggle_relay1.sh`).
- The main scripts use `wget` to send a toggle command to the specified Shelly relay.
- A 2-second sleep is added after toggling to prevent rapid successive toggles.

## License

This project is open source and available under the [MIT License](LICENSE).

## Acknowledgments

- The directory path resolution in the shortcut scripts is adapted from a StackOverflow answer: https://stackoverflow.com/a/246128