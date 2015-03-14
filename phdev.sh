#!/bin/sh
# 推送提交到devel
cd /home/wangminli/reis && 
/usr/bin/git checkout minli  && 
/usr/bin/git add . && 
/usr/bin/git commit -m "$1"  && 
/usr/bin/git checkout devel &&
/usr/bin/git pull &&
/usr/bin/git checkout minli &&
/usr/bin/git rebase devel &&
echo "==>:成功rebase到devel分支！\n"
/usr/bin/git checkout devel &&
echo "==>:成功与minli分支merge\n"
/usr/bin/git merge minli &&
/usr/bin/git push &&！
echo "==>:成功push\n"
/usr/bin/git checkout minli &&
echo "==>:成功完成所有操作，已切换到minli分支！\n"
