private
writeEpilogue
	(self hasEmbeddedMarkup
		or: [self writer isCanonical
			or: [self writer outputsSelfClosingTags not]])
		ifTrue: [
			self hasEmbeddedMarkup
				ifFalse: [
					self writer
						nextPut: $>;
						formatAfterStartTag: self].
			self writer
				formatBeforeEndTag: self;
				nextPut: $<;
				nextPut: $/;
				writeName: self name;
				nextPut: $>;
				formatAfterEndTag: self]
		ifFalse: [
			self writer
				space;
				nextPut: $/;
				nextPut: $>;
				formatAfterEndTag: self]