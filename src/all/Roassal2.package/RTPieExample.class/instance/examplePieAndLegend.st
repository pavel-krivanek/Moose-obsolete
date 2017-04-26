sources
examplePieAndLegend
	"
	RTPieExample new examplePieAndLegend
	"

	| b myClasses lb |
	myClasses := (Array with: Dictionary with: Collection with: Set with: OrderedCollection ).

	b := RTPieBuilder new.
	b interaction popup.
	b objects: myClasses.
	b slice: #numberOfMethods.
	b normalizer distinctColor.	
	b labeled.
	b emphasize: Set by: 20.
	b emphasize: Dictionary by: 20.
	b build.
	
	"Legend"
	lb := RTLegendBuilder new.
	lb view: b view.
	lb addText: 'Distribution of number of Methods in some classes'.
	myClasses do: [ :aClass |
		| aColor |
		aColor := (b view elementFromModel: aClass) trachelShape color.
		lb addColor: aColor text: aClass name.
	].
	lb build.
	
	^ b view