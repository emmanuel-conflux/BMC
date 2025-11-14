# CLAUDE.md - AI Assistant Guide for BMC Repository

## Project Overview

This repository contains a **complete educational collection of Business Model Canvas (BMC) and Value Proposition Canvas (VPC)** examples. It's designed as an offline-first, interactive teaching tool for understanding business models through real-world examples.

### Purpose
- Educational resource for teaching Business Model Canvas and Value Proposition Canvas frameworks
- Interactive HTML visualizations for 10 different business models
- Detailed Value Proposition Canvas examples for key case studies
- Fully functional offline (no internet connection required)

### Key Statistics
- **14 total canvases**: 10 BMC + 4 VPC
- **Language**: Italian (all content and documentation)
- **Technology**: Static HTML with Tailwind CSS
- **Size**: ~400KB for Tailwind CSS, lightweight HTML files (~12KB each)

---

## Repository Structure

```
/home/user/BMC/
├── index.html                      # Main navigation page (entry point)
├── README.md                       # Comprehensive documentation (Italian)
├── QUICK_START.md                  # Quick start guide (Italian)
├── CLAUDE.md                       # This file - AI assistant guide
├── START.sh                        # Launch script for Mac/Linux
├── START.bat                       # Launch script for Windows
├── VERIFICA_INSTALLAZIONE.txt      # Installation verification file
├── .gitattributes                  # Git configuration
├── assets/
│   └── tailwind.js                 # Tailwind CSS v3 standalone (398KB)
└── canvases/                       # All canvas HTML files
    ├── vpc_spotify_ascoltatori.html
    ├── vpc_spotify_inserzionisti.html
    ├── bmc_spotify.html
    ├── vpc_idraulico_clienti_privati.html
    ├── vpc_idraulico_amministratori.html
    ├── bmc_idraulico.html
    ├── bmc_amazon.html
    ├── bmc_instagram.html
    ├── bmc_airbnb.html
    ├── bmc_netflix.html
    ├── bmc_tabaccheria.html
    ├── bmc_pizzeria.html
    ├── bmc_impresa_pulizie.html
    └── bmc_falegnameria.html
```

### Directory Breakdown

#### Root Files
- **index.html** (16,668 bytes): Main landing page with navigation to all 14 canvases, organized by category
- **README.md**: Complete documentation in Italian covering usage, content, and technical details
- **QUICK_START.md**: Simplified quick start guide for end users
- **START.sh / START.bat**: Cross-platform launch scripts that open index.html in default browser

#### /assets/
- **tailwind.js** (407,279 bytes): Standalone Tailwind CSS v3 build for offline functionality

#### /canvases/
All canvas files follow consistent naming conventions:
- `bmc_*.html`: Business Model Canvas files (~12KB each)
- `vpc_*.html`: Value Proposition Canvas files (~13KB each)

---

## Technologies Used

### Core Stack
- **HTML5**: Semantic markup with Italian content
- **Tailwind CSS v3**: Utility-first CSS framework (standalone build)
- **Heroicons**: SVG icons embedded inline for each section
- **Vanilla JavaScript**: Minimal JS, primarily for Tailwind CSS

### Design Patterns
- **Responsive Design**: Mobile-first approach, works on all screen sizes
- **Grid Layouts**: Custom CSS grid for BMC (10-column layout)
- **Flexbox**: VPC uses split-screen flexbox layout
- **Color Coding**: Different gradient colors for each business type

### Browser Compatibility
- Chrome, Firefox, Safari, Edge (last 2 years)
- Works with `file://` protocol (offline)
- Optimized for local server deployment (http://localhost)

---

## Content Organization

### Complete Case Studies (VPC + BMC)

#### 1. Spotify (Digital Platform)
- **vpc_spotify_ascoltatori.html**: VPC for listeners (music discovery, playlists, streaming)
- **vpc_spotify_inserzionisti.html**: VPC for advertisers (targeting, Ad Studio, dynamic ads)
- **bmc_spotify.html**: Complete business model (freemium + advertising platform)

#### 2. Idraulico / Plumber (Traditional Service)
- **vpc_idraulico_clienti_privati.html**: VPC for private clients (24/7 emergencies, WhatsApp quotes)
- **vpc_idraulico_amministratori.html**: VPC for building managers/enterprises (SLA contracts, maintenance)
- **bmc_idraulico.html**: Multi-segment service model (B2C + B2B)

### Digital Services (BMC Only)
- **bmc_amazon.html**: Multi-sided marketplace + direct retail
- **bmc_instagram.html**: Social media advertising platform
- **bmc_airbnb.html**: Two-sided hospitality marketplace
- **bmc_netflix.html**: Subscription-based streaming service

### Traditional Businesses (BMC Only)
- **bmc_tabaccheria.html**: Multi-service proximity store (tobacco shop)
- **bmc_pizzeria.html**: High-volume food service (takeaway + delivery)
- **bmc_impresa_pulizie.html**: B2B/B2C cleaning services
- **bmc_falegnameria.html**: Premium custom carpentry/woodworking

---

## File Structure Conventions

### BMC (Business Model Canvas) Files

**Standard Structure** (9 building blocks in grid layout):
1. **Key Partners** (top-left, 2-row span)
2. **Key Activities** (above center-left)
3. **Key Resources** (center-left, row 2)
4. **Value Propositions** (center, 2-row span)
5. **Customer Relationships** (above center-right)
6. **Channels** (center-right, row 2)
7. **Customer Segments** (top-right, 2-row span)
8. **Cost Structure** (bottom-left, full width)
9. **Revenue Streams** (bottom-right, full width)

**HTML Pattern**:
```html
<div class="bmc rounded border bg-white">
  <!-- Each section uses Tailwind classes for grid positioning -->
  <div class="border p-3">
    <div class="flex items-center justify-between mb-3">
      <h3 class="font-semibold">[Section Name]</h3>
      <!-- Heroicon SVG -->
    </div>
    <ul class="space-y-2">
      <li class="text-sm text-gray-600">[Content item]</li>
      <!-- 4 items per section (post-it format) -->
    </ul>
  </div>
</div>
```

**CSS Grid Setup**:
```css
.bmc {
  display: grid;
  grid: repeat(3, 200px) / repeat(10, 1fr);
}
```

### VPC (Value Proposition Canvas) Files

**Standard Structure** (split-screen layout):
- **Left Side**: Value Propositions
  1. Gain Creators (top third)
  2. Products & Services (center third)
  3. Pain Relievers (bottom third)

- **Right Side**: Customer Segments
  1. Gains (top third)
  2. Customer Jobs (center third)
  3. Pains (bottom third)

- **Center**: Bidirectional arrows connecting both sides

**HTML Pattern**:
```html
<div class="flex h-4/5">
  <!-- Left: Value Propositions -->
  <div class="h-full w-1/2 rounded border-2 bg-white">
    <div class="h-1/3 border-b">
      <h3>Gain Creators</h3>
      <ul><li><span>[Item]</span></li></ul>
    </div>
    <!-- Products & Services, Pain Relievers -->
  </div>

  <!-- Center: Arrows -->
  <div class="h-full w-10">
    <!-- SVG arrows -->
  </div>

  <!-- Right: Customer Segments -->
  <div class="h-full w-1/2 rounded border-2 bg-white">
    <!-- Gains, Customer Jobs, Pains -->
  </div>
</div>
```

---

## Development Workflow

### Local Development

**Option 1: Direct File Opening**
```bash
# Mac/Linux
./START.sh
# or
open index.html

# Windows
START.bat
# or double-click index.html
```

**Option 2: Local Server (Recommended)**
```bash
# Python
python -m http.server 8000
# Then navigate to http://localhost:8000

# Node.js
npx serve
# Follow the provided URL

# PHP
php -S localhost:8000
# Navigate to http://localhost:8000
```

### Why Use a Local Server?
- Avoids CORS issues when loading local assets
- Better browser performance
- More accurate testing environment
- Some browsers restrict `file://` protocol features

### Testing Checklist
- [ ] All 14 canvas links work from index.html
- [ ] Back button returns to index.html
- [ ] Tailwind CSS loads correctly (check styling)
- [ ] All icons (Heroicons) display properly
- [ ] Responsive layout works on mobile/tablet/desktop
- [ ] Works offline (disconnect internet and test)
- [ ] Print-friendly layout (CTRL+P)

---

## Key Conventions for AI Assistants

### When Modifying Canvas Content

1. **Maintain 4-Item Limit**: Each section should have exactly 4 items (post-it format)
2. **Use Specific Examples**: Avoid generic statements like "high quality service"
   - Bad: "Buona qualità"
   - Good: "Qualità audio 320kbps senza compressione"

3. **Keep Italian Language**: All content must be in Italian
4. **Preserve HTML Structure**: Do not change the grid/flex layouts
5. **Match Content Depth**: VPC items should be more detailed than BMC items
   - VPC: "Playlist 'Discover Weekly' e 'Daily Mix' generate da AI"
   - BMC: "Playlist personalizzate AI"

### When Creating New Canvas Files

1. **Copy Existing Template**: Use an existing canvas as base
2. **Update Title**: Change `<title>` tag and `<h1>` heading
3. **Replace Content**: Change all 4 items in each section
4. **Test Tailwind**: Ensure `../assets/tailwind.js` path is correct
5. **Add to Index**: Link from index.html with appropriate category/color

### When Editing index.html

1. **Maintain Structure**: Keep the three-section layout:
   - Casi di Studio Completi (Complete Case Studies)
   - Servizi Digitali (Digital Services)
   - Business Tradizionali (Traditional Businesses)

2. **Use Consistent Styling**:
   - Each business card has: emoji, title, description, links
   - Color gradients match business type
   - Hover effects for interactivity

3. **Update Counters**: If adding/removing canvases, update the summary section:
   ```html
   <div class="text-4xl font-bold">10</div> <!-- BMC count -->
   <div class="text-4xl font-bold">4</div>  <!-- VPC count -->
   <div class="text-4xl font-bold">14</div> <!-- Total count -->
   ```

### Content Writing Guidelines

**Business Model Canvas Principles**:
- Each section shows HOW the business creates, delivers, and captures value
- Customer Segments: WHO are we serving? (be specific about demographics/needs)
- Value Propositions: WHAT problems are we solving?
- Channels: HOW do we reach customers?
- Customer Relationships: WHAT type of relationship do we establish?
- Revenue Streams: HOW do we make money?
- Key Resources: WHAT assets are essential?
- Key Activities: WHAT do we do?
- Key Partners: WHO helps us?
- Cost Structure: WHAT are our main costs?

**Value Proposition Canvas Principles**:
- **Customer Jobs**: Tasks customers need to accomplish (functional, social, emotional)
- **Pains**: Obstacles, risks, bad outcomes customers experience
- **Gains**: Benefits customers want (required, expected, desired, unexpected)
- **Products & Services**: What you offer (be specific about features)
- **Pain Relievers**: How your offering eliminates/reduces pains
- **Gain Creators**: How your offering creates benefits

**Tracciabilità (Traceability)**:
- Each Pain Reliever should directly address a specific Pain
- Each Gain Creator should deliver a specific Gain
- Show clear connections between customer needs and solutions

---

## Common Pitfalls to Avoid

### 1. Breaking Tailwind CSS
- Do NOT remove `<script src="../assets/tailwind.js"></script>`
- Do NOT change the path to tailwind.js without testing
- Do NOT use custom CSS that conflicts with Tailwind utilities

### 2. Inconsistent Naming
- File names: Use lowercase, underscores, descriptive names
  - Good: `bmc_example_business.html`
  - Bad: `BMC-Example-Business.html`, `example.html`

### 3. Missing Back Links
- Every canvas MUST have a "Torna all'indice" (Back to Index) link
- Path should be `../index.html` from canvases directory

### 4. Content Overflow
- Keep text concise to fit in allocated space
- Test on mobile screens (360px width minimum)
- Use responsive Tailwind classes (`text-sm`, `md:text-base`)

### 5. Icon Inconsistency
- Use Heroicons from https://heroicons.com/
- Use outline style (not solid) for consistency
- Include `stroke-width="1.5"` attribute

---

## Git Workflow

### Branch Strategy
- **Main Branch**: Stable, production-ready code
- **Feature Branches**: Named `claude/claude-md-[session-id]` for AI-driven changes

### Commit Guidelines
- Use descriptive Italian commit messages:
  - "Aggiunto canvas per Netflix"
  - "Corretti errori di formattazione in VPC Spotify"
  - "Aggiornato README con nuove istruzioni"

### Before Committing
1. Test all changes with local server
2. Verify Tailwind CSS still loads
3. Check all links work
4. Validate HTML (optional but recommended)
5. Review content for typos/grammar

### Pushing Changes
```bash
# Always use -u flag for first push on new branch
git push -u origin claude/claude-md-[session-id]

# Retry with exponential backoff on network errors:
# Wait 2s → 4s → 8s → 16s between retries (max 4 attempts)
```

---

## Troubleshooting Guide

### Canvas Not Displaying Correctly

**Symptoms**: Unstyled HTML, plain text layout
**Cause**: Tailwind CSS not loading
**Solution**:
1. Check `assets/tailwind.js` exists and is ~398KB
2. Verify script path in HTML: `<script src="../assets/tailwind.js"></script>`
3. Test with local server instead of `file://` protocol

### Links Not Working

**Symptoms**: 404 errors, broken navigation
**Cause**: Incorrect relative paths
**Solution**:
1. From `/canvases/*.html`: Use `../index.html` to return to main page
2. From `index.html`: Use `canvases/[canvas-name].html`
3. Always test with local server for accurate behavior

### Content Overflow

**Symptoms**: Text cut off, scrollbars appearing
**Cause**: Too much text in a section
**Solution**:
1. Shorten item descriptions
2. Use abbreviations where appropriate
3. Test on mobile viewport (360px width)
4. Consider using `text-xs` instead of `text-sm` for longer text

### Print Layout Issues

**Symptoms**: Canvas cuts across pages, colors don't print
**Cause**: Browser print defaults
**Solution**:
1. Use "Print Background Graphics" option
2. Set to Landscape orientation for BMC
3. Adjust scale if needed (90-95% works well)

---

## Future Enhancement Ideas

### Content Additions
- Add more traditional business examples
- Create VPCs for all digital services
- Add bilingual support (Italian + English)

### Technical Improvements
- Add dark mode toggle
- Implement canvas editing interface
- Create PDF export functionality
- Add print stylesheets for optimized printing

### Educational Features
- Add explanatory tooltips
- Include methodology section with framework explanations
- Create interactive workshop mode
- Add quiz/assessment features

---

## Resources and References

### Business Model Canvas
- **Original Framework**: Alexander Osterwalder, Yves Pigneur (Business Model Generation)
- **Official Tool**: Strategyzer.com

### Value Proposition Canvas
- **Framework Creator**: Alexander Osterwalder
- **Methodology**: "Value Proposition Design" book

### Technical Resources
- **Tailwind CSS**: https://tailwindcss.com/docs
- **Heroicons**: https://heroicons.com/
- **HTML Template Credit**: Joker Banny (Tailwind Components)

### Educational Principles Applied
1. **Multi-Segment Approach**: Businesses serve multiple customer types
2. **Tracciabilità**: Clear connections between problems and solutions
3. **Concreteness**: Specific features, not generic benefits
4. **Post-it Format**: 4 items per section simulates workshop format

---

## Quick Reference for Common Tasks

### Add a New BMC Canvas

1. Copy existing BMC file: `cp canvases/bmc_template.html canvases/bmc_newbusiness.html`
2. Edit title and content (maintain 9 building blocks, 4 items each)
3. Add link in index.html under appropriate category
4. Test locally: `python -m http.server 8000`
5. Commit: `git add . && git commit -m "Aggiunto canvas per [Business Name]"`

### Add a New VPC Canvas

1. Copy existing VPC file: `cp canvases/vpc_template.html canvases/vpc_newbusiness_segment.html`
2. Edit title and 6 sections (Gain Creators, Products, Pain Relievers, Gains, Jobs, Pains)
3. Ensure 4 items per section
4. Add link in index.html
5. Test and commit

### Update Tailwind CSS

1. Download latest standalone build from https://tailwindcss.com/
2. Replace `assets/tailwind.js`
3. Test all 14 canvases for styling issues
4. Commit with clear message about Tailwind version

### Fix Broken Links

1. Check relative paths (use `../` from canvases directory)
2. Verify file names match exactly (case-sensitive on Linux)
3. Test with: `find . -name "*.html" -exec grep -H "href=" {} \;`
4. Fix any broken references
5. Test all navigation flows

---

## Contact and Support

For questions about this repository or issues with the canvases:

1. **Check Documentation**: README.md has comprehensive troubleshooting
2. **Verify Installation**: Review VERIFICA_INSTALLAZIONE.txt
3. **Test Locally**: Always use local server for accurate testing
4. **Review This File**: CLAUDE.md (you're here!) has AI assistant guidelines

---

**Last Updated**: 2025-11-14
**Repository**: /home/user/BMC
**Current Branch**: claude/claude-md-mhzci4928e6ckw3g-0111euYbL8epRzQfh9Ncpw2B
**Language**: Italian (content), English (technical docs)
**License**: Educational Use (verify with repository owner for attribution requirements)
