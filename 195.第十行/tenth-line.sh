#########################################################################
# File Name: tenth-line.sh
# Author: chaofei
# mail: chaofeibest@163.com
# Created Time: 2020-01-12 14:00:01
#########################################################################
#!/bin/bash

awk '{
  if(NR==10){
    print $0
  }
}
' file.txt
