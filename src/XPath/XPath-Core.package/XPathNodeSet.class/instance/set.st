private
set
	"IdentitySet is not used because namespace nodes implement ="
	^ set ifNil: [set := Set new: self capacity]