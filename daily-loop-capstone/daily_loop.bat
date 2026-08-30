cd /d E:\loop_engineering_projects\daily-loop-capstone
if errorlevel 1 (
    echo FAIL: folder nahi mila >> progress.md
    exit /b 1
)
claude -p "skill.md parho (fixing rules). progress.md parho (purani history). utils.ts mein jitne TODOs hain unhe dhoondo jo progress.md mein record nahi hain. Har naye TODO ke liye: agar skill.md ke hisaab se 'simple/safe' hai to fix draft karo aur dusre subagent se verify karwao (Task tool se) ke fix purane function jaisa hi kaam karta hai. Agar subagent PASS bole to fix apply karo. Agar complex lage ya subagent FAIL bole to progress.md mein 'NEEDS HUMAN: [wajah]' likho, fix mat karo. Sab kuch progress.md mein aaj ki date ke sath likho — kya mila, kya fix hua, kya insaan ke liye chora." --dangerously-skip-permissions >> progress.md 2>&1