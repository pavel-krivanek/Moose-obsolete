accessing-computed
elementFromModel: anObject
	"
	:: Object -> RTElement
	"
	"Return an element that corresponds to the object provided as parameter. If none is found, then return nil"
	^ elements elementFromModel: anObject
