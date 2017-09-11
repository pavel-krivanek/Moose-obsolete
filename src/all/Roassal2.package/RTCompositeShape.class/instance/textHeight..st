public - forwarding
textHeight: aBlockOrNumber
	"Set the height of the text
	
	| b |
	b := RTMondrian new.
	b shape labeledBox
	    borderColor: Color black;
	    textHeight: 10.
	    
	b nodes: (1 to: 10).
	b
	"
	(self shapesInstancesOf: RTLabel) do: [ :s | s height: aBlockOrNumber ]	