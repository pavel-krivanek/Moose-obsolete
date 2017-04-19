initialization
highlightElementsUsing: string
	"Highlight some elements depending on the entered string.
	String has to be a regular expression"
	string ifEmpty: [ ^ self processEmptyString ].
	(self getRelevantElementsFor: string)
		do: [ :e | 
			self rememberPreviousColorIfNecessaryFor: e.
			e trachelShape color: self currentColor ].
	self increaseColorIndex.
	view signalUpdate