@echo off

rem # SPEAKERS.BAT version 0.1 
rem # by Moosy
rem # based on 'https://github.com/bacl/WAM_API_DOC' and Samsung Multiroom Console Client - fhatz
rem # curl download http://www.confusedbycode.com/curl/#downloads

set CURL="C:\Program Files\cURL\bin\curl.exe"
set PORT=55001

rem # all my speakers start with mac address 50-
set MAC=f8-77-b8-15-fd-29


rem # change to your speakers, you can find mac addresses of your speakers in Samsung Multiroom app (settings, deviceID) or with arp -a

if "%2" == "main" ( 
set MAC=f8-77-b8-15-fd-29
)

if %1.==. goto help

if "%1" == "stop" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlaybackControl%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22playbackcontrol%%22%%20val=%%22stop%%22/%%3E
)
if "%1" == "pause" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlaybackControl%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22playbackcontrol%%22%%20val=%%22pause%%22/%%3E
)
if "%1" == "play" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlaybackControl%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22playbackcontrol%%22%%20val=%%22play%%22/%%3E
)
if "%1" == "mute" ( 
set CMND=UIC?cmd=%%3Cpwron%%3Eon%%3C/pwron%%3E%%3Cname%%3ESetMute%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22mute%%22%%20val=%%22on%%22/%%3E
)
if "%1" == "unmute" ( 
set CMND=UIC?cmd=%%3Cpwron%%3Eon%%3C/pwron%%3E%%3Cname%%3ESetMute%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22mute%%22%%20val=%%22off%%22/%%3E
)
if "%1" == "next" ( 
set CMND=UIC?cmd=%%3Cpwron%%3Eon%%3C/pwron%%3E%%3Cname%%3ESetTrickMode%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22trickmode%%22%%20val=%%22next%%22/%%3E
)
if "%1" == "previous" ( 
set CMND=UIC?cmd=%%3Cpwron%%3Eon%%3C/pwron%%3E%%3Cname%%3ESetTrickMode%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22trickmode%%22%%20val=%%22previous%%22/%%3E
)


if "%1" == "radio1" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlayPreset%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presetindex%%22%%20val=%%220%%22/%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presettype%%22%%20val=%%221%%22/%%3E
)
if "%1" == "radio2" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlayPreset%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presetindex%%22%%20val=%%221%%22/%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presettype%%22%%20val=%%221%%22/%%3E
)
if "%1" == "radio3" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlayPreset%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presetindex%%22%%20val=%%222%%22/%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presettype%%22%%20val=%%221%%22/%%3E
)
if "%1" == "radio4" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlayPreset%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presetindex%%22%%20val=%%223%%22/%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presettype%%22%%20val=%%220%%22/%%3E 
)
if "%1" == "radio5" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlayPreset%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presetindex%%22%%20val=%%224%%22/%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presettype%%22%%20val=%%220%%22/%%3E 
)
if "%1" == "radio6" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlayPreset%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presetindex%%22%%20val=%%225%%22/%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presettype%%22%%20val=%%220%%22/%%3E 
)
if "%1" == "radio7" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlayPreset%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presetindex%%22%%20val=%%226%%22/%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presettype%%22%%20val=%%220%%22/%%3E 
)
if "%1" == "radio8" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlayPreset%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presetindex%%22%%20val=%%227%%22/%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presettype%%22%%20val=%%220%%22/%%3E 
)



if "%1" == "bluetooth" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetFunc%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22function%%22%%20val=%%22bt%%22/%%3E  
)
if "%1" == "tvsoundconnect" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetFunc%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22function%%22%%20val=%%22soundshare%%22/%%3E  
)
if "%1" == "aux" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetFunc%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22function%%22%%20val=%%22aux%%22/%%3E
)
if "%1" == "wifi" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetFunc%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22function%%22%%20val=%%22wifi%%22/%%3E
)





if "%1" == "vol0" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%220%%22/%%3E
)

if "%1" == "vol1" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%221%%22/%%3E
)
if "%1" == "vol2" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%222%%22/%%3E
)
if "%1" == "vol3" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%223%%22/%%3E
)
if "%1" == "vol4" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%224%%22/%%3E
)
if "%1" == "vol5" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%225%%22/%%3E
)
if "%1" == "vol6" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%226%%22/%%3E
)
if "%1" == "vol7" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%227%%22/%%3E
)
if "%1" == "vol8" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%228%%22/%%3E
)
if "%1" == "vol9" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetVolume%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22volume%%22%%20val=%%229%%22/%%3E
)






if "%1" == "GetVolume" ( 
set CMND=UIC?cmd=%%3Cname%%3EGetVolume%%3C/name%%3E
)
if "%1" == "GetSpkName" ( 
set CMND=UIC?cmd=%%3Cname%%3EGetSpkName%%3C/name%%3E
)

if "%1" == "GetAlarmInfo" ( 
set CMND=UIC?cmd=%3Cname%3EGetAlarmInfo%3C/name%3E
)
if "%1" == "GetRadioInfo" ( 
set CMND=CPM?cmd=%%3Cname%%3EGetRadioInfo%%3C/name%%3E
)
if "%1" == "SetSelectRadio" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetSelectRadio%%3C/name%%3E
)
if "%1" == "SetPlayPreset" ( 
set CMND=CPM?cmd=%%3Cname%%3ESetPlayPreset%%3C/name%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presetindex%%22%%20val=%%223%%22/%%3E%%3Cp%%20type=%%22dec%%22%%20name=%%22presettype%%22%%20val=%%220%%22/%%3E
)
if "%1" == "SoftwareVersion" ( 
set CMND=UIC?cmd=%%3Cname%%3EGetSubSoftwareVersion%%3C/name%%3E
)
if "%1" == "GetAvSource" ( 
set CMND=UIC?cmd=%%3Cname%%3EGetAvSourceAll%%3C/name%%3E
)
if "%1" == "SpkInGroup" ( 
set CMND=UIC?cmd=%%3Cname%%3ESpkInGroup%%3C/name%%3E%%3Cp%%20type=%%22str%%22%%20name=%%22act%%22%%20val=%%22select%%22/%%3E
)
if "%1" == "GetPlayStatus" ( 
set CMND=UIC?cmd=%%3Cname%%3EGetPlayStatus%%3C/name%%3E
)
if "%1" == "Ungroup" ( 
set CMND=UIC?cmd=%%3Cname%%3ESetUngroup%%3C/name%%3E
)

if "%1" == "group" ( 
rem string to long for a batchfile ;-(
goto end
)


rem # find speakers using arp
arp -a | find " %MAC%" > speakers.txt

for /f %%i in (speakers.txt) do (
  echo %CURL% http://%%i:%PORT%/%CMND%
  echo output:
  %CURL% http://%%i:%PORT%/%CMND%
  echo.
)

rem # del speakers.txt
goto end

:help
echo Control Samsung Wireless Audio Multiroom Speakers - version 0.1 by Moosy
echo.
echo SPEAKERS [command] [speaker]
echo.
echo   [command] input
echo        wifi, tvsoundconnect, bluetooth, aux
echo   [command] to control sound
echo 	    mute, unmute, play, stop, pause
echo 	    vol1, vol2, vol3  ... vol9
echo   [command] to set to favorite radio channel:
echo 	    radio1, radio2, radio3  .... radio 8
echo   [command] to further explore for version 0.2 ;-)
echo        next, previous
echo        GetSpkName, GetAlarmInfo, GetVolume, GetRadioInfo, SetSelectRadio, SetPlayPreset, SoftwareVersion, GetPlayStatus, Ungroup
echo.
echo   [speaker]
echo      empty for all speakers or use a speaker you defined in the batch file.
echo.      
echo   examples: 
echo       SPEAKERS radio1 kitchen   -  Kitchen speaker on favorite radio 1
echo       SPEAKERS vol2 study       -  Volume Low for speaker in the study
echo       SPEAKERS mute             -  Mute all speakers
echo 	   SPEAKERS GetSpkName study


:end