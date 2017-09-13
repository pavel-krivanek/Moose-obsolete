Roassal2 - manipulation
createConnection
	^ (#OPRTStyledConnection asClass new
		attachPoint: (#OPRTOrthogonalAttachPoint asClass new offset: 30);
		color: self style strokeColor;
		head: (self headDecorator asHead color: Color yellow);
		tail: self tailDecorator asTail;
		width: self style strokeWidth;
		edgeFrom: source rtElement to: target rtElement)
		model: self;
		yourself
