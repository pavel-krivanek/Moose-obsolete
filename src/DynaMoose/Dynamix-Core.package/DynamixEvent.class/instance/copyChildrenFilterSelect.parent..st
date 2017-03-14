converting
copyChildrenFilterSelect: aBlock parent: newParent

	^children ifNotNil: [ 
		| stream |
		stream := (OrderedCollection new: children size * 2) writeStream.
		children do: [ :each |
			(aBlock value: each)
				ifTrue: [ 
					| newEvent |
					newEvent := each copy.
					newEvent children: (each copyChildrenFilterSelect: aBlock parent: newEvent).
					newEvent parent: newParent.
					stream nextPut: newEvent ]
				ifFalse: [
					| newChildren |
					newChildren := each copyChildrenFilterSelect: aBlock parent: newParent.
					newChildren ifNotNil: [ stream nextPutAll: newChildren ].
				]].
		stream contents ].