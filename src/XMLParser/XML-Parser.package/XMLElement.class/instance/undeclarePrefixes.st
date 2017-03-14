namespacing
undeclarePrefixes
	self declaredPrefixes do: [:each |
		self undeclarePrefix: each]