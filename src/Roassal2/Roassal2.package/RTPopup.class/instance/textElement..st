public
textElement: aOneArgBlock
	"
	Set the text of the popup
	The argument, when evaluated with a RTElement return an object, to which #asString is sent to
	
	See #text: for a longer description
	"
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
