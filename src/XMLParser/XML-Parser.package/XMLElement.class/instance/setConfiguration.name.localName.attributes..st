private
setConfiguration: aConfiguration name: aName localName: aLocalName attributes: anOrderPreservingDictionary
	"This should only be sent by DOM parsers/builders, not public API users"

	configuration := aConfiguration.
	name := aName.
	localName := aLocalName.
	anOrderPreservingDictionary size > 0 "optimization"
		ifTrue: [
			"This consumes anOrderPreservingDictionary, so it can never be used
			again safely"
			(attributes :=
				self attributeListClass new: anOrderPreservingDictionary size)
				observer: self;
				setAttributesFromOrderPreservingDictionary: 
					anOrderPreservingDictionary].