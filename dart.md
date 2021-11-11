Qu'est-ce que Dart ?

Dart est un langage développé par Google initialement pour remplacer JavaScript . La première version est sortie en 2011.
Aujourd'hui l'objectif de Dart est de pouvoir être facilement transpilé en JavaScript pour le Web et compilé en langage bas niveau pour les applications natives.
La version 2 du langage est sortie en août 2018 et apporte de grandes avancées que nous traiterons.
Dart est un des langages les plus utilisés chez Google. Il est utilisé pour les applications les plus importantes en Web : Google Ads, Google Shopping et des dizaines d'applications
internes.
Il est de plus en plus utilisé, et par exemple Sass , le préprocesseur CSS, a été réécrit récemment en Dart .
Avec Dart vous êtes certains de pouvoir développer des applications scalables. Google l'utilise en production pour des dizaine de millions de ligne de codes.

Pourquoi utiliser Dart ?

Dart possède plusieurs compilateur pour le Web et le mobile :
Compilation en langage bas niveau pour le mobile
Dart est un langage qui peut être compilé en AOT en code natif ce qui lui confère des performances excellentes en production.
Il dispose également d'un compilateur JIT pour le développement afin de permettre une expérience de développement optimale avec le hot reload (voir plus bas).
Un langage facile pour raisonner
Dart est un langage single threaded comme JavaScript lui permettant d'éviter plusieurs problèmes dont les race conditions comme dans les langages supportant plusieurs
threads d'exécution concomitants : ce qui inclus Java , Kotlin , Objective-C et Swift .
Dart utilise async/await , des Futures et des Streams , que nous étudierons, afin de gérer l'asynchrone de manière optimale sur un seul thread . Cela donne au développeur le
contrôle de l'exécution sans avoir à réfléchir longuement sur les éventuelles race conditions qui sont difficiles à débuguer.
Cela évite aussi toute une catégorie de bugs pouvant affecter les animations et les transitions.
Un langage facile à apprendre pour tous les développeurs Web
Dart est facile à apprendre que ce soit pour des développeurs venant de langages dynamiques (comme JavaScript ) ou statiques (comme C ou Java ).
Dart et Flutter
Nous allons maintenant voir quels sont les avantages d'utiliser Dart avec Flutter .
Le rechargement rapide
Une fonctionnalité géniale en développement est le hot reload !
Grâce à Dart , et a son compilateur JIT , Flutter permet de recharger que le code qui a changé pendant que l'application tourne, ce qui permet d'avoir la nouvelle version en moins
d'une seconde, le tout en conservant son état !
Utilisation mémoire optimale pour l'affichage d'animations parfaitement fluides
Dart est optimal pour effectuer des animations et des transitions qui sont à 60 fps (frames per second) . En effet, il dispose d'un garbage collector et d'une allocation mémoire
pour les objets permettant de meilleures performances.
Ce design du langage est parfait pour les applications mobiles qui requièrent un sentiment de fluidité parfaite lors de l'utilisation.
Un seul langage, même pour le Layout
Avec Flutter , les layouts sont également écrits en Dart , par exemple :
Center(child:
 Column(children: [
 Text('Hello, World !'),
 Icon(Icons.star, color: Colors.green),
 ])
)
Il n'y a pas besoin de langage spécifique pour le Layout comme JSX ou XML .