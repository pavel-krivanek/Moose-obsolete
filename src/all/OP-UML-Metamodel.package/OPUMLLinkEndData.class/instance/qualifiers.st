accessing
qualifiers
	"A set of QualifierValues used to provide values for the qualifiers of the end."
	^ qualifiers ifNil: [ qualifiers := OrderedCollection new ]