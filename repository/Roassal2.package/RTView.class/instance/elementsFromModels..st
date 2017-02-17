accessing-computed
elementsFromModels: objects
	"
	:: Collection -> RTGroup
	var answer : RTGroup
	var t : Object
	var o : Object
	"
	"Return elements that corresponds to the objects provided as parameter. If none is found, then return an empty collection"
	| answer t |
	answer := RTGroup new.
	objects do: [ :o |
		t := self elementsFromModel: o.
		t notNil ifTrue: [ answer addAll: t ] ].
	^ answer