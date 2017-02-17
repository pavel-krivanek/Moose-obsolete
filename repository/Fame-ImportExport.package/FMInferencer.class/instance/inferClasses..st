inferring
inferClasses: aString

	| selection |
	selection := self elements select: [ :each | each packageName = aString ].
	selection do: [ :elem |
		self inferClass: elem ].
	
	