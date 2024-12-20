# Discrete Time Signals and Systems (ECE 340) Labs

This repository contains a collection of my code and reports written for the Discrete Time Signals and Systems (ECE 340) course. The labs in this collection focus on fundamental concepts in signal processing, including discrete-time systems, convolution, sampling, Z-transforms, and filtering.
## Labs Overview
### Lab 1: Introduction to Discrete-Time Signals and Systems

In this lab, I explored key MATLAB functionalities, including plotting multiple 1-D functions on a single figure, reading and writing audio signals in .wav format, and handling digital images in .jpg format. Additionally, I analyzed system response by calculating and visualizing the output of discrete-time systems. These tasks provided foundational skills for working with multimedia data and simulating signal processing systems.
### Lab 2: Convolution, Sampling, and Aliasing

In this lab, I explored key concepts in signal processing, focusing on convolution, sampling, and aliasing. I started by analyzing the convolution of discrete functions using MATLAB, plotting the results and verifying them using different methods. Then, I examined the impact of convolving signals with an impulse response. I also investigated the effects of aliasing on 1D sinusoidal signals and 2D images. By resizing images with and without anti-aliasing, I observed how high-frequency components became distorted. Finally, I demonstrated how low-pass filtering can help reduce the effects of aliasing.
### Lab 3: Z-Transform and Transform Analysis of LTI Systems

In this lab, I explored the concepts of Z-transform and inverse Z-transform, analyzed the pole-zero diagrams of causal linear systems, and examined their stability and causality. I used MATLAB to compute and plot the impulse responses of systems, derive transfer functions, and visualize the pole-zero locations and frequency responses. Through these tasks, I verified the theoretical properties of stability and causality and gained insights by comparing analytical and computational results.

### Lab 4: Spectrum Estimation of Multimedia Signals

In this lab, I analyzed the spectrum of audio and image signals. For an audio file, I identified its parameters, computed its Fourier transform, and plotted its magnitude and power spectral density to study frequency content and noise. For a 2D image, I displayed it to observe artifacts and analyzed its spectrum to identify noise frequencies. This lab provided insights into spectral analysis techniques for multimedia signals.
### Lab 5: Filtering Multimedia Signals Using an FIR Filter

In this lab, I applied FIR digital filters to remove noise from audio and image signals, analyzing their effects on frequency content and signal quality. The exercise demonstrated how digital filters can effectively suppress unwanted frequencies while impacting the overall sharpness and clarity of signals.
## How to Use

- **MATLAB:** All MATLAB scripts are self-contained and can be run directly in the MATLAB environment.
- **LaTeX:** Each lab includes a LaTeX report that documents the theory, results, and analysis of the experiments conducted in MATLAB. To compile the LaTeX files, use any LaTeX editor (e.g., TeXShop, Overleaf, etc.).

## Requirements
- MATLAB R2021a or later
- A LaTeX distribution (e.g., TeX Live, MiKTeX) for compiling the reports
