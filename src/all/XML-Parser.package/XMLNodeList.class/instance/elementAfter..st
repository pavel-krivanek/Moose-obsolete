accessing
elementAfter: anElement
	| last |

	self elementsDo: [:each |
		last = anElement
			ifTrue: [^ each].
		last := each].
	^ self defaultValue.