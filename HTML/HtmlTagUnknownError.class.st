Class {
	#name : #HtmlTagUnknownError,
	#superclass : #HtmlTagError,
	#category : #'HTML-DOM-Errors'
}

{ #category : #'as yet unclassified' }
HtmlTagUnknownError >> printOn: aStream [

	self parent tag printOn: aStream.
	aStream nextPutAll: ' is not valid within this doctype.  It can probably be replaced with a span and CSS style.'

	
]
