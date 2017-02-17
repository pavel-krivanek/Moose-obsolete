lists
orderedListMarker
	^ #digit asParser plus, ($. asParser / $) asParser) 
	
	==> [ :e | 'ol' ]
