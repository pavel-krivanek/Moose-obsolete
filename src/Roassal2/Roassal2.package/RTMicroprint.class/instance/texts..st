as yet unclassified
texts: someTexts
	| aShape aRoassalLine |
	aShape := RTBox new.
	aShape width: [ :aText | (aText lines collect: #size) max ]. 
	aShape height: [ :aText | aText lines size ].
	view addAll: (aShape elementsOn: someTexts).
	view elements @ RTPopup.
	RTGridLayout new
		lineItemsCount: nbOfHorizontal;
		on: view elements.
	
	view elements do: [ :e |
		e model lines doWithIndex: [ :aLine :index | 
			rules do: [ :as |
				(as key match: aLine) ifTrue: [ 
					aRoassalLine := RTBox new color: as value; width: e encompassingRectangle width; height: 2; elementOn: aLine.
					view add: aRoassalLine.
					aRoassalLine @ RTPopup.
					aRoassalLine translateTo: e position + (0 @ (index - (e encompassingRectangle height / 2)))
				] ] 
		]
	]