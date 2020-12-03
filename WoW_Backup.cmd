@ECHO OFF
CLS
ECHO.

##############################################################
# Hier werden Quelle und Ziel definiert.                     # 
# Die Quelle ist der WOW Ordner.                             #
# Das Ziel ist ein Ordner auf z.B. einer anderen Festplatte. #
# Optional kann mit /LOG ein Protokoll geschrieben werden.   #
# Der Ordner für das Protokoll muss bereits vorhanden sein.  #
# Am besten das Script im Ordner C:\scripts ablegen.         #
##############################################################

set rcopy=C:\Windows\System32
set quelle=C:\Program Files (x86)\World of Warcraft
set ziel=D:\Backup\World of Warcraft
set log=C:\Scripts\WoW_Backup.log

ECHO.
ECHO SICHERHEITSKOPIE DES WOW ORDNERS WIRD ERZEUGT ...
"%RCOPY%\robocopy.exe" "%QUELLE%" "%ZIEL%" /MIR /R:10 /W:2 /TEE /LOG:%LOG%
ECHO.
ECHO.
ECHO WOW ORDNER SICHERUNG ABGESCHLOSSEN
ECHO.
pause
