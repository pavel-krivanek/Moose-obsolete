public - layout
sunburstWithRadius: radius
	layout := RTSunburstExtentLayout new.
	layout extent: radius asPoint * 2.
	^ layout