copying
copyReplaceFrom: aStart to: aStop with: aReplacementCollection
	| copy start stop |

	(self size < 1
		or: [self size < aStart])
		ifTrue: [
			^ self copy
				addAll: aReplacementCollection;
				yourself].

	copy := self copyEmpty.
	start := aStart max: 1.
	stop := aStop min: self size.
	1 to: self size do: [:i |
		(i = start)
			ifTrue: [
				copy addAll: aReplacementCollection.
				start > stop
					ifTrue: [copy addLast: (self at: i)]]
			ifFalse: [
				(i > start and: [i <= stop])
					ifFalse: [copy addLast: (self at: i)]]].
	^ copy.