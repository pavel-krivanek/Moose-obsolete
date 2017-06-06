accessing-meta
getFrom: element
	"This method is meant to be used by the repository"

	| result |
	result := element mmGetProperty: self.
	^ self isMultivalued
		ifTrue: [ result ]
		ifFalse: [ result ifNil: [ Array new ] ifNotNil: [ Array with: result ] ]