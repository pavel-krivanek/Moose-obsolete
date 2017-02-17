Continuous attach point which presumes both shapes are circles whose radius = half of width of encompassingRectangle

-=-=-=
v := RTView new.

e1 := (RTBox new size: 50) elementOn: 1.
e2 := (RTEllipse new size: 50) elementOn: 2.
v add: e1; add: e2.
e2 translateBy: 30 @ 60.

e1 @ RTDraggable.
e2 @ RTDraggable.

s := RTArrowedLine new color: Color black.
s attachPoint: RTCircleAttachPoint new.
l := s edgeFrom: e1 to: e2.
v add: l.

v
-=-=-=