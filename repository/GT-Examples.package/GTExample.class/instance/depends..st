DEPRECATED
depends: aSelector
"	self deprecated: 'use #dependsOn: instead'."
	self flag: 'using self deprecated: raises a ton of warnings when someone is using the old API'.
	self dependsOn: aSelector