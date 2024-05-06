@echo off
title ZombieCity
setlocal enabledelayedexpansion
chcp 65001
goto start

:start
cls
echo.
echo.
echo.
echo.
echo.
echo                                                       ♣ Credits ♣
echo.
echo                                                   Programmer : Evil_YT
echo                                                   Designet by : Evil_YT
echo                                                   Idea by : Evil_YT
echo.
echo.
echo                                                  Updates and Patches on https://linktr.ee/evil_yt
echo.
echo.
echo.
echo                                                 Notice : Dont Copy this Game.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                                                                       pre-Alpha v.1.2
ping localhost -n 3 > NUL
pause
goto menu

:menu
cls
echo.
echo.
echo.
echo.
echo.
echo                                            ╔═════════════════════════════════════════╗
echo                                            ║             ♣ Zombie City ♣             ║
echo                                            ╠═════════════════════════════════════════╣
echo                                            ║              [1] Play [1]               ║
echo                                            ╠═════════════════════════════════════════╣
echo                                            ║            [2] New Game [2]             ║
echo                                            ╠═════════════════════════════════════════╣
echo                                            ║             [3] Credits [3]             ║
echo                                            ╠═════════════════════════════════════════╣
echo                                            ║             [4] Wesbite [4]             ║
echo                                            ╠═════════════════════════════════════════╣
echo                                            ║           [5] Load Backup [5]           ║
echo                                            ╠═════════════════════════════════════════╣
echo                                            ║              pre-Alpha v.1              ║
echo                                            ╚═════════════════════════════════════════╝
echo.
echo.
echo.
echo                                                                                                      a game by Evil_YT
set /p a=
if %a% EQU 1 goto play
if %a% EQU 2 goto newplay
if %a% EQU 3 goto cr
if %a% EQU 4 goto web
if %a% EQU 5 goto bckp
goto menu

:play
if not exist savegame.sav goto menu
< savegame.sav (
  set /p name=
  set /p pst=
  set /p shg=
  set /p spr=
  set /p fltr=
  set /p gel=
  set /p mgn=
  set /p rtl=
  set /p pstm=
  set /p shgm=
  set /p sprm=
  set /p fltrm=
  set /p gelm=
  set /p mgnm=
  set /p rltm=
  set /p money=
  set /p hp=
  set /p hunger=
  set /p thst=
  set /p xpBar=
  set /p xpLVL=
  set /p xp=
  set /p day=
  set /p egy=
  set /p slot1=
  set /p slot2=
  set /p slot3=
  set /p shops=
)
call upchck.bat
pause

:newplay
if exist savegame.sav goto delr
call nZC.bat

:delr
cls
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
echo.
echo                                                 If you start a new game 
echo                                               you will lose your Progress !
echo.
echo                                             Do you want to Start a new Game ?
echo.
echo                                                 [1] Yes [1]   [2] No [2]
echo.
echo.
set /p b=
if %b% EQU 1 goto delrlly
if %b% EQU 2 goto menu
goto delrlly

:delrlly
ping localhost -n 2 > NUL
echo 23%%
ping localhost -n 2 > NUL
echo 46%%
ping localhost -n 2 > NUL
echo 52%%
ping localhost -n 2 > NUL
echo 83%%
ping localhost -n 2 > NUL
echo 98%%
ping localhost -n 2 > NUL
echo 99%%
ping localhost -n 4 > NUL
echo 100%%
ping localhost -n 1 > NUL
echo Process Ended
ping localhost -n 2 > NUL
del %cd%\savegame.sav
call nZC.bat

:cr
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                       ♣ Credits ♣
echo.
echo                                                   Programmer : Evil_YT
echo                                                   Designet by : Evil_YT
echo                                                   Idea by : Evil_YT
ping localhost -n 3 > NUL
pause
goto menu

:web
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo                                  ╔═════════════════════════════════════════╗
echo                                  ║                 Website                 ║
echo                                  ╠═════════════════════════════════════════╣
echo                                  ║                                         ║
echo                                  ║        https://linktr.ee/evil_yt        ║
echo                                  ║                                         ║                   
echo                                  ║        Check out ResidentEvilRetro :    ║
echo                                  ║     https://linktr.ee/ResidentEvilRetro ║
echo                                  ║                                         ║
echo                                  ║        Check out my own OS :            ║
echo                                  ║        https://linktr.ee/Evilux         ║
echo                                  ║                                         ║
echo                                  ╚═════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
ping localhost -n 3 > NUL
pause
goto menu

