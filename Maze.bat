:: Home
@echo off
echo Loading...
cd maps
timeout /t 3 >nul
cls
echo Do you want to read the help menu? (y/n)
set /p input=Input:
if %input% == y goto help
if %input% == Y goto help
if %input% == Yes goto help
if %input% == yes goto help
goto menu
:: home/


:: help
:help
cls
echo.
echo This is a game where you try to leave a maze.
echo.
pause
cls
echo Here are the inputs:
echo.
echo To move forward:  up (no caps)
echo.
pause
echo To move downward: down (no caps)
echo.
pause
echo To move left:     left (no caps)
echo.
pause
echo to move right:    right (no caps)
echo.
pause
cls
echo To accept: y (no caps)
echo To deny:   n (no caps)
echo.
pause
cls
echo This may have reset your progress.
pause
goto menu



::tutorial
:menu
cls
echo Its time to go to the maze! You have your camping gear ready and its time to go inside.
echo.
pause
cls
echo You walk through the entrance ready for your long journey. And excited for the prize money.
echo.
pause
cls
echo Press any key to begin the game
pause >nul
goto a2


:: TEMPLATE:

:: :a2
:: mode con: cols=13 lines=30
:: cls
:: type MAPHERE.txt
:: echo.
:: echo.
:: set /p input=Next:

:: REM check text

:: if %input% == right goto 
:: if %input% == left goto 
:: if %input% == down goto 
:: if %input% == up goto 
:: if %input% == help goto 
:: goto a1


:: ACTUAL GAMEPLAY


:a2_forwards
echo A wall is in your way.
pause
goto a2

:a2_back
echo Why would you want to leave the maze the way you came in?
pause
goto a2

:a2
mode con: cols=13 lines=30
cls
type A-2.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto a1
if %input% == left goto a3
if %input% == down goto a2_back
if %input% == up goto a2_forwards
if %input% == help goto help
goto a2

:a3_escape
cls
echo Its a open wall but I shouldnt go through it
pause
goto a3

:a3_wall
echo You ran into a wall.
goto a3

:a3
mode con: cols=13 lines=15
cls
type A-3.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto a2
if %input% == left goto a3_escape
if %input% == down goto a3_wall
if %input% == up goto B3
if %input% == help goto help
goto a3

:a1_wall
cls
echo There is a wall in your way.
pause
goto a1
:a1
mode con: cols=50 lines=20
cls
type A-1.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto a1_wall
if %input% == left goto a2
if %input% == down goto a1_wall
if %input% == up goto B1'
if %input% == help goto help
goto a1

:a5_wall
cls
echo There is a wall in your way.
pause
goto a5

:a5
mode con: cols=50 lines=20
cls
type A-5.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto a5_wall
if %input% == left goto a5_grab
if %input% == down goto a5_wall
if %input% == up goto b5
if %input% == help goto help
goto a5

REM A line
REM ------------------
REM B line

:b1_grab
cls
echo You got a key!
pause
goto b1

:b1_wall
cls
echo There is a wall in your way
pause
goto b1

:b1
mode con: cols=13 lines=30
cls
type b-1.txt 
REM 200 lines lets goooo
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto b1_wall
if %input% == left goto b1_wall
if %input% == down goto a1
if %input% == up goto b1_wall
if %input% == grab goto b1_grab
if %input% == help goto help
goto b1

:b2_wall
echo.
echo you ran into a wall
echo.
pause
goto b2

:b2
mode con: cols=13 lines=30
cls
type b-2.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto b2_wall
if %input% == left goto b3
if %input% == down goto b2_wall
if %input% == up goto C2
if %input% == help goto help
goto b2

:b3_wall
echo.
echo you ran into a wall
echo.
pause
goto b3

:b3
mode con: cols=13 lines=30
cls
type b-3.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto b2
if %input% == left goto b3_Wall
if %input% == down goto a3
if %input% == up goto c3
if %input% == help goto help
goto b3


:b4_wall
echo.
echo you ran into a wall
echo.
pause
goto b4

:b4
mode con: cols=13 lines=30
cls
type b-4.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto b4_wall
if %input% == left goto b5
if %input% == down goto b4_Wall
if %input% == up goto c4
if %input% == help goto help
goto b4
:b5_wall
echo.
echo you ran into a wall
echo.
pause
goto b5

:b5
mode con: cols=13 lines=30
cls
type b-4.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto b4
if %input% == left goto b5_wall
if %input% == down goto a5
if %input% == up goto C5
if %input% == help goto help
goto b5

:c1_wall
echo.
echo you ran into a wall
echo.
pause
goto c1 

:c1
mode con: cols=13 lines=30
cls
type c-1.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto c1_wall
if %input% == left goto C2
if %input% == down goto c1_wall
if %input% == up goto D1
if %input% == help goto help
goto c1
:C2_wall
echo.
echo you ran into a wall
echo Like, what were you thinking?
echo.
pause
goto C2
:C2_Special
echo.
echo You can break past
echo The wall, if you
echo Really want to.
echo N/Y
set /p input=$ 
if %input% == y goto C1
if %input% == n goto C2
if %input% == Y goto C1
if %input% == N goto C2
goto C2_Special
:C2
mode con: cols=13 lines=30
cls
type C-2.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto C2_Special
if %input% == left goto C3
if %input% == down goto B2
if %input% == up goto C2_wall
if %input% == help goto help
goto C2
:C3_wall
echo.
echo you ran into a wall
echo Like, what were you thinking?
echo.
pause
goto C3
:C3
mode con: cols=13 lines=30
cls
type C-3.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto C2
if %input% == left goto C3_wall
if %input% == down goto B3
if %input% == up goto D3
if %input% == help goto help
goto C3
:C4_wall
echo.
echo you ran into a wall
echo Like, what were you thinking?
echo.
pause
goto C4
:C4
mode con: cols=13 lines=30
cls
type C-4.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto C4_wall
if %input% == left goto C5
if %input% == down goto B4
if %input% == up goto C4_wall
if %input% == help goto help
goto C4
:C5_wall
echo.
echo you ran into a wall
echo Like, what were you thinking?
echo.
pause
goto C5
:C5
mode con: cols=13 lines=30
cls
type C-5.txt
echo.
echo.
set /p input=Next:

REM check text

if %input% == right goto C5_wall
if %input% == left goto C5_wall
if %input% == down goto B5
if %input% == up goto C5_wall
if %input% == help goto help
goto C5


:error
cls
echo I think there was a error lol
echo Just execute it again hope it wont happen
echo I have no idea how to create error logs.
echo Actually I do but im too lazy to
echo deal with the minor inconvenience
echo you know what, im gonna shut up
pause >nul
