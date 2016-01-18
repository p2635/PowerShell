Param (
    [Parameter(position=0, mandatory=$true, valuefrompipeline=$true)]
    [string]$Target,
    [Parameter(position = 1, mandatory = $true)]
    [ValidateRange(0, 65535)]
    [int32]$TargetPort,
    [Parameter(position = 2, mandatory = $false)]
    [ValidateRange(0, 65535)]
    [int32]$SourcePort = (Get-Random -Minimum 0 -Maximum 65535),
    [Parameter(position = 3, mandatory = $false)]
    [int32]$Ttl = 99,
    [Parameter(position = 4, mandatory = $false)]
    [int32]$Count = 1
)

$udp = New-Object System.Net.Sockets.UdpClient