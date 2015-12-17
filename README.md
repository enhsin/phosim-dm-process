# phosim-dm-process

#### Install DM Stack on Purdue RCAC clusters
The formal DM installation instruction can be found [here](https://confluence.lsstcorp.org/display/LSWUG/Building+the+LSST+Stack+from+Source).
```
module load gcc/4.9.2
mkdir lsststack
cd lsststack
curl -OL https://sw.lsstcorp.org/eupspkg/newinstall.sh
bash newinstall.sh
```

#### Download DM tutorial scripts
```
git clone https://github.com/lsst-dm/tutorials.git
```

#### Running PhoSim on RCAC
```
qsub -q physics runPhosim.sub
```
