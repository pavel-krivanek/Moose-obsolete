private
initialize
	"Used for queuing classes before running."
	queue := OrderedCollection new.
	"Used to store resulting FM3 elements."
	elements := OrderedCollection new.
	"Several dictionaries ... see #resolveObjectReference"
	packageDict := Dictionary new.
	classDict := Dictionary new.
	superclassDict := IdentityDictionary new.
	packMetaDict := IdentityDictionary new.
	typeDict := IdentityDictionary new.
	oppositeDict := IdentityDictionary new.
	packPropDict := IdentityDictionary new.
	mmClassDict := IdentityDictionary new.
	metaDict := Dictionary new.

	"Must use the cannonical primitives here!"
	"Please do not at these primitives to elements!"
	metaDict 
		at: 'String'
		put: FM3MetaDescription string.
	metaDict 
		at: 'Boolean'
		put: FM3MetaDescription boolean.
	metaDict 
		at: 'Number'
		put: FM3MetaDescription number.
	metaDict 
		at: 'Object'
		put: FM3MetaDescription object