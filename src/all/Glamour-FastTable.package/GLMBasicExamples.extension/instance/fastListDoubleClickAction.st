*Glamour-FastTable
fastListDoubleClickAction
	<glmBrowser: 'Fast List with double click action' input: 'Object allSubclasses'>
	"self new fastListDoubleClickAction openOn: Object allSubclasses"
	|browser |

	browser := GLMTabulator new.
	browser column: #one.
	browser transmit to: #one; andShow: [ :a |
		a fastList 
			title: 'List' translated;
			onChangeOfPort: #strongSelection 
				act: [ :presentation :entity | 
					self inform: 'STRONG selection (double click) on ', presentation strongSelection asString ] ].

	^ browser