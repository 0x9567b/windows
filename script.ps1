
$locations = @(
    "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run",
    "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\RunServices",
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce",
    "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows",
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows\Load",
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Windows\Scripts",
)


for ($i = 0; $i -lt $locations.Length; $i++) {
    Get-ItemProperty -Path $locations[$i]
}
