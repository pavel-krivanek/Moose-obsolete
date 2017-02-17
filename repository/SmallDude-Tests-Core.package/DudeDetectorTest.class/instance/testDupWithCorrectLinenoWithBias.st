testing
testDupWithCorrectLinenoWithBias
	| det mult ent1 ent2  dup ent1RefCode ent2RefCode |
	ent1 := DudeDummyEntity new
		name: 'aSource'
		code:
			' 

toto
{
aBiasLine
sdfs 
// dcjdfhj
}
titi
'.
	ent2 := DudeDummyEntity new
		name: 'otherSource'
		code:
			' toto
{
sdfs
}
aBiasLine
titi
'.
	det := DudeDetector
		new: DudeCStyleFiles
		from:
			{ent1.
			ent2}
		inModel: MooseModel new.
	mult := det getMultiplicationsWith: 3 withSizeOfExactChunk: 1 withLineBias: 2.
	self assert: mult size equals: 1.
	self assert: mult first duplications size equals: 1.
	dup := mult first duplications first.
	ent1RefCode := dup referenceCode entity = ent1
		ifTrue: [ dup referenceCode ] ifFalse: [ dup duplicateCode ].
	ent2RefCode := dup referenceCode entity = ent2
		ifTrue: [ dup referenceCode ] ifFalse: [ dup duplicateCode ].
	self assert: ent1RefCode beginLine equals: 3.
	self assert: ent1RefCode endLine equals: 9.
	self assert: ent1RefCode fragmentLength equals: 4.
	self assert: ent2RefCode beginLine equals: 1.
	self assert: ent2RefCode endLine equals: 6.
	self assert: ent2RefCode fragmentLength equals: 4.
	