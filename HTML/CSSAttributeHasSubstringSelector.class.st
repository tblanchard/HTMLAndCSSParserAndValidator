Class {
	#name : #CSSAttributeHasSubstringSelector,
	#superclass : #CSSAttributeSelector,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSAttributeHasSubstringSelector >> isCSS3 [

	^true
]

{ #category : #'as yet unclassified' }
CSSAttributeHasSubstringSelector >> matches: aNode [

	| attr |

	attr := self privateAttributeKeyInNode: aNode.

	^attr isNil 
		ifTrue: [false]
		ifFalse: 
		[
			((aNode attributes at: attr) findString: self value unquoted) > 0
		]
]
