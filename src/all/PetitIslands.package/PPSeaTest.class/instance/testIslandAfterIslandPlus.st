testing
testIslandAfterIslandPlus
	
	| island2 islandParser2 island1 islandParser1 parser |
	island1 := 'aa' asParser, 'bb' asParser.
	islandParser1 := self seaInstance.
	islandParser1 island: island1.
	
	island2 := 'cc' asParser.
	islandParser2 := self seaInstance.
	islandParser2 island: island2.
	
	parser := (islandParser1, islandParser2) plus.
	 
	result := islandParser1 parse: '__ aabb __ cc __'.
	self assert: result isPetitFailure not.
