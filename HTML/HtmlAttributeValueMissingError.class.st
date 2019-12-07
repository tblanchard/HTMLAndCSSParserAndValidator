Class {
	#name : #HtmlAttributeValueMissingError,
	#superclass : #HtmlAttributeError,
	#category : #'HTML-DOM-Errors'
}

{ #category : #'as yet unclassified' }
HtmlAttributeValueMissingError >> printOn: aStream [

	aStream nextPutAll: 'Value missing for: '.
	self attribute printOn: aStream.
	aStream nextPutAll: ' in '.
	self parent prefix printOn: aStream.
	aStream nextPutAll: '.'.
]
