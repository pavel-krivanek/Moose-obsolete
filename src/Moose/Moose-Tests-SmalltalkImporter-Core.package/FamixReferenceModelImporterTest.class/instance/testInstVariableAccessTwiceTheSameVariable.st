reference model accesed
testInstVariableAccessTwiceTheSameVariable
	self 
		privateTestAccessingVar: SubRootLevelOne@#k
		from: (SubRootLevelOne>>#accessTwiceTheSameVariable) mooseName
		shouldBeRead: true
		hasAccessesSize: 2.