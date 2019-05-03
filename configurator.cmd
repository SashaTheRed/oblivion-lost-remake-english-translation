rem color 0a

@echo off
@del /F /Q gamedata.dbf
@del /F /Q gamedata.dbi
@del /F /Q gamedata.dbo
@del /F /Q gamedata.dbm
@del /F /Q "_appdata_\configi\news2_off.zzz"
@del /F /Q "_appdata_\configi\bat7_16core.zmd"
@del /F /Q "_appdata_\configi\bat8_32core.zmd"
@del /F /Q "_appdata_\configi\bat9_32core.zmd"
@del /F /Q "_appdata_\configi\user_original.ltx"
@del /F /Q "_appdata_\configi\user_low_1920.ltx"
@del /F /Q "_appdata_\configi\user_orig_1920.ltx"
@del /F /Q "_bin_olr_\log.log"
rem @taskkill.exe /f /im xr_3da.exe /t
@cls


@echo                     OBLIVION LOST REMAKE CONFIGURATOR
@echo.
@echo  ATTENTION!!! On computers running Win 7/Win 8 etc., the game should be
@echo  installed OUTSIDE of the Program Files or Program Files (x86) folders.
@echo  If it is installed there, immediately close the configurator window, move the game
@echo  to, for example, in C:\STALKER-OLR or D:\GAMES\STALKER-OLR and launch the CONFIGURATOR again.
@echo.
@echo          RESTORE ORIGINAL CONFIGS (USER.LTX, EFX.INI, SMAA=off)?
@echo.
@echo 1 - NO                               4 - YES, LOW SETTINGS  HD 1280x720
@echo 2 - YES, LOW SETTINGS  1280x1024     5 - YES, HIGH SETTINGS HD 1280x720
@echo 3 - YES, HIGH SETTINGS 1280x1024     6 - YES, LOW SETTINGS  FULLHD 1920x1080
@echo 8 - SUPPORT and UPDATE               7 - YES, HIGH SETTINGS FULLHD 1920x1080
@echo.
@echo.
@echo Reset game options (and deactivate SMAA anti-aliasing support)?
@echo.
@echo 1 - no
@echo 2 - reset, using settings for strong graphics cards (3 - for full HD resolution)
@echo 4 - reset, using settings for weak graphics cards (5 - for full HD resolution)
@echo 6 - visit tech support forums (Russian)
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu2
if "%var%"=="1" goto :menu2

if "%var%"=="2" copy /y "_appdata_\configi\user_low.ltx" "_appdata_\user.ltx"
if "%var%"=="2" copy /y "_bin_olr_\efx_orig.ini" "_bin_olr_\efx.ini"
if "%var%"=="2" del /F /Q "_bin_olr_\d3d9.dll"

if "%var%"=="3" copy /y "_appdata_\configi\user_hi.ltx" "_appdata_\user.ltx"
if "%var%"=="3" copy /y "_bin_olr_\efx_orig.ini" "_bin_olr_\efx.ini"
if "%var%"=="3" del /F /Q "_bin_olr_\d3d9.dll"

if "%var%"=="4" copy /y "_appdata_\configi\user_low_hd.ltx" "_appdata_\user.ltx"
if "%var%"=="4" copy /y "_bin_olr_\efx_orig.ini" "_bin_olr_\efx.ini"
if "%var%"=="4" del /F /Q "_bin_olr_\d3d9.dll"

if "%var%"=="5" copy /y "_appdata_\configi\user_hi_hd.ltx" "_appdata_\user.ltx"
if "%var%"=="5" copy /y "_bin_olr_\efx_orig.ini" "_bin_olr_\efx.ini"
if "%var%"=="5" del /F /Q "_bin_olr_\d3d9.dll"

if "%var%"=="6" copy /y "_appdata_\configi\user_low_fullhd.ltx" "_appdata_\user.ltx"
if "%var%"=="6" copy /y "_bin_olr_\efx_orig.ini" "_bin_olr_\efx.ini"
if "%var%"=="6" del /F /Q "_bin_olr_\d3d9.dll"

if "%var%"=="7" copy /y "_appdata_\configi\user_hi_fullhd.ltx" "_appdata_\user.ltx"
if "%var%"=="7" copy /y "_bin_olr_\efx_orig.ini" "_bin_olr_\efx.ini"
if "%var%"=="7" del /F /Q "_bin_olr_\d3d9.dll"

if "%var%"=="8" cls
if "%var%"=="8" start http://www.gameru.net/forum/index.php?showtopic=54066
if "%var%"=="8" exit




:menu2
@cls
@echo MENU B
@echo.
@echo                         SELECT EAX EFFECTS POWER
@echo.
@echo.
@echo 1 - DEFAULT (RECOMMENDED)
@echo 2 - MAXIMUM
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo Select the intensity of EAX effects.
@echo Using the intensified version is not recommended.
@echo.
@echo 1 - standard (recommended)
@echo 2 - intensified
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu3
if "%var%"=="1" copy /y "_appdata_\configi\eax1_def.zzz" "gamedata.dbk"
if "%var%"=="2" copy /y "_appdata_\configi\eax2_max.zzz" "gamedata.dbk"




:menu3
@cls
@echo MENU C
@echo.
@echo            SELECT FONT SIZE FOR MAIN MENU, DIALOGS AND INVENTORY
@echo.
@echo.
@echo.
@echo 1 - BUILD
@echo 2 - DEFAULT
@echo 3 - 1024x768 OPTIMIZED
@echo 4 - 1280x1024 OPTIMIZED
@echo.
@echo.
@echo.
@echo.
@echo Select a font size for menus, dialogues, and the inventory
@echo.
@echo.1 - build (small)
@echo 2 - standard (large)
@echo 3 - optimized for 1024x768
@echo 4 - optimized for 1280x1024
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu4
if "%var%"=="1" copy /y "_appdata_\configi\font1_bld.zzz" "gamedata.dbe"
if "%var%"=="2" copy /y "_appdata_\configi\font2_def.zzz" "gamedata.dbe"
if "%var%"=="3" copy /y "_appdata_\configi\font3_1024.zzz" "gamedata.dbe"
if "%var%"=="4" copy /y "_appdata_\configi\font4_1280.zzz" "gamedata.dbe"




:menu4
@cls
@echo MENU D
@echo.
@echo           		  SELECT SCOPE SIZE
@echo.
@echo.
@echo 1 - DEFAULT
@echo 2 - WIDE SCREEN OPTIMIZED (16:9, HD, FULLHD)
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo Select a scope size
@echo.
@echo 1 - standard
@echo 2 - optimized for widescreen (16:9)
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu5
if "%var%"=="1" copy /y "_appdata_\configi\optic1_def.zzz" "gamedata.dbn"
if "%var%"=="2" copy /y "_appdata_\configi\optic2_wide.zzz" "gamedata.dbn"




:menu5
@cls
@echo MENU E
@echo.
@echo           	      SELECT BREAKS FOR MENU
@echo.
@echo.
@echo 1 - OFF
@echo 2 - WITH BREAKS
@echo.
@echo.
@echo With strong graphics cards, deactivating vertical synchronization
@echo in the menu can bring the FPS up into the thousands and lead to malfunctions.
@echo Breaks will help reduce the risk of malfunctioning in the menu without deactivating
@echo vertical synchronization. On weak/office/integrated graphics cards, you should
@echo not turn on the breaks in order to avoid unnecessary slowdowns in the menu.
@echo Do activate this option if using a strong graphics card in order to avoid overheating.
@echo.
@echo Select breaks for the main menu, options menu, and loading screen.
@echo.
@echo 1 - without breaks (for weak graphics cards)
@echo 2 - with breaks (for strong graphics cards)
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu6
if "%var%"=="1" copy /y "_appdata_\configi\tormoz1_off.zzz" "gamedata.dbp"
if "%var%"=="2" copy /y "_appdata_\configi\tormoz2_on.zzz" "gamedata.dbp"




:menu6
@cls
@echo MENU F
@echo.
@echo           	      SELECT SMAA ANTIALIASING
@echo.
@echo.
@echo 1 - OFF (DEFAULT)
@echo 2 - ON
@echo.
@echo.
@echo As you may know, S.T.A.L.K.E.R.'s built-in antialiasing is useless.
@echo Here, you can turn on an injected form of SMAA anti-aliasing.
@echo It can be toggled on and off in-game by pressing F10.
@echo However, it lowers FPS, and may prove incompatible when used with
@echo programs such as ATI TRAY TOOLS, video recording software and with Win 10.
@echo Turning on FXAA anti-aliasing in your graphics cards options is a better option, if possible.
@echo.
@echo Turn on injected SMAA anti-aliasing?
@echo.
@echo 1 - do not turn on (standard)
@echo 2 - turn on (requires a strong graphics card)
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu7
if "%var%"=="1" del /F /Q "_bin_olr_\d3d9.dll"
if "%var%"=="2" copy /y "_bin_olr_\-d3d9.dll" "_bin_olr_\d3d9.dll"




:menu7
@cls
@echo MENU G
@echo.
@echo           	        SELECT GRASS MODE
@echo.
@echo.
@echo 1 - DEFAULT
@echo 2 - ALTERNATIVE
@echo.
@echo.
@echo Use alternate grass from OLR 1.0/2.0 for a number of levels? 
@echo It is thicker than the standard grass, but may significantly
@echo reduce performance on weaker graphics cards.
@echo.
@echo.
@echo.
@echo.
@echo Select a type of grass:
@echo.
@echo 1 - standard
@echo 2 - alternative (requires a strong graphics card)
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu8
if "%var%"=="1" copy /y "_appdata_\configi\grass1_low.zzz" "gamedata.dbd93"
if "%var%"=="2" copy /y "_appdata_\configi\grass2_high.zzz" "gamedata.dbd93"




:menu8
@cls
@echo MENU H
@echo.
@echo           	        SELECT TREES MODE
@echo.
@echo.
@echo 1 - DEFAULT
@echo 2 - ANIMATE
@echo.
@echo.
@echo Should pseudo-animated foliage be used for trees?
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo Choose the type of foliage:
@echo.
@echo 1 - standard
@echo 2 - animated
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu9
if "%var%"=="1" copy /y "_appdata_\configi\trees1_def.zzz" "gamedata.dbu"
if "%var%"=="2" copy /y "_appdata_\configi\trees2_anm.zzz" "gamedata.dbu"




:menu9
@cls
@echo MENU I
@echo.
@echo                SELECT WATER FOR KORDON/MILITARY/SWAMP LEVELS 
@echo.
@echo.
@echo.
@echo 1 - Build mode (RECOMMENDED)
@echo 2 - Default
@echo.
@echo. 
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo Select a type of water in the Cordon/Silent Hills/Swamp:
@echo.
@echo 1 - build version (with duckweed; slightly reflects the sky)
@echo 2 - standard (without duckweed; strongly reflects the sky)
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu10
if "%var%"=="1" copy /y "_appdata_\configi\swamp1_build.zzz" "gamedata.dbr"
if "%var%"=="2" copy /y "_appdata_\configi\swamp2_def.zzz" "gamedata.dbr"




:menu10
@cls
@echo MENU J
@echo.
@echo                SELECT WEATHER FOR GARBAGE/DARK VALLEY LEVELS 
@echo.
@echo.
@echo.
@echo 1 - Build mode
@echo 2 - Default (RECOMMENDED)
@echo.
@echo. 
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo Select the weather for Garbage/Dark Valley:
@echo.
@echo 1 - build (always cloudy)
@echo 2 - standard (full cycle weather)
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu11
if "%var%"=="1" copy /y "_appdata_\configi\garb1_build.zzz" "gamedata.dbt"
if "%var%"=="2" copy /y "_appdata_\configi\garb2_def.zzz" "gamedata.dbt"




:menu11
@cls
@echo MENU K
@echo.
@echo           	        SELECT ACTOR ANIMATIONS
@echo.
@echo.
@echo.
@echo 1 - Build mode (RECOMMENDED)
@echo 2 - Shadow of Chernobyl mode
@echo.
@echo. 
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo Select actor animations when using the third person camera with F2/F3:
@echo.
@echo 1 - build animations (may look clumsy - only for true fans)
@echo 2 - closer to the final version of Shadow of Chernobyl
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu12
if "%var%"=="1" copy /y "_appdata_\configi\anims1_build.zzz" "gamedata.dbd94"
if "%var%"=="2" copy /y "_appdata_\configi\anims2_soc.zzz" "gamedata.dbd94"




:menu12
@cls
@echo MENU L
@echo.
@echo           	       SELECT NEWS APPEAR MODE
@echo.
@echo.
@echo 1 - ON (OFTEN)
@echo 2 - ON (2x RARE)
@echo 3 - ON (3x RARE)
@echo 4 - OFF
@echo 5 - ONLY NEWS ABOUT STALKER DEATHS
@echo.
@echo.
@echo.
@echo Select the frequency of on-screen dynamic news:
@echo.
@echo 1 - on (appears often)
@echo 2 - on (appears 2x less often)
@echo 3 - on (appears 3x less often)
@echo 4 - off
@echo 5 - only news about deaths of stalkers
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu13
if "%var%"=="1" copy /y "_appdata_\configi\news1_on.zzz" "gamedata.dbq"
if "%var%"=="2" copy /y "_appdata_\configi\news2_on_x2.zzz" "gamedata.dbq"
if "%var%"=="3" copy /y "_appdata_\configi\news3_on_x3.zzz" "gamedata.dbq"
if "%var%"=="4" copy /y "_appdata_\configi\news4_off.zzz" "gamedata.dbq"
if "%var%"=="5" copy /y "_appdata_\configi\news5_off_dea.zzz" "gamedata.dbq"



:menu13
@cls
@echo MENU M
@echo.
@echo           	   SELECT NEWS TIME ON HUD MODE
@echo.
@echo.
@echo.
@echo 1 - 20 seconds (DEFAULT)
@echo 2 - 15 seconds 
@echo 3 - 10 seconds 
@echo 4 - 5 seconds
@echo.
@echo.
@echo.
@echo.
@echo Select the duration of news on-screen:
@echo.
@echo 1 - 20 seconds (default)
@echo 2 - 15 seconds 
@echo 3 - 10 seconds 
@echo 4 - 5 seconds
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu14
if "%var%"=="1" copy /y "_appdata_\configi\ntime1_20.zzz" "gamedata.dbs"
if "%var%"=="2" copy /y "_appdata_\configi\ntime2_15.zzz" "gamedata.dbs"
if "%var%"=="3" copy /y "_appdata_\configi\ntime3_10.zzz" "gamedata.dbs"
if "%var%"=="4" copy /y "_appdata_\configi\ntime4_5.zzz" "gamedata.dbs"




:menu14
@cls
@echo MENU N
@echo.
@echo           	         SELECT RAIN MODE
@echo.
@echo.
@echo.
@echo 1 - DEFAULT
@echo 2 - OPTIMIZED (RECOMMENDED)
@echo 3 - RANGE x3 (can reduce fps significantly)
@echo. 
@echo.
@echo.
@echo.
@echo.
@echo.
@echo Select rain mode:
@echo.
@echo 1 - standard
@echo 2 - optimized (recommended)
@echo 3 - extended range (may strongly reduce FPS)
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu15
if "%var%"=="1" copy /y "_appdata_\configi\rain1_def.exa" "_bin_olr_\XR_3DA.exe"
if "%var%"=="2" copy /y "_appdata_\configi\rain2_pwr.exa" "_bin_olr_\XR_3DA.exe"
if "%var%"=="3" copy /y "_appdata_\configi\rain3_x3.exa" "_bin_olr_\XR_3DA.exe"




:menu15
@cls
@echo MENU O
@echo.
@echo           	    SELECT CPU OPTIMIZATION MODE
@echo.
@echo 1 - DEFAULT               
@echo 2 - for 2 threads CPU     10 - for 24 threads CPU
@echo 3 - for 3 threads CPU     11 - for 28 threads CPU
@echo 4 - for 4 threads CPU     12 - for 32 threads CPU
@echo 5 - for 6 threads CPU     13 - for 36 threads CPU
@echo 6 - for 8 threads CPU     14 - for 40 threads CPU
@echo 7 - for 12 threads CPU    15 - for 44 threads CPU
@echo 8 - for 16 threads CPU    16 - for 48 threads CPU
@echo 9 - for 20 threads CPU    17 - for 64 threads CPU
@echo.
@echo Choose the type of optimization for processor:
@echo.
@echo 1 - standard (no optimization)
@echo 2 - for two threads
@echo 3 - for three threads
@echo 4 - for 4 threads
@echo 5,6,7,8,9,10,11,12,13,14,15,16,17 - for others
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu16
if "%var%"=="1" copy /y "_appdata_\configi\bat1_def.zmd" "stalker_OLR.cmd"

if "%var%"=="2" copy /y "_appdata_\configi\bat2_2core.zmd" "stalker_OLR.cmd"

if "%var%"=="3" copy /y "_appdata_\configi\bat3_3core.zmd" "stalker_OLR.cmd"

if "%var%"=="4" copy /y "_appdata_\configi\bat4_4core.zmd" "stalker_OLR.cmd"

if "%var%"=="5" copy /y "_appdata_\configi\bat5_6core.zmd" "stalker_OLR.cmd"

if "%var%"=="6" copy /y "_appdata_\configi\bat6_8core.zmd" "stalker_OLR.cmd"

if "%var%"=="7" copy /y "_appdata_\configi\bat7_12core.zmd" "stalker_OLR.cmd"

if "%var%"=="8" copy /y "_appdata_\configi\bat8_16core.zmd" "stalker_OLR.cmd"

if "%var%"=="9" copy /y "_appdata_\configi\bat9_20core.zmd" "stalker_OLR.cmd"

if "%var%"=="10" copy /y "_appdata_\configi\bat10_24core.zmd" "stalker_OLR.cmd"

if "%var%"=="11" copy /y "_appdata_\configi\bat11_28core.zmd" "stalker_OLR.cmd"

if "%var%"=="12" copy /y "_appdata_\configi\bat12_32core.zmd" "stalker_OLR.cmd"

if "%var%"=="13" copy /y "_appdata_\configi\bat13_36core.zmd" "stalker_OLR.cmd"

if "%var%"=="14" copy /y "_appdata_\configi\bat14_40core.zmd" "stalker_OLR.cmd"

if "%var%"=="15" copy /y "_appdata_\configi\bat15_44core.zmd" "stalker_OLR.cmd"

if "%var%"=="16" copy /y "_appdata_\configi\bat16_48core.zmd" "stalker_OLR.cmd"

if "%var%"=="17" copy /y "_appdata_\configi\bat17_64core.zmd" "stalker_OLR.cmd"




:menu16
@cls
@echo MENU P
@echo.
@echo           	        SELECT YOUTUBE MODE
@echo.
@echo.
@echo 1 - ALL MUSIC ON (DEFAULT)
@echo 2 - RADIO AND INTRO MUSIC DISABLED
@echo 3 - RADIO, INTRO AND AUTORADIO MUSIC DISABLED
@echo.
@echo.
@echo In order for shittube to not block your videos and streams with the game, it is necessary in advance
@echo to disable the music (only applies to radios and car radios
@echo and the final intros). Background music can be disabled in the audio options in the game's menu.
@echo.
@echo Select youtube compatibility mode:
@echo.
@echo 1 - all music is available (standard)
@echo 2 - music from radios and intros disabled
@echo 3 - music from radios, intros and car radios disabled
@echo.
@echo ===============================================================================
@echo Enter a number and press ENTER or press ENTER to skip this step, and close this window to cancel
@echo.
@set "var="
@Set /p var="Enter: "
if not defined var goto :menu17
if "%var%"=="1" copy /y "_appdata_\configi\mus1_on.zzz" "gamedata.dbv"
if "%var%"=="2" copy /y "_appdata_\configi\mus2_off.zzz" "gamedata.dbv"
if "%var%"=="3" copy /y "_appdata_\configi\mus3_off.zzz" "gamedata.dbv"


@cls

EXIT

@cls


:menu17
EXIT