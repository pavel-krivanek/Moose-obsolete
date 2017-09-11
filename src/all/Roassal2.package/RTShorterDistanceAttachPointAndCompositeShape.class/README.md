A RTShorterDistanceAttachPointAndCompositeShape assumes that the elements to be connected to or from have a composite shape

Here is an example:
-=-=-=-=-=-=-=-=-=
v := RTView new.
s1 := RTBox new color: Color red.
s2 := RTCompositeShape
        with: (RTBox new size: 20; color: Color green)
        with: (RTBox new color: Color blue).
s2 horizontal.
e1 := s1 elementOn: #atomic.
e2 := s2 elementOn: #composite.

e1 @ RTDraggable.
e2 @ RTDraggable.

attachPoint := RTShorterDistanceAttachPointAndCompositeShape new
						composedShapeSelection: #second.
e := RTLine new attachPoint: attachPoint; edgeFrom: e1 to: e2.
v add: e1; add: e2; add: e.
RTTreeLayout new doNotAttachPoint; on: v elements.
v
-=-=-=-=-=-=-=-=-=