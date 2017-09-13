testing
isInsideOf: aModelObject
	^ self owner
		ifNotNil: [ owner == aModelObject
				ifTrue: [ true ]
				ifFalse: [ owner isInsideOf: aModelObject ] ]
		ifNil: [ false ]