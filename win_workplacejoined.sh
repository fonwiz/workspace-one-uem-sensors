# Run as Current User and Automatic architecture
# Run dsregcmd /status in a command prompt and capture the output
$dsregcmdOutput = cmd /c "dsregcmd /status"

# Parse the output for the DomainJoined key
$workplaceJoined = ($dsregcmdOutput | Select-String 'WorkplaceJoined\s*:\s*(.*)').Matches.Groups[1].Value

# Output the values of the DomainJoined key
echo $workplaceJoined
