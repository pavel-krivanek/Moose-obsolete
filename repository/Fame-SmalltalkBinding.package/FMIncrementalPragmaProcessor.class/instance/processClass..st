private
processClass: aSmalltalkClass

	aSmalltalkClass theMetaClass methodDict do: [ :each |
		self processClassMethod: each ].
	aSmalltalkClass theNonMetaClass methodDict do: [ :each |
		self processInstanceMethod: each ].	