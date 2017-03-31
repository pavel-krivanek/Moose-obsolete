public-naming
nameBelowGroup: aName as: title
	"Give a title to a group.
	
	For example:
	
| compo |
compo := RTComposer new.

b := RTMondrian new.
b view: compo view.
b nodes: (1 to: 30).
b layout grid.
b build.
compo group: #g1.

b := RTMondrian new.
b view: compo view.
b nodes: (1 to: 30).
b layout grid.
b build.
compo group: #g2. 

compo layout: RTVerticalLineLayout new alignCenter.

compo setBackgroundForGroup: #g1 color: Color red trans.
compo nameGroup: #g1 as: 'Goup 1'.
compo view

	"
	| lbl |
	lbl := (RTLabel new text: title) element.
	TRConstraint move: lbl below: (mapping at: aName).
	view add: lbl.
	^ lbl