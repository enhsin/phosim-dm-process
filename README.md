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

Then answer Yes to continuiung without git and installing Anaconda Python distribution. Next install Stack packages.

```
eups distrib install -t v11_0 lsst_apps
```
For some unknown reasons, this command doesn't work on conte.rcac, but it can work on hansen.rcac. To test your new installation, follow [this](https://confluence.lsstcorp.org/display/LSWUG/Testing+the+Installation) demo.

#### Download DM tutorial scripts
```
git clone https://github.com/lsst-dm/tutorials.git
```

#### Run PhoSim on RCAC
```
qsub -q physics runPhosim.sub
```
