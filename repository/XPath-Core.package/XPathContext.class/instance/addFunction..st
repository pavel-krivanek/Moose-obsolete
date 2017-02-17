adding
addFunction: aFunction
	"use copy-on-write so the default function set isn't modified"
	^ self copiedFunctions add: aFunction