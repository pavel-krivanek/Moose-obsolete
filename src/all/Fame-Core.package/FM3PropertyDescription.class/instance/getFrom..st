accessing-meta
getFrom: element
	"This method is meant to be used by the repository"

	| result |
	result := element mmGetProperty: self.
	^self isMultivalued 
		ifTrue: [ result ]
		ifFalse: [ result isNil 
			ifTrue: [ Array new ]
			ifFalse: [ Array with: result ] ].
