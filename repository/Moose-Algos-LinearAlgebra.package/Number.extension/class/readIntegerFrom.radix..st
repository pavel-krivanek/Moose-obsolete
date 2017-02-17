*Moose-Algos-LinearAlgebra
readIntegerFrom: t1 radix: t2
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point 
	to an incorrect position in the file. The file may have been modified after 
	this method was updated."
	
	| t3 t4 |
	t4 := 0.
	[t1 atEnd]
		whileFalse:
			[((t3 := t1 next digitValue) < 0 or: [t3 >= t2])
				ifTrue:
					[t1 skip: -1.
					^t4].
			t4 := t4 * t2 + t3].
	^t4