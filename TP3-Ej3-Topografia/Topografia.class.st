"
Topografia representa la distribucion de agua y tierra de una region cuadrada, la cual esta formada por porciones de “agua” y de “tierra”.
Las proporciones siempre estan entre 0 y 1.
<<Component Composite>>
"
Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP3-Ej3-Topografia-Model'
}

{ #category : #'instance creation' }
Topografia class >> agua [
	^ TopografiaSimple new proporcionDeAgua: 1
]

{ #category : #'instance creation' }
Topografia class >> mixtaCon: topografias [
	"Instancia una Topografia mixta con una OrderedCollection de tamaño 4, con 4 topografias"

	topografias size = 4
		ifFalse: [ self error: 'Una topografia mixta debe ser de 2x2 (4 elementos)' ].
	^ TopografiaMixta new componentes: topografias
]

{ #category : #'instance creation' }
Topografia class >> tierra [
	^ TopografiaSimple new proporcionDeAgua: 0
]

{ #category : #comparing }
Topografia >> = otraTopografia [
	"Comprueba igualdad entre la topografia receptora y otra topografia, que esta dada por igual proporcion de tierra y agua, e igual distribucion"

	^ self proporcionDeAgua = otraTopografia proporcionDeAgua
		& (self proporcionDeTierra = otraTopografia proporcionDeTierra)
		& (self distribucion = otraTopografia distribucion)
]

{ #category : #'private - accessing' }
Topografia >> distribucion [
	"Devuelve una representacion en String del receptor que es unica dependiendo de la estructura de la topografia receptora."

	^ self subclassResponsibility
]

{ #category : #accesing }
Topografia >> proporcionDeAgua [
	^ self subclassResponsibility
]

{ #category : #accesing }
Topografia >> proporcionDeTierra [
	^ self subclassResponsibility
]
