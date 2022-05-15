frames=$(find -name "Frame*");

for item in $frames
do
    echo $item;
    convert $item -negate "Out$Item"
done