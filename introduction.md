Qu'est-ce que Flutter ?

Flutter est un framework open-source de développement d'application mobiles créé par Google en 2017.
Flutter a été déclaré stable et est sorti de bêta en juin 2018 et sa version 2.2 est sortie en mai 2021, il s'agit donc du moment parfait pour l'apprendre !
Il utilise Dart qui est un langage créé par Google qui peut être compilé en code bas niveau ou transpilé en JavaScript .
Il est utilisé par Google pour développer la plupart de ses applications mobiles externes comme par exemple celle pour Google Ads, ou internes comme Google Greentea (permettant de
gérer ses relations clients).
Il est également utilisé en production par Alibaba pour des applications avec plus de 50 millions de téléchargements.
Il est enfin utilisé pour développer des applications sur le nouveau système d'exploitation de Google, Fushia.
Vous pouvez voir ici des centaines d'exemples d'application réalisées avec Flutter !

Avantages de Flutter
Nous allons commencer par un bref récapitulatif des avantages à utiliser Flutter puis nous rentrerons plus dans les détails.
1 - Pouvoir créer des applications hybrides réactives sans utilisation de pont JavaScript / Plateforme native dégradant les performances.
2 - Code pré-compilé ( AOT ) en code natif bas niveau augmentant les performances.
3 - Widgets et Layout totalement personnalisables sans perte de performance.
4 - Une très importante librairie de widgets de qualité Google.
5 - Utilisation intensive par les équipes de Google, ce qui assure sa maintenabilité, sa qualité et des mises à jour très proches de celles d'Android et d'iOS.
6 - Le prochain OS de Google appelé Fushia utilise Flutter , ce qui assure également l'utilisation d'un framework future proof .
7 - Flutter permet d'utiliser ses applications sur les navigateurs Web et bientôt sur Desktop (cf le projet Hummingbird ). Ce qui fera de lui le seul framework compatible toute
plateforme ( Android , iOS , Web et application Desktop ) !
En résumé, Flutter est le framework de développement hybride le plus moderne, le plus performant, avec une équipe de développement Google dédiée et un accès privilégié aux
futures avancées des plateformes mobiles ( Android , Fushia étant développés par Google).
Historique des solutions pour le développement d'applications mobiles
Nous allons voir à travers un bref historique pourquoi Flutter est l'approche la plus moderne et la plus innovante en matière de développement mobile hybride.
Les SDK pour les plateformes
Les SDK de développement mobile ont environ dix ans avec le SDK iOS qui est sorti en 2008 et le SDK Android de Google qui est sorti en 2009.
Les langages utilisés au départ étaient uniquement Objective-C pour iOS et Java pour Android .
Le fonctionnement d'une application mobile est d'interagir avec la plateforme mobile pour créer des widgets ou accéder à des services natifs comme la caméra.
Pour ce faire, elle utilise un langage natif pour la plateforme, et il faut donc créer une application différente pour chaque plateforme.
Il existe aujourd'hui une multitudes d' OS et de SDK mais Android représente environ 75% du marché, suivi par iOS à 22% environ.
Pour vous donner un ordre d'idée Windows Phone ou Samsung représente chacun environ 0,2%.
Les vues Webs
Les premiers frameworks permettant de construire des applications multi-plateformes utilisent le JavaScript et les Webviews .
Ces frameworks sont par exemple Ionic , PhoneGap et Cordova .
Ils créent en fait des vues webs en HTML qui sont rendus par le mobile et utilisent des API faisant le pont avec les services bas niveau du téléphone (caméra, audio, position, bluetooth
etc).
Elle permet une réutilisation d'une partie du code Angular / React / Vue avec Ionic 4 mais par design il ne sera jamais possible d'approcher des performances natives.
Les vue réactives
Avec l'apparition des single page applications et de l'utilisation de la programmation réactive pour le Web, des nouveaux frameworks ont fait leur apparition utilisant ce paradigme,
par exemple React Native .
Le problème est que ces applications utilisaient du JavaScript qui communiquent avec des API faisant le pont vers les services bas niveau et la création de widgets , ce qui
dégradent les performances.
Flutter fait partie de cette catégorie de frameworks et utilisent des vues réactives.
Mais la première différence est que le code Dart utilisé est compilé Ahead Of Time ( AOT ) en langage bas niveau.
Les performances sont ainsi largement augmentées : aussi bien pour le démarrage, que pour l'accès aux services natifs ou à la génération des vues.
Flutter utilise en outre une approche très innovante pour l'utilisation des widgets .
Que sont les widgets ?
Un widget est un élément qui contrôle la vue et est géré par l'application.
Il existe pour chaque plateforme une librairie de widgets , et pour les frameworks utilisant des vues Web des widgets utilisant le DOM .
Flutter prend une approche différente en proposant sa propre librairie de widgets de très haute qualité et totalement personnalisable.
La création des vues et le rendu est donc du côté Flutter et non pas du côté plateforme (que ce soit pour les vues Web ou l'utilisation de widgets natifs). Il ne reste que la peinture
des vues (phases paint ) dans les canvas .
Même pour la phase de paint , Flutter ne met à jour que les widgets en ayant besoin ce qui améliore encore plus les performances.
Flutter n'accède donc qu'à trois ensembles bas niveau : les events , les canvas (utilisés pour le rendu des widgets ) et les services .
Voici une vue d'ensemble de l'architecture de Flutter :
Bref comparatif avec React Native
Nous choisissons de vous présenter un comparatif avec React Native , car il s'agit de la solution qui vient souvent à l'esprit des développeurs souhaitant utiliser un framework
permettant de développer des applications hybrides.
React Native a de moins bonnes performances principalement car il n'est pas compilé en code bas niveau mais utilise un pont vers la plateforme mobile. Cette architecture dégrade
les performances.
Les composants disponibles sur React Native sont basiques, donc si vous voulez faire des choses un peu plus complexe il vous faudra beaucoup de développement et vous devrez
utiliser la plupart du temps des composants différents entre iOS et Android . Vous utiliserez souvent des librairies tierces qui ne sont pas supportés par Facebook ni aucune grande
entreprise, ce qui implique qu'elles peuvent être abandonnées du jour au lendemain.
React Native est limité par l'UI de la plateforme (soit iOS , soit Android ) car il utilise le rendu de la plateforme. Ce n'est pas le cas avec Flutter , comme nous le verrons.
Les toolkits natifs sont fragmentés en fonction des versions d' Android et d' iOS car de nouvelles UI sont ajoutées, comme par exemple de nouvelles animations, mais elles ne sont
pas compatibles avec les anciennes versions. Il est donc difficile de créer des UI fonctionnant sur toutes les versions, même récentes, avec React Native ou des applications natives.
Avec Flutter , le rendu est effectué côté Flutter et non côté plateforme, tous ces problèmes de compatibilité n'existent donc pas.
React Native n'a pas de librairie officielle de tests d'intégration et d'UI contrairement à Flutter .
React Native n'a pas non plus de librairie officielle pour l'intégration et le déploiement continus ( continuous integration / continuous delivery ), vous ne pouvez donc pas
automatiser vos build et envois aux stores . Si vous voulez le faire, vous devrez utiliser des services tiers payants et non supportés par Facebook. Flutter a une solution de CD/CI
supportée par Google.
Flutter est plus moderne, beaucoup plus performant et plus future proof que React Native . Si vous ne connaissez aucun des deux nous vous recommandons très fortement
Flutter !