# SuspiciousConnectionsScanner
A PowerShell script that detects and flags suspicious outbound network connections using netstat parsing.
## 🔍 How It Works

This PowerShell script analyzes current outbound network connections on a Windows system using `netstat -nao`. It flags connections where the remote address is external and not localhost or loopback. The script highlights each potentially suspicious connection using yellow text in the PowerShell terminal for easy visibility.

### Key Features:
- Parses `netstat` output using regex
- Identifies non-local remote IP addresses
- Displays connection info with port numbers and protocols
