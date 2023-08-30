# Run as System and Automatic Architecture
# Run dsregcmd /status in a command prompt and capture the output
$dsregcmdOutput = cmd /c "dsregcmd /status"

# Parse the output for the DeviceId key
$workplaceDeviceId = ($dsregcmdOutput | Select-String 'WorkplaceDeviceId\s*:\s*(.*)').Matches.Groups[1].Value

# Output the values of the DeviceId key
echo $workplaceDeviceId
