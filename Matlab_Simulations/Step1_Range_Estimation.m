%% FMCW 雷达距离估计仿真
clear; clc; close all;

% 系统参数
c = 3e8; B = 150e6; Tc = 10e-6; S = B/Tc;
target_dist = 60; % 目标 60m
fs = 1e8; t = 0:1/fs:Tc-1/fs;

% 模拟信号
fb = S * (2 * target_dist / c);
if_signal = cos(2 * pi * fb * t);

% 1D-FFT
N = 1024;
signal_fft = abs(fft(if_signal, N));
dist_axis = (c * (0:N/2) * (fs/N)) / (2 * S);

% 绘图
plot(dist_axis, signal_fft(1:N/2+1));
xlabel('距离 (m)'); ylabel('强度'); title('距离估计仿真');
