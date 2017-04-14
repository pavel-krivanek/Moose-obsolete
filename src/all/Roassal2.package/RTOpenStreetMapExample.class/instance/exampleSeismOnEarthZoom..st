sources
exampleSeismOnEarthZoom: aView
	<gtExample>
	<dependsOn: #exampleSeismOnEarth>
	<noTest>
	"This example reuse the seism data of Roassal 2."

	"RTOpenStreetMapExample new exampleSeismOnEarthZoom"

	aView canvas camera focusOnCenterScaled.
	^ aView