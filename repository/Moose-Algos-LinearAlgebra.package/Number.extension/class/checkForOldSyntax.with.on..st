*Moose-Algos-LinearAlgebra
checkForOldSyntax: t1 with: t2 on: t3
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point 
	to an incorrect position in the file. The file may have been modified after 
	this method was updated."
	
	(t3 atEnd not and: [t3 peekFor: $.])
		ifTrue:
			[(t3 atEnd not
				and:
					[t3 peek digitValue
						between: 0
						and: t1 - 1])
				ifTrue:
					[self
						error:
							#errRadixDecimal << #dialogs >>
									'Non-radix 10 numbers may not contain decimal points']
				ifFalse: [t3 skip: -1]].
	(t3 atEnd not and: [t3 peek asLowercase = $e])
		ifTrue:
			[self
				error:
					#errRadixExponent << #dialogs >>
							'Non-radix 10 numbers may not have an exponent'].
	^t2