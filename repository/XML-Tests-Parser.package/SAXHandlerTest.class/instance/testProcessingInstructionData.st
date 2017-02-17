tests
testProcessingInstructionData
	| xml parser |

	xml := '
		<?before DTD?>
		<!DOCTYPE test [<?in DTD?>]>
		<?before element?>
		<test>
			<?in element?>
		</test>
		<?after element?>'.

	(parser := SAXRecordingHandler on: xml)
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			#(startDocument
				processingInstruction:data:
				startDTD:publicID:systemID:
				processingInstruction:data:
				endDTD
				processingInstruction:data:
				startElement:attributes:
				characters:
				processingInstruction:data:
				characters:
				endElement:
				processingInstruction:data:
				endDocument)).

	(parser allSentMessagesNamed: #processingInstruction:data:)
		with:
			#(#('before' 'DTD')
				#('in' 'DTD')
				#('before' 'element')
				#('in' 'element')
				#('after' 'element'))
		do: [:message :arguments |
			self assert: message arguments = arguments].