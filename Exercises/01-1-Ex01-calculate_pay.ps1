# Simple Pay Calculator in PowerShell

Write-Host "============================"
Write-Host "     Simple Pay Calculator"
Write-Host "============================`n"

# Ask for input
$hours = Read-Host "How many hours did you work?"
$rate  = Read-Host "How much do you get paid per hour?"

# Convert to numbers
$hours = [double]$hours
$rate  = [double]$rate

# Calculate pay
$pay = $hours * $rate

# Format outputs to 2 decimal places
$hoursFormatted = "{0:N2}" -f $hours
$rateFormatted  = "{0:C2}" -f $rate
$payFormatted   = "{0:C2}" -f $pay

Write-Host "`n============================"
Write-Host " You worked $hoursFormatted hours at $rateFormatted per hour."
Write-Host " Your total pay is: $payFormatted"
Write-Host "============================"