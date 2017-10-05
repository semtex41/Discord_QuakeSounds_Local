

# Set Variable for Path where the script resides
$PSScriptRoot = Split-Path $MyInvocation.MyCommand.Path -Parent


# Play Source - Drop the .wav into the same directory as this .ps1 and edit the file name
[string]$playpath1 = "$PSScriptRoot"+"\takethatbitch.wav"




function takethatbitch {
    $PSScriptRoot\nircmd.exe setdefaultsounddevice "What U Hear" 2
    $PSScriptRoot\nircmd.exe setdefaultsounddevice "What U Hear" 1
    $PSScriptRoot\nircmd.exe setdefaultsounddevice "What U Hear" 0

    Write-Output $playpath1
    $Playwav = new-object ('Media.SoundPlayer') $playpath1 
    #$Playwav.PlayLooping()
    #$Playwav.LoadAsync()
    #$Playwav.Play()
    $Playwav.PlaySync()
    
    #Start-Sleep -Seconds 2.132
    #$Playwav.stop()
    
    $PSScriptRoot\nircmd.exe nircmd setdefaultsounddevice "Microphone" 2
    $PSScriptRoot\nircmd.exe nircmd setdefaultsounddevice "Microphone" 1
    $PSScriptRoot\nircmd.exe nircmd setdefaultsounddevice "Microphone" 0
}

& takethatbitch