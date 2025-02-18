Class {
	#name : #XHtmlDTDElement,
	#superclass : #HtmlDTDElement,
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
XHtmlDTDElement class >> fromParsedString: aString [

	| in tag start end contents |

	in := ReadStream on: aString.

	tag := self readExpression: in.
	start := '-'.
	end := '-'.
	contents := in upToEnd trimBoth.

	^self new tag: tag;
		startIsOptional: start;
		endIsOptional: end;
		contentRule: contents		
]
