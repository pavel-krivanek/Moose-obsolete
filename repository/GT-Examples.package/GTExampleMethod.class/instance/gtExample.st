accessing-dynamic
gtExample
	^ self hasExample 
		ifTrue: [ self method gtExample ]
		ifFalse: [ nil ]