testing
testNestedIsland2
	
	|  nestedIsland before after topIsland |
	nestedIsland := self sea: 'after' asParser.
	
	before := 'before' asParser.
	after := 'after' asParser.
	topIsland := self sea: (before, nestedIsland, after).
	
	self assert: nestedIsland parse: '..after..'.
	self assert: topIsland parse: 'before..after..after'.
	self assert: topIsland parse: '....before...after....after...'.
	self assert: topIsland fail: '....before...after...'.
	
	topIsland := self sea: (before, (nestedIsland / (nil asParser sea)), after).
	self assert: topIsland parse: '....before...after....after...'.
	self assert: topIsland parse: '..before...after..'.

