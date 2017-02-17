I am responsible to compose several visualizations.

For example:
====
compo := RTComposer new.

b := RTMondrian new.
b view: compo view.
b nodes: (1 to: 3).
b build.
compo group: #g1.

b := RTMondrian new.
b view: compo view.
b nodes: (1 to: 4).
b build.

compo group: #g2.

compo layout: RTVerticalLineLayout new alignCenter. 
compo view
====