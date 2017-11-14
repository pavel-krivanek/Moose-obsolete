sources
exampleIris
|  table g d |
table := RTTable inputWithComma: RTDatasets iris.
table removeFirstRow.
table convertColumnsToFloat: (1 to: 4).

g := RTGrapher new.
d := RTData new.
d dotShape 
	if: [ :row | row last = 'virginica' ] fillColor: Color blue trans;
	if: [ :row | row last = 'setosa' ] fillColor: Color red trans.
d points: table values.
d x: #first.
d y: #third.
g add: d.

^ g