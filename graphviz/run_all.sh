#!/bin/bash
neato graph_basics.gv -Teps -ograph_basics.eps
fdp coarsening.gv -Tpng -ocoarsening.png -Gstart=7
dot binary_tree.gv -Teps -obinary_tree.eps
