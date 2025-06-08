# SuspiciousConnectionsScanner.ps1
# Author: Mary
# Description: Scans current network connections and flags suspicious ones.

$blacklistPorts = @(23, 4444, 3389, 1337, 6667, 12345, 31337)
$localIPs = @("127.0.0.1", "::1")

Write-Host "🔍 Scanning active network connections..." -ForegroundColor Cyan

$connections = Get-NetTCPConnection | Where-Object {
    $_.State -eq "Established" -and
    $_.RemoteAddress -notin $localIPs
}

if ($connections.Count -eq 0) {
    Write-Host "✅ No suspicious connections found." -ForegroundColor Green
} else {
    foreach ($conn in $connections) {
        $alert = $blacklistPorts -contains $conn.RemotePort
        $flag = if ($alert) { "[⚠️ Suspicious Port!]" } else { "" }
        Write-Host "$flag Local: $($conn.LocalAddress):$($conn.LocalPort) --> Remote: $($conn.RemoteAddress):$($conn.RemotePort)
    }
}