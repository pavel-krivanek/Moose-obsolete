copying
postCopy
	super postCopy.

	namespaceScope
		ifNotNil: [namespaceScope := namespaceScope copy].
	attributes
		ifNotNil: [| copiedAttributes |
			copiedAttributes := attributes copyEmpty observer: self.
			attributes do: [:each | copiedAttributes addLast: each copy].
			attributes := copiedAttributes].