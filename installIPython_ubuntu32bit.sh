#!/bin/bash

# main repository:
# https://pypi.python.org/pypi/

# Manual install

# Dependencies
apt-get install -y python3-dev g++
apt-get install -y libblas-dev liblapack-dev gfortran
apt-get install -y libfreetype6-dev libpng-dev

# Cython
wget http://cython.org/release/Cython-0.20.1.tar.gz
tar -xvzf Cython-0.20.1.tar.gz Cython-0.20.1/
cd Cython-0.20.1/
sudo python3.4 setup.py install
cd ../
sudo rm Cython-0.20.1/ -r
rm Cython-0.20.1.tar.gz

# Numpy
# download last sources from:
# http://sourceforge.net/projects/numpy/files/NumPy/
wget http://sourceforge.net/projects/numpy/files/NumPy/1.8.1/numpy-1.8.1.tar.gz
tar -xvzf numpy-1.8.1.tar.gz numpy-1.8.1/
cd numpy-1.8.1/
sudo python3.4 setup.py install
cd ../
sudo rm numpy-1.8.1/ -r
rm numpy-1.8.1.tar.gz

# Scipy
# http://sourceforge.net/projects/scipy/files/scipy/
wget http://sourceforge.net/projects/scipy/files/scipy/0.14.0/scipy-0.14.0.tar.gz
tar -xvzf scipy-0.14.0.tar.gz scipy-0.14.0/
cd scipy-0.14.0/
sudo python3.4 setup.py install
cd ../
sudo rm scipy-0.14.0/ -r
rm scipy-0.14.0.tar.gz

# dateutil
wget https://pypi.python.org/packages/source/p/python-dateutil/python-dateutil-2.2.tar.gz#md5=c1f654d0ff7e33999380a8ba9783fd5c
tar -xzvf python-dateutil-2.2.tar.gz python-dateutil-2.2/
cd python-dateutil-2.2/
sudo python3.4 setup.py install
cd ../
sudo rm python-dateutil-2.2/ -r
rm python-dateutil-2.2.tar.gz

# pytz
wget https://pypi.python.org/packages/source/p/pytz/pytz-2014.4.tar.gz#md5=9f30bdda5a4292efeae9238febd63208
tar -xzvf pytz-2014.4.tar.gz pytz-2014.4/
cd pytz-2014.4/
sudo python3.4 setup.py install
cd ../
sudo rm pytz-2014.4/ -r
rm pytz-2014.4.tar.gz

# pyparsing
wget https://pypi.python.org/packages/source/p/pyparsing/pyparsing-2.0.2.tar.gz#md5=b170c5d153d190df1a536988d88e95c1
tar -xzvf pyparsing-2.0.2.tar.gz pyparsing-2.0.2/
cd pyparsing-2.0.2/
sudo python3.4 setup.py install
cd ../
sudo rm pyparsing-2.0.2/ -r
rm pyparsing-2.0.2.tar.gz

# six
wget https://pypi.python.org/packages/source/s/six/six-1.7.3.tar.gz#md5=784c6e5541c3c4952de9c0a966a0a80b
tar -xzvf six-1.7.3.tar.gz six-1.7.3/
cd six-1.7.3/
sudo python3.4 setup.py install
cd ../
sudo rm six-1.7.3/ -r
rm six-1.7.3.tar.gz

# Matplotlib
wget https://downloads.sourceforge.net/project/matplotlib/matplotlib/matplotlib-1.3.1/matplotlib-1.3.1.tar.gz
tar -xzvf matplotlib-1.3.1.tar.gz matplotlib-1.3.1/
cd matplotlib-1.3.1/
sudo python3.4 setup.py install
cd ../
sudo rm matplotlib-1.3.1/ -r
rm matplotlib-1.3.1.tar.gz

#libffi
sudo apt-get install libffi-dev

#cairocffi
wget https://pypi.python.org/packages/source/c/cairocffi/cairocffi-0.5.4.tar.gz#md5=e3fa4002583bfaa88b156e1af9c75bde
tar -xzvf cairocffi-0.5.4.tar.gz cairocffi-0.5.4/
cd cairocffi-0.5.4/
sudo python3.4 setup.py install
cd ../
sudo rm cairocffi-0.5.4/ -r
rm cairocffi-0.5.4.tar.gz

# Dependencies for ipython

# pyzmq
wget https://github.com/zeromq/pyzmq/archive/v14.3.1.tar.gz
tar -xvzf v14.3.1.tar.gz pyzmq-14.3.1/
cd pyzmq-14.3.1/
sudo python3.4 setup.py install
cd ../
sudo rm pyzmq-14.3.1/ -r
rm v14.3.1.tar.gz

# Tornado
wget https://pypi.python.org/packages/source/t/tornado/tornado-4.0.tar.gz
tar -xvzf tornado-4.0.tar.gz tornado-4.0/
cd tornado-4.0/
sudo python3.4 setup.py install
cd ../
sudo rm tornado-4.0/ -r
rm tornado-4.0.tar.gz

# setuptools (required by jninja2)
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python3.4

# jninja 2
# Download source from https://pypi.python.org/pypi/Jinja2
wget https://pypi.python.org/packages/source/J/Jinja2/Jinja2-2.7.3.tar.gz
tar -xvzf Jinja2-2.7.3.tar.gz Jinja2-2.7.3/
cd Jinja2-2.7.3/
sudo python3.4 setup.py install
cd ../
sudo rm Jinja2-2.7.3/ -r
rm Jinja2-2.7.3.tar.gz

# ipython 
# get the lastest release from https://pypi.python.org/pypi/ipython#downloads
wget https://pypi.python.org/packages/source/i/ipython/ipython-2.2.0.tar.gz#md5=b91d3724f655a8e16d022772f696cfd5
tar -xvzf ipython-2.2.0.tar.gz ipython-2.2.0/
cd ipython-2.2.0/
sudo python3.4 setup.py install
cd ../
sudo rm ipython-2.2.0/ -r
rm ipython-2.2.0.tar.gz

# mathjax
wget https://github.com/mathjax/MathJax/archive/v2.0-latest.zip
python3.4 -m IPython.external.mathjax v2.0-latest.zip
rm v2.0-latest.zip

# dependencies for pytables

# zlib
wget http://zlib.net/zlib-1.2.8.tar.gz
tar -xvzf zlib-1.2.8.tar.gz zlib-1.2.8/
cd zlib-1.2.8/
./configure
make
sudo make install
cd ../
sudo rm zlib-1.2.8/ -r
rm zlib-1.2.8.tar.gz

# bzip2
wget http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz
tar -xzvf bzip2-1.0.6.tar.gz bzip2-1.0.6/
cd bzip2-1.0.6/
make install
cd ../
sudo rm bzip2-1.0.6/ -r
rm bzip2-1.0.6.tar.gz

# lzo
wget http://www.oberhumer.com/opensource/lzo/download/lzo-2.08.tar.gz
tar -xzvf lzo-2.08.tar.gz lzo-2.08/
cd lzo-2.08/
./configure
make
make check
make test
make install
cd ../
sudo rm lzo-2.08/ -r
rm lzo-2.08.tar.gz

# szip
wget http://www.hdfgroup.org/ftp/lib-external/szip/2.1/src/szip-2.1.tar.gz
tar -xzvf szip-2.1.tar.gz szip-2.1/
cd szip-2.1/
./configure --prefix=/usr/local
make
make check
sudo make install
make check-install
cd ../
sudo rm szip-2.1/ -r
rm szip-2.1.tar.gz

# HDF5
wget ftp://ftp.hdfgroup.org/HDF5/current/src/hdf5-1.8.13.tar.gz
tar -xzvf hdf5-1.8.13.tar.gz hdf5-1.8.13/
cd hdf5-1.8.13/
./configure --prefix=/usr/local
make
make check
sudo make install
make check-install
cd ../
sudo rm hdf5-1.8.13/ -r
rm hdf5-1.8.13.tar.gz

# numexpr
wget https://pypi.python.org/packages/source/n/numexpr/numexpr-2.4.tar.gz#md5=df7e8d9e9dbb145b56d43c465c2bf854
tar -xzvf numexpr-2.4.tar.gz numexpr-2.4/
cd numexpr-2.4/
sudo python3.4 setup.py install
cd ../
sudo rm numexpr-2.4/ -r
rm numexpr-2.4.tar.gz

# pytables
wget https://pypi.python.org/packages/source/t/tables/tables-3.1.1.tar.gz#md5=38d917f0c6dfb0bc28ce9ea0c3492524
tar -xzvf tables-3.1.1.tar.gz tables-3.1.1/
cd tables-3.1.1/
sudo python3.4 setup.py install
cd ../
sudo rm tables-3.1.1/ -r
rm tables-3.1.1.tar.gz

# then test in python:
# import tables as tb
# tb.test()

wget http://www.crummy.com/software/BeautifulSoup/bs4/download/4.3/beautifulsoup4-4.3.2.tar.gz
tar -xvzf beautifulsoup4-4.3.2.tar.gz beautifulsoup4-4.3.2/
cd beautifulsoup4-4.3.2/
sudo python3.4 setup.py install
cd ../
sudo rm beautifulsoup4-4.3.2/ -r
rm beautifulsoup4-4.3.2.tar.gz

# sphinx
wget https://pypi.python.org/packages/source/S/Sphinx/Sphinx-1.2.2.tar.gz#md5=3dc73ccaa8d0bfb2d62fb671b1f7e8a4
tar -xvzf Sphinx-1.2.2.tar.gz Sphinx-1.2.2/
cd Sphinx-1.2.2/
sudo python3.4 setup.py install
cd ../
sudo rm Sphinx-1.2.2/ -r
rm Sphinx-1.2.2.tar.gz

wget https://pypi.python.org/packages/source/n/numpydoc/numpydoc-0.5.tar.gz#md5=6feac1f625ad0df5a11c7b60f920ac1b
tar -xvzf numpydoc-0.5.tar.gz numpydoc-0.5/
cd numpydoc-0.5/
sudo python3.4 setup.py install
cd ../
sudo rm numpydoc-0.5/ -r
rm numpydoc-0.5.tar.gz
