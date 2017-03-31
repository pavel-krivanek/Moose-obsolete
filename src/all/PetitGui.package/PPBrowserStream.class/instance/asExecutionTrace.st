converting
asExecutionTrace
	| trace |
	trace := OrderedCollection new: parsers size.
	1 to: parsers size do: [ :index | 
		| parser |
		parser := parsers at: index.
		parser name
			ifNotNil: [ 
				| start stop |
				start := positions at: index.
				stop := positions at: index + 1 ifAbsent: [ self size ].
				trace addLast: (Array with: parser with: start with: stop) ] ].
	^ trace