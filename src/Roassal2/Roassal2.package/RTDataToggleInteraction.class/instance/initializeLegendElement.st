as yet unclassified
initializeLegendElement
	legendElements
		when: TRMouseLeftClick
		do: [ :event | 
			dataset elements anyOne view
				ifNil: [ dataset builder view addAll: dataset elements.
					dataset renderLinesFor: dataset elements in: dataset builder view.
					RTBlink unhighlightElements: legendElements.
					dataset builder view signalUpdate ]
				ifNotNil: [ dataset elements do: #remove.
					RTBlink highlight: legendElements first color: Color veryLightGray.
					RTBlink highlight: legendElements second color: Color veryLightGray.
					dataset builder view signalUpdate ] ]