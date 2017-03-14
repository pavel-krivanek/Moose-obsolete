Rounded rectangle.
-=-=-=
v := RTView new.

e1 :=((RTRoundedBox new borderRadius: 10; size: 50) + RTLabel )  elementOn: 1.

e2 := (RTEllipse new size: 50) elementOn: 2.
v add: e1; add: e2.

e2 translateBy: 80 @ 60.

e1 @ RTDraggable.
e2 @ RTDraggable.

s := RTArrowedLine new color: Color black.
s attachPoint: RTRectangleAttachPoint new.
l := s edgeFrom: e1 to: e2.
v add: l.

v
-=-=-=