@echo off
setlocal

:: Set your webhook URL
set "WEBHOOK_URL=https://discord.com/api/webhooks/1393213796222238751/uIbJ0LyMKEAtnfdlC4P9VZf4OUkjAWnQ42Kqh2TM5SZDxNTe0EBVAPrPogxP3vG9rG53"

:: Send webhook using embedded PowerShell
powershell -NoProfile -Command ^
    "$url='%WEBHOOK_URL%';" ^
    "$body = @{ content = 'hi' } | ConvertTo-Json -Compress;" ^
    "Invoke-RestMethod -Uri $url -Method Post -Body $body -ContentType 'application/json'"

endlocal
