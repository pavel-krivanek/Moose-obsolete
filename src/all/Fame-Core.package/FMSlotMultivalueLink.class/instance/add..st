accessing
add: anElement

	slot add: anElement to: owner.
	self unsafeAdd: anElement.
	^ anElement