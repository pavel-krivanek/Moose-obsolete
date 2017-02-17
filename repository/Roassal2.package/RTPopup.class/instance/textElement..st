public
textElement: aOneArgBlock
	self group: [ :group :element | 
		| backRectangle lbl |
		backRectangle := (RTBox new color: (backgroundColor alpha: self alphaPopupBackground); borderColor: borderColor) element.
		
		lbl := (RTLabel new 
				color: textColor;
				height: [:x | 9];
				text: (aOneArgBlock rtValue: element) asString) element.
		RTNest new centerOn: backRectangle elements: (Array with: lbl).
		group add: backRectangle; add: lbl
		] 
