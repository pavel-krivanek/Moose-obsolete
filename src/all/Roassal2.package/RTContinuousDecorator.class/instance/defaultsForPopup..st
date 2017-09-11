public
defaultsForPopup: popup
	popup 
		blockValidArea: [ :pos | self isPointOverTheBuilder: pos ];
		alphaPopupBackground: 0.7.
		