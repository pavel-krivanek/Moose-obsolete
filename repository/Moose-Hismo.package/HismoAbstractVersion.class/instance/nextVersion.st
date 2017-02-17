public interface
nextVersion
	
	| index |
	index := self history versions indexOf: self.
	index = self history versions size
		ifTrue: [^nil]
		ifFalse: [^self history versions at: index + 1]