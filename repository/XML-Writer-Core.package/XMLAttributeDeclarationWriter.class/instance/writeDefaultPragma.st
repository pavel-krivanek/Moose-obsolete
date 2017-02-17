private
writeDefaultPragma
	self defaultPragma
		ifNotEmpty: [:pragma |
			self writer space.

			(pragma first == $#)
				ifFalse: [self writer nextPut: $#].

			self writer nextPutAll: pragma]