accessing
attributeAt: aKey
	"Returns attribute with given key, nil if attribute is absent."
	^ attributes at: aKey ifAbsent: [ nil ].