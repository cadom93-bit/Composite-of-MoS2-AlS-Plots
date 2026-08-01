# Composite-of-MoS2-AlS-Plots

This repository contains data visualization and analysis plots for a composite material structure consisting of Molybdenum Disulfide (MoS₂) and Aluminum Sulfide (AlS). The files provided host various electronic, optical, and electrostatic property distributions calculated for the composite system.

## 📋 Table of Contents
- [Repository Structure](#-repository-structure)
- [File Descriptions](#-file-descriptions)
- [Getting Started](#-getting-started)
- [Prerequisites](#-prerequisites)
- [Usage](#-usage)

## 📁 Repository Structure

The repository contains the following core plot files:
```text
├── COMElectrostatic_potential.plot
├── COMImaginary_part.plot
├── COMReal_part.plot
├── COMOptical.plot
├── COMOptical_jdos.plot
├── COMpdos.plot
├── COMpdos_multiplot.plot
└── band.plot
```

## 🔍 File Descriptions

### 1. Electronic Structure Plots
*   **`band.plot`**: Visualizes the electronic band structure showing energy eigenvalues along high-symmetry paths in the Brillouin zone to determine the bandgap nature.
*   **`COMpdos.plot`**: Displays the Projected Density of States (PDOS) to analyze orbital contributions near the Fermi level.
*   **`COMpdos_multiplot.plot`**: A multi-panel compilation layout separating or comparing PDOS contributions from individual atoms or specific layers.

### 2. Optical Properties Plots
*   **`COMReal_part.plot`**: Represents the real part of the dielectric function ($\varepsilon_1$), indicating the material's polarizability.
*   **`COMImaginary_part.plot`**: Plots the imaginary part of the dielectric function ($\varepsilon_2$), directly related to optical absorption.
*   **`COMOptical.plot`**: Illustrates general optical functions such as absorption coefficient, reflectivity, or refractive index.
*   **`COMOptical_jdos.plot`**: Plots the Joint Density of States (JDOS) to show the density of available electronic transitions per unit energy range.

### 3. Electrostatic Properties
*   **`COMElectrostatic_potential.plot`**: Displays planar-averaged or macroscopically averaged electrostatic potential profiles to study work functions and interface dipoles.

## 🚀 Getting Started

### Prerequisites
These `.plot` scripts are typically built for execution using **Gnuplot**. Ensure you have it installed:

*   **Linux/Ubuntu**: `sudo apt-get install gnuplot`
*   **macOS**: `brew install gnuplot`
*   **Windows**: Download installer from the official [Gnuplot website](http://gnuplot.info).

### Usage
Clone the repository and run any plot file directly using Gnuplot to render or view the data visuals:

```bash
# Clone the repository
git clone https://github.com

# Navigate into the directory
cd Composite-of-MoS2-AlS-Plots

# Execute a plot file (e.g., band structure)
gnuplot -p band.plot
```
*(Note: If these files represent raw data arrays rather than Gnuplot configuration scripts, they can be read using Python's `matplotlib` or standard spreadsheet software).*


