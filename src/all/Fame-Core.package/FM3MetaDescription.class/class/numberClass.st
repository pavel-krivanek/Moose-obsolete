private-anonymous classes
numberClass

	| class |
	class := Class new.
	class superclass: self.
	class setFormat: self format.
	class methodDict: MethodDictionary new.
	class methodDict at: #isPrimitive put: (self methodNamed: #anonymousReturnTrue).
	class setName: 'AnonymousClass'.
	^class