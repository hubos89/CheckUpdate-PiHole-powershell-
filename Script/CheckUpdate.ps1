$url = 'http://pi-hole.local/admin/'
$page = Invoke-WebRequest -Uri $url
#$page = 'Update available!'
if($page -clike '*Update available!*') {
      Write-Output 'True'
	  $name = Read-Host 'Update Now? '
	  if ($name -eq 'y'){
		Write-Output 'ssh'
	  }
} 
else {
      Write-Output 'False'
	  $name = Read-Host 'no update available, press any key to quit'
}
$name = Read-Host 'temp quit'