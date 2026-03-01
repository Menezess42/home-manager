#!/usr/bin/env bash
# Obtém a temperatura da GPU usando nvidia-smi
TEMP=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)
echo "${TEMP}°C"

