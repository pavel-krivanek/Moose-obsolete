navigation
asSmalltalkClassCollection
	^(self
		collect:
			[:each | 
			MooseUtilities
				smalltalkClassFromFamixClassName: each mooseName
				ifAbsent: [nil]]) select: #notNil