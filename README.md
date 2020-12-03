# WoW_Backup
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

# WoW_Interface
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
set quelle01=C:\Program Files (x86)\World of Warcraft\_retail_\Interface
set quelle02=C:\Program Files (x86)\World of Warcraft\_retail_\WTF
set quelle03=C:\Program Files (x86)\World of Warcraft\_retail_\Cache
set ziel01=D:\Backup\WoW_Interface\Interface
set ziel02=D:\Backup\WoW_Interface\WTF
set ziel03=D:\Backup\WoW_Interface\Cache
set log01=C:\Scripts\WoW_Interface.log
set log02=C:\Scripts\WoW_WTF.log
set log03=C:\Scripts\WoW_Cache.log

ECHO.
ECHO.
ECHO SICHERHEITSKOPIE DES WOW INTERFACE WIRD ERZEUGT ...
"%RCOPY%\robocopy.exe" "%QUELLE01%" "%ZIEL01%" /MIR /R:10 /W:2 /TEE /LOG:%LOG01%
pause
"%RCOPY%\robocopy.exe" "%QUELLE02%" "%ZIEL02%" /MIR /R:10 /W:2 /TEE /LOG:%LOG02%
pause
"%RCOPY%\robocopy.exe" "%QUELLE03%" "%ZIEL03%" /MIR /R:10 /W:2 /TEE /LOG:%LOG03%
ECHO.
ECHO.
ECHO WOW INTERFACE SICHERUNG ABGESCHLOSSEN
ECHO.
ECHO.
pause
