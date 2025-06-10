## 🎯 Overview
This project renders various types of fractals including:
- Mandelbrot Set
- Julia Set
- Tricorn (Mandelbar) Set

Created as part of the 42 core curriculum, this program focuses on using a low-level graphic library and visualization of fractals.

## 📚 MinilibX Quick Guide
I've created a beginner-friendly presentation to help you get started with MinilibX:
[MinilibX Beginner's Guide - Canvas](https://www.canva.com/design/DAGT6G8aJHY/oaLZtak2iXNrSD0aaGWPgg/edit?utm_content=DAGT6G8aJHY&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

## 🌟 Features
### Core Features
- Real-time fractal rendering
- Smooth zoom functionality (mouse wheel)
- Multiple color schemes
- Complex number visualization
- Adjustable iteration depth

### Interactive Controls
- Mouse wheel: Zoom in/out
- Arrow keys: Pan view
- ESC: Exit program
- C/V: Cycle color schemes
- Space: Reset view
- Z/X: Modify fractal parameters

### Technical Specifications
- Window size: 800x600
- Max iterations: 100
- Zoom range: 0.000001 - 30.0
- Smooth color transitions
- Memory-efficient calculations

## 🛠️ Requirements
### On Linux
```bash
# Install required packages
sudo apt-get install gcc make xorg libxext-dev libbsd-dev
```

### On macOS
```bash
# Install XQuartz
brew install xquartz
# Reboot is required after XQuartz installation
```

Dependencies:
- MinilibX graphics library (included in project)
- Math library
- C compiler (cc)
- Make

## 📦 Installation
1. Clone the repository:
```bash
git clone https://github.com/hermeszi/fractol.git
cd fractol
```

2. Compile the program:
```bash
make
```

## 🚀 Usage
```
*--------------42 Fractol---------------*
* Usage: ./fractol [-m | -j | -t]      *
* Examples:                             *
*   Mandelbrot: ./fractol -m           *
*   Julia Set : ./fractol -j 0.4 0.6   *
*---------------------------------------*
```

### Available Options:
- `-m`: Generate Mandelbrot set
- `-j`: Generate Julia set (requires real and imaginary parameters)
- `-t`: Generate Tricorn set

### Examples:
```bash
# Generate Mandelbrot set
./fractol -m

# Generate Julia set with specific parameters
./fractol -j 0.4 0.6

# Generate Tricorn set
./fractol -t
```

## ⚠️ Common Errors and Solutions

### Error 1: Permission Denied on Configure
```bash
./configure: Permission denied
```
**Solution:**
```bash
chmod +x ./mlx_linux/configure
```

### Error 2: X11 Include Directory Not Found
```bash
configure [error] : Can't find a suitable X11 include directory.
```
**Solution (Ubuntu/Debian systems):**
```bash
sudo apt update
sudo apt install libx11-dev libxext-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev xorg-dev
```

### Error 3: Cannot Find -lbsd
```bash
/usr/bin/ld: cannot find -lbsd: No such file or directory
```
**Solution:**
```bash
sudo apt install libbsd-dev
```


## 📈 Ongoing Development
Planned enhancements include:
- Additional fractal types
- More color schemes
- Performance optimizations

## 🤝 Contributing
If you'd like to help improve this project:
1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## 📝 License
This project is part of 42 School's curriculum. While the code is available for reference and educational purposes, please be mindful of academic integrity policies.

### MinilibX License
This project uses the MinilibX (MLX) library, a low-level graphic library, which is subject to its own rights and license terms. MLX was developed by Olivier Crouzet for 42 School. Visit [MLX Repository](https://github.com/42Paris/minilibx-linux) for more information about the library's terms of use.

## 👤 Author
- myuen (42 Singapore)

## 🙏 Acknowledgments
- 42 School for the project framework
- MinilibX developers
- https://en.wikipedia.org/wiki/Plotting_algorithms_for_the_Mandelbrot_set
