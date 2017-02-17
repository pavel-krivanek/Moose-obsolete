lastPopup
removeLastPopup
	self lastPopup ifNil: [ ^ self ].
	self lastPopup view
		ifNil: [ 
			self resetLastPopup.
			^ self ].
	self lastPopup remove.
	self resetLastPopup.