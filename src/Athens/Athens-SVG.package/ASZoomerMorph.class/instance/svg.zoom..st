as yet unclassified
svg: anSVG zoom: anSvgZoom
	| w h |
	
	svg := anSVG.
	svg isString ifTrue: [ svg :=  AthensSVGConverter fromFile: svg ].
	svgExtent := self extent.
	
	svg width ifNotNil: [
		w := svg width valueForDPI: self screenDPI.
		h := svg height valueForDPI: self screenDPI.
		svgExtent := (w@h) * anSvgZoom + (2@2).
		svgZoom := anSvgZoom.
	] ifNil: [
		svgExtent := self extent.
		svgZoom := 1.
	].

	surface := AthensCairoSurface extent: (svgExtent * self maxZoom + (1@1)) asIntegerPoint.
	basicExtent := svgExtent.
	self extent: svgExtent.
	currentZoom := 1.	
	self changed