sources
exampleFlowerBuilderForTrees
"The goal of this builder is create simple elements based on a simple tree.

Like RTSunburst or RTTreemapBuilder, this builder use #explore:using: to explore the tree.

This builder uses a #normalizer to set the element properties, like size, color, etc

Click one element will clock the children,
click it again will reopen all children"
| b |
b := RTFlowerBuilder new.
b line color: Color green trans.
b shape color: Color orange;
	borderColor: Color black;
	if: #hasSubclasses color: Color red.
b interaction popupText: [ :cls | cls name,'
LOC: ', cls numberOfLinesOfCode asString].
b explore: Collection using: #subclasses.

b normalizer 
	normalizeSize: #numberOfLinesOfCode.
^ b

