#!/bin/sh
# 不完整，只能用于ascii文件，但是该脚本会将所有的普通文件( -type f )按照ascii文件转换(待解决)
if [ $# -lt 1 ]
then
    echo "./a.out dirname"
    exit
else
    SERUCEPATH=$1
    DESTPATH=$SERUCEPATH"-utf8"
    echo "准备转换！"
    echo "$SERUCEPATH"
    echo "$DESTPATH"
    echo "find "$SERUCEPATH" -type d -exec mkdir -p "$DESTPATH"/{} \;"
    echo "find "$SERUCEPATH" -type f -exec iconv -f GBK -t UTF-8 {} -o "$DESTPATH"/{} \;"
    find "$SERUCEPATH" -type d -exec mkdir -p "$DESTPATH"/{} \;
    find "$SERUCEPATH" -type f -exec iconv -f GBK -t UTF-8 {} -o "$DESTPATH"/{} \;
fi
