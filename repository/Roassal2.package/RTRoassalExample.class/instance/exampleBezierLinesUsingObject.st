sources
exampleBezierLinesUsingObject

| v  es assocs centralPoint eb |
v := RTView new.
es := (RTEllipse new size: 15) elementsOn: (1 to: 15).
v addAll: es.
RTCircleLayout on: es.

centralPoint := (RTEllipse new size: 10; color: Color red) elementOn: -1.
centralPoint translateTo: es encompassingRectangle center.
v add: centralPoint.
centralPoint @ RTDraggable.

es @ RTLabeled.

eb := RTEdgeBuilder new.
eb view: v.
eb shape bezierLineUsingObjects: #( -1 ) inView: v.
assocs := OrderedCollection new.
assocs add: 1->10.
assocs add: 2 -> 10.
assocs add: 3 -> 10.
assocs add: 5-> 10.
eb useAssociations: assocs.

^ v