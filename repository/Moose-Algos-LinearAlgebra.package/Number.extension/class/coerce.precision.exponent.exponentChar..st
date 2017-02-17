*Moose-Algos-LinearAlgebra
coerce: t1 precision: t2 exponent: t3 exponentChar: t4
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point 
	to an incorrect position in the file. The file may have been modified after 
	this method was updated."

	t3 ifNil: [ ^ self zero coerce: t1 ].
	^ (self zero coerce: t1) * (10 raisedTo: t3)