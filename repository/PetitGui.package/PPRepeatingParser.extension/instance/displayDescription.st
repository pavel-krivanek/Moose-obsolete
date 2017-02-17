*petitgui-accessing
displayDescription
	^ String streamContents: [ :stream |
		min = 0 
			ifFalse: [ stream print: min; nextPutAll: '..' ].
		max = SmallInteger maxVal
			ifTrue: [ stream nextPut: $* ]
			ifFalse: [ stream print: max ] ]