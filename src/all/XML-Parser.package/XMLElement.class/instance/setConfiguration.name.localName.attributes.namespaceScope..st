private
setConfiguration: aConfiguration name: aName localName: aLocalName attributes: anAttributeDictionary namespaceScope: aNamespaceScope
	"This should only be sent by DOM parsers/builders, not public API users"

	configuration := aConfiguration.
	name := aName.
	localName := aLocalName.
	anAttributeDictionary size > 0 "optimization"
		ifTrue: [
			"This consumes anAttributeDictionary, so it can never be used
			again safely"
			(attributes :=
				self attributeListClass new: anAttributeDictionary size)
				observer: self;
				setAttributesFromOrderPreservingDictionary: 
					anAttributeDictionary].
	namespaceScope := aNamespaceScope.