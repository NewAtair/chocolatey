
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.delldisplaymanager.com/ddmsetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Dell Display Manager*'

  checksum      = 'd1e19161a21550ffc98aca4b9dbb4b37ec3e5f02eeaaae7c0ed7cacaaff7f1d6'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs










    








