public - layout
forceWithCharge: aBlockOrANumber
	"E.g -300"
	layout := RTOptimizedForceBasedLayout new.
	layout charge: aBlockOrANumber.
	^ layout