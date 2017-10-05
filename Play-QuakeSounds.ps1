
$scriptPath = split-path -parent $MyInvocation.MyCommand.Path
$configFilePath = $scriptPath + "\takethatbitch.wav"
Write-Host $configFilePath
 
function takethatbitch {
    .\nircmd.exe setdefaultsounddevice "What U Hear" 2
    .\nircmd.exe setdefaultsounddevice "What U Hear" 1
    .\nircmd.exe setdefaultsounddevice "What U Hear" 0

    powershell -Command {(New-Object Media.SoundPlayer("D:\Games\_FPS Doug\QuakeSounds\takethatbitch.wav")).PlaySync()}

    .\nircmd.exe nircmd setdefaultsounddevice "Microphone" 2
    .\nircmd.exe nircmd setdefaultsounddevice "Microphone" 1
    .\nircmd.exe nircmd setdefaultsounddevice "Microphone" 0
}

& takethatbitch ; & takethatbitch

[string]$playpath1 = "$PWD"+"\takethatbitch.wav"

function takethatbitch {
    .\nircmd.exe setdefaultsounddevice "What U Hear" 2
    .\nircmd.exe setdefaultsounddevice "What U Hear" 1
    .\nircmd.exe setdefaultsounddevice "What U Hear" 0

    Write-Output $playpath1
    $Playwav = new-object ('Media.SoundPlayer') $playpath1 
    #$Playwav.PlayLooping()
    #$Playwav.LoadAsync()
    #$Playwav.Play()
    $Playwav.PlaySync()
    
    #Start-Sleep -Seconds 2.132
    #$Playwav.stop()
    
    .\nircmd.exe nircmd setdefaultsounddevice "Microphone" 2
    .\nircmd.exe nircmd setdefaultsounddevice "Microphone" 1
    .\nircmd.exe nircmd setdefaultsounddevice "Microphone" 0
}

& takethatbitch

    .\nircmd.exe setdefaultsounddevice "What U Hear" 2
    .\nircmd.exe setdefaultsounddevice "What U Hear" 1
    .\nircmd.exe setdefaultsounddevice "What U Hear" 0

    Write-Output $playpath1
    $Playwav = new-object ('Media.SoundPlayer') $playpath1 
    #$Playwav.PlayLooping()
    #$Playwav.LoadAsync()
    #$Playwav.Play()
    $Playwav.PlaySync()
    
    #Start-Sleep -Seconds 2.132
    #$Playwav.stop()
    
    .\nircmd.exe nircmd setdefaultsounddevice "Microphone" 2
    .\nircmd.exe nircmd setdefaultsounddevice "Microphone" 1
    .\nircmd.exe nircmd setdefaultsounddevice "Microphone" 0
