sources
withComposer
	<gtExample>
	<iconSelectorBase64: #withComposerIcon>
	
	"RTAxisAdaptedBuilderExample new withComposer"
	| c b |
	c := RTComposerExample new exampleClassAnalysis2.

	b := RTAxisAdaptedBuilder new.
	b view: c view.
	b margin: 20.
	b objects:  c view elements.
	b build.
	^ b view.