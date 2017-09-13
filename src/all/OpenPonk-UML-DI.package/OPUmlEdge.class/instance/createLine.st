Roassal2 - manipulation
createLine
	^ (RTStyledMultiLine new
		attachPoint: RTBorderAttachPoint new;
		head: self headDecorator asHead;
		tail: self tailDecorator asTail;
		color: self style strokeColor;
		width: self style strokeWidth;
		edgeFrom: source rtElement to: target rtElement)
		model: self;
		yourself
