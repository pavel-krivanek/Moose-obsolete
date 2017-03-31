grammar
elseOpt
	^ else optional
 
	==> [ :_else | _else ifNil: [ #() ] ]