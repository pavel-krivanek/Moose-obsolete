*Trachel
getInteractionsForClass: eventClass
	"Return the list of subscription for a given Event class"
	| answer |
	answer := OrderedCollection new.
	subscriptions do: [ :sub | 
		((sub subscriber class == eventClass) or: 
			[ sub subscriber class inheritsFrom: eventClass ]) ifTrue: [ answer add: sub subscriber ] ].
	^ answer