INSTALLAZIONE MAC OSX
=====================

These are some hints to install Python3 and some useful libraries on MacOSX system.
Everything is compiled from source (apart from Python itself and Gfortran), and install locations are reported.

In each of the following section you will find:
 - A link where the archive (usually tar.gz) containing the source can be downloaded
 - the command to execute to build and install the library
 - a list of places in which the library is installed

 Dependencies are reported before the library that requires them.
 Good luck!

Python 3
--------

Python framework and binaries
https://www.python.org/downloads/

installs 
/Library/Frameworks/Python.framework/
which contains all the binaries as
/Library/Frameworks/Python.framework/Versions/3.4/bin/python3.4
/Library/Frameworks/Python.framework/Versions/3.4/bin/pip3
/Library/Frameworks/Python.framework/Versions/3.4/bin/2to3

they are linked by a series of binaries in /usr/local/bin
/usr/local/bin/python3
/usr/local/bin/pip3
/usr/local/bin/2to3

Cython
------
http://cython.org/#download

	sudo python3 setup.py install

installs the egg library
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/Cython-0.22-py3.4-macosx-10.6-intel.egg

installs the scripts
/Library/Frameworks/Python.framework/Versions/3.4/bin/cython
/Library/Frameworks/Python.framework/Versions/3.4/bin/cygdb
/Library/Frameworks/Python.framework/Versions/3.4/bin/cythonize

Gfortran
--------
(it is a dependency for blas e lapack)
https://gcc.gnu.org/wiki/GFortranBinaries

Blas
----
http://www.netlib.org/blas/blas.tgz

	make
	mv ./blas_LINUX.a ./libblas.a
	sudo cp ./libblas.a /usr/local/lib/

Lapack
------
http://www.netlib.org/lapack/

rename make.inc.example into make.inc
edit make.inc
BLASLIB = /usr/local/lib/libblas.a

	sudo cp liblapack.a /usr/local/lib/

Numpy
-----
http://sourceforge.net/projects/numpy/files/NumPy/

	sudo python3 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/numpy/
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/numpy-1.9.1-py3.4.egg-info

Scipy
-----
http://sourceforge.net/projects/scipy/files/scipy/

	sudo python3 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/scipy/
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/scipy-0.15.1-py3.4.egg-info

Six
---
https://pypi.python.org/pypi/six

	sudo python3 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/six-1.9.0-py3.4.egg

python-dateutil
---------------
https://pypi.python.org/pypi/python-dateutil

	sudo python3 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/python_dateutil-2.4.0-py3.4.egg

pytz
----
https://pypi.python.org/pypi/pytz/

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/pytz-2014.10-py3.4.egg

pyparsing
---------
https://pypi.python.org/pypi/pyparsing

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/pyparsing-2.0.3-py3.4.egg-info

libpng
------
http://www.libpng.org/pub/png/libpng.html

	./configure
	make
	sudo make install

/usr/local/include/png.h (links to /usr/local/include/libpng16/...)

/usr/local/lib/libpng16.a
/usr/local/lib/libpng16.la
/usr/local/lib/libpng16.16.dylib (linked by libpng16.dylib and libpng.dylib)


matplotlib
----------
http://matplotlib.org/downloads.html

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/nose-1.3.4-py3.4.egg
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/matplotlib-1.4.3-py3.4-macosx-10.6-intel.egg

pyzmq
-----
https://pypi.python.org/pypi/pyzmq

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/zmq/
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/pyzmq-14.5.0-py3.4.egg-info

tornado
-------
https://pypi.python.org/pypi/tornado

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/tornado-4.1-py3.4-macosx-10.6-intel.egg
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/certifi-14.05.14-py3.4.egg

Jinja2
------
https://pypi.python.org/pypi/Jinja2

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/MarkupSafe-0.23-py3.4-macosx-10.6-intel.egg
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/Jinja2-2.7.3-py3.4.egg

Ipython
-------
https://pypi.python.org/pypi/ipython

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/ipython-2.4.1-py3.4.egg-info

MathJax
-------
	python3
	from IPython.external.mathjax import install_mathjax
	install_mathjax()

installs to
/Users/brunodigiorgi/.ipython/nbextensions/mathjax

lzo
---
http://www.oberhumer.com/opensource/lzo/download/

	./configure
	make
	make check
	sudo make install
	make check install

/usr/local/include/lzo/[...]

/usr/local/lib/liblzo2.a
/usr/local/lib/liblzo2.la

szip
----
http://www.hdfgroup.org/ftp/lib-external/szip/

	./configure --prefix=/usr/local
	make
	make check
	sudo make install
	make check install

/usr/local/include/szlib.h
/usr/local/include/szip_adpt.h

/usr/local/lib/libsz.a
/usr/local/lib/libsz.la
/usr/local/lib/libsz.2.0.0.dylib (linked by libsz.2.dylib and libsz.dylib)

hdf5
----
ftp://ftp.hdfgroup.org/HDF5/current/src/

	./configure --prefix=/usr/local
	make
	make check
	sudo make install
	make check-install

/usr/local/bin/h5cc and many other binaries 
(h5[copy|debug|diff|dump|import|jam|ls|mkgrp|perf_serial|redeploy|repack|repart|stat|unja|gif])

/usr/local/include/hdf5.h
and many more headers H5[...].h

/usr/local/lib/libhdf5.a
/usr/local/lib/libhdf5.la
/usr/local/lib/libhdf5.9.dylib (linked by libhdf5.dylib, )

/usr/local/lib/libhdf5_hl.a
/usr/local/lib/libhdf5_hl.la
/usr/local/lib/libhdf5_hl.9.dylib (linked by libhdf5_hl.dylib)

numexpr
-------
https://pypi.python.org/pypi/numexpr

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/numexpr-2.4-py3.4-macosx-10.6-intel.egg

pytables
--------
https://pypi.python.org/pypi/tables

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/tables/
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/tables-3.1.1-py3.4.egg-info

beautifulsoup
-------------
https://pypi.python.org/pypi/beautifulsoup4/4.3.2

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/bs4/
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/beautifulsoup4-4.3.2-py3.4.egg-info

sphinx
------
https://pypi.python.org/pypi/Sphinx/

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/Sphinx-1.3b2-py3.4.egg
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/docutils-0.12-py3.4.egg
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/snowballstemmer-1.2.0-py3.4.egg
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/Babel-1.3-py3.4.egg
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/Pygments-2.0.2-py3.4.egg

numpydoc
--------
https://pypi.python.org/pypi/numpydoc/0.5

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/numpydoc-0.5-py3.4.egg

ordered-set
-----------
https://pypi.python.org/pypi/ordered-set/1.3

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/ordered_set-1.3-py3.4.egg

PyLaTeX
-------
https://pypi.python.org/pypi/PyLaTeX/

	sudo python3.4 setup.py install

installs
/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/PyLaTeX-0.6.1-py3.4.egg