accessing
elementBefore: anElement
	| last |

	last := self defaultValue.
	self elementsDo: [:each |
		each = anElement
			ifTrue: [^ last].
		last := each].
	^ self defaultValue.