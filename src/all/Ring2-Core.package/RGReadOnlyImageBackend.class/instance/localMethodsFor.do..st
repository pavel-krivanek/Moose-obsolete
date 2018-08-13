behavior
localMethodsFor: anRGBehavior do: aBlock

	(self realBehaviorFor: anRGBehavior) localMethods do: [:method |
		| def |
		def := self definitionFor: method ifAbsentRegister: [
			method asRingMinimalDefinitionIn: anRGBehavior environment].
		aBlock value: def]
