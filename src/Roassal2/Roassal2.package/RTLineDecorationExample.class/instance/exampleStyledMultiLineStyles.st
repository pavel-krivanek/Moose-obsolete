sources
exampleStyledMultiLineStyles
|view addStyle styles|
view := RTView new.

addStyle := [ :aStyleName |
	| e1 e2 l1 |
	e1 := RTBox new element.
	e2 := RTBox new element.
	l1 := RTStyledMultiLine new
		color: Color black;
		perform: aStyleName asSymbol;
		edgeFrom: e1 to: e2.
	l1 model: aStyleName.
	view addAll: (Array with: e1 with: e2 with: l1).

	l1 @ (RTLabeled new color: Color black).
].

styles := (RTStyledMultiLine rtmethods collect: [ :m | m selector ]) select: [ :m | m endsWith: 'Line' ].
styles do: [ :id | addStyle value: id ].

RTGridLayout new
	gapSize: 50;
	lineItemsCount: 2; on: view elements.

view elements pairsDo: [ :a :b | b translateBy: 100 @ 0 ].

^ view