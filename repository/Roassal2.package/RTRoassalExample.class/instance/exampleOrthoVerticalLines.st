sources
exampleOrthoVerticalLines

| v  eb |
v := RTView new.
v addAll: (RTBox elementsOn: Collection withAllSubclasses).

eb := RTEdgeBuilder new.
eb shape orthoVerticalLine.
eb view: v.
eb	
	objects: Collection withAllSubclasses;
	connectFrom: #superclass.

v elements @ RTDraggable @ RTPopup.
RTTreeLayout on: v elements.

	^ v