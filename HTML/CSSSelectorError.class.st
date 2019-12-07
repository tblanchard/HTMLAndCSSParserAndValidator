Class {
	#name : #CSSSelectorError,
	#superclass : #CSSError,
	#category : #'HTML-CSS-Errors'
}

{ #category : #'as yet unclassified' }
CSSSelectorError >> printOn: aStream [

	super printOn: aStream.
	self parent selector printOn: aStream.
]
