enumerating
union: aCollection

	| set |
	
	set := self asSet addAll: aCollection; yourself.
	
	 ^ self class on: (self receiver) withAll: set