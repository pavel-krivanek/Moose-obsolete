comparing
= anObject
	self == anObject
		ifTrue: [^ true].

	self species == anObject species
		ifFalse: [^ false].

	self hasNamespaces
		ifFalse: [^ anObject hasNamespaces not].

	"use hasNamespaces first to avoid initializing anObject's prefixMappings"
	^ anObject hasNamespaces
		and: [prefixMappings = anObject prefixMappings].