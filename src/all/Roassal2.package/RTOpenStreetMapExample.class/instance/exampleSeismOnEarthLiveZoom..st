sources
exampleSeismOnEarthLiveZoom: aView
	<gtExample>
	<dependsOn: #exampleSeismOnEarthLive>
	<noTest>
	"This example download a data set from the web and scale the view afterwards."

	"RTOpenStreetMapExample new exampleSeismOnEarthLiveZoom"

	aView canvas camera focusOnCenterScaled.
	^ aView