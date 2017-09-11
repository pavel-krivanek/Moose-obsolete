sources
exampleScatterplotMatrix
	<noTest>
	<gtExample>
| b data block d lb |
data := RTTabTable new input: (TRPlatform current downloadContent: 'http://mbostock.github.io/d3/talk/20111116/iris.csv') usingDelimiter: $,.
data 
	removeFirstRow;
	convertColumns: #( 2 3 4 5) to: #asNumber.

b := RTScatterplotMatrix new.

b objects: data values.

block := [ :n | n == n asInteger 
	ifTrue: [ n asInteger ] 
	ifFalse: [ n asFloat ] ].
b axisX 
	numberOfTicks: 5;
	rotateLabels;
	labelConversion: block.
b axisY 
	numberOfTicks: 5;
	labelConversion: block.

d := Dictionary newFromPairs: (Array 
	with: 'setosa' with: Color red
	with: 'versicolor' with: Color green
	with: 'virginica' with: Color blue ).
b shape circle
	size: 3.5;
	color: [ :a | d at: a first ].

b metrics
	at: 'Sepal length' put: #second;
	at: 'Sepal width' put: #third;
	at: 'Petal length' put: #fourth; 
	at: 'Petal width' put: #fifth.

b build.

lb := RTLegendBuilder new.
lb view: b view.
lb positionDo: [ :p |
	p 
		verticalPadding: -150;
		horizontalPadding: 50;
		outer; right; top; move ].
lb addText: 'Iris flower data set'.
d keys do: [ :k |lb addColor: (d at: k) text: 'Iris ', k ].
lb build.

^ b view
