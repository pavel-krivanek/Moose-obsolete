popup
testPlatformPopup
	| v el   |
	v := RTView new.
	
	RTPlatformPopup removeLastPopup.
	el := (RTBox new size: 20) element.
	el @ (RTPlatformPopup).
	v add: el.
	v canvas buildMorph.
	self assert: v numberOfElements equals: 1.
	self assert: RTPlatformPopup lastPopup isNil.
	el announce: (TRMouseEnter new position: 0 @ 0; shape: el trachelShape).
	self assert: v numberOfElements equals: 1.
	self assert: RTPlatformPopup lastPopup notNil.
	