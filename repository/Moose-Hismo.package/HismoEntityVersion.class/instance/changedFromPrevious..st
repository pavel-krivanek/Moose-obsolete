public interface
changedFromPrevious: aBlock
	"returns true if the block returns different results when compared with the previous version"
	
	^self previousVersion isNil not
		and: [(aBlock value: self previousVersion) ~= (aBlock value: self)]