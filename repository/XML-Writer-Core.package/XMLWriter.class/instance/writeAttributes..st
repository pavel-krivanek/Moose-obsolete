private
writeAttributes: anAttributeCollection
	self isCanonical
		ifTrue: [anAttributeCollection writeCanonicalAttributesOn: self]
		ifFalse: [anAttributeCollection writeAttributesOn: self]