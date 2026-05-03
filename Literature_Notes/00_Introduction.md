# 00. 论文综述与引言 (Introduction)

## 1. 专业翻译
车载雷达（Automotive Radar）与激光雷达（Lidar）、超声波（Ultrasound）及摄像头（Cameras）共同构成了自动驾驶和高级驾驶辅助系统（ADAS）的支柱。车载雷达系统主要负责：
- **检测目标与障碍物**（Detection of objects and obstacles）
- **测量相对位置**（Position）
- **测量相对速度**（Speed relative to the vehicle）

## 2. 核心技术版图
本综述涵盖了车载雷达信号处理的各个维度：
- **波形设计** (Waveform design)：例如 FMCW。
- **雷达架构** (Radar architectures)：如 MIMO 系统。
- **估计算法** (Estimation algorithms)：用于距离、速度和角度估计。
- **性能权衡** (Trade-off)：实现复杂度与分辨率之间的平衡。

## 3. 核心测量维度总结
车载雷达通过信号处理实现四个维度的目标状态估计：
1. **距离 (Range)**：通过回波时延测量。
2. **速度 (Velocity)**：通过多普勒频移测量。
3. **方位角 (Azimuth)**：通过多天线阵列相位差测量。
4. **俯仰角 (Elevation)**：用于 4D 成像雷达。
