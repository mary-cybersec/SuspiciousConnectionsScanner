# SuspiciousConnectionsScanner.ps1

This PowerShell script is designed to help detect potentially suspicious or unauthorized network connections on a Windows system. It scans active TCP connections and flags any remote IP addresses that do not belong to the local subnet.

## How It Works

- Uses `Get-NetTCPConnection` to retrieve current TCP connections.
- Compares each remote IP address against the local subnet.
- Flags any external IPs that may indicate suspicious outbound connections.
- Highlights remote IP addresses and ports for easy visibility.

## How to Run

1. Open PowerShell **as Administrator**.
2. Navigate to the folder where the script is saved:
   ```powershell
   cd "C:\Users\YourUsername\Documents"
 3.	Run the script:
    .\SuspiciousConnectionsScanner.ps1
   	If you encounter a script execution policy error, enable script execution temporarily:
   	Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
🔐 Tip: After running the script, you can disable execution with:
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Restricted

Tools & Skills Demonstrated
	•	PowerShell Scripting – Automated analysis of active network connections using native Windows command-line tools.
	•	Incident Detection – Flagging suspicious remote connections that could indicate unauthorized access.
	•	Log Analysis – Extracts and analyzes real-time system activity for signs of anomalies.
	•	Security Operations – Supports SOC workflows for endpoint monitoring and alerting.
	•	Windows Defender Integration – Complements endpoint protection tools with custom scanning logic.

Output Sample
Suspicious Connection Found:
Local: 192.168.1.20:50435 --> Remote: 103.87.45.220:443
    
