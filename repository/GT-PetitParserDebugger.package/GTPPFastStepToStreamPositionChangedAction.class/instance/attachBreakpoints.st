actions
attachBreakpoints

	self addBreakpoint: (GTDebuggerMethodAfterBreakpoint new
		targetMethod: PPContext>>#next;
		whenReceiver: [ :aPPContext | aPPContext position ~= self initialPosition ]).