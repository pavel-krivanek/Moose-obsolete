accessing
isStatic
	"Specifies whether this Feature characterizes individual instances classified by the Classifier (false) or the Classifier itself (true)."
	^ isStatic ifNil: [ isStatic := false ]