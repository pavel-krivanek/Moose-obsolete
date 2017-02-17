visiting
acceptFamePackage: famePackage
	self flag: #classExtensionNotSupported. "currently the generator does not handle extension to other packages. More precisely it can not handle incremental changes to existing methods, although it should be possible with the rewrite engine."
	self visitPackage: famePackage.
	famePackage classes do: [ :fameClass |
		self acceptFameClass: fameClass ]