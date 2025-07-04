# AI Wheelchair

The **AI Wheelchair** is an open-source project designed to help people navigate the world safely and independently using intelligent assistive technology. Built on modular components, it combines computer vision, voice interaction, and mobility to empower users with more freedom and control.

---

## 🚀 Core Purpose

This project is aimed at:
- Keeping the wheelchair on sidewalks or safe paths
- Identifying intersections and safe times to cross
- Reacting to real-world signage (e.g., “Walk”/“Don’t Walk”)
- Supporting voice interaction and eventually autonomous features

---

## 🧩 Modules

### ✅ Voice Assistant [`voice_assistant/`](voice_assistant/)
- Listens for a trigger word (“computer”)
- Uses Whisper to transcribe speech
- Sends input to a local LLM (via Ollama)
- Speaks replies aloud using Piper (TTS)
- Remembers the last 10 conversations
- [Learn more here →](voice_assistant/README.md)

---

## 🛠️ In Progress

Planned features and modules:
- 📷 Object detection and sidewalk tracking via stereo cameras
- 🧠 Hailo-8 integration for efficient inferencing
- 🗺️ Navigation logic and route planning
- 🎮 Remote client app (voice input/output)
- 🧬 Persona-based speech modes (e.g., Morgan Freeman, GLaDOS)

---

## 🤝 Contributing

This project is under active development and welcomes contributions. Whether you're a developer, hardware tinkerer, or AI enthusiast — you're welcome to explore, fork, and improve the system.

Feel free to open issues, make suggestions, or submit PRs.

---

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more info.
