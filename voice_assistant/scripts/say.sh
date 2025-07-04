#!/bin/bash
TEXT="$1"
MODEL_DIR="$HOME/.local/share/piper/en_US-amy-low"
MODEL_PATH="$MODEL_DIR/en_US-amy-low.onnx"
CONFIG_PATH="$MODEL_DIR/en_US-amy-low.onnx.json"
OUTPUT_PATH="/tmp/response.wav"

if [[ ! -f "$MODEL_PATH" || ! -f "$CONFIG_PATH" ]]; then
  echo "❌ Piper model or config not found at expected location."
  exit 1
fi

echo "$TEXT" | piper \
  --model "$MODEL_PATH" \
  --config "$CONFIG_PATH" \
  --output_file "$OUTPUT_PATH"

aplay "$OUTPUT_PATH"
