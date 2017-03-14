public - condition
if: blockCondition then: thenLayout
	^ self ifElement: [ :anElement | blockCondition rtValue: anElement model ] then: thenLayout