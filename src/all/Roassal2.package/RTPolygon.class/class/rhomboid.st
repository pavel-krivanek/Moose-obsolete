instance creation
rhomboid
	^ self new
		vertices:
			(Array
				with: -1 @ -1
				with: 0.333 @ -1
				with: 1 @ 1
				with: -0.333 @ 1);
		yourself