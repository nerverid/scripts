#!/bin/sh
path_in1="./in01/logs"
path_in2="./in02/logs"
path_in3="./in03/logs"

path_out="./out/"
all_path("$path_in1" "$path_in2" "$path_in3")

current_date=$(date "+%Y-%m-%d")

function birth_file {
    stt_cr_dt=$(stat $1 | grep "Birth:" | grep -oP '[0-9][0-9][0-9][0-9][\-][0-9][0-9][\-][0-9][0-9]')
}

function arch_all {
    for fl_in in $oath_tmp*
      do
        birth_file $fl_in
        if test $datelastfile != $stt_cr_dt;
          then
            cp $fl_in $path_arc
        fi
}

for path_tmp in ${all_path[@]}
  do
     mkdir -p $path_out$current_date/$path_tmp
     path_arc="$path_out$current_date/$path_tmp"
     tmp_path=$(pwd)
     cd $path_tmp 
     lastfile=$(ls -t | head -n 1)
     birth_file $lastfile
     datelastfile=$stt_cr_dt
     arch_all $path_tmp
     cd $tmp_path
  done

cd $path_out
zip -r "$current_date.zip" $current_date