running
testPublicInterface
	self publicInterface do:
			[ :array | 
			| class constructors methods |
			class := self class environment at: array first ifAbsent: nil.
			constructors := array second.
			methods := array third.
			class notNil should beTrue.
			class category should beginWith: 'Fame'.
			constructors do:
					[ :sel | self assert: (class class allSelectors includes: sel) description: class name asString , ' class >> #' , sel ].
			methods do: [ :sel | self assert: (class allSelectors includes: sel) description: class name asString , ' >> #' , sel ] ]