@echo off
title ZombieCity
setlocal enabledelayedexpansion
chcp 65001
goto menu

:menu
cls
echo ═══════════╦══════════════════════════╦═══════════════╦═══════════════╦══════════════════╦════════════╦════════════════
echo. HP : %hp%    XP : [%xpBar%] %xp%/100    Hunger : %hunger%%%   Thirst : %thst%%%   Name : %name%     Money : %money%$    Day : %day%
echo ═══════════╩══════════════════════════╩═══════════════╦═══════════════╦══════════════════╩════════════╩════════════════
echo                                                       ║Energy : %egy%  ║
echo   XP lvl : %xpLVL%                                      ╚══════════════╝
echo  ╔══════════════════════════════════════════╗
echo  ║ Go outside [1] Cost : 15 Energy          ║
echo  ║ Go Sleep [2] Refills Energy              ║
echo  ║ Save Game [3]                            ║
echo  ║ Map [4]                                  ║
echo  ║ Create Backup [5]                        ║
echo  ║ Shops [%shops%/8 Founded] [6]                  ║
echo  ╠══════════════════════════════════════════╣
echo  ║ Weapons                                  ║
echo  ║  [√] Knife [√]                           ║
echo  ║  [%pst%] Pistol [%pst%]                          ║
echo  ║  [%shg%] Shotgun [%shg%]                         ║
echo  ║  [%spr%] Sniper [%spr%]                          ║
echo  ║  [%fltr%] flamethrower [%fltr%]                    ║
echo  ║  [%gel%] grenade launcher [%gel%]                ║
echo  ║  [%mgn%] Magnum [%mgn%]                          ║
echo  ║  [%rtl%] Rocket Launcher [%rtl%]                 ║
echo  ╚══════════════════════════════════════════╝
echo.
echo.
echo.
echo.   
echo.
set /p a=
if %a% EQU 1 goto out
if %a% EQU 2 goto sleep
if %a% EQU 3 goto save
if %a% EQU 4 goto map
if %a% EQU 5 goto backup
if %a% EQU 6 goto shopC
goto menu

:shopC
set shops=%shops%
if %shops% EQU 2 goto shop2
goto shop

:shop
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
echo  Health-Spray  [80HP^+]        [10$]  [1]
echo  Apple         [^+10% Hunger]  [10$]  [2]
echo  Steak         [^+50% Hunger]  [25$]  [3]
echo  Water Bottle  [^+50 thirst]   [20$]  [4]
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Back [5]
echo.
set /p a=
if %a% EQU 1 goto healSP
if %a% EQU 2 goto ap1#
if %a% EQU 3 goto ap2#
if %a% EQU 4 goto ap3#
if %a% EQU 5 goto menu
goto shop

:ap1#
if %money% lss 10 goto shop
set /a money-=10
set /a hunger+=10
if %hunger% GTR 100 set hunger=100
goto shop

:ap2#
if %money% lss 25 goto shop
set /a money-=25
set /a hunger+=50
if %hunger% GTR 100 set hunger=100
goto shop

:ap3#
if %money% lss 20 goto shop
set /a money-=20
set /a thst+=50
if %thst% GTR 100 set thst=100
goto shop

:healSP
if %money% lss 10 goto shop
set /a money-=10
set /a hp+=80
if %hp% GTR 100 set hp=100
goto shop

:shop2
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
echo  Pistol            [1-2 More DMG]  [150$]  [1]
echo  Health-Spray      [85HP^+]        [15 $]  [2]
echo  Apple             [^+20% Hunger]  [15 $]  [3]
echo  Steak             [^+70% Hunger]  [30 $]  [4]
echo  Water Bottle      [^+70 thirst]   [25 $]  [5]
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Back [6]
echo.
set /p a=
if %a% EQU 1 goto bpst
if %a% EQU 2 goto healSP2
if %a% EQU 3 goto ap1#2
if %a% EQU 4 goto ap2#2
if %a% EQU 5 goto ap3#2
if %a% EQU 6 goto menu
goto shop2

:bpst
set pst=%pst%
if %pst% EQU √ goto shop2
if %money% lss 150 goto shop2
set /a money-=150
set pst=√
goto shop2

:ap1#2
if %money% lss 10 goto shop2
set /a money-=15
set /a hunger+=20
if %hunger% GTR 100 set hunger=100
goto shop2

:ap2#2
if %money% lss 25 goto shop2
set /a money-=30
set /a hunger+=70
if %hunger% GTR 100 set hunger=100
goto shop2

:ap3#2
if %money% lss 20 goto shop2
set /a money-=25
set /a thst+=70
if %thst% GTR 100 set thst=100
goto shop2

:healSP2
if %money% lss 10 goto shop2
set /a money-=15
set /a hp+=85
if %hp% GTR 100 set hp=100
goto shop2

:sleep
set egy=100
set /a day+=1
goto menu

:out
set egy=%egy%
if %egy% lss 15 goto menu
set /a egy -=15
if %egy% lss 1 set egy=0
goto out#1

:out#1
set /a s1=(%RANDOM%*5/32768)+1
set /a s2=(%RANDOM%*4/32768)+2
set /a s=(%RANDOM%*3/32768)+1
if %s% EQU 1 goto gase
if %s% EQU 2 goto out1
if %s% EQU 3 goto adrop

:adrop
set egy=%egy%
if %egy% lss 100 goto out#1
set /a s#=(%RANDOM%*4/32768)+1
if %s#% EQU 1 goto air
if %s#% EQU 2 goto Gasserand
if %s#% EQU 3 goto out1
if %s#% EQU 4 goto Gasserand


:air
cls
echo.
echo.
echo.
echo                                                  _____ 
echo                                                _I     I_
echo                                               I         I
echo                                              I           I
echo                                              \           /
echo                                               \         /
echo                                                \       /
echo                                                 \     /
echo                                                  \   /
echo                                                   \ /
echo                                              ______I_______ 
echo                                             I_I_I_I_I_I    I
echo                                             I_I_I_I_I_I    I
echo                                             I_I_I_I_I_I    I
echo                                             I_I_I_I_I_I    I
echo                                             I_I_I_I_I_I    I
echo                                             I_I_I_I_I_I____I
echo                                           You found an Airdrop
echo                                             [1] Open it [1]
echo.
echo.
set /p a=
if %a% EQU 1 goto air1
goto air

:air1
set /a rn1=(%RANDOM%*5/32768)+1
if %rn1% EQU 1 set xpP=20
if %rn1% EQU 2 set xpP=22
if %rn1% EQU 3 set xpP=18
if %rn1% EQU 4 set xpP=30
if %rn1% EQU 5 set xpP=33
set /a xp+=%xpP%
set r1=+%xpP% XP!
set /a rn2=(%RANDOM%*3/32768)+1
if %rn2% EQU 1 set mnP=22
if %rn2% EQU 2 set mnP=24
if %rn2% EQU 3 set mnP=32
set /a money+=%mnP%
set r2=+%mnP% $
set /a rn3=(%RANDOM%*5/32768)+1
if %rn3% EQU 1 set pstP=16
if %rn3% EQU 2 set pstP=20
if %rn3% EQU 3 set pstP=18
if %rn3% EQU 4 set pstP=14
if %rn3% EQU 5 set pstP=22
set /a pstM+=%pstP%
set r3=+%pstP% Pistol Ammunition
set /a rn4=(%RANDOM%*5/32768)+1
if %rn4% EQU 1 set hnP=20
if %rn4% EQU 2 set hnP=40
if %rn4% EQU 3 set hnP=30
if %rn4% EQU 4 set hnP=50
if %rn4% EQU 5 set hnP=25
set /a hunger+=%hnP%
if %hunger% GTR 100 set hunger=100
set r4=+%hnP%%% Hunger!
set /a rn5=(%RANDOM%*5/32768)+1
if %rn5% EQU 1 set evv=25
if %rn5% EQU 2 set evv=45
if %rn5% EQU 3 set evv=35
if %rn5% EQU 4 set evv=55
if %rn5% EQU 5 set evv=30
set /a thst+=%evv%
if %thst% GTR 100 set thst=100
set r5=+%evv%%% Thirst!
goto air2

:air2
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
echo                                           You Opend the Airdrop
echo.
echo.
echo                                                Loot
echo.
echo                                                %r1%
echo.
echo                                                %r2%
echo.
echo                                                %r3%
echo.
echo                                                %r4%
echo.                                             
echo                                                %r5%
echo                                           [1] Collect [1]
set /p a=
if %a% EQU 1 goto zmbXp
goto air2


:gase
cls
echo.
echo.
echo.
echo.
echo                                               You found an Alley
echo                                         Do you want to go to the alley?
echo                                          [1] Yes [1]       [2] No [2]
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
echo.
echo.
echo.
echo.
echo.
echo.
set /p a=
if %a% EQU 1 goto Gasserand
if %a% EQU 2 goto menu
goto gase

:Gasserand
set /a s1=(%RANDOM%*5/32768)+1
set /a s2=(%RANDOM%*4/32768)+2
set /a s=(%RANDOM%*3/32768)+1
if %s% EQU 1 goto zmb1
if %s% EQU 2 goto zmb1
if %s% EQU 3 goto hnd

:hnd
set /a hunger-=%s1%
if %hunger% lss 1 goto death
set /a thst-=%s2%
if %thst% lss 1 goto death
cls
echo            __________________________________________________________________________________________________________
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                   [burning oil barrel]                                  I
echo            I       [You]                                               I                                             I
echo            I    [Health : %hp%]                                       I \          [Trader]                          I
echo            I________( )_____________________________________________ /___\___________( )_____________________________I
echo                      I                                              I-------I        /I\                            /
echo                     /I\                                             I       I        \I/                           /
echo                    / I \                                            I       I        / \                          /
echo                     / \                                             I       I       /   \                        / 
echo                    /   \                                            I_______I                                   /
echo                                                                                                                /
echo    ___________________________________________________________________________________________________________/
echo    Talk with Trader [1] #  Go Back [2]
set /p a=
if %a% EQU 1 goto trader
if %a% EQU 2 goto menu
goto hnd

:trader
cls
echo            ___________________________________________________________________________________________________________
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                   [burning oil barrel]                                  I
echo            I       [You]                                               I                                             I
echo            I    [Health : %hp%]                                       I \          [Trader]                          I
echo            I________( )_____________________________________________ /___\___________( )_____________________________I
echo                      I                                              I-------I        /I\                            /
echo                     /I\                                             I       I        \I/                           /
echo                    / I \                                            I       I        / \                          /
echo                     / \                                             I       I       /   \                        / 
echo                    /   \                                            I_______I                                   /
echo I-----------------I--------------------------------------------------------------------------------------------I
echo I       ( )       I                                                                                            I
echo I       /I\       I Trader : Hey its dangerous Outside.                                                        I
echo I       \I/       I          What are you doing here,                                                          I
echo I       / \       I          Do you want to Trade?                                                             I
echo I      /   \      I          [1] Yes [1] [2] No [2]                                                            I
echo I-----------------I--------------------------------------------------------------------------------------------I 
set /p a=
if %a% EQU 1 goto trader1
if %a% EQU 2 goto trader2
goto trader

:trader2
cls
echo            ___________________________________________________________________________________________________________
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                   [burning oil barrel]                                  I
echo            I       [You]                                               I                                             I
echo            I    [Health : %hp%]                                       I \          [Trader]                          I
echo            I________( )_____________________________________________ /___\___________( )_____________________________I
echo                      I                                              I-------I        /I\                            /
echo                     /I\                                             I       I        \I/                           /
echo                    / I \                                            I       I        / \                          /
echo                     / \                                             I       I       /   \                        / 
echo                    /   \                                            I_______I                                   /
echo I-----------------I--------------------------------------------------------------------------------------------I
echo I       ( )       I                                                                                            I
echo I       /I\       I Trader : Oh Okay...                                                                        I
echo I       \I/       I          Good Luck !                                                                       I
echo I       / \       I                                                                                            I
echo I      /   \      I                                                                                            I
echo I-----------------I--------------------------------------------------------------------------------------------I 
ping localhost -n 3 > NUL
pause
goto menu

:trader1
cls
echo            ___________________________________________________________________________________________________________
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                                                                         I
echo            I                                                   [burning oil barrel]                                  I
echo            I       [You]                                               I                                             I
echo            I    [Health : %hp%]                                       I \          [Trader]                          I
echo            I________( )_____________________________________________ /___\___________( )_____________________________I
echo                      I                                              I-------I        /I\                            /
echo                     /I\                                             I       I        \I/                           /
echo                    / I \                                            I       I        / \                          /
echo                     / \                                             I       I       /   \                        / 
echo                    /   \                                            I_______I                                   /
echo I-----------------I--------------------------------------------------------------------------------------------I
echo I       ( )       I                                                                                            I
echo I       /I\       I Trader : Okay...                                                                           I
echo I       \I/       I          This are my trades                                                                I
echo I       / \       I                                                                                            I
echo I      /   \      I                                                                                            I
echo I-----------------I--------------------------------------------------------------------------------------------I 
ping localhost -n 2 > NUL
pause
goto trades

:trades
cls
echo.
echo.
echo.
echo  ╔══════════════════════╦═════════════════════════════════════════════════════════════╗
echo    Trades               ║ Money : %money%
echo  ╠══════════════════════╩═════╦═══════════════════════════════════════════════════════╣
echo  ║                            ║                                                       ║ 
echo  ║ Health Spray[40HP^+]       ║ [1] 5$ [1]                                            ║ 
echo  ║ Apple[^+10% Hunger]        ║ [2] 5$  [2]                                           ║
echo  ║ Steak[^+50% Hunger]        ║ [3] 20$ [3]                                           ║
echo  ║ Water Bottle[^+50 thirst]  ║ [4] 15$ [4]
echo  ║ 30$  [%pstm%]              ║ [5] 20 Pistol Ammuntion [5]
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
echo.
echo [6] Back [6]
set /p a=
if %a% EQU 1 goto hl1
if %a% EQU 2 goto ap1
if %a% EQU 3 goto ap2
if %a% EQU 4 goto ap3
if %a% EQU 5 goto p30
if %a% EQU 6 goto menu
goto trades

:ap1
if %money% lss 5 goto trades
set /a money-=5
set /a hunger+=10
if %hunger% GTR 100 set hunger=100
goto trades

:ap2
if %money% lss 20 goto trades
set /a money-=20
set /a hunger+=50
if %hunger% GTR 100 set hunger=100
goto trades

:ap3
if %money% lss 15 goto trades
set /a money-=15
set /a thst+=50
if %thst% GTR 100 set thst=100
goto trades

:hl1
if %money% lss 5 goto trades
set /a money-=5
set /a hp+=40
if %hp% GTR 100 set hp=100
goto trades

:p30
if %pstm% lss 20 goto trades
set /a pstm-=20
set /a money+=30
goto trades

:zmb1
set /a hunger-=%s1%
if %hunger% lss 1 goto death
set /a thst-=%s2%
if %thst% lss 1 goto death
set playerdmg=0
if %xpLVL% GTR 15 goto zmb2
set /a health1=(%RANDOM%*30/32768)+10
goto zmb

:zmb2
if %xpLVL% GTR 25 goto zmb3
set /a health1=(%RANDOM%*40/32768)+15
goto zmb

:zmb3
if %xpLVL% GTR 35 goto zmb4
set /a health1=(%RANDOM%*45/32768)+20
goto zmb

:zmb4
if %xpLVL% GTR 60 goto zmb5
set /a health1=(%RANDOM%*50/32768)+25
goto zmb

:zmb5
set /a health1=(%RANDOM%*55/32768)+35
goto zmb

:zmb
set rn=(%RANDOM%*2/32768)+1
cls
echo  ╔══════════════════════════════════════════╗
echo  ║ Options                                  ║
echo  ╠══════════════════════════════════════════╣
echo  ║ Weapons                                  ║
echo  ║  [√] Knife [√] [1]                          ║
echo  ║  [%pst%] Pistol [%pst%] Muni : %pstm% [2]          ║
echo  ║  [%shg%] Shotgun [%shg%] Muni : %shgm% [3]         ║
echo  ║  [%spr%] Sniper [%spr%] Muni : %sprm% [4]          ║
echo  ║  [%fltr%] flamethrower [%fltr%] Muni : %fltr% [5]  ║
echo  ║  [%gel%] grenade launcher [%gel%] Muni : %gelm% [6]║
echo  ║  [%mgn%] Magnum [%mgn%] Muni : %mgnm% [7]          ║
echo  ║  [%rtl%] Rocket Launcher Muni : [%rtl%] %rltm% [8] ║
echo  ╚══════════════════════════════════════════╝
echo            I                                                                                                        I
echo            I                                                                                                        I
echo            I                                                                                                        I
echo            I       [You]                                               [Zombie]                                     I
echo            I    [Health : %hp%]                                       [Health : %health1%]
echo            I________( )___________________________________________________( )_______________________________________I
echo                      I                                                     I                                        /
echo                     /I\                                                   /I\                                      /
echo                    / I \                                                 /  I\                                    /
echo                     / \                                                     / \                                  /
echo                    /   \                                                   /   \                                /
echo                                                                                                                /
echo    ___________________________________________________________________________________________________________/
set /p a=
if %a% EQU 1 goto knife
if %a% EQU 2 goto pst
if %a% EQU 3 goto shg
if %a% EQU 4 goto spr
if %a% EQU 5 goto fltr
if %a% EQU 6 goto gel
if %a% EQU 7 goto mgn
if %a% EQU 8 goto rtl
goto zmb

:attack1
set monsterdmg=%rn%
set /a hp-=!monsterdmg!
set /a health1-=!playerdmg!
if !hp! lss 1 goto death
if !health1! lss 1 goto zmbPrice
goto zmb

:knife
set /a playerdmg=(%RANDOM%*2/32768)+1
goto attack1

:pst
if %pst% EQU X goto zmb
if %pstm% lss 1 goto zmb
set pdmg=(%RANDOM%*3/32768)+2
set playerdmg=%pdmg%
set /a pstm -=1
goto attack1

:shg
if %shg% EQU X goto zmb
if %shgm% lss 1 goto zmb
set pdmg=(%RANDOM%*7/32768)+5
set playerdmg=%pdmg%
set /a shgm -=1
goto attack1

:spr
if %spr% EQU X goto zmb
if %sprm% lss 1 goto zmb
set pdmg=(%RANDOM%*8/32768)+4
set playerdmg=%pdmg%
set /a sprm -=1
goto attack1

:fltr
if %fltr% EQU X goto zmb
if %fltrm% lss 1 goto zmb
set pdmg=(%RANDOM%*9/32768)+5
set playerdmg=%pdmg%
set /a fltrm -=1
goto attack1

:gel
if %gel% EQU X goto zmb
if %gelm% lss 1 goto zmb
set pdmg=(%RANDOM%*11/32768)+6
set playerdmg=%pdmg%
set /a gelm -=1
goto attack1

:mgn
if %mgn% EQU X goto zmb
if %mgnm% lss 1 goto zmb
set pdmg=(%RANDOM%*12/32768)+7
set playerdmg=%pdmg%
set /a mgnm -=1
goto attack1

:rtl
if %rtl% EQU X goto zmb
if %rtlm% lss 1 goto zmb
set pdmg=(%RANDOM%*15/32768)+9
set playerdmg=%pdmg%
set /a rtlm -=1
goto attack1


:zmbPrice
set xpLVL=%xpLVL%
if %xpLVL% EQU 3 goto zmbPrice2
set /a rn1=(%RANDOM%*5/32768)+1
if %rn1% EQU 1 set xpP=4
if %rn1% EQU 2 set xpP=6
if %rn1% EQU 3 set xpP=3
if %rn1% EQU 4 set xpP=9
if %rn1% EQU 5 set xpP=5
set /a xp+=%xpP%
set r1=+%xpP% XP!
set /a rn2=(%RANDOM%*3/32768)+1
if %rn2% EQU 1 set mnP=5
if %rn2% EQU 2 set mnP=6
if %rn2% EQU 3 set mnP=8
set /a money+=%mnP%
set r2=+%mnP% $
set /a rn3=(%RANDOM%*5/32768)+1
if %rn3% EQU 1 set pstP=3
if %rn3% EQU 2 set pstP=4
if %rn3% EQU 3 set pstP=3
if %rn3% EQU 4 set pstP=1
if %rn3% EQU 5 set pstP=5
set /a pstM+=%pstP%
set r3=+%pstP% Pistol Ammunition
goto zmbReward

:zmbPrice2
set /a rn1=(%RANDOM%*5/32768)+1
if %rn1% EQU 1 set xpP=5
if %rn1% EQU 2 set xpP=7
if %rn1% EQU 3 set xpP=4
if %rn1% EQU 4 set xpP=10
if %rn1% EQU 5 set xpP=6
set /a xp+=%xpP%
set r1=+%xpP% XP!
set /a rn2=(%RANDOM%*3/32768)+1
if %rn2% EQU 1 set mnP=6
if %rn2% EQU 2 set mnP=7
if %rn2% EQU 3 set mnP=9
set /a money+=%mnP%
set r2=+%mnP% $
set /a rn3=(%RANDOM%*5/32768)+1
if %rn3% EQU 1 set pstP=4
if %rn3% EQU 2 set pstP=6
if %rn3% EQU 3 set pstP=5
if %rn3% EQU 4 set pstP=2
if %rn3% EQU 5 set pstP=7
set /a pstM+=%pstP%
set r3=+%pstP% Pistol Ammunition
goto zmbReward

:zmbReward
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
echo                                              Zombie Killed
echo.
echo.
echo                                                 Rewards
echo.
echo                                                %r1%
echo.
echo                                                %r2%
echo.
echo                                                %r3%
echo.
echo.
echo                                             [1] Collect [1]
echo.
echo.
set /p a=
if %a% EQU 1 goto zmbXp
goto zmbPrice

:zmbXp
set xpL=0
if %xp% GTR 9 set xpBar=█▒░░░░░░░░
if %xp% GTR 19 set xpBar=██▒░░░░░░░
if %xp% GTR 29 set xpBar=███▒░░░░░░
if %xp% GTR 39 set xpBar=████▒░░░░░
if %xp% GTR 49 set xpBar=█████▒░░░░
if %xp% GTR 59 set xpBar=██████▒░░░
if %xp% GTR 69 set xpBar=███████▒░░
if %xp% GTR 79 set xpBar=████████▒░
if %xp% GTR 89 set xpBar=██████████
if %xp% GTR 99 set xpL=1
if %xp% GTR 99 goto lvlup
if %xp% GTR 99 set xp=0
goto menu

:lvlup
set /a xpLVL+=%xpL%
set xpL=0
set xp=0
set xpBar=░░░░░░░░░░
set lvltxt=Nothing
if %xpLVL% EQU 3 goto lvl3
goto nlvlup

:lvl3
set lvltxt=You can Visit Shop number 2
set shops=2
goto nlvlup

:nlvlup
cls
echo.
echo.
echo.
echo.
echo.
echo                              ##            ##      ##    ##              ##        ##  ############
echo                              ##            ##      ##    ##              ##        ##  ############
echo                              ##            ##      ##    ##              ##        ##  ##        ##
echo                              ##            ##      ##    ##              ##        ##  ##        ##
echo                              ##             ##    ##     ##              ##        ##  ##        ##
echo                              ##             ##    ##     ##              ##        ##  ############
echo                              ##              ##  ##      ##              ##        ##  ############
echo                              ##              ##  ##      ##              ##        ##  ##
echo                              ##               ####       ##              ##        ##  ##
echo                              ##               ####       ##              ##        ##  ##
echo                              ############      ##        ############    ############  ##
echo                              ############      ##        ############    ############  ##
echo.
echo                                                        Congratulations
echo                                                        You reached Lvl.%xpLVL%
echo.
echo                                                        New :
echo                                                        %lvltxt%
echo.
ping localhost -n 3 > NUL
pause > NUL
goto menu

:out1
set /a hunger-=%s1%
if %hunger% lss 1 goto death
set /a thst-=%s2%
if %thst% lss 1 goto death
cls
echo.
echo.
echo.
echo.
echo                                               You found a Trashcan
echo                                             Do you want to Open it?
echo                                          [1] Yes [1]       [2] No [2]
echo.
echo.
echo                                                     ___O___
echo                                                   _/_______\_
echo                                                    I I I I I
echo                                                    I I I I I
echo                                                    I I I I I
echo                                                    I I I I I
echo                                                    I_I_I_I_I
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p a=
if %a% EQU 1 goto out1rand
if %a% EQU 2 goto menu
goto out1

:out1rand
set /a s=(%RANDOM%*3/32768)+1 
if %s% EQU 1 goto no1
if %s% EQU 2 goto 1ero
if %s% EQU 3 goto 2ero

:no1
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
echo                                            You found Nothing :/
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
echo.
ping localhost -n 3 > NUL
pause
goto menu

:1ero
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
echo                                            You found 1$
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
echo.
ping localhost -n 3 > NUL
pause
set /a money +=1
goto menu

:2ero
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
echo                                            You found 2$
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
echo.
ping localhost -n 3 > NUL
pause
set /a money +=2
goto menu








:save
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
goto menu

:backup
cls 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                         ╔════════════════════[Backup]═════════════════════╗
echo                                         ║             [1] Create Backup [1]               ║
echo                                         ╠═════════════════════════════════════════════════╣
echo                                         ║              [2] Load Backup [2]                ║
echo                                         ╠═════════════════════════════════════════════════╣
echo                                         ║             [3] Delete Backup [3]               ║
echo                                         ╚═════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Back [4]
set /p a=
if %a% EQU 1 goto crBckp
if %a% EQU 2 goto ldBckp
if %a% EQU 3 goto dlBckp
if %a% EQU 4 goto menu
goto backup

:crBckp
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                          ═══════════════[Free Backup Slots]═══════════════ 
echo                                                            [1] %slot1% [1]               
echo                                          ═════════════════════════════════════════════════
echo                                                            [2] %slot2% [2]                
echo                                          ═════════════════════════════════════════════════
echo                                                            [3] %slot3% [3]               
echo                                          ═════════════════════════════════════════════════
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Back [4]
set /p a=
if %a% EQU 1 goto cr1
if %a% EQU 2 goto cr2
if %a% EQU 3 goto cr3
if %a% EQU 4 goto backup
goto crBckp

:cr1
set slot1=%slot1%
if %slot1% EQU Full goto crBckp
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
echo                                                   Creating Backup...
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
echo.
ping localhost -n 4 > NUL
set slot1=Full
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
) > bckup1game.bak
REM ---------------------------------
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
goto crBckp

:cr2
set slot2=%slot2%
if %slot2% EQU Full goto crBckp
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
echo                                                   Creating Backup...
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
echo.
ping localhost -n 4 > NUL
set slot2=Full
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
) > bckup2game.bak
REM ---------------------------------
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
goto crBckp

:cr3
set slot3=%slot3%
if %slot3% EQU Full goto crBckp
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
echo                                                   Creating Backup...
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
echo.
ping localhost -n 4 > NUL
set slot3=Full
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
) > bckup3game.bak
REM ---------------------------------
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
goto crBckp

:ldBckp
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                         ╔════════════════════[Backup]═════════════════════╗
echo                                         ║                [1] Backup 1 [1]                 ║
echo                                         ╠═════════════════════════════════════════════════╣
echo                                         ║                [2] Backup 2 [2]                 ║
echo                                         ╠═════════════════════════════════════════════════╣
echo                                         ║                [3] Backup 3 [3]                 ║
echo                                         ╚═════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Back [4]
set /p a=
if %a% EQU 1 goto bckp1
if %a% EQU 2 goto bckp2
if %a% EQU 3 goto bckp3
if %a% EQU 4 goto backup
goto ldBckp

:bckp1
if not exist bckup1game.bak goto ldBckp
< bckup1game.bak (
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
  set /p rtlm=
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
goto menu

:bckp2
if not exist bckup2game.bak goto ldBckp
< bckup2game.bak (
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
  set /p rtlm=
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
goto menu

:bckp3
if not exist bckup3game.bak goto ldBckp
< bckup3game.bak (
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
  set /p rtlm=
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
goto menu

:dlBckp
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                         ╔════════════════════[Backup]═════════════════════╗
echo                                         ║             [1] Delete Backup 1 [1]             ║
echo                                         ╠═════════════════════════════════════════════════╣
echo                                         ║             [2] Delete Backup 2 [2]             ║
echo                                         ╠═════════════════════════════════════════════════╣
echo                                         ║             [3] Delete Backup 3 [3]             ║
echo                                         ╚═════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Back [4]
set /p a=
if %a% EQU 1 goto del1
if %a% EQU 2 goto del2
if %a% EQU 3 goto del3
if %a% EQU 4 goto backup

:del1
del "C:\Users\%username%\Desktop\ZombieCity\bckup1game.bak
set slot1=Empty
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
goto menu

:del2
del "C:\Users\%username%\Desktop\ZombieCity\bckup2game.bak
set slot2=Empty
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
echo call ZC.bat>>ZC.save.bat
goto menu

:del3
del "C:\Users\%username%\Desktop\ZombieCity\bckup3game.bak
set slot3=Empty
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
echo call menu

:death
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                You Died
echo.
echo                                           You Survived %day% days!
echo.
echo                                         [1] Load last Save [1]
echo                                              [2] Menu [2]
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
set /p death=
if %death% EQU 1 goto death1
if %death% EQU 2 call Menu.bat
goto death

:death1
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
  set /p rtlm=
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
goto menu

