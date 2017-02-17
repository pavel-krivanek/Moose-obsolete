positioning
column: pos
	| nl |
	(pos = -1) ifTrue: [  ^ 0 ].
	(pos > readLimit) ifTrue: [ ^ self error: 'Out of limit' ].
	
	nl := self newlines.
	1 to: nl size do: [ :index | 
		((nl at: index) > pos) ifTrue: [ ^ pos - (nl at: (index - 1)) + 1 ]
	].
"	nl keysAndValuesDo: [ :index :value |
		(value > pos) ifTrue: [ ^ pos - (nl at: (index - 1)) + 1]
	].	
"
	^ pos - (nl at: (nl size )) + 1