public interface
previousVersion
	
	| index |
	index := self history versions indexOf: self.
	index = 1
		ifTrue: [^nil]
		ifFalse: [^self history versions at: index - 1]