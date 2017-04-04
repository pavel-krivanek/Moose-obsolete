initialization
setAlpha: alpha for: element
	(evaluationBlock rtValue: element)  do: [ :e | e trachelShape allColor: (e trachelShape color alpha: alpha) ]