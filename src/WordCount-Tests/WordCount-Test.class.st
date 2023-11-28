Class {
	#name : #'WordCount-Test',
	#superclass : #TestCase,
	#category : #'WordCount-Tests'
}

{ #category : #tests }
WordCount-Test >> testHamlet [
	"Dummy test funcion. Just select code and use Ctrl-I for inspection."

	((((ZnClient new
		    beOneShot;
		    get:
			    'https://raw.githubusercontent.com/mkohlhaas/Haskell-in-Depth/main/data/texts/hamlet.txt')
		   substrings: ' .,<>,./_-') collect: #trimBoth) reject: #isEmpty)
		asBag sortedCounts
]
