The class represents an element node, which has a qualified or unqualified name and optionally attributes, namespace declarations and child nodes.

Element names can be tested using #isNamed: and #isNamedAny:, which test both the qualified and local name.

If the name is qualified and namespace support is enabled (the default), then the prefix must be mapped to a namespace URI in the element or an ancestor. The class-side instance creation #name:namespaceURI:* and #name:namespaces:* messages and the instance-side #name:namespaceURI: message can set both simultaneously. If namespace support is disabled, prefixes are not checked.

The #attribute* messages provide a Dictionary-like protocol for manipulating attribute nodes. Unlike the #elementAt:* messages, they match qualified names only, and attribute value accessors return empty strings if the attribute is absent. The underlying attribute node list can be accessed using #attributeNodes (copy before modifying if you don't want to change the element's attributes), and the names/values can be obtained as an (order-preserving) dictionary using #attributes.

See the superclasses for more info.