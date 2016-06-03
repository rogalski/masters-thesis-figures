from __future__ import division
import math
N = 5;
r = 3;

PREFIX = r"""
\documentclass{article}
\usepackage{tikz}
\usepackage{circuitikz}
\ctikzset{bipoles/length=1cm}
\pagenumbering{gobble}
\usepackage[paperheight=%fcm,paperwidth=%fcm,margin=0.2cm]{geometry}
\begin{document}
\begin{figure}[!ht]
  \begin{center}
    \begin{circuitikz}
""" % (r*2.3, r*2.5)

POSTFIX = r"""
    \end{circuitikz}
  \end{center}
\end{figure}
\end{document}
"""

def arg(i, N):
	return 2*math.pi*i/N + N%2 * math.pi/2*N

coords = [(r*math.cos(arg(i, N)), r*math.sin(arg(i, N))) for i in xrange(N)]

with open('star.tex', 'w') as f:
	f.write(PREFIX)
	for c in coords:
		f.write(" " * 6)
		f.write("\\draw {0}\nto[R,d-*] (0,0);\n".format(c))
	f.write(POSTFIX)

with open('mesh.tex', 'w') as f:
	f.write(PREFIX)
	for c in coords:
		for c2 in coords:
			if c == c2:
				continue
			f.write(" " * 6)
			f.write("\\draw {0}\nto[R,d-d] {1};\n".format(c, c2))
	f.write(POSTFIX)
