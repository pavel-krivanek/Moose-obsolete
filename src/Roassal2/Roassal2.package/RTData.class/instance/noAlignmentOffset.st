obsolete
noAlignmentOffset

	"This offset is used when a stacked bar chart is used. This alignmentOffset may be removed in case the barchart has to be aligned with other data sets, such as line charts."
	"You should use this method in case you wish you combine the chart with line or dots. For example:
	
b := RTGrapher new.

d := RTData new.
d points: #(3 4 3.5).
d barShape.
d noAlignmentOffset.
b add: d.

d := RTData new.
d points: #(3 4 3.5).
d connectColor: Color red.
b add: d.

b
	"
	"alignmentOffset := 0"