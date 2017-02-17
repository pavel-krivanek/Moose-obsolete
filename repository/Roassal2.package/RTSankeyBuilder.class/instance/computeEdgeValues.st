as yet unclassified
computeEdgeValues
	elements do: [ :el | | slinks tlinks sum |
		slinks := el connectedEdges select: [:ed | ed from = el].
		tlinks := el connectedEdges select: [:ed | ed to = el].
		sum := [ :arr | arr inject: 0 into: [ :s :each| 
			(each attributes at: #value) + s ] ].
		
		el attributes 
			at: #sourceLinks put: slinks;
			at: #targetLinks put: tlinks;
			at: #value put: ((sum value: slinks) max: (sum value: tlinks)).
		 ]