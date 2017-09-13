accessing
enumeration: anEnumeration
	"The Enumeration that this EnumerationLiteral is a member of."
	enumeration := OPUMLToOneLink
		on: self identity
		update: #ownedLiterals
		from: enumeration
		to: anEnumeration