Class {
	#name : #CSSAttributeHasSuffixSelector,
	#superclass : #CSSAttributeSelector,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSAttributeHasSuffixSelector >> isCSS3 [

	^true
]

{ #category : #'as yet unclassified' }
CSSAttributeHasSuffixSelector >> matches: aNode [

	| attr |

	attr := self privateAttributeKeyInNode: aNode.

	^attr isNil 
		ifTrue: [false]
		ifFalse: 
		[
			(aNode attributes at: attr) endsWith: self value unquoted
		]
]
