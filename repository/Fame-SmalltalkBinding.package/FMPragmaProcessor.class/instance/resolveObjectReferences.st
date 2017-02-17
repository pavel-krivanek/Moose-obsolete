private
resolveObjectReferences

	"establish class-package links"
	packMetaDict keysAndValuesDo: [ :meta :value |
		meta package: (self ensurePackage: value)
	].
	"establish property-package links"
	packPropDict keysAndValuesDo: [ :prop :value |
		prop package: (self ensurePackage: value)
	].
	"establish property-class associations"
	mmClassDict keysAndValuesDo: [ :prop :value |
		prop mmClass: (self ensureClass: value)
	].
	"map classes by full name"
	self classes do: [ :meta |
		metaDict at: meta fullName asString put: meta.
	].
	"establish class-superclass associations"
	superclassDict keysAndValuesDo: [ :meta :value |
		meta superclass: (self ensureClass: value).
	].	
	"establish property-type-oppoiste relations"
	typeDict keysAndValuesDo: [ :prop :value |
		prop type: (self ensureClass: value).
	].
	" Fill in oppositelinks"
	oppositeDict keysAndValuesDo: [ :prop :oppName |
		prop opposite: (prop type attributeNamed: oppName)
	]