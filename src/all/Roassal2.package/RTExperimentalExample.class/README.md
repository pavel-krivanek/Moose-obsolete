RTExperimentalExample new installTitle: 'BoxSelectionForEdges' 
		code:
		'
<gtExample>
| b v |
b := RTObjectBrowser new.
v := RTView new.
v addElement: RTBox element.
b object: v.
^ b'