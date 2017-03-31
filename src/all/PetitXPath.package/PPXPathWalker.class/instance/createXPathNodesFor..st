private
createXPathNodesFor: aString
	^ PPXPathParser new 
		parse: aString
		onError: [ :e | PPXPathError signal: e asString ]