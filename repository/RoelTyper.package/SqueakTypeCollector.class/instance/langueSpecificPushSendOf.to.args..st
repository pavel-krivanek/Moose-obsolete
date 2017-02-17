heuristics
langueSpecificPushSendOf: selector to: rec args: args
	selector == #blockCopy: ifTrue: [^#block].
	(#(#// #quo: #rem: #\\ #ceiling #floor #rounded #roundTo: #truncated #truncateTo: #/ #+ #- #* #abs #negated #reciprocal)
		includes: selector)
		ifTrue:
			[^self
				tryUsing: rec
				for: selector
				ifNotUse: Number].
	(selector = #yourself) ifTrue: [^rec].
	(rec = #self and: [(theClass methodDict includesKey: selector)]) ifTrue: [^#return->selector].
	^#computed