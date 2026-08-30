---
description: Fix a bug in a file, then run an independent reviewer subagent (fresh eyes, no context about the fix) to verify it, and report both results. Reusable version of the tax.ts fix-and-review flow.
argument-hint: <file-name> [optional: describe the expected correct behavior / what to verify, e.g. "calculateTax(100) should return 15"]
---

# /fix-and-review

You are running the `/fix-and-review` workflow. The user invoked this command with:

$ARGUMENTS

Follow these steps EXACTLY, in order:

## Step 1 — Identify the target file
- The FIRST whitespace-separated token of `$ARGUMENTS` is the file path (relative to the current working directory, or absolute). Read it fully with the Read tool.
- Any text after the file path is OPTIONAL context describing the expected correct behavior. Use it if provided; otherwise infer the correct behavior yourself from code comments, TODO markers, function naming, and obviously wrong values (e.g. a wrong constant).

## Step 2 — Draft and apply the fix
- Identify the bug. Common signals: comments saying "BUG"/"TODO", wrong numeric constants, inverted logic, hardcoded wrong values, off-by-one.
- Apply the fix with the Edit tool. Keep the change minimal and focused on the bug.

## Step 3 — Define the verification criterion
- Decide ONE concrete, runnable check the reviewer will perform, in the form: calling `<function>(<input>)` must return exactly `<expected>`.
- Example: "calling calculateTax(100) must return 15".

## Step 4 — Independent reviewer (fresh eyes, blind to your fix)
- Use the Agent tool to spawn ONE subagent (subagent_type: general-purpose).
- The subagent's prompt must contain ONLY:
  1. The absolute path to the file.
  2. The verification criterion from Step 3.
  3. Instructions to ACTUALLY evaluate the function (run it via node/ts-node/tsx, or read the logic and compute it) — and to reply with ONLY `PASS` or `FAIL: <reason>` (one line, nothing else).
- Do NOT tell the subagent what the bug was, what you changed, or that a fix was even applied. It must judge the file exactly as it currently stands, with no prior context.
- Wait for the subagent's result before continuing.

## Step 5 — Report results to the user
Show both clearly:
1. **Fix applied** — the exact change you made (old → new), as a short diff or before/after snippet.
2. **Reviewer verdict** — the subagent's exact `PASS` / `FAIL: <reason>` response.

Keep the user-facing report concise and in the same friendly Hinglish tone the user uses.
