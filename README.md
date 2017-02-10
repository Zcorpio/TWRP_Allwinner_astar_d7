AllWinner a33 astar_d7

TWRP touch recovery
-------------

TWRP recovery - device: http://4pda.ru/forum/index.php?showtopic=792456


Flash CWM or TWRP
---------

Run following commands

adb push recovery.img /sdcard/

adb shell "cat /sdcard/recovery.img > /dev/block/by-name/recovery; sync"
