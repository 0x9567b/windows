
$locations = @(
    # Current User
    "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run",
    "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\RunServices",
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce",
    "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows",
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows\Load",
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows\Scripts",

    # Local Machine
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run",
    "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce",
    "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices",
    "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce",
    "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit"
)


for ($i = 0; $i -lt $locations.Length; $i++) {
    $check = Test-Path -Path $locations[$i]

    if ($check -eq 'True') {
        Get-ItemProperty -Path $locations[$i]
    } else{
        Write-host "Failed"
    }
}
