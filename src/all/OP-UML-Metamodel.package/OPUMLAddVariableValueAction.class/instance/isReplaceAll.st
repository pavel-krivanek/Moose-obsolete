accessing
isReplaceAll
	"Specifies whether existing values of the Variable should be removed before adding the new value."
	^ isReplaceAll ifNil: [ isReplaceAll := false ]