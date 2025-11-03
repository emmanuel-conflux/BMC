# Business Model Canvas - Collezione Completa

Questa cartella contiene **14 canvas didattici** (10 Business Model Canvas + 4 Value Proposition Canvas) che coprono servizi digitali e business tradizionali.

## 📁 Struttura dei File

```
output/
├── index.html                          # Pagina principale di navigazione
├── START.bat / START.sh                # Script di avvio rapido
├── canvases/                           # Cartella con tutti i canvas (14 totali)
│   # Casi di studio completi (VPC + BMC):
│   ├── vpc_spotify_ascoltatori.html
│   ├── vpc_spotify_inserzionisti.html
│   ├── bmc_spotify.html
│   ├── vpc_idraulico_clienti_privati.html
│   ├── vpc_idraulico_amministratori.html
│   ├── bmc_idraulico.html
│   # Servizi digitali (solo BMC):
│   ├── bmc_amazon.html
│   ├── bmc_instagram.html
│   ├── bmc_airbnb.html
│   ├── bmc_netflix.html
│   # Business tradizionali (solo BMC):
│   ├── bmc_tabaccheria.html
│   ├── bmc_pizzeria.html
│   ├── bmc_impresa_pulizie.html
│   └── bmc_falegnameria.html
├── assets/
│   └── tailwind.js                     # Tailwind CSS (398KB, locale)
└── README.md                           # Questo file
```

## 🚀 Come Utilizzare

### Opzione 1: Doppio Click (Funziona Offline!)
1. Doppio click su `START.bat` (Windows) o `START.sh` (Mac/Linux)
   - Oppure: Apri `index.html` con un doppio click
2. Il browser caricherà Tailwind CSS dalla cartella locale `assets/`
3. Naviga tra i 14 canvas usando i link nella pagina principale
4. ✅ **Non serve connessione internet!**

### Opzione 2: Server Locale
Per evitare problemi CORS e avere prestazioni migliori:

**Con Python:**
```bash
cd output
python -m http.server 8000
# Poi apri http://localhost:8000
```

**Con Node.js (npx):**
```bash
cd output
npx serve
# Segui il link mostrato nel terminale
```

**Con PHP:**
```bash
cd output
php -S localhost:8000
# Poi apri http://localhost:8000
```

## 📊 Contenuti dei Canvas

### Casi di Studio Completi (VPC + BMC)

#### 🎧 Spotify (Piattaforma Multi-Sided)
- **VPC:** Ascoltatori, Inserzionisti
- **BMC:** Freemium + advertising platform model

#### 🔧 Idraulico (Business Tradizionale)
- **VPC:** Clienti Privati, Amministratori/Aziende
- **BMC:** Multi-segment service model (B2C + B2B)

### Servizi Digitali (Solo BMC)

1. **🛒 Amazon** - Marketplace multi-sided + retail diretto
2. **📸 Instagram** - Social media advertising platform
3. **🏠 Airbnb** - Two-sided hospitality marketplace
4. **🎬 Netflix** - Subscription-based streaming service

### Business Tradizionali (Solo BMC)

5. **🚬 Tabaccheria** - Negozio di prossimità multi-servizio
6. **🍕 Pizzeria** - Food service ad alto volume (asporto + delivery)
7. **🧹 Impresa Pulizie** - Servizi B2B/B2C labor-intensive
8. **🪵 Falegnameria** - Artigianato di alta gamma su misura

## 🎨 Caratteristiche del Design

- **Layout pulito e minimalista** - Basato sul template originale di Joker Banny
- **Responsive** - Funziona su desktop, tablet e mobile
- **Icone Heroicons** - SVG integrati per ogni sezione
- **Frecce bidirezionali** - Collegano visivamente Value Propositions e Customer Segments

## 🔧 Tecnologie Utilizzate

- **HTML5** - Markup semantico
- **Tailwind CSS v3** - Framework CSS (398KB)
  - ✅ **Incluso localmente** in `assets/tailwind.js`
  - ✅ **Funziona offline** - non serve connessione internet
- **Heroicons** - Icone SVG inline

## 📚 Note Didattiche

### VPC vs BMC: Differenze e Complementarietà

- **Value Proposition Canvas (VPC)**: Zoom sulla relazione con UN customer segment specifico
  - Focus: Customer Jobs, Pains, Gains, e come il prodotto/servizio li risolve
  - Profondità: Alta granularità su un singolo segmento

- **Business Model Canvas (BMC)**: Vista d'insieme dell'INTERO business
  - Focus: Come il business crea, distribuisce e cattura valore
  - 9 Building Blocks: Partners, Activities, Resources, Value Props, Relationships, Channels, Segments, Costs, Revenues

**Relazione**: Il VPC approfondisce il blocco "Value Propositions" e "Customer Segments" del BMC.

### Principi Pedagogici Applicati

1. **Multi-Segment Approach**
   - Ogni business serve più customer segment
   - Ogni segment ha JTBD, Pains e Gains specifici

2. **Tracciabilità**
   - Ogni Pain Reliever risolve un Pain specifico
   - Ogni Gain Creator crea un Gain identificato

3. **Concretezza**
   - Feature specifiche, non generiche
   - Esempi: "Spotify Premium", "Contratti SLA", "Check-up trimestrale"

4. **Post-it Format**
   - 4 elementi per sezione
   - Simula workshop collaborativi

## 🔍 Casi d'Uso

- **Workshop aziendali** - Usa i canvas come esempi durante sessioni di brainstorming
- **Formazione universitaria** - Materiale didattico per corsi di Business Model Design
- **Presentazioni** - Apri i canvas durante presentazioni per mostrare esempi reali
- **Template personalizzati** - Modifica gli HTML per creare i tuoi canvas

## 📝 Modificare i Canvas

Ogni file canvas (`vpc_*.html`) ha una struttura semplice:

```html
<!-- Sezione sinistra: Value Propositions -->
<div class="h-full w-1/2 rounded border-2 bg-white">
  <div class="relative h-1/3 border-b">
    <h3>Gain Creators</h3>
    <ul>
      <li><span>Testo elemento 1</span></li>
      ...
    </ul>
  </div>
  <!-- Products & Services -->
  <!-- Pain Relievers -->
</div>

<!-- Frecce centrali -->

<!-- Sezione destra: Customer Segments -->
<div class="h-full w-1/2 rounded border-2 bg-white">
  <!-- Gains -->
  <!-- Customer Jobs -->
  <!-- Pains -->
</div>
```

Modifica semplicemente il testo nei tag `<span>` per personalizzare i contenuti.

## ⚙️ Troubleshooting

### Il canvas non si visualizza correttamente
- **Problema**: File Tailwind CSS mancante o corrotto
- **Soluzione**: Verifica che `assets/tailwind.js` esista e sia ~398KB

### I link non funzionano
- **Problema**: Percorsi relativi non risolti
- **Soluzione**: Apri `index.html` da un server locale, non con `file://`

### Font o colori strani
- **Problema**: CDN Tailwind bloccato da firewall/proxy
- **Soluzione**: Configura il proxy o scarica Tailwind CSS standalone

## 📄 Licenza e Attribuzione

- **Template originale**: Joker Banny (Tailwind Components)
- **Contenuti educativi**: Basati su BMC_VPC_dettagliato.md
- **Icone**: Heroicons (MIT License)

## 🤝 Contributi

Per modificare o estendere questi canvas:
1. Modifica i file HTML nella cartella `canvases/`
2. Testa con un server locale
3. Aggiungi nuovi esempi seguendo la stessa struttura

---

**Per domande o supporto**, consulta il file `CLAUDE.md` nella directory principale del progetto.
