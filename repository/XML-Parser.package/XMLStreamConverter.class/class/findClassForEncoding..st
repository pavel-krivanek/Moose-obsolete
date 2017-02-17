private
findClassForEncoding: anEncodingName
	"check preferred classes first"
	self preferredClasses do: [:each |
		(each canConvertEncoding: anEncodingName)
			ifTrue: [^ each]].

	"avoid #withAllSubclassesDo: because it does not enumerate the receiver first"
	(self isNonPreferredClassForEncoding: anEncodingName)
		ifTrue: [^ self].
	self allSubclassesDo: [:each |
		(each isNonPreferredClassForEncoding: anEncodingName)
			ifTrue: [^ each]].

	^ nil.