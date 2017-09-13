sources
exampleSpecialEdgeMarkers
|v from to edge|
v := RTView new.

from := OPUmlNameLabel new text: 'filledDiamondWith: ''Q'''.
to := OPUmlNameLabel new text: 'emptyDiamondWith:''C'''.

(edge := OPUmlEdge new)
source: from;
target: to;
headDecorator: (OPUmlEdgeMarkers emptyDiamondWith: 'C');
tailDecorator: (OPUmlEdgeMarkers filledDiamondWith: 'Q').

from renderIn: v.
to renderIn: v.
edge renderIn: v.

from rtElement @ RTDraggable.
to rtElement @ RTDraggable.

to translateBy: 200 @ 50.

^ v @ RTEmptyViewContextInteraction 