# phosim-dm-process

#### Install DM Stack on Purdue RCAC clusters
We install the Stack on data depot because RCAC doesn't impose a limit on the number of files and a 90-day purge policy for this storage. The size of the Stack is 14GB, containing 110k files (v11.0). The formal DM installation instruction can be found [here](https://confluence.lsstcorp.org/display/LSWUG/Building+the+LSST+Stack+from+Source). 
```
module load gcc/4.9.2
cd /depot/lsst/apps
mkdir lsststack
cd lsststack
curl -OL https://sw.lsstcorp.org/eupspkg/newinstall.sh
bash newinstall.sh
```

Then answer Yes to continuiung without git and installing Anaconda Python distribution. Next install Stack packages.

```
eups distrib install -t v11_0 lsst_apps
```
For some reasons, this command doesn't work on Conte frontends. I log into a Hansen frontend to complete this step. To test your new installation, follow [this](https://confluence.lsstcorp.org/display/LSWUG/Testing+the+Installation) instruction.

#### Download DM tutorial scripts
```
git clone https://github.com/lsst-dm/tutorials.git
```

#### Run PhoSim on RCAC
```
qsub -q physics runPhosim.sub
```
