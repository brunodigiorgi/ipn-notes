ipn-notes
=========

A collection of lectures and notes written in IPython Notebook

Online read-only versions
=========================

Use the following links:

* [Linear Interpolation](http://nbviewer.ipython.org/github/brunodigiorgi/ipn-notes/blob/master/audio/LinearInterpolation.ipynb)
* [Bandlimited Interpolation](http://nbviewer.ipython.org/github/brunodigiorgi/ipn-notes/blob/master/audio/BandlimitedInterpolation.ipynb)
* [Time Varying - Fractional Delay Effects](http://nbviewer.ipython.org/github/brunodigiorgi/ipn-notes/blob/master/audio/TimeVarying-FractionalDelayEffects.ipynb)

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

License
=======

This work is licensed under a [Creative Commons Attribution 3.0 Unported License.](http://creativecommons.org/licenses/by/3.0/)
