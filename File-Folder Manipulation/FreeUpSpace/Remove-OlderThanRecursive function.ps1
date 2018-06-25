Function Remove-OlderThanRecursive {

<#
.Synopsis
By Taylor Lee
Modified 06252018

.Description
This scripts function is to delete files and folders older than x days recursivley.

.Inputs
      [Parameter(Mandatory=$true)]$Path,
      [Parameter(Mandatory=$true)][ValidateScript({$_ -lt 0})][int]$Daysback  
          )

    $CurrentDate = Get-Date
    $DatetoDelete = $CurrentDate.AddDays($Daysback)
    Get-ChildItem $Path -Recurse | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Confirm

.Example
 Delete-OlderThan -Path "C:\Folder" -DaysBack "-90" 
#>

    Param (
      [Parameter(Mandatory=$true)]$Path,
      [Parameter(Mandatory=$true)][ValidateScript({$_ -lt 0})][int]$Daysback  
          )

    $CurrentDate = Get-Date
    $DatetoDelete = $CurrentDate.AddDays($Daysback)
    Get-ChildItem $Path -Recurse | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Confirm

}