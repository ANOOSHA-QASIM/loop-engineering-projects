cd /d E:\loop_engineering_projects\secrets-drill
if "%MY_SECRET_TOKEN%"=="" (
    echo FAIL: MY_SECRET_TOKEN nahi mila environment mein >> secret_log.txt
) else (
    echo PASS: Secret mil gaya, value hai: %MY_SECRET_TOKEN% >> secret_log.txt
)