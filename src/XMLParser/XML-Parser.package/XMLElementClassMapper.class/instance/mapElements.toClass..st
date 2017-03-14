mapping
mapElements: anElementCollection toClass: aClass
	anElementCollection do: [:each |
		self
			mapElement: each
			toClass: aClass]