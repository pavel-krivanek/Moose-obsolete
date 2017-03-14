accessing
withContinuos: fragmentKind fragmentsOfMinSize: minSize do: aBlock 
	 
	| index size | 
	index := minSize. 
	size := self size. 
	[index <= size] 
		whileTrue: 
			[(self isTrueAt: index) = fragmentKind 
				ifTrue: 
					[| currentSize last start end | 
					currentSize := 1. 
					last := fragmentKind.	"backword search" 
					[currentSize < minSize and: [last = fragmentKind]] 
						whileTrue: 
							[last := self isTrueAt: index - currentSize. 
							currentSize := currentSize + 1]. 
					start := index - currentSize 
						+ 
							(last = fragmentKind 
								ifTrue: [1] 
								ifFalse: [2]). 
					last := fragmentKind.	"forward search" 
					[index < size and: [last = fragmentKind]] 
						whileTrue: 
							[index := index + 1. 
							last := self isTrueAt: index]. 
					end := index 
						- 
							(last = fragmentKind 
								ifTrue: [0] 
								ifFalse: [1]). 
					currentSize := end - start + 1. 
					currentSize >= minSize ifTrue: [aBlock value: start value: end]]. 
			index := index + minSize]