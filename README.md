Introduction <a id="introduction" />
------------

vsfm-osx is a set of scripts that builds VisualSFM and required/optional packages on OSX inside an app structure, making it portable. You can redistribute your generated app. 

The default enviroment is OS X 64 bits (tested with Lion), no CUDA support, GLSL code, core2 CPU,  Homebrew libraries and default X11 libraries.


Installation and Requirements <a id="install" />
-----------------------------

Clone this project and run ./scripts/all.
You need, of course, an OS X machine and Xcode with Command Line Tools. Tested with Lion 10.7.4, Xcode 4.3.3 and XQuartz 2.7.2

Acknowledgements <a id="acknowledgements" />
----------------

### VisualSFM - A Visual Structure from Motion System ###

Copyright 2006-2012 Changchang Wu and University of Washington

http://www.cs.washington.edu/homes/ccwu/vsfm/index.html 


### SiftGPU: A GPU Implementation of Scale Invariant Feature Transform (SIFT) ###

Copyright (c) 2007 University of North Carolina at Chapel Hill

http://www.cs.unc.edu/~ccwu/siftgpu/


### Multicore Bundle Adjustment ###

Copyright (c) 2011  Changchang Wu (ccwu@cs.washington.edu) and the University of Washington at Seattle

http://grail.cs.washington.edu/projects/mcba/


### Clustering Views for Multi-view Stereo (CMVS) ###

Software written by Yasutaka Furukawa

http://grail.cs.washington.edu/software/cmvs/


### Graclus -- Efficient graph clustering software for normalized cut and ratio association on undirected graphs. ####

Copyright(c) 2008 Brian Kulis, Yuqiang Guan (version 1.2)

http://www.cs.utexas.edu/users/dml/Software/graclus.html/


### Homebrew ####

http://mxcl.github.com/homebrew/