operators-mapping
trimSpacesRight
	"Answer a new parser that consumes spaces after the receiving parser."
	
	^ (self, #space asParser star) ==> #first