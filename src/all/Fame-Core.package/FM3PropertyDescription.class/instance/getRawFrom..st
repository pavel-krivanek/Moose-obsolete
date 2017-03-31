accessing-meta
getRawFrom: element
	"This is internal logic for retrieving the actual value of a property from an element.
	By default call the implementing selector."

	^ element perform: self implementingSelector