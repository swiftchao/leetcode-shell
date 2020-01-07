#########################################################################
# File Name: word-frequency.sh
# Author: chaofei
# mail: chaofeibest@163.com
# Created Time: 2020-01-07 18:07:17
#########################################################################
#!/bin/bash

egrep '[a-zA-Z]+' words.txt | xargs | sed 's| |\n|g' | sort | uniq -c | sort -n -k 1 -r | awk '{print $2" "$1}'
