# Script to run labelme

# python3 -m virtualenv env &&
# source env/bin/activate labelme &&
# labelme data_to_annotate --flags \
# flags.txt --output out/ --autosave


# create python3 virtual environment
if python3 -m virtualenv env ; then
  echo "[Set up virtual environment] Done"
else
  echo "[Set up virtual environment] Error"
  exit
fi

if source env/bin/activate labelme ; then
  echo "[Activate virtual env labelme] Done"
else
  echo "[Activate virtual env labelme] Error"
  exit
fi

# script for labelme
# using data <data_to_annotate> with <flags.txt>
# output to out/ and autosave the progress
if labelme data_to_annotate --flags \
	flags.txt --output out/ --autosave ; then
  echo "[Start labelme] Done"
else
  echo "[Start labelme] Error"
  exit
fi		

