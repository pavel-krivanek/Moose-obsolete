tokenizing - expecting
expectTerminator
	| nextChar |

	(nextChar := streamReader next) == $>
		ifFalse: [self errorExpectedTerminatorButGot: nextChar]