private-anonymous classes
objectClass

	| class |
	class := Class new.
	class superclass: self.
	class setFormat: self format.
	class methodDict: MethodDictionary new.
	class methodDict at: #isRoot put: (self  methodNamed: #anonymousReturnTrue).
	class setName: 'AnonymousClass'.
	^class