lastPopup
lastPopup: anObject
	"Typically, the argument is an RTGroup. But it could be an RTElement or any morph (which happens if the platform popup is used)"

	anObject class == RTGroup
		ifTrue: [ lastPopup := WeakArray withAll: anObject.
			^ self ].
	lastPopup := WeakArray with: anObject