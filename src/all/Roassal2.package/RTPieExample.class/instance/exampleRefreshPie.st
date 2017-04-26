sources
exampleRefreshPie

	| view fillView |
	"We create an empty view. The view will contain the button and the pie."
	view := RTView new.

	"fillView is block that: 
		(i) remove all the elements in the view (except the button); 
		(ii) create a new pie with totally random data
		(iii) force a screen refresh with #signalUpdate"
	fillView := 
	[
		| b |
		view clean.
		b := RTPieBuilder new.
		
		"The RTPieBuilder will create the pie in the view"
		b view: view.
		b interaction popup.
		b objects: ((1 to: 10 atRandom) collect: [ :i | 30 atRandom ]).
		b slice: [ :aNumber | aNumber ].
		b normalizer distinctColor.
		b labeled.
		b build.
		view signalUpdate
	].

	"Add a button menu to the view"
	view addMenu: 'Generate new data' callback: [ fillView value ].

	"We want some data when opening the view"
	fillView value.
	^ view
