private
computeElementsValues
	elements do: [ :el | | slinks tlinks sum |
		slinks := el attributes at: #sourceLinks.
		tlinks := el attributes at: #targetLinks.
		sum  := [ :arr | arr inject: 0 into: [ :s :e | (e attributes at: #value) + s] ].
		el attributes
			at: #value put: ((sum value: slinks) max: (sum value: tlinks)).
		 ].