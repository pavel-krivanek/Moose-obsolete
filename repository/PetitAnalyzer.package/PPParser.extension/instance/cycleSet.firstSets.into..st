*petitanalyzer-private
cycleSet: aStack firstSets: aDictionary into: aSet
	"PRIVATE: Try to find a cycle, where aStack contains the previously visited parsers. The method returns quickly when the receiver is a terminal, terminals cannot be part of a cycle. If aStack already contains the receiver, then we are in a cycle. In this case we don't process the children further and add the nodes to aSet."

	| index |
	self isTerminal
		ifTrue: [ ^ self ].	
	(index := aStack indexOf: self) > 0
		ifTrue: [ ^ aSet addAll: (aStack copyFrom: index to: aStack size) ].
	aStack addLast: self.
	(self cycleSet: aDictionary)
		do: [ :each | each cycleSet: aStack firstSets: aDictionary into: aSet ].
	aStack removeLast