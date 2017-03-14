printing
printOn: aStream
	| actionClass label |
	
	actionClass := self debugActionClass asSymbol asClass.
	label := actionClass new label.
	label ifNotEmpty: [ aStream nextPutAll: label ] ifEmpty: [ super printOn: aStream ].
	self isExecuted
		ifTrue: [ aStream nextPutAll: ' (executed)' ]
		ifFalse: [ aStream nextPutAll: ' (about to execute)' ]