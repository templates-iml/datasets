for f in *.csv
do
  l=$(wc -l < $f);
  
  if [ $l -le 100 ] ; then
    d=small;
  elif [ $l -le 1000 ]; then
    d=medium;
  else
    d=large;
  fi;
  
  mv $f $d && mv ${f/\.csv/.md} $d;
done