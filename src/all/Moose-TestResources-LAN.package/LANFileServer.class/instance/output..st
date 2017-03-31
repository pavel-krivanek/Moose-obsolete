outputting
output: thePacket 
	"My subclasses have to use this method to define their outputting behavior" 
	 
	Transcript cr. 
	Transcript 
		show: 
			'LANFileServer ' , self name printString , ' saves ' , thePacket contents