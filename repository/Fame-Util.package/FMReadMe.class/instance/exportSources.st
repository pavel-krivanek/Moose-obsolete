useful scripts
exportSources
	"((( 		self new exportSources 		 )))"
	| classes stream |
	classes := Smalltalk allClasses select: [ :each | each category beginsWith: 'Fame' ].
	stream := FileStream fileNamed: '/Users/akuhn/Desktop/fame.st'.
	classes do: [ :class |
		self export: class name: class name on: stream. 
		self export: class class name: (class name, '_class') asSymbol on: stream. 
		].
	stream close