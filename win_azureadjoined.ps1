# Powershell sensor script run Sytem and Architecture Auto
# Run dsregcmd /status in a command prompt and capture the output
$dsregcmdOutput = cmd /c "dsregcmd /status"

# Parse the output for the AzureADJoined key
$azureADJoined = ($dsregcmdOutput | Select-String 'AzureADJoined\s*:\s*(.*)').Matches.Groups[1].Value

# Output the values of the AzureADJoined key
echo $azureADJoined
