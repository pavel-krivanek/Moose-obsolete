accessing-xsd
externalAttributesXsd
	<xml: #xsdXsd>
	<xsd>
	
	^ '<?xml version="1.0" encoding="UTF-8"?>
<schema
    xmlns="http://www.w3.org/2001/XMLSchema"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:tns="http://unqualified-elements.example.com"
    xmlns:test="http://test-namespace"
    targetNamespace="http://unqualified-elements.example.com"
    test:level="1">

    <element name="AnyAttContainer" test:level="2">
        <complexType>
            <sequence>
                <element name="chileValue" type="xsd:string"/>
            </sequence>
            <anyAttribute namespace="##other" processContents="lax"></anyAttribute>
        </complexType>
    </element>

    <element name="global" type="xsd:int"/>

</schema>'