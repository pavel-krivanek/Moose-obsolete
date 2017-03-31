ordering
setLevels
	"Set levels of all my children if I have any. I have to have a level set for this to work."
	| currLevelCollection |
	
	self assert: (level notNil) description: 'This node must have a level set to set its childrens level'.
	currLevelCollection := hiGraph levels at: level ifAbsentPut: [ OrderedCollection new ].
	
	"We have already added the root nodes in the process. No need to add them again."
	self notRootNode ifTrue: [ 
		currLevelCollection add: self.
	].
	
	"Recurse if this node has children."
	self notLeafNode ifTrue: [
		children do: [ :childNode |
			childNode level: level + 1.
			childNode setLevels.
		].
	].