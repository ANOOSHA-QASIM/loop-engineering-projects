cd /d E:\loop_engineering_projects\morning-brief-GALAT-PATH
if errorlevel 1 (
    echo FAIL: folder nahi mila, path check karo >> brief_log.txt
    exit /b 1
)
claude -p "progress.md file parho. Is folder ki .ts files mein jitne bhi TODO comments hain unhe dhoondo. Jo TODOs progress.md mein pehle se likhe nahi hain, unhe naye section mein aaj ki date ke sath add karo." --dangerously-skip-permissions >> brief_log.txt 2>&1