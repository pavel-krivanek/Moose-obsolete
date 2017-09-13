accessing
attributes
	"All of the Properties that are direct (i.e., not inherited or imported) attributes of the Classifier."
	^ attributes ifNil: [ attributes := OrderedCollection new ]