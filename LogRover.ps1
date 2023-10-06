$Paths = @(
    "E:\website\test.com\logs",
    "E:\website\demo.com\logs",
    "E:\website\abc.com\logs",
    "E:\website\acme.com\logs"
)

$Older = 7
$DateToDelete = (Get-Date).AddDays(-$Older)
foreach ($Path in $Paths) {
    $Logs = Get-ChildItem -Path $Path -File | Where-Object { $_.LastWriteTime -lt $DateToDelete }
    foreach ($Log in $Logs) {
        Write-Output "$($Log.FullName)"
        Remove-Item $Log.FullName
    }
}
