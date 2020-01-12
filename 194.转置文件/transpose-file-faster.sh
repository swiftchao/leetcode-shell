######################################################################### # File Name: transpose-file.sh
# Author: chaofei
# mail: chaofeibest@163.com
# Created Time: 2020-01-10 19:35:49
#########################################################################
#!/bin/bash

#计算总列数
COLS=$(awk 'END{print NF}' file.txt)
for((i=1;i<=$COLS;i++)); do
  awk -v x=$i '{print $x}' file.txt | xargs
done
