accessing
signature: aTemplateSignature
	"The TemplateSignature that owns this TemplateParameter."
	signature := OPUMLToOneLink
		on: self identity
		update: #ownedParameters
		from: signature
		to: aTemplateSignature