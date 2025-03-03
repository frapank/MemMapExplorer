# 🛠️ MemDumper ![Linux](https://img.shields.io/badge/Platform-Linux-only-blue) ![Alpha](https://img.shields.io/badge/Status-Alpha-red)

**MemDumper** is an utility for analyzing Linux process memory using the native /proc/ interface. It provides an interactive view of memory maps and loaded libraries.

![Screenshot](screenshot.png)

## ✨ Features
- 🖥️ Interactive ncurses interface
- 📊 Structured memory map visualization
- 🎨 Color scheme
- 📁 Keyboard navigation support

## 📦 Prerequisites
- Linux system (kernel 4.4+)
- Ncurses library

## 🚀 Prerequisites
```bash
# Clone the repository
git clone https://github.com/frapank/linux-process-dumper-gui.git
cd linux-process-dumper-gui

# Compile the project
cmake CMakeLists.txt
make

# Run the application
./dumper -p <PID> [-f <filter>]
```
## 🕹️ Usage
| Option  | Description                | 	Example                 |
|---------|----------------------------|--------------------------|
| `-p`    | 	Specify the target PID    | `-p 1234`               |
| `-f`    |   Filter results (optional) | `-f "libc"`             |
