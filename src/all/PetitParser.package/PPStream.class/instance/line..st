positioning
line: pos
	| nl |
	(pos = -1) ifTrue: [  ^ 0 ].
	(pos > readLimit) ifTrue: [ ^ self error: 'Out of limit' ].
	
	nl := self newlines.
	nl keysAndValuesDo: [ :index :value |
		(value > pos) ifTrue: [ ^ (index - 1)]
	].	

	^ nl size