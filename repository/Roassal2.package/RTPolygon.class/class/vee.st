instance creation
vee
	^ self new
		vertices:
			(Array
				with: -1 @ -1
				with: 0 @ -0.333
				with: 1 @ -1
				with: 0 @ 1);
		yourself