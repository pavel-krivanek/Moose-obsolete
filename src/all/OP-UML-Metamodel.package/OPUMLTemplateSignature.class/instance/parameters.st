accessing
parameters
	"The ordered set of all formal TemplateParameters for this TemplateSignature."
	^ parameters ifNil: [ parameters := OrderedCollection new ]