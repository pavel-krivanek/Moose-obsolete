tests
testDefaultValue

	| unresolved | 
	
	unresolved := RGUnresolvedValue new.
	self deny: unresolved isRingResolved.
	self deny: unresolved isRingFullyResolved.
	self assert: unresolved isRingFullyUnresolved.
	self assert: unresolved value isNil.
	self assert: unresolved value isRingResolved.
	
	unresolved := RGUnresolvedValue new default: #someObject.
	self deny: unresolved isRingResolved.
	self assert: unresolved value equals: #someObject.
	self assert: unresolved value isRingResolved.
	
	unresolved := RGUnresolvedValue new default: #someObject.
	self deny: unresolved isRingResolved.
	self assert: unresolved value equals: #someObject.
	self assert: unresolved value isRingResolved.

	unresolved := RGUnresolvedValue recursive.
	self deny: unresolved isRingResolved.
	self deny: unresolved value isRingResolved.
