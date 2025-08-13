# homebrew-ftdilatency

## Origin

This code originally came from https://gist.github.com/mkeeter/c43c3990ecdb8dcb6547ac3dbac8e881 and was repackaged as a Homebrew tap.

## Description

A tool to adjust FTDI latency timer settings. This repository contains both the source code and Homebrew formula.

## Installation via Homebrew

```bash
# Add the tap
brew tap andyshinn/ftdilatency

# Install the formula
brew install adjust-ftdi-latency-timer
```

## Building from Source

### Prerequisites
- `libusb`
- `libftdi`

On macOS with Homebrew:
```bash
brew install libusb libftdi
```

### Compile
```bash
make all
```

### Install manually
```bash
make install
```

## Usage

```bash
adjust-ftdi-latency-timer [-i interface] [-v vid] [-p pid]
```

Options:
- `-i interface`: Select interface (0=ANY, 1=A, 2=B, 3=C, 4=D)
- `-v vid`: Vendor ID (hex format)
- `-p pid`: Product ID (hex format)