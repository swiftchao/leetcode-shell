#########################################################################
# File Name: transpose-file.sh
# Author: chaofei
# mail: chaofeibest@163.com
# Created Time: 2020-01-10 19:35:49
#########################################################################
#!/bin/bash

awk 'BEGIN{
  }
  {
    for(m=1; m<=NF; m++){
      #NR依次递增
      #printf "当前是%s行%s列:%s ", NR, m, $m
      #将所有行列进行复制到二维数组
      ARR[NR,m]=$m
    }
    #printf "\n"
  } 
  END{
    #printf "总共是%s行%s列\n", NR, NF
    for(j=1; j<=NF; j++){
      for(i=1; i<=NR; i++){
        #printf "%s行%s列:%s ", i, j, ARR[i,j]
        printf "%s", ARR[i,j]
        if(i< NR) {
          #未到结尾输出空格
          printf " "
        }
      }
      #行列转置原来的行末尾添加换行
      printf "\n"
    }
  }
' file.txt
