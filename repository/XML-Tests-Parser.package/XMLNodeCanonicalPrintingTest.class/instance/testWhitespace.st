tests
testWhitespace
	| xml |

	xml := '
<doc>
   <clean>   </clean>
   <dirty>   A   B   </dirty>
   <mixed>
      A
      <clean>   </clean>
      B
      <dirty>   A   B   </dirty>
      C
   </mixed>
</doc>
'.

	self assert:
		(XMLDOMParser parse: xml)
			canonicallyPrinted =
				(self onCanonicalLineBreakJoin:
					#('<doc>'
						'   <clean>   </clean>'
						'   <dirty>   A   B   </dirty>'
						'   <mixed>'
						'      A'
						'      <clean>   </clean>'
						'      B'
						'      <dirty>   A   B   </dirty>'
						'      C'
						'   </mixed>'
						'</doc>')).