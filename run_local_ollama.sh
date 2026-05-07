#!/bin/bash
set -e

# This script assumes you have a local Ollama server running on http://localhost:11434
# and that you have Python 3.12 installed.

cd "$(dirname "$0")"

if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi
source .venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

echo "Configuration is ready. Run the agent with: python main.py --prompt 'اكتب لي نصاً ترحيبياً'"
