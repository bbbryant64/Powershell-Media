$path = "F:\Users\psyon\Google Drive\Scanned Documents\Auto\19_Ram\Photos"
$filter = '*.jpg'

get-childitem -path $path -filter $filter | 
 rename-item -newname {$_.name -replace 'IMG_20191005_','2019RAM_'}
