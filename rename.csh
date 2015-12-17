#!/bin/csh -f

foreach i (*.out)
  cd $i
  python python/rename_images.py ../imSim *E000.fits.gz
  cd ../
end
