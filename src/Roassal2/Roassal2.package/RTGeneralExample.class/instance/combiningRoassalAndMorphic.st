morph
combiningRoassalAndMorphic
	<todo: 'connect to gtExamples'>
	
	"Example by Peter Uhnak"
	|container button view es e|

	view := RTView new.
	container := BorderedMorph new.
	(button := PluggableButtonMorph new)
		label: 'I am a morph';
		actionBlock: [ (view elements, view edges) do: [ :each | each color: Color random. each signalUpdate ] ].

	es := RTBox new color: Color black; size: 50; elementsOn: #(1 2).
	e := RTLine new color: Color black; edgeFrom: es first to: es second.
	view addAll: es; add: e.
	es second translateBy: 100 @ 200.

	container addMorph: view canvas buildMorph.
	container addMorph: button.

	container openInWindow.