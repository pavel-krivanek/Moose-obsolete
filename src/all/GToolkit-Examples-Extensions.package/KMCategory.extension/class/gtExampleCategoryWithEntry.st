*GToolkit-Examples-Extensions
gtExampleCategoryWithEntry
	<gtExample>
	^ (self named: '1 Entry') 
		addKeymapEntry: (KMKeymap 
								named: #FooBar 
								shortcut: $a asKeyCombination
								action: [ ]);
		yourself