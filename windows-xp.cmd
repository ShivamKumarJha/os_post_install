@echo off
TITLE Windows XP Beyond Post Installer - Created by Shivam Kumar Jha.
color 71
cls
echo.
echo Please wait while Windows XP configures your system...
echo ... the configuration proccess may take up to 30 minutes, Windows will restart automatically after the installation.
echo.
echo Regards- Shivam Kumar Jha
echo.
echo.
echo.
echo.
echo Installing applications - DO NOT RESTART THE COMPUTER.
echo.
echo Net Frame Work 4
%windir%\Setup\Apps\dotNetFx40_Full_x86_x64.exe /q /norestart
echo Registry Tweaks To Enchance System Performance.
REG ADD "HKCU\Environment" /V SEE_MASK_NOZONECHECKS /T REG_SZ /D 1 /F
REG ADD "HKCU\Environment" /V SEE_MASK_NOZONECHECKS /T REG_SZ /D 1 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /V SEE_MASK_NOZONECHECKS /T REG_SZ /D 1 /F
regedit /s /f "%windir%\Setup\Apps\Izer-XP.reg"
regedit /s /f %windir%\Setup\Apps\DriverMax\ISOBUSTERREG.reg
echo Adobe Photoshop 6
%windir%\Setup\Apps\AdobePhotoshop6.0Extended.Silent.exe
echo Driver Magician
%windir%\Setup\Apps\DriverMax\DriverMagician.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
%windir%\Setup\Apps\DriverMax\n0ak.exe
regedit /s %windir%\Setup\Apps\DriverMax\rad.reg
echo Open Office 3.4.1
%windir%\Setup\Apps\OpenOffice\setup.exe /qb /norestart
echo System Tools Pack
%windir%\Setup\Apps\SYSTEMTOOLSPACK.SILENT.exe
echo Microsoft Virtual C++
%windir%\Setup\Apps\2.VCREDIST.exe
%windir%\Setup\Apps\3.VCREDIST.exe
%windir%\Setup\Apps\vcredist_x86.exe /q
echo Winrar 4.00
%windir%\Setup\Apps\WinRAR\winrar-32Bit-400.exe /s
echo 7-Zip
%windir%\Setup\Apps\7z920.msi /qb
echo Adobe Reader
%windir%\Setup\Apps\ar9lite_eng\ar9lite_eng.exe 
echo Audacity
%windir%\Setup\Apps\Audacity.exe
echo CCleaner
%windir%\Setup\Apps\CCLEANER212651.EXE /S
echo Easy BCD
%windir%\Setup\Apps\EasyBCD.exe /S
echo Fast Explorer
%windir%\Setup\Apps\FASTEXPLORER.exe /S
echo FontExpert
%windir%\Setup\Apps\FontExpert.exe
echo GIMP Editor
%windir%\Setup\Apps\GIMP-2.0.exe
echo Format Factory
%windir%\Setup\Apps\FFSetup3.3.5.0.exe /S
echo Firefox 41
%windir%\Setup\Apps\Firefox_41.0.1.exe /S /L /s /quiet /norestart /qb /verysilent
echo Adobe Flash Player
%windir%\Setup\Apps\install_flash_player_11_plugin.msi /qb
echo Additional Fonts
%windir%\Setup\Apps\Fonts.exe
echo Google Chrome 47.0.2526.80
%windir%\Setup\Apps\googlechromestandaloneenterprise.msi /qb /norestart 
echo Hash Tab
%windir%\Setup\Apps\Hash.exe
echo Internet Downloader Manager
%windir%\Setup\Apps\IDM_6.15.exe
echo Internet Tools Pack
%windir%\Setup\Apps\INTERNET_TOOLS_PACK.exe
echo Java
%windir%\Setup\Apps\jre-8u25-windows-i586.exe /s
echo KM Player
%windir%\Setup\Apps\TheKMPlayer.Silent.exe  /S
echo KLite Codec Pack
%windir%\Setup\Apps\K-Lite_Codec_Pack_1170_Mega.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
echo Mobi Reader
%windir%\Setup\Apps\mobifilereader_setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
echo Notepad ++
%windir%\Setup\Apps\npp.6.6.9.Installer.exe /silent /s /qb /verysilent /S /L
echo PathCopy
%windir%\Setup\Apps\PathCopyCopy11.1.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
echo Photo Collage Maker
%windir%\Setup\Apps\PHOTO_COLLAGE_MAKER.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
echo MSXML 6
%windir%\Setup\Apps\msxml6.msi /qb
echo Picasa 3.9
%windir%\Setup\Apps\picasa39-setup.exe /S /L
echo Pic Pick Image Editor
%windir%\Setup\Apps\PicPick.2.0.Silent.exe
echo Power ISO
%windir%\Setup\Apps\POWERISO49.exe /S
echo Adobe Shockwave
%windir%\Setup\Apps\Shockwave.exe
taskkill /f /im iexplore.exe
%windir%\Setup\Apps\sw_lic_full_installer.msi /qb
taskkill /f /im iexplore.exe
echo Sib Icon Editor
%windir%\Setup\Apps\SIBICONEDITOR.SILENT.exe
echo Adobe SVG View
%windir%\Setup\Apps\SVGView.exe
echo Undelete 360
%windir%\Setup\Apps\undelete-360-setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
echo Total Video Converter
%windir%\Setup\Apps\TOTALVIDEOCONVERTER.SILENT.exe
echo uTorrent 3
%windir%\Setup\Apps\UTORRENT3.exe
echo Video Edit Master
%windir%\Setup\Apps\VIDEOEDITMASTER.exe
echo VLC
%windir%\Setup\Apps\vlc-2.1.5-win32.exe /S
echo Windows XP Manager
%windir%\Setup\Apps\xpmanager.exe /quiet /passive /norestart
echo Webcam Viewer
%windir%\Setup\Apps\WV-SFX.exe
echo Virtual Box 5.0.10, click YES if promted to install driver.
%windir%\Setup\Apps\Vbox\VirtualBox-5.0.10-r104061-MultiArch_x86.msi /qb
echo Changing shell resources to resemble Windows Vista
%windir%\Setup\Apps\VistaMizer_4.3.0.0.exe /S /Q /s /q /quiet /verysilent /qb /q
echo Deleting temporary files...
del /f /q "%systemdrive%\Documents and Settings\All Users\Start Menu\Programs\Startup\Commands.exe"
del /f /q "%systemdrive%\Documents and Settings\All Users\Start Menu\Programs\Startup\Commands-x32.exe"
del /f /q "%systemdrive%\Documents and Settings\All Users\Start Menu\Programs\Startup\Commands-x64.exe"
del /f /q "%systemdrive%\Documents and Settings\All Users\Start Menu\Programs\Startup\Commands.cmd"
ren "%systemdrive%\Documents and Settings\All Users\Desktop\Notebook Software 10.lnk" "SMART Notebook 10.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\All Users\Desktop\Adobe Reader 9.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\All Users\Desktop\PhotoCardMaker.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\All Users\Desktop\Registry Workshop.lnk"
DEL /f /q "%systemdrive%\Documents and Settings\All Users\Desktop\Foxit Phantom.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\All Users\Desktop\CPUID CPU-Z.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\All Users\Desktop\Dream Aquarium.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\All Users\Desktop\Notepad++.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\All Users\Desktop\OpenOffice.org 3.2.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\All Users\Desktop\VLC media player.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\CCleaner.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\FastDownload.com.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\GameTeam.com.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\GameTop.com.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\KMPlayer.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\Winamp.lnk"
del /f /q "%systemdrive%\Documents and Settings\All Users\Desktop\Ashampoo Burning Studio 10.lnk"
del /f /q "%systemdrive%\Documents and Settings\All Users\Desktop\BitComet.lnk"
del /f /q "%systemdrive%\Documents and Settings\All Users\Desktop\EASEUS Partition Master 8.0.1 Home Edition.lnk"
del /f /q "%systemdrive%\Documents and Settings\All Users\Desktop\JDownloader.lnk"
del /f /q "%systemdrive%\Documents and Settings\All Users\Desktop\Registry Mechanic.lnk"
del /f /q "%systemdrive%\Documents and Settings\All Users\Desktop\Revo Uninstaller Pro.lnk"
ren "%systemdrive%\Documents and Settings\All Users\Desktop\SRWare Iron.lnk" "Google Chrome.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\Adobe Photoshop 6.0.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\CCleaner.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\Driver Magician.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\DVDFab 6.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\FastDownload.com.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\Free Hide Folder.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\GameTeam.com.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\GameTop.com.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\ISM.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\Magic Video Converter.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\Mp3Tools.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\Orbit.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\Total Video Converter.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\Total Video Player.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\Winamp.lnk"
del /f /q "%systemdrive%\Documents and Settings\administrator\Desktop\www.Cw-Network.info - (YOUR BEST SOFTWARE SOURCE).lnk"
ren "%programdata%\Microsoft\Windows\Start Menu\Programs\StartUp\Start.bat" "temp.TMP"
ren "%programdata%\Microsoft\Windows\Start Menu\Programs\Microsoft Games for Windows - LIVE" "Games For Windows Live"
DEL /F /Q "%public%\Desktop\Ashampoo Burning Studio 10.lnk"
DEL /F /Q "%userprofile%\Desktop\Driver Magician.lnk"
DEL /F /Q "%userprofile%\Desktop\1-Click Cleaner.lnk"
DEL /F /Q "%userprofile%\Desktop\Windows 7 Manager.lnk"
DEL /F /Q "%userprofile%\Desktop\Windows 7 Manager.lnk"
rd /s /q "%windir%\Setup\Apps"
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Commands.cmd" "temp2.tmp"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Commands.exe"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\Crocodile Chemistry 605.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\Crocodile ICT 605.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\Crocodile Physics 605.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\Crocodile Technology 610.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\DVDVideoSoft Free Studio.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\Format Factory.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Administrator\Desktop\Photo Collage Maker.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Public\Desktop\Camtasia Studio 7.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Public\Desktop\Dream Aquarium.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Public\Desktop\Foxit Phantom.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Public\Desktop\KeyLemon Control Center.lnk"
ren "%systemdrive%\Documents and Settings\Public\Desktop\Notebook Software 10.lnk" "SMART Notebook 10.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Public\Desktop\OpenOffice.org 3.2.lnk"
DEL /F /Q "%systemdrive%\Documents and Settings\Public\Desktop\VLC media player.lnk"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Adobe Gamma Loader.lnk"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\DeskDrive.lnk"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Finderbar.lnk"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\MacSearch.lnk"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\myBoard.lnk"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Winroll.lnk"
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "KeyLemon Updater" /f 
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "QuickTime Task" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "iTunesHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Adobe Reader Speed Launcher" /f
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Yodm3D.lnk"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\SmartFlip.lnk"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\commands.exe"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\commands.cmd"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Commands-x64.exe"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Commands-x64.cmd"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Commands-x32.exe"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Commandsx64.exe"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Commandsx32.exe"
DEL /F /Q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Adobe Gamma Loader.lnk"
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Commands.cmd" "temp2.tmp"
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Commands.exe" "temp2.tmp"
del /f /q %windir%\commands.exe
del /f /q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\maComfort.lnk"
del /f /q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\WinLaunch.lnk"
del /f /q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\xwidget.lnk"
del /f /q "%systemdrive%\Users\Shivam\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Ninja.lnk"
del /f /q "%systemdrive%\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Ninja.lnk"
del /f /q "%systemdrive%\Users\Public\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Ninja.lnk"
del /f /q "%systemdrive%\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Ninja.lnk"
del /f /q "%systemdrive%\Users\All Users\Desktop\KeyLemon Control Center.lnk"
del /f /q "%systemdrive%\Users\All Users\Desktop\YTD Video Downloader.lnk"
del /f /q "%systemdrive%\Users\All Users\Desktop\Notepad++.lnk"
del /f /q "%systemdrive%\Users\All Users\Desktop\EasyBCD 2.2.lnk"
del /f /q "%systemdrive%\Users\Administrator\Desktop\internet download manager 6.17 silent tieng viet.lnk"
del /f /q "%systemdrive%\Users\All Users\Desktop\DFX.lnk"
del /f /q "%systemdrive%\Users\All Users\Desktop\EasyBCD 2.2.lnk"
del /f /q "%systemdrive%\Users\All Users\Desktop\Mobi File Reader.lnk"
del /f /q "%systemdrive%\Users\All Users\Desktop\OpenOffice.org 3.4.1.lnk"
del /f /q "%HOMEPATH%\Desktop\Adobe Photoshop 6.0.lnk"
del /f /q "%HOMEPATH%\Desktop\Internet Download Manager.lnk"
del /f /q "%HOMEPATH%\Desktop\Photo Collage Maker.lnk"
del /f /q "%HOMEPATH%\Desktop\Undelete 360.lnk"
del /f /q "%windir%\Commands.cmd"
cls
shutdown -r -t 0
exit
