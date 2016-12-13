#!/bin/sh

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
