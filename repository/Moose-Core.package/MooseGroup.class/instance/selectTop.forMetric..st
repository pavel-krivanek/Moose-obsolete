public interface
selectTop: aFraction forMetric: aSymbolOrBlock
	"select top xx entities with highest metric value in the group. Useful to easily check the 80/20 rule.
	For example:
		self selectTop: 0.20 forMetric: #numberOfLinesOfCode
	returns the top 20% entities in number of lines of code"
	
	| topsSize sorted tops cutValue i |
	self assert: (aFraction >= 0 and: [aFraction <= 1]).
	topsSize := (self size * aFraction) ceiling. "number of entities to select"
	topsSize isZero ifTrue: [ ^ MooseGroup new ].
	sorted := self asSortedCollection: [:a :b | (aSymbolOrBlock value: a) > (aSymbolOrBlock value: b)].
	tops := sorted copyFrom: 1 to: topsSize.

	"We check whether next elements should be retrieved, because their value matches the one of the last element which made the cut."
	cutValue := aSymbolOrBlock value: (sorted at: topsSize).
	i := topsSize + 1.
	[ i <= sorted size and: [ (aSymbolOrBlock value: (sorted at: i)) = cutValue ]]
		whileTrue: [
			tops add: (sorted at: i).
			i := i + 1 ].
	^ MoosePropertyGroup withAll: tops from: self using: aSymbolOrBlock