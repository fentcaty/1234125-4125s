@echo off
set WEBHOOK_URL=https://discord.com/api/webhooks/1393213796222238751/uIbJ0LyMKEAtnfdlC4P9VZf4OUkjAWnQ42Kqh2TM5SZDxNTe0EBVAPrPogxP3vG9rG53

powershell -Command ^
  "$payload = @{content='hi'} | ConvertTo-Json; ^
   Invoke-RestMethod -Uri '%WEBHOOK_URL%' -Method Post -Body $payload -ContentType 'application/json'"
