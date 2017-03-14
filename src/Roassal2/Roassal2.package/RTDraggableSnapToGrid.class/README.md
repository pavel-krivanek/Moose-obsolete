I am an interaction which allows the element to be dragged in a steps of fixed size equivalent to the size of the grid.

If the view has RTGridView interaction, then I will use it's spacing instead.

Here is an example:
[[[
v := RTView new.

s := RTBox new size: 25; color: (Color blue alpha: 0.3).
es := s elementsOn: (1 to: 10).
v addAll: es.
RTGridLayout on: es.

es @ RTDraggableSnapToGrid.

v
]]]


When embedded within the RTInteractionBuilder (and thus by Mondrian):
[[[
b := RTMondrian new.

b interaction snapToGrid gridSize: 10.
b shape rectangle size: 25. 
b shape color: Color transparent.
b shape borderColor: Color black.
b nodes: (1 to: 9).
b layout grid.
b
]]]