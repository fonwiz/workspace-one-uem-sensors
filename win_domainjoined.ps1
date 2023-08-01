# powershell script run as System with automatic architecture
# Run dsregcmd /status in a command prompt and capture the output
$dsregcmdOutput = cmd /c "dsregcmd /status"

# Parse the output for the DomainJoined key
$domainJoined = ($dsregcmdOutput | Select-String 'DomainJoined\s*:\s*(.*)').Matches.Groups[1].Value

# Output the values of the DomainJoined key
echo $domainJoined
