Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

[System.Windows.Forms.Application]::EnableVisualStyles()

$DialogBox = New-Object system.Windows.Forms.Form
$DialogBox.ClientSize = '480,300'
$DialogBox.text = "Pomodotroidf"
$DialogBox.BackColor = "#ffffff"

$HourVal = New-Object system.Windows.Forms.Label
$HourVal.text = "12"
$HourVal.AutoSize = $true
$HourVal.width=25
$HourVal.height=10
$HourVal.location= New-Object System.Drawing.Point(20,20)
#$HourVal.Font

$DialogBox.Controls.AddRange(@($Hourval))

[void]$DialogBox.ShowDialog()
