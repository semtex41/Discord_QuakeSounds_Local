# Discord_QuakeSounds
# Created by: semtex41 (semtex41@users.noreply.github.com)
# Version: 1.2

# Instructions:
# 1) Discord - Change Voice Setting to "Legacy Subsystem"
#    * User Settings (Gear) > Voice > Audio Subsystem > Use Legacy Audio Subsystem: Enable

# 2) Drop .wav files in the sound folder and declare the file name here:
$track1 = "takethatbitch.wav"
$track1_title = "FPS Doug - Take That Bitch!"





#############################
# Dont Edit Below This Line #
#############################



#Set $ScriptDirectory for when the script is called by Slickrun, CMD, or AutoHotkey
$ScriptDirectory = Split-Path $MyInvocation.MyCommand.Path -Parent

# Check for Operating Mode - Determine if script is being called vs run in Powershell IDE
if (!($ScriptDirectory -eq $null )) {
    #Write-Output "Setting Dot Sourcing Path"
    $relativepath = $ScriptDirectory
    #Write-Output "Value of relativepath: $relativepath "
    #Write-Output "Value of PSScriptRoot: $ScriptDirectory "
    }
else{
    #Write-Output "Setting Powershell IDE Relative Path"
    $relativepath = $(Resolve-Path -Relative .)
  
}


#Set Variable for Track1
#$relativepath_track1 = (Get-Item .\sounds\$track1 | Resolve-Path -Relative)
$relativepath_track1 = "$relativepath\sounds\$track1"

# Set Variable for nircmd.exe
#$relativepath_nircmd = (Get-Item .\files\nircmd.exe | Resolve-Path -Relative)
#$relativepath = "D:\Games\QuakeSounds\Discord_QuakeSounds"
$relativepath_nircmd =  "$relativepath\files\nircmd.exe"
Write-Output "$relativepath_nircmd"


#temp - will be used to paramaterize the script later
$selectedtrack = $relativepath_track1

function playsound {
    Start-Process -FilePath "$relativepath_nircmd" -ArgumentList "setdefaultsounddevice `"What U Hear`" 2"
    Start-Process -FilePath "$relativepath_nircmd" -ArgumentList "setdefaultsounddevice `"What U Hear`" 1"
    Start-Process -FilePath "$relativepath_nircmd" -ArgumentList "setdefaultsounddevice `"What U Hear`" 0"

    Write-Output "Playing... $selectedtrack"
    $Playwav = new-object ('Media.SoundPlayer') $selectedtrack 
    $Playwav.PlaySync()

    Start-Process -FilePath "$relativepath_nircmd" -ArgumentList "setdefaultsounddevice `"Microphone`" 2"
    Start-Process -FilePath "$relativepath_nircmd" -ArgumentList "setdefaultsounddevice `"Microphone`" 1"
    Start-Process -FilePath "$relativepath_nircmd" -ArgumentList "setdefaultsounddevice `"Microphone`" 0"
}

$track1_title
& playsound