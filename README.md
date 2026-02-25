# 🔮 Tarot Truth or Dare – Noir Ritual Edition

A high-end, mystical web application that gamifies the classic "Truth or Dare" game with an authentic, 3D tarot ritual experience. Built for immersion, premium aesthetics, and seamless interaction.

![Tarot Ritual Demo](https://raw.githubusercontent.com/Manoharrish/tarot-truth-dare/main/assets/readme-hero.png) *(Placeholder for hero image)*

## ✨ Features

*   **Authentic Tarot Ritual**: Experience a 3-card spread ritual with staggered emergence and smooth 3D flip animations.
*   **The "Temperance" Aesthetic**: Meticulously designed card faces based on the traditional Temperance card, featuring ornate gold frames, Roman numerals, and banner footers.
*   **Noir Obsidian Theme**: A premium dark mode featuring obsidian-textured cards, radiant gold typography, and glowing ember reveal effects.
*   **Mystical Backgrounds**: An immersive environment with "Ritual Smoke" fog layers, pulsing cosmic auras, and sparkling "Arcane Dust" particles.
*   **Persistent Draw Logic**: Advanced session tracking to prevent immediate repeats and ensure a fresh draw every time.
*   **Haptic & Audio Polish**: Tactile vibration feedback and high-fidelity "Whoosh" and "Chime" audio cues.

## 🛠️ Tech Stack

*   **Frontend**: Vanilla HTML5, CSS3 (Dynamic Gradients, 3D Transforms, Keyframe Animations), and Modern JavaScript.
*   **Database**: Supabase (PostgreSQL) for secure, real-time random statement retrieval via optimized RPC logic.
*   **Real-time FX**: Custom Canvas-based particle system for celestial "Arcane Dust" and stars.
*   **Typography**: Google Fonts (Playfair Display for headers, Inter for UI).

## 🚀 Getting Started

### Prerequisites

*   A [Supabase](https://supabase.com) project with a `cards` table.
*   Local development server (e.g., Live Server or Python `http.server`).

### Installation

1.  **Clone the Repository**:
    ```bash
    git clone https://github.com/Manoharrish/tarot-truth-dare.git
    cd tarot-truth-dare
    ```

2.  **Database Setup**:
    Execute the provided `supabase_seed.sql` in your Supabase SQL Editor to populate the `cards` table and create the necessary RPC functions.

3.  **Configure API Keys**:
    Replace the `SUPABASE_URL` and `SUPABASE_KEY` in `script.js` with your project credentials.

4.  **Launch**:
    Open `index.html` via your local server and begin the ritual.

## 🏺 Project Structure

```text
├── index.html          # Core Structure & Ritual Stages
├── style.css           # Noir Obsidian Design System & Animations
├── script.js           # Ritual Engine & Particle Logic
├── cvm.jpeg            # Custom Ritual Card Back
├── sounds/             # Immersive Audio Assets
└── supabase_seed.sql   # Database Schema & Initial Data
```

## 📜 Credits

Designed and developed by [Manoharrish](https://github.com/Manoharrish). Inspired by the timeless art of Tarot and modern high-end UX design.
