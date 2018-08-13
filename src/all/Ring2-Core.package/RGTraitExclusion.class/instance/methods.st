queries - methods
methods

	^ self subject methods reject: [ :each | self exclusions includes: each name  ]