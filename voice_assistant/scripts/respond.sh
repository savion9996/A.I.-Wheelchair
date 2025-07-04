#!/bin/bash

TMP_DIR="$HOME/assistant/tmp"
MEMORY_FILE="$HOME/assistant/logs/conversations.json"
REQUEST_FILE="$TMP_DIR/request.txt"
RESPONSE_FILE="$TMP_DIR/response.txt"
VOICE_SCRIPT="$HOME/assistant/bin/say.sh"
DEFAULT_MODEL="llama2"

mkdir -p "$TMP_DIR" "$HOME/assistant/logs"
touch "$MEMORY_FILE"

if [ ! -f "$REQUEST_FILE" ]; then
    echo "❌ No request.txt file found."
    exit 1
fi

TRANSCRIPTION=$(cat "$REQUEST_FILE" | sed 's/^.*] *//')
CONTEXT=$(jq -r '.[-10:] | map("User: " + .user + "\nAssistant: " + .assistant) | join("\n")' "$MEMORY_FILE")
PROMPT="$CONTEXT\nUser: $TRANSCRIPTION\nAssistant:"
RESPONSE=$(ollama run "$DEFAULT_MODEL" "$PROMPT")
echo "$RESPONSE" > "$RESPONSE_FILE"

jq --arg user "$TRANSCRIPTION" --arg assistant "$RESPONSE" \
  '. += [{"user": $user, "assistant": $assistant}]' "$MEMORY_FILE" > "${MEMORY_FILE}.tmp" && mv "${MEMORY_FILE}.tmp" "$MEMORY_FILE"

"$VOICE_SCRIPT" "$RESPONSE"
