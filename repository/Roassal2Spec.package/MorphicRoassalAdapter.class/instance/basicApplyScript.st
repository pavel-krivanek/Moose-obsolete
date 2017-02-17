private
basicApplyScript

	self model script 
		cull: view 
		cull: canvas.
		
	self widgetDo: [ :w | w startStepping ]