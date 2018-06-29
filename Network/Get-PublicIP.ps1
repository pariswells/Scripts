Function Get-PublicIP {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 06282018
      
    .DESCRIPTION
    Returns WhoIS public IP info for your location or an specified public IP
      
    .INPUTS
    [CmdletBinding()]   
    Param (
      [Parameter(Position=0)]$IP
          )

    $ipinfo = Invoke-RestMethod http://ipinfo.io/$IP 
    $PublicIP = @{
        IP       = $ipinfo.ip 
        Hostname = $ipinfo.hostname 
        City     = $ipinfo.city 
        Region   = $ipinfo.region 
        country  = $ipinfo.country 
        loc      = $ipinfo.loc 
        org      = $ipinfo.org
    } 
    $PublicIP.getenumerator() | Sort-Object -property name  
      
    
        
    .EXAMPLE
    Get-PublicIP

    Returns your Public IP Info

    .Example
    Get-PublicIP -IP 8.8.8.8

    Returns Public IP Info for Google
    #>

    [CmdletBinding()]   
    Param (
        [Parameter(Position = 0)]$IP
    )

    $ipinfo = Invoke-RestMethod http://ipinfo.io/$IP 
    $PublicIP = @{
        IP       = $ipinfo.ip 
        Hostname = $ipinfo.hostname 
        City     = $ipinfo.city 
        Region   = $ipinfo.region 
        country  = $ipinfo.country 
        loc      = $ipinfo.loc 
        org      = $ipinfo.org
        Phone    = $ipinfo.phone
    } 
    $PublicIP.getenumerator() | Sort-Object -property name   

}