accessing
legend
	"Turn on the legend for the graph. In addition, the returned value can be used to complete the legend. Consider the following code:
	
-=-=-=-=
g := RTGrapher new.
d := RTData new.
d label: 'Collection code'.
d dotShape color: Color red trans.
d points: (Collection withAllSubclasses).
d x: #numberOfLinesOfCode.
d y: #numberOfMethods.
g add: d.

d := RTData new.
d label: 'Roassal code'.
d dotShape color: Color blue trans.
d points: (RTObject withAllSubclasses).
d x: #numberOfLinesOfCode.
d y: #numberOfMethods.
g add: d.

g axisX noDecimal; title: 'Number of lines of code'; withThousandsSeparator.
g axisY noDecimal; title: 'Number of Methods'.

g legend addText: 'Collection vs Roassal code base'.
g
-=-=-=-=

	"
	^ legendBuilder
		ifNil: [ self resetLegend.
			legendBuilder ]