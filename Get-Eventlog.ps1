
#!/usr/local/bin/pws
#EventLog designed to save log files to centralized admin drive
#Eventlog parses Warning and Error system events for easy monitoring, while saving all events to a seperate log 
Get-EventLog system -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\User1_Logfiles\$(get-date -Format "yyyymmdd").AllLogs.txt
Get-EventLog system -Entrytype Warning -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\User1_Logfiles\$(get-date -Format "yyyymmdd").Warnings.txt
Get-EventLog system -Entrytype Error -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\User1_Logfiles\$(get-date -Format "yyyymmdd").Errors.txt