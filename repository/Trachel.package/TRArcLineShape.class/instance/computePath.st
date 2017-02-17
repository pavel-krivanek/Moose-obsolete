private
computePath
	path := self athensCanvas
		createPath:
			[ :builder | 
			builder
				absolute;
				moveTo: line from.
			distance > 0
				ifTrue: [ builder
						ccwArcTo: normal to angle: alpha;
						ccwArcTo: line to angle: alpha ]
				ifFalse: [ builder
						cwArcTo: normal to angle: alpha;
						cwArcTo: line to angle: alpha ] ]