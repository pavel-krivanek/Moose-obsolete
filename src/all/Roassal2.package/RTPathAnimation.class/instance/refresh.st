refreshing
refresh
	| t prev current key position |
	
	curves ifEmpty: [ ^ self ].
	t := animatedValue value.
	index := (t * curves size) ceiling.
	index < 1 ifTrue: [ index := 1 ].
	current := self position: index.
	t := (t  - ((index - 1) / curves size)) / (1 / curves size).
	prev := index = 1
		ifTrue: [ element attributes at: #op  ]
		ifFalse: [ (curves at: index-1) second first ].
	key := (curves at: index) first.
	position := nil.
	((key = #moveTo:) or: [ key = #lineTo: ])
		ifTrue: [ 
			position := self
				linear: prev
				to: current
				at: t ].
	key = #curveVia:and:to:
		ifTrue: [ position := self 
			cubic: prev 
			to: current
			at: t
			 ].
	position notNil ifTrue:[
		element translateTo: position.
		during rtValue: element.
		element signalUpdate.
		].
	