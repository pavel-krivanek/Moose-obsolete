as yet unclassified
contextMenu

	| aMenu |

aMenu := MenuModel new.

	aMenu addGroup: [ :group |
			group addItem: [ :item |
				item
					name: 'Show preview';
					icon: (self iconNamed: #openIcon);
					shortcut: $p meta;
					action: [ self preview: self tree selectedItem ] ].
			group addItem: [ :item |
				item
					name: 'Add to metamodel';
					icon: (self iconNamed: #openIcon);
					shortcut: $a meta;
					action: [ self addToModel: self tree selectedItem ] ]. ].

					
		^ aMenu buildWithSpecAsPopup