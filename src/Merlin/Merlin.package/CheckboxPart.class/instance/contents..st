checkbox control
contents: newContents

	contents := newContents.
"	self contentsChanged."
	self hasChanged.
	self parentComposite ifNotNil: [
		self parentComposite contentsChanged . 
		self parentComposite hasChanged.
		
		]  