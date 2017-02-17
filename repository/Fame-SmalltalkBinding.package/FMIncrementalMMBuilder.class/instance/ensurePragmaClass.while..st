private-pragmas
ensurePragmaClass: aClass while: aBlock

	| pragma pakPragma className superclass |
	pragma := self retrieveClassPragma: aClass.
	className := pragma argumentAt: 1.
	superclass := self ensurePragmaSuperclass: (pragma argumentAt: 2).
	superclassDict 	at: (self resolveFameName: aClass)
					put: (self resolveFameName: superclass).

	pakPragma := self retrievePackagePragma: pragma.
	pakPragma
		ifNotNil: [ 
			self
				ensureEnv: (self ensurePackage: (pakPragma argumentAt: 1))
				while: [ self ensureEnv: (self ensureClass: className) while: aBlock ] ]
		ifNil: [ self ensureEnv: (self ensureClass: className) while: aBlock ].
