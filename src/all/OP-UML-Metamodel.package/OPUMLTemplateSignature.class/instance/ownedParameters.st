accessing
ownedParameters
	"The formal parameters that are owned by this TemplateSignature."
	^ ownedParameters ifNil: [ ownedParameters := OPUMLToManyLinks on: self identity opposite: #signature: ]