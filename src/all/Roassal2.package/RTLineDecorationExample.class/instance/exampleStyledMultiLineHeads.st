sources
exampleStyledMultiLineHeads
|view addHead heads offset|
view := RTView new.
addHead := [ :aHeadName :anOffset |
	| e1 e2 l1 |
	e1 := RTBox new element.
	e2 := RTBox new element.
	l1 := RTStyledMultiLine new
		color: Color black;
		perform: aHeadName asSymbol;
		edgeFrom: e1 to: e2.
	l1 model: aHeadName.
	view addAll: (Array with: e1 with: e2 with: l1).

	e1 translateBy: -110 @ anOffset.
	e2 translateBy: 110 @ anOffset.

	l1 @ (RTLabeled new color: Color black) ].

heads := (RTStyledMultiLine rtmethods collect: [ :m | m selector ]) select: [ :m | m endsWith: 'Head' ].
offset := 0.
heads	do: [ :id | 
		addHead value: id value: offset.
		offset := offset + 40 ].

^ view
