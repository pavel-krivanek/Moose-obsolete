accessing
isReplaceAll
	"Specifies whether the existing links emanating from the object on this end should be destroyed before creating a new link."
	^ isReplaceAll ifNil: [ isReplaceAll := false ]