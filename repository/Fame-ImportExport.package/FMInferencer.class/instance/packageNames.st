private
packageNames
	
	| names |
	names := Set new.
	self elements do: [ :each |
		names add: each packageName ].
	^names