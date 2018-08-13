queries - methods
methods

	"TODO"
	^ self subject methods reject: [ :each | self aliases includes: each name  ]