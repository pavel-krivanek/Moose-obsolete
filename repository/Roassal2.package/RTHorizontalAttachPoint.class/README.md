Horizontal attach points between elements when drawing lines.  Useful for horizontal tree layout.

-=-=-=
v := RTView new.

e1 := (RTBox new size: 50) elementOn: 1.
e2 := (RTEllipse new size: 50) elementOn: 2.
v add: e1; add: e2.
e2 translateBy: 30 @ 60.

e1 @ RTDraggable.
e2 @ RTDraggable.

s := RTArrowedLine new color: Color black.
s attachPoint: RTHorizontalAttachPoint new.
l := s edgeFrom: e1 to: e2.
v add: l.

v
-=-=-=