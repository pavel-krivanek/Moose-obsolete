sources
exampleArrowedBezier

| b v |
v := RTView new.
b := RTBundleBuilder new.
b view: v.
b explore: Collection using: #subclasses.
b bezier color: Color blue trans.
b useBezierlineWith: #dependentClasses.
b edgeBuilderDo: [ :ebuilder|
	ebuilder shape: (RTArrowedLine new line: b bezier; yourself).
	ebuilder connectToAll: #dependentClasses  ].
^ b