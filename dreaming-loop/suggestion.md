# Suggestion: NEEDS HUMAN pattern analysis (from daily-loop-capstone/progress.md)

## Pattern mila (Pattern found)
Same generic reason **2 ya zyada dafa repeat hui hai** — total **3 dafa**, consecutive 3 days:

- `2026-08-25` → NEEDS HUMAN: TODO complex tha (business logic decision chahiye tha)
- `2026-08-26` → NEEDS HUMAN: TODO complex tha (business logic decision chahiye tha)
- `2026-08-27` → NEEDS HUMAN: TODO complex tha (business logic decision chahiye tha)

**Kitni baar repeat hua (How many times):** 3 baar (3 consecutive din, identical wording).

**Problem:** Har baar exact same generic sentence likhi gayi hai — ismein:
1. Kaunsa specific TODO complex tha (function/file name)? — nahi likha.
2. Insan se kya exact decision chahiye tha? — nahi likha.

Isliye insaan ko har din wahi purana generic line milti hai, aur shayad wahi TODO 3 din tak unresolved rehta hai (ya phir har roz naya pass chalta hai jo wahi likh deta hai). Loop mein ye "stuck" state ban gaya — roz same reason, koi resolution nahi.

## skill.md mein kya chota rule add karna chahiye (Proposed rule for skill.md)
Sirf proposal hai — `daily-loop-capstone/skill.md` khud mat badlo, bas ye rule add karo:

```md
- Jab "NEEDS HUMAN" likho, to SIRF generic reason mat likho. Har entry mein
  likho: (1) kaunsa exact TODO/file/function complex hai, aur (2) insaan se
  kya specific decision chahiye. Example:
  "NEEDS HUMAN: utils.ts discount() — yeh decide karo ki employee discount
  stack hone par cap kya ho (max 30% ya flat 10%)."
- Agar koi NEEDS HUMAN reason 2 ya zyada consecutive din TAKRAAT (same TODO)
  repeat ho raha hai, to naya generic pass na chalaao — instead us TODO ko
  explicitly escalate karo (e.g. "STUCK 2+ days: <specific TODO> — needs human
  decision, skipping until resolved") taake har roz wahi line na likhe.
```

**Benefit:** Future mein ye 2 cheezein tez fix hongi:
1. Insan ko pehli baar mein pata chalega kya fix karna hai → TODO jaldi resolve hoga, roz repeat band.
2. Loop "stuck" state detect kar payega (2+ din same reason) aur bekaar ke duplicate passes na chalaaye.

---
*Note: Ye sirf suggestion hai. progress.md aur skill.md dono unchanged hain.*
