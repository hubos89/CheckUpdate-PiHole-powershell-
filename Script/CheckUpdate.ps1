$url = 'http://pi-hole.local/admin/'
$page = Invoke-WebRequest -Uri $url
$page.RawContent
Write-Output $page
$name = Read-Host 'Update Now?'