actions
attachBreakpoints

	self afterMethodBreakpoint
		targetMethod: PPContext>>#next;
		whenReceiver: [ :aPPContext | aPPContext position ~= self initialPosition ]