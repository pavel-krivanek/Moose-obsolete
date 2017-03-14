testing
testNestedIsland
	
	|  nestedIsland before after topIsland |
	nestedIsland := self sea: 'X' asParser.
	
	before := 'before' asParser.
	after := 'after' asParser.
	topIsland := self sea: (before, nestedIsland, after).
	
	self assert: nestedIsland parse: 'before...X...ater'.
	self assert: topIsland parse: 'beforeXafter'.
	
	self assert: topIsland parse: '....before..X..after....'.
	self assert: result size = 3.
	self assert: result second size = 3.
	self assert: result second second size = 3.
	self assert: result second second second = 'X'.
	
	self assert: topIsland parse: '....X....before...X....after'.
	self assert: topIsland parse: '....before.......after....before..X...after'.

	self assert: topIsland fail: '....before.......after...'.	
	self assert: topIsland fail: '....before.......after...X'.	
	self assert: topIsland fail: '....before.......after...X...after'.		
