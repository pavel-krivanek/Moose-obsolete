outputting
output: thePacket 
	"My subclasses have to use this method to define their outputting behavior" 
	 
	Transcript cr. 
	80 timesRepeat: [Transcript show: '-']. 
	Transcript cr. 
	Transcript 
		show: 
			'Printer ' , self name printString , ' prints ' , thePacket contents