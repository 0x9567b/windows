
$locations = @(
    "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run",
    "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"
)


for ($i = 0; $i -lt $locations.Length; $i++) {
    Get-ItemProperty -Path $locations[$i]
}
