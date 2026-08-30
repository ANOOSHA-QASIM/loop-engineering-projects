cd /d E:\loop_engineering_projects\dreaming-loop
if errorlevel 1 (
    echo FAIL: folder nahi mila >> dream_log.txt
    exit /b 1
)
claude -p "E:\loop_engineering_projects\daily-loop-capstone\progress.md file parho. Dekho kya koi wajah (jaise NEEDS HUMAN ka reason) baar baar (2 ya zyada dafa) repeat hui hai. Agar mile, to E:\loop_engineering_projects\dreaming-loop\suggestion.md file mein likho: kya pattern mila, kitni baar repeat hua, aur skill.md mein kya chota rule add karna chahiye taake future mein ye tez fix ho sake. Sirf suggestion likho, khud koi file mat badlo (na progress.md, na skill.md)." --dangerously-skip-permissions >> dream_log.txt 2>&1