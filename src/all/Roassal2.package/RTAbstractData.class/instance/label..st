accessing
label: aString
	"Give a label to the code base. This is useful when a legend is rendered. Here is an example:
	
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

"
	label := aString