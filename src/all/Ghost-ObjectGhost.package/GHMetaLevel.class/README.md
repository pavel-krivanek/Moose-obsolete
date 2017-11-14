I represent meta level of particular ghost implementation.

I include set of meta messages as explicit GHMetaMessages subclass. All messages which defined on it hierarchy I treat as meta.

Public API and Key Messages

- isMetaMessage: aMessage    
- executeMetaMessage: aMessage on: aGhost 
it executes given meta message by sending it  to metaMessages instance created on given aGhost.

I can be created by 
	GHMetaLevel with: GHEmptyMetaMessages
 
Internal Representation and Key Implementation Points.

    Instance Variables
	metaMessages:		<GHMetaMessages class>