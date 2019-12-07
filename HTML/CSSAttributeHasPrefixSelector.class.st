Class {
	#name : #CSSAttributeHasPrefixSelector,
	#superclass : #CSSAttributeSelector,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSAttributeHasPrefixSelector >> isCSS3 [

	^true
]

{ #category : #'as yet unclassified' }
CSSAttributeHasPrefixSelector >> matches: aNode [

	| attr |

	attr := self privateAttributeKeyInNode: aNode.

	^attr isNil 
		ifTrue: [false]
		ifFalse: 
		[
			(aNode attributes at: attr) beginsWith: self value unquoted
		]
]
