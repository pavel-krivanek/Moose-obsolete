assignment tests
testMetaClassAssignment
	| collector wAssignments wIndex wIndexRelative |
	collector := self doForSource: 'w := TypeCollector'.
	wIndex := collector absoluteIndexForVar: #w.	"Absolute"
	wIndexRelative := wIndex
		- (self class allInstVarNames size - self class instVarNames size).
	wAssignments := collector assignmentsTo: #w.
	self assert: wAssignments size = 1.
	self assert: (wAssignments includes: TypeCollector class).
	self
		emptyAssigment: collector typingResults
		atIndexes:
			(((1 to: self class instVarNames size) asOrderedCollection)
				remove: wIndexRelative;
				yourself)