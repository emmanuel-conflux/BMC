# 🚀 Quick Start Guide

## Metodo 1: Avvio Rapido (Windows)

1. **Doppio click su** `START.bat`
2. Si aprirà il browser con la pagina principale
3. Naviga tra i 4 canvas usando i link

## Metodo 2: Avvio Rapido (Mac/Linux)

1. **Doppio click su** `START.sh` oppure esegui:
   ```bash
   ./START.sh
   ```
2. Si aprirà il browser con la pagina principale
3. Naviga tra i 4 canvas usando i link

## Metodo 3: Apertura Manuale

1. **Apri** `index.html` con il tuo browser preferito
2. Naviga tra i canvas

## ⚠️ Requisiti

- **Browser Moderno**: Chrome, Firefox, Safari, Edge (ultimi 2 anni)
- ✅ **Nessuna connessione internet richiesta** - Tutto funziona offline!

## 🔧 Server Locale (Opzionale ma Consigliato)

Per prestazioni migliori e nessun problema CORS:

### Con Python 3:
```bash
cd output
python -m http.server 8000
```
Poi apri: http://localhost:8000

### Con Node.js:
```bash
cd output
npx serve
```
Segui il link mostrato nel terminale

### Con PHP:
```bash
cd output
php -S localhost:8000
```
Poi apri: http://localhost:8000

## 📊 I 14 Canvas Disponibili

**CASI COMPLETI (VPC + BMC):**
1. **🎧 Spotify** - 2 VPC + 1 BMC
2. **🔧 Idraulico** - 2 VPC + 1 BMC

**SERVIZI DIGITALI (BMC):**
3. **🛒 Amazon** - Marketplace
4. **📸 Instagram** - Social Media
5. **🏠 Airbnb** - Hospitality
6. **🎬 Netflix** - Streaming

**BUSINESS TRADIZIONALI (BMC):**
7. **🚬 Tabaccheria** - Prossimità
8. **🍕 Pizzeria** - Food Service
9. **🧹 Pulizie** - Servizi B2B/B2C
10. **🪵 Falegnameria** - Artigianato

## 💡 Suggerimenti

- **Fullscreen**: Premi F11 per visualizzazione a schermo intero
- **Zoom**: CTRL + / CTRL - per ingrandire/ridurre
- **Print**: CTRL + P per stampare o salvare come PDF
- **Navigate**: Usa il bottone "Back" del browser per tornare all'index

## 🐛 Problemi Comuni

### Canvas vuoti o senza stile
- **Causa**: File Tailwind CSS mancante
- **Soluzione**: Verifica che `assets/tailwind.js` esista (~398KB)

### Link non funzionano
- **Causa**: Apertura con file:// invece di http://
- **Soluzione**: Usa un server locale (vedi sopra)

---

**Per maggiori dettagli**, leggi `README.md`
