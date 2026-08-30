# 🔁 Loop Engineering — Practice Projects

This repo is the complete record of 12 hands-on projects from **The AI Agent Factory** curriculum's **Loop Engineering Crash Course**. Every project was built from scratch using Claude Code, on Windows CMD.

> **What is Loop Engineering?**
> With prompting, you give the AI an instruction every single time. With looping, you build a system once that finds work on its own, does it, checks it, remembers it, and only brings the important decisions back to you.

---

## ✅ Project Status — 12/12 Complete

| # | Project | Concept | Status |
|---|---------|---------|--------|
| 1 | [Watch Loop](./watch-loop) | In-session heartbeat — runs only while the session is open | ✅ |
| 2 | [Tests Pass Then Stop](./tests-loop) | Conditional loop — kept retrying until tests actually passed | ✅ |
| 3 | [Morning Brief with Memory](./morning-brief) | Spine/Memory — remembering state via `progress.md` | ✅ |
| 4 | [Fix Loop with Real Checker](./fix-loop) | Maker-Checker — a separate AI verifies the fix | ✅ |
| 5 | [Codify the Body](./codify) | Turning a workflow into a reusable command (`/fix-and-review`) | ✅ |
| 6 | [Doorbell Loop](./doorbell-practice) | Event-driven trigger (GitHub PR) | ✅ |
| 7 | Break It on Purpose | Silent failure vs. loud failure — error handling | ✅ *(inside the morning-brief folder)* |
| 8 | [Daily Loop (Capstone)](./daily-loop-capstone) | The full 6-part loop: Heartbeat + Isolation + Skill + Checker + Connector + Spine | ✅ |
| 9 | [Rehearse a Routine](./rehearse-practice) | One-off testing, reading the full transcript | ✅ |
| 10 | [Secrets Drill](./secrets-drill) | Environment Variables vs. `.env` files | ✅ |
| 11 | [Two-Routine Gate](./two-routine-gate) | Human approval gate for risky actions | ✅ |
| 12 | [Dreaming Loop](./dreaming-loop) | A loop that learns from its own past logs and proposes improvements | ✅ |

---

## 🧠 Core Concept Behind Each Project

| Concept | Where It Was Learned |
|---|---|
| **Heartbeat** (what starts the loop) | Projects 1–3, 6 |
| **Isolation** (worktrees, separate folders) | Projects 4–5, 8 |
| **Skill** (written-down project knowledge) | Projects 4, 8 |
| **Maker-Checker** (a second AI verifies) | Projects 4, 5, 8 |
| **Connector** (taking real action) | Projects 4, 6, 8 |
| **Spine / Memory** (`progress.md`) | Projects 3, 8, 12 |
| **Human Control** (approval gates) | Project 11 |
| **Debugging via Logs** | Project 7 |

---

## 🛠️ Tools Used

- **Claude Code** (CLI) — `claude -p` headless mode for automated runs
- **Windows CMD + Batch files** — local alternative to the heartbeat, since `/schedule` wasn't available
- **TypeScript / Node.js** — for practice code
- **Git + GitHub** — for Project 6 (event-driven) and for backup

---

## 📌 Key Lessons Learned in Practice

1. **A failed `cd` doesn't stop a batch file** — always add an `errorlevel` check, or the loop will silently keep working in the wrong folder.
2. **`--dangerously-skip-permissions` is required** for any loop running unattended — otherwise it just stalls waiting for permission.
3. **Secrets belong in System Environment Variables, not `.env` files** — `.env` is gitignored and never reaches automation.
4. **A "success" status doesn't mean the work was actually correct** — always read the full log/transcript.
5. **Risky actions (delete, payment) always need a 2-step gate** — draft first, human approves, then the real action runs.

---

*Course: [The AI Agent Factory — Loop Engineering Crash Course](https://agentfactory.panaversity.org/docs/loop-engineering-crash-course)*
