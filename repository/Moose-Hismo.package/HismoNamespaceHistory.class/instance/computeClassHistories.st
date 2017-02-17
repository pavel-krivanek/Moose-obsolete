private
computeClassHistories
	"self computeClassHistories"
	| theClassHistories |
	theClassHistories := HismoClassHistoryGroup new.
	versions do: 
		[ :eachVersion | 
		eachVersion classesDo: [ :eachClass | (theClassHistories at: eachClass mooseName) addLast: eachClass ] ].
	^ theClassHistories