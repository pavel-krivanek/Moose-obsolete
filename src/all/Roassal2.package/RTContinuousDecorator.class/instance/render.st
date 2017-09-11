hooks
render
	
	| popup |
	popup := RTContinuousPopup new.
	popupDo value: popup.
	builder view @ popup.