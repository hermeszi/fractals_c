## 🎯 Overview

This project renders various types of fractals including:
- Mandelbrot Set
- Julia Set
- Tricorn (Mandelbar) Set

Created as part of the 42 School curriculum, this program focuses on optimized graphic output and educational visualization of complex mathematical concepts.

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
git clone https://github.com/[your-username]/fractol.git
cd fractol
```

2. Compile the program:
```bash
make
```

## 🚀 Usage

Run the program with a fractal type argument:
```bash
./fractol mandelbrot
./fractol julia [real] [imaginary]  # Optional parameters for Julia set
./fractol tricorn
```

### Julia Set Parameters
For Julia sets, you can specify the starting parameters:
```bash
./fractol julia -0.4 0.6  # Creates a specific Julia set variation
```

## 📈 Ongoing Development

Trying to improve this project, including:
- Additional fractal types
- More color schemes
- Performance optimizations

## 📝 License

This project is part of 42 School's curriculum. While the code is available for reference and educational purposes, please be mindful of academic integrity policies.

### MinilibX License
This project uses the MinilibX (MLX) library, which is subject to its own rights and license terms. MLX was developed by Olivier Crouzet for 42 School. Visit [MLX Repository](https://github.com/42Paris/minilibx-linux) for more information about the library's terms of use.

## 👤 Author

- myuen (42 Singapore)

## 🙏 Acknowledgments

- 42 School for the project framework
- MinilibX developers
- https://en.wikipedia.org/wiki/Plotting_algorithms_for_the_Mandelbrot_set
