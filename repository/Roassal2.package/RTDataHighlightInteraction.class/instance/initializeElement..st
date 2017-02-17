hooks
initializeElement: element
	element
		when: TRMouseEnter
		do: [ :event | 
			RTBlink highlightElements: dataset elements color: color.
			RTBlink highlightElements: dataset elements outgoingEdges color: color.
			RTBlink highlight: legendElements first color: color.
			RTBlink highlight: legendElements second color: Color black ].
	element
		when: TRMouseLeave
		do: [ :event | 
			RTBlink unhighlightElements: dataset elements.
			RTBlink unhighlightElements: dataset elements outgoingEdges.
			RTBlink unhighlightElements: legendElements ]