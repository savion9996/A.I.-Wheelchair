# AI Voice Assistant (Early Prototype)

This is a simple voice assistant that listens for a trigger word ("computer"), transcribes speech using Whisper, sends it to Ollama for a response, and reads the reply aloud using Piper.

## ✅ Features
- Passive listening for voice input
- Trigger word detection ("computer")
- Whisper transcription (tiny.en model)
- Conversational memory (last 10 exchanges)
- Ollama LLM response generation (llama2)
- Piper TTS output with en_US-amy-low voice

## 🧱 Requirements

Install the following dependencies:

- [Whisper](https://github.com/openai/whisper) or `whisper-cpp`
- [Ollama](https://ollama.com)
- [Piper TTS](https://github.com/rhasspy/piper) with `en_US-amy-low`
- `jq`, `arecord`, `aplay` (install with `sudo apt install jq alsa-utils`)

## 📦 Setup

```bash
git clone https://github.com/YOUR_USERNAME/ai-voice-assistant.git
cd ai-voice-assistant
chmod +x scripts/*.sh
```

Install the `llama2` model in Ollama:

```bash
ollama run llama2
```

Ensure Piper is installed and `en_US-amy-low` is available in:
```
~/.local/share/piper/en_US-amy-low/
```

## 🚀 Usage

Add this alias to your `.bashrc` or `.zshrc`:

```bash
alias assistant='bash ~/assistant/bin/voice_loop.sh'
```

Then start the assistant with:

```bash
assistant
```

## 🛣️ Roadmap (see TODO.md)
- Extended listening mode
- Dynamic voice switching (GLaDOS, Morgan Freeman)
- Interactive commands (open apps, run tasks)
- Remote client support
