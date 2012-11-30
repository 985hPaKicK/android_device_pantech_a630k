#!/system/bin/sh

echo "conservative" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 70 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/up_threshold
echo 30 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/down_threshold
echo 200000 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/sampling_rate
echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/sampling_down_factor
echo 122880 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 691200 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo 20 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/freq_step

sysctl -w kernel.panic_on_oops=1;
sysctl -w kernel.panic=0;
