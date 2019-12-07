Class {
	#name : #CSSAttributeExistsSelector,
	#superclass : #CSSAttributeSelector,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSAttributeExistsSelector >> matches: aNode [

	^(self privateAttributeKeyInNode: aNode) notNil
]
