cd /d E:\loop_engineering_projects\rehearse-practice-GALAT
if errorlevel 1 (
    echo FAIL: folder nahi mila, path check karo >> rehearsal_log.txt
    exit /b 1
)
claude -p "Aaj ki date likho aur ek line mein batao 'System check ho gaya, sab theek hai'. Result summary.md file mein likho, purani entries ko mitao mat, neeche add karo." --dangerously-skip-permissions >> rehearsal_log.txt 2>&1