Set-Location 'H:\DVD Rip'
  $files = Get-ChildItem -file;
  ForEach ($file in $files)
  {
    $folder = New-Item -type directory -name $file.BaseName;
    Move-Item $file.FullName $folder.FullName;
  }
  Get-ChildItem -Path 'H:\DVD Rip' -Recurse | Move-Item -Destination H:\Videos\Movies