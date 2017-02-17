private
checkForReservedAttributesIn: anOrderPreservingDictionary afterIndex: anIndex
	"validation may add attributes, so this is used to check if reserved
	attributes were added that need handling when there weren't any before"

	self hasUnhandledReservedAttributes
		ifTrue: [^ self].
	anIndex + 1
		to: anOrderPreservingDictionary size
		do: [:i |
			(anOrderPreservingDictionary keyAtIndex: i) isXMLReservedAttributeName
				ifTrue: [^ self haveUnhandledReservedAttributes]].