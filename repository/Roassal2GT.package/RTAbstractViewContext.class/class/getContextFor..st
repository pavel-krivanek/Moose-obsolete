private - utility
getContextFor: aView
	"Return the context associated to the view. It none is defined, then this method create one, and set it in view."
	^ aView attributeAt: #GlamourContext ifAbsentPut: [ self createContext ].
