#time variable to be retrieved from user
$global:hcount=2
$global:mcount=59
function timeUpd($HourVal){
    $global:mcount-=1
    if($global:mcount -eq 0){
        $global:hcount-=1
        $global:mcount=59
    }
    if($global:hcount -eq 0){
        $HourVal.text="00 : 00"
        Start-Sleep 2
        exit
    }
    $HourVal.text=($global:hcount).ToString()+" : "+($global:mcount).ToString()
}

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#[System.Windows.Forms.Application]::EnableVisualStyles()

$DialogBox = New-Object system.Windows.Forms.Form
$DialogBox.ClientSize = '480,300'
$DialogBox.text = "Pomodotroidf"
#$DialogBox.BackColor = "#ffffff"


$HourVal = New-Object system.Windows.Forms.Label
$HourVal.text = ($global:hcount).ToString()+" : "+($global:mcount).ToString() 
$HourVal.AutoSize = $true
$HourVal.width=25
$HourVal.height=10
$HourVal.location= New-Object System.Drawing.Point(20,20)

$DialogBox.Controls.Add($HourVal)

$timer=New-Object System.Windows.Forms.Timer
$timer.Interval=2000
$timer.add_Tick({timeUpd $HourVal})
$timer.Start()

[void]$DialogBox.ShowDialog()
