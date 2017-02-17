accessing
add: anElement
	anElement perform: opposite with: owner.
	self unsafeAdd: anElement.
	^ anElement