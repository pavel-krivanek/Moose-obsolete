inferring
inferPackages

	self packageNames do: [ :name |
		self inferPackage: name.
	]