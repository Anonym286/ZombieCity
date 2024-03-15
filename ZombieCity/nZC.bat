@echo off
title ZombieCity
setlocal enabledelayedexpansion
chcp 65001
goto tutorial

:tutorial
set "name="
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo                                       ╔═════════════════════════════════════════╗
echo                                       ║                Tutorial                 ║
echo                                       ╠═════════════════════════════════════════╣
echo                                       ║                                         ║
echo                                       ║  Enter your Name :                      ║
echo                                       ║  1-9 Letters                            ║
echo                                       ║                                         ║
echo                                       ║                                         ║
echo                                       ║ Updates : https://linktr.ee/evil_yt     ║
echo                                       ╚═════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p name=
if not defined name goto tutorial
if not "!name:~9!" == "" goto tutorial
goto tut#1

:tut#1
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo                                       ╔═════════════════════════════════════════╗
echo                                       ║                Tutorial                 ║
echo                                       ╠═════════════════════════════════════════╣
echo                                       ║                                         ║
echo                                          Enter your Name : %name%
echo                                       ║  Continue ?                             ║
echo                                       ║         [1] Yes [1] [2] No [2]          ║
echo                                       ║                                         ║
echo                                       ║ Updates : https://linktr.ee/evil_yt     ║
echo                                       ╚═════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p a=
if %a% EQU 1 goto tut#2
if %a% EQU 2 goto tutorial
goto tut#1

:tut#2
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                       ╔═════════════════════════════════════════╗
echo                                       ║                 Story                   ║
echo                                       ╠═════════════════════════════════════════╣
echo                                       ║   Its 2048 and in a Laboratory named    ║
echo                                       ║          UMBRELLA CORPORATION           ║
echo                                       ║     someone created an Zombie Virus     ║
echo                                       ║       that accidentally broke out.      ║
echo                                       ║       Only a few people are still       ║
echo                                       ║              alive and you              ║
echo                                       ║             are one of them             ║
echo                                       ╚═════════════════════════════════════════╝
echo.
echo.
ping localhost -n 6 > NUL
pause
goto tut#3

:tut#3
set money=0
set hp=100
set hunger=100
set thst=100
set xpBar=░░░░░░░░░░
set xpLVL=0
set xp=0
set day=1
set egy=100
set pst=X
set shg=X
set spr=X
set fltr=X
set gel=X
set mgn=X
set rtl=X
set pstm=0
set shgm=0
set sprm=0
set fltrm=0
set gelm=0
set mgnm=0
set rltm=0
set shops=1
set slot1=Empty
set slot2=Empty
set slot3=Empty
set shops=1
cls
echo ═══════════╦══════════════════════════╦═══════════════╦═══════════════╦══════════════════╦════════════╦════════════════
echo. HP : %hp%    XP : [%xpBar%] %xp%/100    Hunger : %hunger%%%   Thirst : %thst%%%   Name : %name%     Money : %money%
echo ═══════════╩══════════════════════════╩═══════════════╩═══════════════╩══════════════════╩════════════╩════════════════
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                               Here is your HP and XP Bar and so...
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping localhost -n 3 > NUL
pause
cls
echo ═══════════╦══════════════════════════╦═══════════════╦═══════════════╦══════════════════╦════════════╦════════════════
echo. HP : %hp%    XP : [%xpBar%] %xp%/100    Hunger : %hunger%%%   Thirst : %thst%%%   Name : %name%     Money : %money%
echo ═══════════╩══════════════════════════╩═══════════════╩═══════════════╩══════════════════╩════════════╩════════════════
echo.
echo  ╔══════════════════════════════════════════╗
echo  ║ Go outside [1]                           ║ ^<---- Here you can go Outside,its risky but you can find good stuff
echo  ║ Save Game [2]                            ║
echo  ╠══════════════════════════════════════════╣
echo  ║ Weapons                                  ║
echo  ║  [√] Knife [√]                           ║
echo  ║  [1] Pistol [1]                          ║
echo  ║  [1] Shotgun [1]                         ║
echo  ║  [1] Sniper [1]                          ║
echo  ║  [1] flamethrower [1]                    ║
echo  ║  [1] grenade launcher [1]                ║
echo  ║  [1] Magnum [1]                          ║
echo  ║  [1] Rocket Launcher [1]                 ║
echo  ╚══════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
ping localhost -n 3 > NUL
pause
cls
echo ═══════════╦══════════════════════════╦═══════════════╦═══════════════╦══════════════════╦════════════╦════════════════
echo. HP : %hp%    XP : [%xpBar%] %xp%/100    Hunger : %hunger%%%   Thirst : %thst%%%   Name : %name%     Money : %money%
echo ═══════════╩══════════════════════════╩═══════════════╩═══════════════╩══════════════════╩════════════╩════════════════
echo.
echo  ╔══════════════════════════════════════════╗
echo  ║ Go outside [1]                           ║
echo  ║ Save Game [2]                            ║ ^<---- Here you can save the Game,But some times the Game saves automatic
echo  ╠══════════════════════════════════════════╣
echo  ║ Weapons                                  ║
echo  ║  [√] Knife [√]                           ║
echo  ║  [1] Pistol [1]                          ║
echo  ║  [1] Shotgun [1]                         ║
echo  ║  [1] Sniper [1]                          ║
echo  ║  [1] flamethrower [1]                    ║
echo  ║  [1] grenade launcher [1]                ║
echo  ║  [1] Magnum [1]                          ║
echo  ║  [1] Rocket Launcher [1]                 ║
echo  ╚══════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
ping localhost -n 3 > NUL
pause
cls
echo ═══════════╦══════════════════════════╦═══════════════╦═══════════════╦══════════════════╦════════════╦════════════════
echo. HP : %hp%    XP : [%xpBar%] %xp%/100    Hunger : %hunger%%%   Thirst : %thst%%%   Name : %name%     Money : %money%    Day : %day%
echo ═══════════╩══════════════════════════╩═══════════════╩═══════════════╩══════════════════╩════════════╩════════════════
echo   XP lvl : %xpLVL%
echo  ╔══════════════════════════════════════════╗
echo  ║ Go outside [1]                           ║
echo  ║ Save Game [2]                            ║
echo  ╠══════════════════════════════════════════╣
echo  ║ Weapons                                  ║
echo  ║  [√] Knife [√]                           ║ ^<---- Here you can see your Weapons,the "√" shows which Weapon you have
echo  ║  [1] Pistol [1]                          ║
echo  ║  [1] Shotgun [1]                         ║
echo  ║  [1] Sniper [1]                          ║
echo  ║  [1] flamethrower [1]                    ║
echo  ║  [1] grenade launcher [1]                ║
echo  ║  [1] Magnum [1]                          ║
echo  ║  [1] Rocket Launcher [1]                 ║
echo  ╚══════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
ping localhost -n 3 > NUL
pause
goto save

:save
cls
echo Saving...
(
  echo %name%
  echo %pst%
  echo %shg%
  echo %spr%
  echo %fltr%
  echo %gel%
  echo %mgn%
  echo %rtl%
  echo %pstm%
  echo %shgm%
  echo %sprm%
  echo %fltrm%
  echo %gelm%
  echo %mgnm%
  echo %rltm%
  echo %money%
  echo %hp%
  echo %hunger%
  echo %thst%
  echo %xpBar%
  echo %xpLVL%
  echo %xp%
  echo %day%
  echo %egy%
  echo %slot1%
  echo %slot2%
  echo %slot3%
  echo %shops%
) > savegame.sav
call ZC.bat

