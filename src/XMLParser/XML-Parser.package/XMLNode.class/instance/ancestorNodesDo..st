enumerating
ancestorNodesDo: aBlock
	| ancestor |

	ancestor := self parent.
	[ancestor notNil]
		whileTrue: [
			aBlock value: ancestor.
			ancestor := ancestor parent].