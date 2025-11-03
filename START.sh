#!/bin/bash

echo "================================"
echo "Value Proposition Canvas"
echo "Esempi Didattici"
echo "================================"
echo ""
echo "Apertura di index.html nel browser..."
echo ""

# Rileva il sistema operativo e apri il browser
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open index.html
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open index.html
else
    echo "Sistema operativo non riconosciuto. Apri manualmente index.html"
fi

echo ""
echo "NOTA: Tailwind CSS è incluso localmente - funziona offline!"
echo "Se i canvas non si visualizzano, prova ad aprire con un server locale."
echo ""
echo "Opzioni per server locale:"
echo "  - Python: python -m http.server 8000"
echo "  - Node.js: npx serve"
echo ""
