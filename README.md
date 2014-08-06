ipn-notes
=========

A collection of lectures and notes written in IPython Notebook

Online read-only versions
=========================

Use the following links:

* Audio
  * [Additive Synthesis](http://nbviewer.ipython.org/github/brunodigiorgi/ipn-notes/blob/master/audio/AdditiveSynthesis.ipynb)
  * [Linear Interpolation](http://nbviewer.ipython.org/github/brunodigiorgi/ipn-notes/blob/master/audio/LinearInterpolation.ipynb)
  * [Bandlimited Interpolation](http://nbviewer.ipython.org/github/brunodigiorgi/ipn-notes/blob/master/audio/BandlimitedInterpolation.ipynb)
  * [Time Varying - Fractional Delay Effects](http://nbviewer.ipython.org/github/brunodigiorgi/ipn-notes/blob/master/audio/TimeVarying-FractionalDelayEffects.ipynb)
  * [Head Related Transfer Function](http://nbviewer.ipython.org/github/brunodigiorgi/ipn-notes/blob/master/audio/hrtf.ipynb)
* Numpy
  * [Numpy array](http://nbviewer.ipython.org/github/brunodigiorgi/ipn-notes/blob/master/numpy/numpy-array.ipynb) 

IPython Notebook Installation (Ubuntu 14.04)
=============================
Use the shell scripts provided:
 - installIPython_ubuntu32bit.sh for Ubuntu 32bit
 - installIPython_ubuntuAMD64.sh for Ubuntu AMD64

The scripts contain the installation commands for all the packages I use: Numpy, Scipy, Matplotlib, PyTables, IPython.
Running time estimate: more than 1 hour.
Read them in case of problems, and please report the solution that worked for you.

IPython Notebook Installation (osx 10.9)
=============================

A little long, and there are many source of errors (read "experience") along the path :)

* download and install python 3.4 (https://www.python.org/)
* install XCode Command Line Tools
* install ipython with all its dependencies
```
sudo pip3 install ipython[all]
```
* install libraries
```
brew install gfortran
sudo pip3 install --upgrade numpy
sudo pip3 install scipy
sudo pip3 install ipdb
```
* install [XQuartx](http://xquartz.macosforge.org/landing/) and library dependencies for matplotlib (download from [libpng](http://www.libpng.org/pub/png/libpng.html) and [freetype](http://download.savannah.gnu.org/releases/freetype/))
```
cd [library_folder]
./configure
make
sudo make install
```
* install matplotlib (plotting library) 
```
sudo pip3 install matplotlib
```
* test ipython
```
iptest
```
* set GoogleChrome as your default browser for best viewing
* start ipython notebook 
```
cd [directory_with_your_ipynb_files]
ipython notebook
```

Known issues
===========
When calling ipython notebook you get the error:
```
ValueError: unknown locale: UTF-8
```
[Solution1](https://coderwall.com/p/-k_93g), [Solution2](http://stackoverflow.com/questions/15526996/ipython-notebook-locale-error) (they are the same)


License
=======

This work is licensed under a [Creative Commons Attribution 3.0 Unported License.](http://creativecommons.org/licenses/by/3.0/)
