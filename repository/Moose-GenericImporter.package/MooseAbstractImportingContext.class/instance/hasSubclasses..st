private
hasSubclasses: aFM3MetaDescription

	| implementingClass |
	implementingClass := aFM3MetaDescription implementingClass .
	^ implementingClass subclasses isEmpty not.
	
	

	