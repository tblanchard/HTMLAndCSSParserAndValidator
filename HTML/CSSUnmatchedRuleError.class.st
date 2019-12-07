Class {
	#name : #CSSUnmatchedRuleError,
	#superclass : #CSSError,
	#category : #'HTML-CSS-Errors'
}

{ #category : #'as yet unclassified' }
CSSUnmatchedRuleError >> printOn: aStream [

	super printOn: aStream.
	self parent printOn: aStream.
]
