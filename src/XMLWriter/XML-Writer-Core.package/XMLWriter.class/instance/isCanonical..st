accessing
isCanonical: aBoolean
	"Should the output be canonical XML (http://www.w3.org/TR/xml-c14n)?
	(Not default)"

	self isCanonical = aBoolean
		ifTrue: [^ self].
	(isCanonical := aBoolean)
		ifTrue: [
			self
				formatter: self canonicalWriterFormatterClass new;
				lineBreak: self class canonicalLineBreak;
				contentEscapes: ContentCanonicalEscapes;
				contentStringEscapes: ContentStringCanonicalEscapes;
				isEscaping: true;
				omitsRedundantXMLNSDeclarations: true]
		ifFalse: [
			self
				formatter: nil;
				lineBreak: self class defaultLineBreak;
				contentEscapes: ContentEscapes;
				contentStringEscapes: ContentStringEscapes]