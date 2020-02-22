Set-Location 'H:\Playon Library\Netflix'
  $files = Get-ChildItem -file;
  ForEach ($file in $files)
  {
    $folder = New-Item -type directory -name $file.BaseName;
    Move-Item $file.FullName $folder.FullName;
  }
   Get-ChildItem -path 'H:\Playon Library\Netflix' -Recurse | Move-Item -Destination H:\Videos\Movies