accessing-xsd
elementFormXsd
	<xml: #xsdXsd>
	<xsd>

	^ '<?xml version="1.0" encoding="UTF-8"?>
<schema
    xmlns="http://www.w3.org/2001/XMLSchema"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:tns="http://unqualified-elements.example.com"
    targetNamespace="http://unqualified-elements.example.com">

    <element name="unQualifiedLocals">
        <complexType>
            <sequence>
                <element name="unqualified" type="xsd:string"/>
                <element name="qualified" form="qualified" type="xsd:int"/>
<!--                <element ref="tns:global"/>-->
            </sequence>
        </complexType>
    </element>

    <element name="global" type="xsd:int"/>

</schema>'