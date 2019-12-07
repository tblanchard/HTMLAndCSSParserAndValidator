Class {
	#name : #HtmlDTDMatchConstraint,
	#superclass : #HtmlDTDMatchExpression,
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchConstraint >> allowedElements [

	^expression allowedElements
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchConstraint >> allowsItem: anItem [

	^expression allowsItem: anItem
]
