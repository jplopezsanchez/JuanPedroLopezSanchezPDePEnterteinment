# JuanPedroLopezSanchezPDePEnterteinment
Lugar de entrega del TP hecho en clase el 26/10

# Conceptos usados durante el TP

### Clases:
Use clases en asistente, en banda y en entrada. Por varios motivos, el primero es que claramente podemos tener varios ejemplos de cada uno ósea hay mas de una entrada, mas de un asistente y mas de una banda. Cada una de esas versiones de cada clase comparten estado y comportamiento.


### Encapsulamiento:
Intenté mantener el estado de cada objeto, evitando que otros objetos modifiquen directamente sus atributos. Si bien algunos métodos necesitan interactuar con otros objetos para realizar determinadas operaciones, busqué que cada objeto administre sus propios datos y que las interacciones se realicen mediante mensajes y métodos.

### Herencia:
Dentro de la clase banda cree las subclases Rock, Trap, Indie. Esto porque esas 3 compartían muchos atributos y sobre todo comportamiento, como por ejemplo gastos extra, canonReal y popularidad. De esta manera me garantizo que wollok me obligue a que cada banda tenga esos metodos y que no se me salten ademas de ahorrarme cierta logica como en canonReal que de no esta en la superclase deberia esta en cada clase de banda. 

### Polimorfismo:
Utilicé polimorfismo a través del atributo tipoAbono de Asistente, que puede referenciar a fan o a una instancia de Vip. Ambos responden a los mensajes descuento() y aplicarBonificacion(), pero cada uno los resuelve de manera diferente. De esta forma, Asistente puede delegar esas responsabilidades en su abono sin necesitar conocer qué tipo tiene.

### Composición:
Para hacer el abono use composición, esto debido a que necesitaba que cada usuario tenga su propio abono. que sea único para el, pero este abono tiene 2 versiones posibles que difieren en comportamiento y por en de convenia que sean objetos separados. Además como dato extra me haría sentido (si bien el enunciado no lo mencione) que alguien pueda pasar de fan a vip

<img width="754" height="868" alt="diagramaPDePEnterteinment" src="https://github.com/user-attachments/assets/6496abeb-0277-4294-b3a6-335450d187c1" />
