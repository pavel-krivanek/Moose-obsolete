tests
testNewMetaclassTrait

	| trait baseTrait | 
	trait  := RGMetaclassTrait unnamed.
	self assert: (trait isRingResolved).
	self assert: (trait hasUnresolved: #baseTrait).
	self assert: (trait isTrait).
	
	baseTrait  := RGTrait parent: trait environment.
	trait baseTrait: baseTrait.
	self assert: (trait hasResolved: #baseTrait).
	self assert: (trait baseTrait == baseTrait).
