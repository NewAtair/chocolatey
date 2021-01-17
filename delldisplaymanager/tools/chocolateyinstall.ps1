
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.dell.com/FOLDER06515292M/1/ddmsetup2010.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Dell Display Manager*'

  checksum      = '621fb95479fa33e427bf78e0e7ff63a6e5f7f9fa47c78da3c309cdf4fc42650f'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs










    








