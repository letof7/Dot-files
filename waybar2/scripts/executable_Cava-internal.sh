#! /bin/bash

bar="▁▂▃▄▅▆▇█"
#bar =0.5
dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

# make sure to clean pipe
pipe="/tmp/cava.fifo"
if [ -p $pipe ]; then
    unlink $pipe
fi
mkfifo $pipe



#method = raw

# write cava config
config_file="/tmp/waybar_cava_config"
echo "
[general]
bars = 12
bar_width = 1
[input]
method = pulse
[output]
method = raw
raw_target = $pipe
data_format = ascii
ascii_max_range = 7
[color]
gradient = 1
gradient_count = 4
gradient_color_1 = '#c6a0f6'
gradient_color_2 = '#f5bde6'
gradient_color_3 = '#f0c6c6'
gradient_color_4 = '#f4dbd6'
" > $config_file

# run cava in the background
cava -p $config_file &

# reading data from fifo
while read -r cmd; do
    echo $cmd | sed $dict
done < $pipe
