sending-receiving
accept: thePacket 
	"Having received the packet, send it on. This is the default behavior." 
	"My subclasses will probably override this method to do something special" 
	 
	self send: thePacket