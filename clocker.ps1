add-type -AssemblyName system.windows.forms
$form=New-Object System.Windows.Forms.Form
$btn=New-Object System.Windows.Forms.Button
$form.Controls.Add($btn)
$btn.add_Click({$form.Close()})
$btn.Dock='Fill'
$btn.Font='Lucida Console, 20.25pt, style=Bold'
$btn.Text=[DateTime]::Now
$timer=New-Object System.Windows.Forms.Timer
$timer.Interval=1000
$timer.add_Tick({$btn.Text=[DateTime]::Now})
$timer.Start()
$form.ShowDialog()
