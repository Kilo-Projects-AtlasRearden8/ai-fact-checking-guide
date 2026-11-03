# Verifying AI Outputs: A Beginner's Manual

>A plain-English, step-by-step guide to spotting AI hallucinations, checking sources, comparing answers, and citing facts honestly. Includes a printable checklist.

**Published by Asdale Dynamics, LLC**

---

## 📖 What's Inside

| Folder | Contents |
|--------|----------|
| **`docs/`** | Markdown source files |
| | `index.md` — Full manual (6 chapters + quick reference card) |
| | `CHECKLIST.md` — One-page printable verification checklist |
| **`site/`** | Static HTML site (open `index.html` in any browser) |
| | `index.html` — Full manual as a responsive, printable web page |
| | `checklist.html` — Printable checklist with interactive checkboxes |

---

## 🚀 Quick Start

### Read the Manual
- **Markdown:** Open `docs/index.md` in any Markdown viewer (VS Code, Obsidian, GitHub, etc.)
- **HTML:** Open `site/index.html` directly in your browser — no server needed

### Print the Checklist
- **HTML (recommended):** Open `site/checklist.html` → Print (Ctrl/Cmd + P) — checkboxes work interactively in browser too
- **Markdown:** Open `docs/CHECKLIST.md` in your Markdown editor → Print

### Navigate the Site
The HTML site includes a **"← Back to Manual"** link on the checklist page for easy navigation.

---

## ⚠️ The Golden Rule

> **Never treat AI as an authority on health, law, or money.**

AI can be a helpful starting point. It can summarize, brainstorm, and explain concepts. But for decisions affecting your wellbeing, legal standing, or finances — **always consult a qualified professional**.

---

## 📚 Topics Covered

| Chapter | Topic | What You'll Learn |
|---------|-------|-------------------|
| 1 | **Why AI Gets Things Wrong** | What hallucinations are and why they happen |
| 2 | **Spotting Hallucinations** | 5-step process to catch made-up claims |
| 3 | **Checking Sources** | How to evaluate credibility, find originals, spot red flags |
| 4 | **Comparing Answers** | Cross-checking multiple AIs against each other and reality |
| 5 | **Citing Facts** | Honest citation formats for verified, unverified, and contradicted claims |
| 6 | **Printable Checklist** | One-page reference you can keep at your desk |
| — | **Quick Reference Card** | Situation-specific guidance (medical, legal, financial, coding, etc.) |

---

## 🎯 Who This Is For

- **Beginners** who use AI tools and want to verify outputs
- **Students** citing AI-assisted research
- **Professionals** using AI for work who need to document sources
- **Anyone** who wants to think critically about AI-generated content

No technical background required. Just a willingness to pause and verify.

---

## 📄 License

**MIT License** — see [LICENSE](LICENSE) for details.

```
Copyright (c) 2026 Asdale Dynamics, LLC
```

---

## 🏢 About Asdale Dynamics, LLC

Founded by **Dylan Asdale** (registered nurse turned AI author) in Indiana, October 2026.

We create **beginner-friendly AI education**, books, guides, and practical tools — explained *"like a friend would"*: plain English, step by step, never condescending.

- **Hub site:** [dylanasdale.github.io](https://dylanasdale.github.io)
- **Book:** *The Massive AI Manual*

**LLC Focus Areas:**
- Substantive beginner manuals: AI tools, agents/MCP, local AI, free AI coding, GitHub, automation, privacy
- Open-source apps and templates: prompt tools, local-LLM utilities, MCP servers, agent skills
- Small-business and author tools: KDP/book publishing, marketing, reselling (eBay/Amazon), bookkeeping
- Accessible life-admin helpers: paperwork organizers, budgeting, low-energy productivity (ADHD-friendly)
- Healthcare-worker AI aids (education only, never medical advice)
- Fun extras: gaming (FFXIV) and chess tools

---

## ✅ Verification & Quality

- **HTML validates** as well-formed HTML5 with semantic structure
- **Print-optimized** CSS for both manual and checklist
- **Accessible:** ARIA labels, skip-to-content links, proper heading hierarchy
- **Interactive checklist** with localStorage persistence (your checked items survive page reloads)
- **Zero dependencies** — fully self-contained, works offline
- **No secrets, API keys, or personal data** in any file

---

## 🛠️ Development

### Verify the Build
```bash
# Quick validation - check HTML files are well-formed
head -5 site/index.html
head -5 site/checklist.html

# Verify all expected files exist
ls -la docs/ site/
```

### Run Accessibility Check (manual)
Open `site/index.html` and `site/checklist.html` in browser:
- Tab through all interactive elements
- Verify skip-to-content link works
- Check heading hierarchy (h1 → h2 → h3)
- Print preview (Ctrl/Cmd + P) to verify print styles

---

---

*This guide is provided for educational purposes only. It is not legal, medical, or financial advice.*

**© 2026 Asdale Dynamics, LLC**