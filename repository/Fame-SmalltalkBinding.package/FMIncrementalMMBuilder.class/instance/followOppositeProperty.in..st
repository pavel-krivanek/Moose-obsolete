private-pragmas
followOppositeProperty: opposite in: aClassOrStringOrSymbol

	| aClass |
	aClass := self class environment
							at: aClassOrStringOrSymbol asString asSymbol.
	self pragmaProperty: opposite in: aClass followOpposite: false.
