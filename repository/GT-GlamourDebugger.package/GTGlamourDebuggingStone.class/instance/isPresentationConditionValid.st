testing receiver
isPresentationConditionValid

	^ (self session context receiver condition 
		ifNil: [ false ]
		ifNotNil: [ :aBlock |  aBlock printString ~= [true] printString ])