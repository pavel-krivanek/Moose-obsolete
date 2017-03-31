private
computeClassHistoriesPresentInTheLastVersion
	"self computeClassHistories"
	
	^self computeClassHistories
		select:
			[:each | each versions last referenceVersion = self versions last referenceVersion]