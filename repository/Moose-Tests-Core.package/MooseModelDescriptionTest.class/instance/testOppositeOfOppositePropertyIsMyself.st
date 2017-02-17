tests
testOppositeOfOppositePropertyIsMyself
	| allSelector dictOpposite |

	allSelector := SystemNavigation new allMethods select: [:e | e hasPragmaNamed: #MSEProperty:type:opposite: ].

	dictOpposite := Dictionary new.
	allSelector do: [ :s || pragma |
		pragma := self msePropertyPragmaFor: s.
		dictOpposite at: (pragma arguments second -> pragma arguments third) put: s selector
	].
	self assert: (allSelector reject: [ :s || pragma |
							pragma := self msePropertyPragmaFor: s.
							[(dictOpposite at: (s methodClass -> s selector)) = (pragma arguments third)]
							on: KeyNotFound
							do: [ true ] "ignore, will be treated by testOppositePropertyExist"
						]) size
			equals: 0.
