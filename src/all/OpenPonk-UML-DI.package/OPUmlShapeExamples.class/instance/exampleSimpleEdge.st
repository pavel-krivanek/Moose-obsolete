sources
exampleSimpleEdge
|v from to edge|
v := RTView new.

from := OPUmlNameLabel new text: 'from'.

to := OPUmlNameLabel new text: 'to'.

(edge := OPUmlEdge new)
	source: from;
	target: to;
	headDecorator: RTEmptyNarrowArrow;
	tailDecorator: RTFilledDiamond
	.

from renderIn: v.
to renderIn: v.
edge renderIn: v.

from rtElement @ RTDraggable.
to rtElement @ RTDraggable.

to translateBy: 100 @ 50.

^ v