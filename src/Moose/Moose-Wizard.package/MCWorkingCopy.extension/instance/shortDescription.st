*Moose-Wizard
shortDescription

	^ self modified
		ifTrue: ['*', ancestry ancestorString]
		ifFalse: [ancestry ancestorString]