enumerating
ancestorElementsDo: aBlock
	| ancestor |

	ancestor := self parent.
	[ancestor notNil
		and: [ancestor isElement]]
		whileTrue: [
			aBlock value: ancestor.
			ancestor := ancestor parent].