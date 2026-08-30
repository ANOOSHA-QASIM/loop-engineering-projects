cd /d E:\loop_engineering_projects\two-routine-gate
if not exist approved.txt (
    echo BLOCKED: approved.txt nahi mili, insaan ki approval chahiye >> gate_log.txt
    exit /b 1
)
claude -p "approved.txt maujood hai, matlab insaan ne approve kar diya hai. Ab old_report.txt ko delete karo." --dangerously-skip-permissions >> gate_log.txt 2>&1
del approved.txt
echo APPLIED: old_report.txt delete ho gayi, approval file bhi hata di gayi >> gate_log.txt