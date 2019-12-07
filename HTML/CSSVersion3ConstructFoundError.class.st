Class {
	#name : #CSSVersion3ConstructFoundError,
	#superclass : #CSSError,
	#category : #'HTML-CSS-Errors'
}

{ #category : #'as yet unclassified' }
CSSVersion3ConstructFoundError >> printOn: aStream [

	super printOn: aStream.
	self parent printOn: aStream.
]
