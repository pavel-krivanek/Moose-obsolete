accessing
relatedElements
	"Specifies the elements related by the Relationship."
	^ relatedElements ifNil: [ relatedElements := OrderedCollection new ]