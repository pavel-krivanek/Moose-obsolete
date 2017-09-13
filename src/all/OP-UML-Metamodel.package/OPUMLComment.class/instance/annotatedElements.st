accessing
annotatedElements
	"References the Element(s) being commented."
	^ annotatedElements ifNil: [ annotatedElements := OrderedCollection new ]