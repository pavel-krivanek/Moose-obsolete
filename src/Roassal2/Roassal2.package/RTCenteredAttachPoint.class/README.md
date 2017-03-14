Make the line start and ends from the center of the element.
This is the default attach point for lines.  Consider the following example:
[[[
v := RTView new.
es := (RTEllipse new size: 40) elementsOn: #(1 2).
es second translateBy: 100 @ 100.
es @ RTDraggable.
v addAll: es.
lineShape := RTLine new color: Color blue.
lineShape attachPoint: (RTCenteredAttachPoint instance).
v add: (lineShape edgeFrom: es first to: es second).
v
]]]