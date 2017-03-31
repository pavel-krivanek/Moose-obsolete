tests
testOppositePropertyExist
	| allSelector |

	allSelector := SystemNavigation new allMethods select: [:e | e hasPragmaNamed: #MSEProperty:type:opposite: ].

	self assert: (allSelector reject: [ :s || pragma |
							pragma := self msePropertyPragmaFor: s.
							[ pragma arguments second asClass includesSelector: pragma arguments third ]
							on: NotFound
							do: [ true ] "type: is not a class, e.g. FM3.Property"
						]) size
			equals: 0.
