accessing
roles
	"The roles that instances may play in this StructuredClassifier."
	^ roles ifNil: [ roles := OrderedCollection new ]