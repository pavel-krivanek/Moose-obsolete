sources
exampleBelowAndStick

| v b e |
v := RTView new.

e := (RTEllipse new size: 20; color: (Color red alpha: 0.3)) element.
b := (RTBox new size: 80; color: (Color blue alpha: 0.3)) element.
v add: e; add: b.

b @ RTDraggable.
e @ RTDraggable.

(RTConstraint on: e background: b)
	below;
	stick.
^ v