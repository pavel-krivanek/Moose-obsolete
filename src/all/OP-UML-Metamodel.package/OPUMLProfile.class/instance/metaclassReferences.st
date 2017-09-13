accessing
metaclassReferences
	"References a metaclass that may be extended."
	^ metaclassReferences ifNil: [ metaclassReferences := OrderedCollection new ]