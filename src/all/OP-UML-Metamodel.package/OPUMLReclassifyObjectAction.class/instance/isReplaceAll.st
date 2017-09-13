accessing
isReplaceAll
	"Specifies whether existing Classifiers should be removed before adding the new Classifiers."
	^ isReplaceAll ifNil: [ isReplaceAll := false ]