public interface
selectCover: aFraction forMetric: aSymbolOrBlock
	"select biggest entities which cover aFraction of the metric property for the whole group. Useful to easily check the 80/20 rule for example:
		self selectCover: 0.80 forMetric: #numberOfLinesOfCode
	returns the entities which cover 80% of the code base in number of lines of code"
	
	| cutValue sorted tops sum i |
	self assert: (aFraction >= 0 and: [aFraction <= 1]).
	cutValue := (self sumNumbers: aSymbolOrBlock) * aFraction.
	sorted := self asSortedCollection: [:a :b | (aSymbolOrBlock value: a) > (aSymbolOrBlock value: b)].
	tops := OrderedCollection new.
	sum := 0. i := 1.
	[ sum < cutValue and: [ i <= self size ]]
		whileTrue: [
			tops add: (sorted at: i).
			sum := sum + (aSymbolOrBlock value: (sorted at: i)).
			i := i + 1].
	^ MoosePropertyGroup withAll: tops from: self using: aSymbolOrBlock