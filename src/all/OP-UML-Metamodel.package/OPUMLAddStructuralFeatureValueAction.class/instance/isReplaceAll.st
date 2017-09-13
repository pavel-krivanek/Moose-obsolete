accessing
isReplaceAll
	"Specifies whether existing values of the StructuralFeature should be removed before adding the new value."
	^ isReplaceAll ifNil: [ isReplaceAll := false ]