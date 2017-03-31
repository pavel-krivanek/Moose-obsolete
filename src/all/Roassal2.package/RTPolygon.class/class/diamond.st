instance creation
diamond
	^ self new
		vertices:
			(Array
				with: 0 @ 1
				with: 1 @ 0
				with: 0 @ -1
				with: -1 @ 0);
		yourself