accessing
addressee: anAddress 
	"set the name of the node that is the addressee for this packet" 
	 
	addressee := anAddress. 
	self changed: #addressee