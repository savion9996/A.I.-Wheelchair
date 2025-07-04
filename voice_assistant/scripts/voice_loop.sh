#!/bin/bash

TRIGGER="computer"
TMP_DIR="$HOME/assistant/tmp"
REQUEST_FILE="$TMP_DIR/request.txt"
AUDIO_FILE="$TMP_DIR/request.wav"

mkdir -p "$TMP_DIR"

echo "🎤 Voice assistant is listening for trigger: '$TRIGGER'..."

while true; do
    echo "🎙️ Listening..."
    arecord -f cd -t wav -d 10 -r 16000 "$AUDIO_FILE" 2>/dev/null
    TRANSCRIPTION=$(whisper "$AUDIO_FILE" --model tiny.en --fp16 False --language en --output_format txt --output_dir "$TMP_DIR" 2>/dev/null | tail -n 1)
    echo "🗣️ You said: $TRANSCRIPTION"
    if echo "$TRANSCRIPTION" | grep -iq "$TRIGGER"; then
        echo "✅ Trigger word detected. Passing to responder..."
        echo "$TRANSCRIPTION" > "$REQUEST_FILE"
        ~/assistant/bin/respond.sh
    else
        echo "🔇 Trigger word not detected."
    fi
done
