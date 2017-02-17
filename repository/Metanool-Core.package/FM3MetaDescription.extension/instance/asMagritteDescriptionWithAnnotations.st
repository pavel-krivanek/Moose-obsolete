*metanool-core
asMagritteDescriptionWithAnnotations

	| description |
	description := MAContainer new.
	description label: self name.
	self allAttributes do: [ :attribute | 
		(attribute isKindOf: MTLAnnotationDescription) ifTrue: [
			description add: attribute asMagritteDescription ] ].
	^ description