[string[]]$GameApps = Get-AppxPackage -Name king.com.CandyCrushFriends
[string[]]$GameApps += Get-AppxPackage -Name king.com.CandyCrushSaga 
[string[]]$GameApps += Get-AppxPackage -Name Microsoft.XboxApp


[string[]]$OtherApps = Get-AppxPackage -Name XINGAG.XING
[string[]]$OtherApps += Get-AppxPackage -Name Fitbit.FitbitCoach
[string[]]$OtherApps += Get-AppxPackage -Name Microsoft.NetworkSpeedTest
[string[]]$OtherApps += Get-AppxPackage -Name Duolingo
[string[]]$OtherApps += Get-AppxPackage -Name AdobeSystemIncorporated.AdobePhotoshop


[string[]]$MSApps = Get-AppxPackage -Name Microsoft.BingNews
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.BingWeather
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.GetHelp
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.Getstarted
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.Messaging
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.MicrosoftOfficeHub
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.People
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.Wallet
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.WindowsFeedbackHub
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.WindowsMaps
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.YourPhone
[string[]]$MSApps += Get-AppxPackage -Name Microsoft.Office.Sway


[string[]]$RemovingApps = [string[]]$GameApps
[string[]]$RemovingApps += [string[]]$OtherApps
[string[]]$RemovingApps += [string[]]$MSApps

foreach($RemovingApp in $RemovingApps){
    Remove-AppxPackage -Package $RemovingApp
    Write-Host "Removed App $RemovingApp"
}