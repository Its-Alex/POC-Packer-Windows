:: Get product key
set /p Key=<C:\Windows\System32\key.txt
:: Delete file containing key
del C:\Windows\System32\key.txt

::Uninstall product key
slmgr.vbs /upk
:: Delete it fron registery
slmgr.vbs /cpky
:: Enable new product key
slmgr.vbs /ipk %Key% &:: Find a way to get current key here
:: Do an online activation
slmgr.vbs /ato
