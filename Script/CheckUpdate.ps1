#pihole web page
$url = 'http://pi-hole.local/admin/'
$page = Invoke-WebRequest -Uri $url
#check if an update is available
if($page -clike '*Update available!*') {
	  $name = Read-Host 'Update Now? '
	  if ($name -eq 'y'){
		Write-Output '>>>pihole -up<<<'
		#lanch the ssh session
		ssh pi@pi-hole.local
	  }
}
else {
		#uncomment this if you want to have a message if no update is available
		#$name = Read-Host 'no update available, press any key to quit'
}