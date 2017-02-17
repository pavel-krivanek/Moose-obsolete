visiting
visitFM3MetaDescription: aFM3MetaDescription

	(self newMetaRepository includes: aFM3MetaDescription) ifTrue: [^ self ].

	newMetaRepository add: aFM3MetaDescription.
	aFM3MetaDescription attributes do: [ :eachProperty | eachProperty accept: self ].
	aFM3MetaDescription allSuperclasses do: [ :each | each accept: self ].
	aFM3MetaDescription package ifNotNil: [ :pack | pack accept: self ].