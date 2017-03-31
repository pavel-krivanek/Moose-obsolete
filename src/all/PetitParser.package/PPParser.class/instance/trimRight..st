operators-mapping
trimRight: trimmer
	"Answer a new parser that consumes spaces after the receiving parser."
	
	^ (self, trimmer star) ==> #first