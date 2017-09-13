samples
sampleDslDIFor: aModel
	"This method demonstrates hand-constructing the layout and style of the diagram. Normally information like this is stored by the editor to disk when the project is saved."

	| base |
	base := {#Department
		->
			{710 @ 255.
			Color lightMagenta}.
	#Person
		->
			{170 @ -65.
			Color white}.
	#President
		->
			{110 @ 255.
			Color lightGreen}.
	#Role
		->
			{410 @ -65.
			Color lightGreen}.
	#Student
		->
			{410 @ 115.
			Color lightGreen}.
	#Teacher
		->
			{707.5 @ 115.
			Color lightGreen}.
	#University
		->
			{410 @ 255.
			Color lightMagenta}}.
	^ (base
		collect: [ :pair | 
			(aModel entityNamed: pair key) uuid
				-> (Dictionary with: #position -> pair value first with: #fillStyle -> pair value second) ])
		asDictionary