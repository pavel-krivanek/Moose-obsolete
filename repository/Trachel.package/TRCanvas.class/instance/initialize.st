initialization
initialize
	super initialize.
	extent := 500 @ 500.
	canvas := TRPlatform current surfaceClass extent: extent.
	shapes := OrderedCollection new.
	fixedShapes := OrderedCollection new.
	animations := OrderedCollection new.
	camera := TRCamera forCanvas: self.
	color := Color white.
	session := TRPlatform current session.
	
	"No event overseer at the creation"
	eventOverseer := nil