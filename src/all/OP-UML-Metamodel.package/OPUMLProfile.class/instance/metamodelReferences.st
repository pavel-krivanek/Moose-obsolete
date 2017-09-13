accessing
metamodelReferences
	"References a package containing (directly or indirectly) metaclasses that may be extended."
	^ metamodelReferences ifNil: [ metamodelReferences := OrderedCollection new ]