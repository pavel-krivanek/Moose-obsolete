A RTDoubleArrowedLine is a double arrowed line between its extremities.
-=-=-=
| v l e1 e2 eShape |
v := RTView new.
eShape := RTEllipse new size: 8; color: (Color blue alpha: 0.3).
e1 := eShape element.
e2 := eShape element.
e2 translateBy: 50 @ 30.
v add: e1; add: e2.
e1 @ RTDraggable.
e2 @ RTDraggable.

l := (RTDoubleArrowedLine new color: Color red) edgeFrom: e1 to: e2.
v add: l.

v
-=-=-=