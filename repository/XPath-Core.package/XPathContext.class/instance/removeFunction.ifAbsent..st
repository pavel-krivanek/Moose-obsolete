removing
removeFunction: aFunction ifAbsent: aBlock
	"use copy-on-write so the default function set isn't modified"
	^ self copiedFunctions
		remove: aFunction
		ifAbsent: aBlock