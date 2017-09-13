accessing
redefinedElements
	"The RedefinableElement that is being redefined by this element."
	^ redefinedElements ifNil: [ redefinedElements := OrderedCollection new ]