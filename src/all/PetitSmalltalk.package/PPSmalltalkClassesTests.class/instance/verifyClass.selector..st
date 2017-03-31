private
verifyClass: aClass selector: aSelector 
	"Verifies that the method aSelector in aClass parses the same using the standard refactoring parser and the petit smalltalk parser. Also make sure that the position information of all tokens and comments is equal."

	| signature source original other checker |
	signature := aClass name , '>>#' , aSelector.
	source := aClass sourceCodeAt: aSelector.
	source isNil ifTrue: [ ^ self ].
	original := aClass parseTreeFor: aSelector.
	original isNil ifTrue: [ ^ self ].
	other := self parserInstance
		parseMethod: source
		onError: [ :err | self assert: false description: signature ].
	self 
		assert: original = other
		description: 'Code in ' , signature.
	checker := [ :node1 :node2 |
		self 
			assert: node1 sourceInterval = node2 sourceInterval 
			description: 'Source intervals in ' , signature.
		(node1 isArray or: [ node1 isBlock or: [ node1 isPragma ] ]) ifTrue: [
			self
				assert: node1 left = node2 left
				description: 'Source position left in ' , signature.
			self
				assert: node1 right = node2 right
				description: 'Source position right in ' , signature ].
		(node1 isSequence) ifTrue: [
			self
				assert: node1 leftBar = node2 leftBar
				description: 'Source position leftBar in ' , signature.
			self
				assert: node1 rightBar = node2 rightBar
				description: 'Source position rightBar in ' , signature ].
		(node1 isBlock) ifTrue: [
			self
				assert: node1 bar = node2 bar
				description: 'Source position bar in ' , signature ].
		(node1 isReturn) ifTrue: [
			self
				assert: node1 return = node2 return
				description: 'Source position return in ' , signature ].
		(node1 isAssignment) ifTrue: [
			self
				assert: node1 assignment = node2 assignment
				description: 'Source position return in ' , signature ].
		(node1 isCascade) ifTrue: [
			self
				assert: node1 semicolons asArray = node2 semicolons asArray
				description: 'Source position semicolons in ' , signature ].
		(node1 isArray or: [ node1 isSequence ]) ifTrue: [
			self
				assert: node1 periods asArray = node2 periods asArray
				description: 'Source position periods in ' , signature ].
		(node1 isMethod or: [ node1 isMessage or: [ node1 isPragma ] ]) ifTrue: [
			self
				assert: node1 keywordsPositions = node2 keywordsPositions 
				description: 'Source position keywords positions in ' , signature ].
		node1 children with: node2 children do: checker ].
	checker value: original value: other