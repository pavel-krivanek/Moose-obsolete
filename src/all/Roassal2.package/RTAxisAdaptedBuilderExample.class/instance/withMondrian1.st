sources
withMondrian1
	<gtExample>
	<iconSelectorBase64: #withMondrian1Icon>
	
	"RTAxisAdaptedBuilderExample new withMondrian1"
	| c b |
	c := RTMondrianExample new exampleNormalization .

	b := RTAxisAdaptedBuilder new.
	b view: c view.
	b margin: 20.
	b objects:  c view elements.
	b build.
	^ b view. 