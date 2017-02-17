RTConstraintExample new installTitle: 'AboveTopOnLabel' 
		code:
		'
| v b e |
v := RTView new.

e := RTLabel elementOn: ''Happiness''.
b := (RTBox new size: 80; color: (Color blue alpha: 0.3)) element.
v add: e; add: b.

b @ RTDraggable.
e @ RTDraggable.

(RTConstraint child: e parent: b)
	above;
	top;
	stick.
^ v'
	