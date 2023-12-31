Configuration=2022012700
Magisk_Warehouse_version=2021101100
App_Store_version=2021100100
Show_Compatibility_Mode=1
MIUI=0


case "$1" in

#应用
com.ycly.EEBBK.toolbox)
apk='com.ycly.EEBBK.toolbox'
name='EEBBK Toolbox'
version='2.0.3'
versionCode=203
author='EEBBK BOOM团队'
description='更新日志：修复满速下载通道'
time='2023年8月19号'
    [[ $Choice = 1 ]] && Download -url 'https://kgithub.com/EEBBK-BOOM/EEBBK_profile/releases/download/Toolbox/Toolbox.apk' "$1.apk" '18052000' 'f40e485ec8bb463f00b5b2355d4a09be' "$1.apk"
;;

exit_sideload)
    Download_File="$PeiZhi_File/$1.zip"
;;

Card_Brush_Bag)
    Download_File="$PeiZhi_File/Card_Brush_Bag/$3.zip"
;;

Install_Applet)
    name=Applet
    versionCode=73
    Download_File=$Other/$name.zip
    Install_Applet2
;;

*)
    abort "！未找到$1服务"
;;
esac
true
