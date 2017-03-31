analysis
createWaterForRoot: root
	| nextSet |
	"
		Be careful, why you call this method.
		I guess this is usefull when only debugging island gramamrs
	"
	nextSet := root nextSets at: self.
	defaultBeforeWaterParser := beforeWaterParser := self createBeforeWaterParserFromNextSet: nextSet.
	defaultAfterWaterParser := afterWaterParser := self createAfterWaterParserFromNextSet: nextSet.
	
