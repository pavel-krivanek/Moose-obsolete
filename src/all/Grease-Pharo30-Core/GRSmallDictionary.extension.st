Extension { #name : #GRSmallDictionary }

{ #category : #'*Grease-Pharo30-Core' }
GRSmallDictionary >> customizeExplorerContents [
	^ true
]

{ #category : #'*Grease-Pharo30-Core' }
GRSmallDictionary >> explorerContents [
	| contents |	
	contents := OrderedCollection new.
	self keysAndValuesDo: [ :key :value |
		contents add: (ObjectExplorerWrapper
			with: value
			name: (key printString contractTo: 32)
			model: self) ].
	^ contents
]

{ #category : #'*Grease-Pharo30-Core' }
GRSmallDictionary >> hasContentsInExplorer [
	^ true
]
