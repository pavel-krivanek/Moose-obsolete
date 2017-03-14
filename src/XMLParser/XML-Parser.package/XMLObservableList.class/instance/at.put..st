accessing
at: anIndex put: anObject
	| oldObject |

	"Gemstone's OrderedCollection>>#at:put: allows the index to be
	just after the last, treating it like addLast:, so this is needed
	for compatbility"
	anIndex = (self size + 1)
		ifTrue: [^ self addLast: anObject].

	"this will raise an error if the index is invalid"
	oldObject := collection at: anIndex.

	"remove the old object and notify any observer"
	collection at: anIndex put: nil.
	oldObject
		ifNotNil: [self afterRemoving: oldObject].
	
	"now add the new object and notify any observer"
	collection at: anIndex put: anObject.
	self
		afterAdding: anObject
		at: anIndex.

	^ anObject.