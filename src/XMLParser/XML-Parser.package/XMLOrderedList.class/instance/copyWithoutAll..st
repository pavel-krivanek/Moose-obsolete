copying
copyWithoutAll: aCollection
	| rejected |

	rejected :=
		aCollection size > 5
			ifTrue: [aCollection asSet]
			ifFalse: [aCollection].
	^ self reject: [:each | rejected includes: each].