Define a range for GT

-=-=-=
g := RTGrapher new.
g view: RTView new.
ds := RTData new.
ds dotShape color: Color blue trans.
ds points: RTShape withAllSubclasses.
ds y: [ :cls | cls numberOfMethods - 50 ].
ds x: [ :cls | cls numberOfLinesOfCode - 150 ].
g add: ds.

RTGrapherSelectRangeViewContext onGrapher: g callback: [ :elements |  (g view attributeAt: #presentation) selection: elements ].

g 
-=-=-=
