*XML-Parser-GTExtensions
spotterPreviewSourceIn: aComposite
	<spotterPreview: 10>
	
	aComposite text
		title: 'Source';
		display: [
			self asHighlightedTextWrittenWith: [:writer |
				"use less indent for spotter previews"
				writer formatter indentString: '  '.
				self writeXMLOn: writer]];
		entity: self