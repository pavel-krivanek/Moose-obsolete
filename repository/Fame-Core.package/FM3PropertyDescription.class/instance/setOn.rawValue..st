accessing-meta
setOn: element rawValue: array
	"This is the internal logic to set the value inside the object.
	By default build and call a mutator for the implementing selector"
	
	element perform: self implementingSelector asMutator with: array