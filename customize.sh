SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

set_perm_recursive $MODPATH 0 0 0755 0777
##########################################################################################
#
# Magisk Module Installer Script
# 酷安ID：Aiexile
#
##########################################################################################
##########################################################################################
#

CommonPath=$MODPATH/common



  ui_print "- 正在进入酷安，点个关注吧"
  mv  ${CommonPath}/*  $MODPATH
  rm  -rf ${CommonPath}


coolapkTesting=`pm list package | grep -w 'com.coolapk.market'`
  if [[ "$coolapkTesting" != "" ]];then
  am start -d 'coolmarket://u/20201149' >/dev/null 2>&1
  fi
