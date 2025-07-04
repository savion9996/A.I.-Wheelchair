# AI Wheelchair

The **AI Wheelchair** project is an open-source effort to empower individuals with limited mobility to navigate the world safely, intelligently, and independently. It combines real-time voice interaction, computer vision, and modular AI components to create an assistive wheelchair platform.

---

## 🚀 Project Goals

- Stay centered on sidewalks or safe pathways  
- Detect and react to road crossings and signs (e.g., "Walk/Don't Walk")  
- Support hands-free voice interaction and natural speech  
- Use efficient AI acceleration (e.g., Hailo-8, Jetson Orin Nano)  
- Allow modular expansion with cameras, sensors, and remote clients  

---

## 🧩 Current Modules

### ✅ [Voice Assistant](voice_assistant/)

- Listens for trigger word: `computer`  
- Records speech and transcribes it using Whisper (tiny.en)  
- Sends request to a local LLM (via Ollama, using `llama2`)  
- Responds with natural speech using Piper (`en_US-amy-low`)  
- Remembers last 10 conversations using `jq` and J
