private
ensurePackage: name
	| symbol |
	self assert: (name isSymbol or: [ name isString ]).
	symbol := name asString.
	^ packageDict
		at: symbol
		ifAbsentPut: [ | pack |
			pack := FM3PackageDescription new.
			pack name: symbol.
			elements add: pack.
			pack ]