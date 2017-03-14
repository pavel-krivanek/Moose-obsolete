adding
add: anElement

	(anElement perform: opposite) unsafeAdd: owner.
	(values includes: anElement) not ifTrue: [
		values add: anElement ].
	^anElement
	