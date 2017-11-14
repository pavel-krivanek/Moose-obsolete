namespacing
undeclarePrefixes
	self ensureUsesNamespaces.
	self declaredPrefixes do: [:each |
		self undeclarePrefix: each].