*Moose-Algos-LinearAlgebra
readSmalltalkRadix: t1 from: t2
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point 
	to an incorrect position in the file. The file may have been modified after 
	this method was updated."
	
	t1 < 2 ifTrue: [^self error: #INVALIDRADIX << #dialogs >> 'INVALID RADIX'].
	(t2 atEnd
		or:
			[(t2 peek digitValue
				between: 0
				and: t1 - 1) not])
		ifTrue:
			[t2 skip: -1.
			^t1].
	^self readIntegerFrom: t2 radix: t1