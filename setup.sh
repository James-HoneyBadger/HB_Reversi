#!/bin/bash

# Reversi Deluxe Setup Script
# This script sets up the Reversi game and its dependencies

echo "🎮 Setting up Reversi Deluxe..."

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is required but not installed."
    echo "Please install Python 3.7 or higher and try again."
    exit 1
fi

# Check Python version
python_version=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
required_version="3.7"

if [ "$(printf '%s\n' "$required_version" "$python_version" | sort -V | head -n1)" != "$required_version" ]; then
    echo "❌ Python $python_version found, but Python $required_version or higher is required."
    exit 1
fi

echo "✅ Python $python_version found"

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is required but not installed."
    echo "Please install pip3 and try again."
    exit 1
fi

echo "✅ pip3 found"

# Install dependencies
echo "📦 Installing dependencies..."
if pip3 install -r requirements.txt; then
    echo "✅ Dependencies installed successfully"
else
    echo "❌ Failed to install dependencies"
    echo "You may need to run: pip3 install pygame"
    exit 1
fi

# Check if pygame was installed correctly
if python3 -c "import pygame" 2>/dev/null; then
    echo "✅ Pygame installed and working"
else
    echo "❌ Pygame installation failed"
    exit 1
fi

# Make the main script executable
chmod +x Reversi.py

echo ""
echo "🎉 Setup complete!"
echo ""
echo "To play Reversi Deluxe:"
echo "  python3 Reversi.py"
echo ""
echo "Or make it executable and run directly:"
echo "  ./Reversi.py"
echo ""
echo "Controls:"
echo "  V - Toggle move analysis"
echo "  H - Toggle hints"
echo "  A - Toggle AI"
echo "  N - New game"
echo "  Q - Quit"
echo ""
echo "Enjoy the game! 🎮"