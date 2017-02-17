*GT-Examples-UI
gtInspectorCustomActions
	self hasExtensions ifFalse: [ ^ { } ].
	
	^ Array streamContents: [ :stream | 
		extensions do: [ :each | 
			(each gtInspectorActionFor: self) ifNotNil: [ :action |
				stream nextPut: action ] ] ] 