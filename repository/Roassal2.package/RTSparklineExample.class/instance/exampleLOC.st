sources
exampleLOC

| shape es v |
shape := RTSparkline new.
shape width: 80; height: 20.
shape values: [ :cls | (cls rtmethods collect: #numberOfLinesOfCode) sorted ].
es := shape elementsOn: RTShape withAllSubclasses.

es @ RTDraggable @ RTPopup.

v := RTView new.
v addAll: es.
RTGridLayout on: es.
^ v
