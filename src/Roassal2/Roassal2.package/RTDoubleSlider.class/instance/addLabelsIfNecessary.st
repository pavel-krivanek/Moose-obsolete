private
addLabelsIfNecessary
	| positionMin positionMax |
	labelled ifFalse: [ ^ self ].
	
	positionMin := (cursorMin position x - extremity1 position x)
		/ (extremity2 position x - extremity1 position x).
	positionMin := positionMin * (max - min) + min.
	positionMin := useIntegerLabel
		ifTrue: [ (positionMin round: 0) asInteger ]
		ifFalse: [ positionMin round: 2 ].
	positionMax := (cursorMax position x - extremity1 position x)
		/ (extremity2 position x - extremity1 position x).
	positionMax := positionMax * (max - min) + min.
	positionMax := useIntegerLabel
		ifTrue: [ (positionMax round: 0) asInteger ]
		ifFalse: [ positionMax round: 2 ].
	cursorMin @ (RTLabeled new text: positionMin).
	cursorMax @ (RTLabeled new text: positionMax)