accessing
inputCollection
	^ super inputCollection asArray collect: [:each | each asciiValue]