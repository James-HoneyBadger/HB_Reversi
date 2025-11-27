# Iago Deluxe - Web Edition

A simplified web browser version of Iago Deluxe that runs entirely in your browser using HTML5 Canvas and JavaScript.

## 🎮 Features

- **Full Reversi/Othello gameplay** with standard rules
- **Three game modes**: Human vs Human, Human vs Computer, Computer vs Computer
- **Three difficulty levels** for computer opponent (Easy, Medium, Hard)
- **Visual move hints** (toggleable)
- **Game status tracking** (piece counts, current player)
- **Responsive design** that works on desktop and mobile
- **No installation required** - runs directly in your browser

## 🚀 How to Run

Simply open `index.html` in any modern web browser:

```bash
# From the web_version directory
open index.html
# or just double-click the file
```

Or serve it with a local web server:

```bash
# Using Python
python -m http.server 8000

# Then open http://localhost:8000 in your browser
```

## 🎯 Gameplay

1. **Select Game Mode**: Choose from Human vs Human, Human vs Computer, or Computer vs Computer
2. **Set Difficulty**: Choose Easy, Medium, or Hard for computer opponents
3. **Start**: Click "New Game" to begin
4. **Move**: Click on highlighted squares (when hints are enabled) or any valid square
5. **AI Turns**: Computer moves happen automatically with a brief delay
6. **Hints**: Toggle move hints with the "Show Hints" button
7. **Pass**: Use "Pass Turn" if no moves are available (manual pass for human turns)
8. **Win**: Player with the most pieces when the game ends wins!

## 🎨 Game Modes

### Human vs Human
- Traditional gameplay between two human players
- Black plays first, then White alternates

### Human vs Computer
- You (Black) play against the computer (White)
- Computer moves automatically after your turn

### Computer vs Computer
- Watch two computer players battle each other
- Useful for observing different strategies and difficulty levels

## 🔧 Technical Details

- **Pure JavaScript** - No external dependencies
- **HTML5 Canvas** for rendering
- **Simple AI algorithm** - Position-based evaluation with difficulty scaling
- **Three difficulty levels** - Easy (randomized), Medium (balanced), Hard (optimal)
- **Automatic computer moves** - With visual feedback and delays for better UX

## 📁 Files

```
web_version/
├── index.html      # Complete web application
└── README.md       # This documentation
```

## 🎨 Differences from Desktop Version

**Simplified for web compatibility:**
- No AI opponent
- No advanced analysis
- No save/load functionality
- No themes or customization
- Basic visual style

**Advantages:**
- Runs anywhere with a web browser
- No installation required
- Works on mobile devices
- Instant loading

---

This web version demonstrates the core Reversi gameplay in a browser-compatible format. For the full desktop experience with AI opponents, analysis tools, and advanced features, use the main Iago Deluxe application.</content>
<parameter name="filePath">/home/james/Iago_Deluxe/web_version/README.md