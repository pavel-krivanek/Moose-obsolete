accessing
extendedSignatures
	"The signatures extended by this RedefinableTemplateSignature."
	^ extendedSignatures ifNil: [ extendedSignatures := OrderedCollection new ]