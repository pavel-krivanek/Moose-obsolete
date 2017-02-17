accessing
step

	(stopCondition value: self )
		ifTrue: [ finishAction value: self ] 
		ifFalse: [ stepAction value: self  ]