tests
testMerge

	| info c1 t1 |
	
	c1 := StatefulTraitsTestingMergedClass.
	t1 := StatefulTraitsTestingTrait1.
	
	self assert: StatefulTraitsTestingMergedClass slotNames sorted equals: #(var1 var2).
	self assert: StatefulTraitsTestingMergedClass localSelectors sorted equals: #(var1 var1: var2 var2:).
	self assert: StatefulTraitsTestingMergedClass class localSelectors isEmpty.
	
	
	info := StatefulTraitsMergedClassInfo on: c1.
	info addTrait: t1.
	info merge.
	
	self assert: StatefulTraitsTestingMergedClass slotNames sorted equals: #(director traitVar1 traitVar2 var1 var2).
	self assert: StatefulTraitsTestingMergedClass localSelectors sorted equals: #(StatefulTraitsTestingTrait1_initializeTrait
traitVar1
traitVar1:
traitVar2
traitVar2:
var1
var1:
var2
var2:).

	self assert: StatefulTraitsTestingMergedClass class localSelectors sorted equals: #(aClassSideMethod).
	
	

	
	
	