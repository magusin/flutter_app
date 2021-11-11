# flutter_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



Première application
L'éditeur de code
Nous recommandons Android Studio (que nous devrons installer pour l'émulateur de toute façon) ou VS Code .

Installation de Git
Sur Windows , téléchargez et installer Git en utilisant l'exécutable officiel que vous trouverez ici.
Installation du SDK Flutter
Pour installer le SDK Flutter stable, il suffit d'aller ici.
Téléchargez le SDK en cliquant sur le bouton bleu.
Ensuite il faut extraire le fichier téléchargé mais pas n'importe où !
Il faut l'extraire dans : C:\Users\<votre_utilisateur>\Documents .
Modification du PATH
Dans la barre de recherche Windows tapez "environnement" ou "env" puis sélectionnez Modifier Variables d'environnement puis Variables d'environnement , cherchez la
variable Path et cliquez sur modifier.
Cliquez sur "Parcourir…" et allez dans le dossier où vous avez extrait Flutter .
Vérification de l'installation
Vous pouvez ensuite vérifier ce qu'il nous reste à installer avec :
flutter doctor
Il faut installer tout ce qui manque.
Installation d' Android Studio
Pour installer Android Studio , il suffit d'aller ici.

Vous devez ensuite l'extraire et le mettre à l'endroit que vous voulez, par exemple au même endroit que flutter .
Installation des paquets dans Android Studio
Dans Android Studio laissez tout par défaut et faites next plusieurs fois puis finish .
Cela va télécharger les premiers paquets nécessaires. Redémarrez ensuite Android Studio .
Allez dans Tools > SDK Manager > SDK Tools .
Cochez Android SDK Command-line tools .
Cliquez sur Apply .
Accepter les licences d'utilisation
Ensuite ouvrez un nouveau terminal et faites :
flutter doctor --android-licenses
Refaites une dernière fois :
flutter doctor
Vous devez avoir tout passé en vert et avoir le message No issues found! .
Si ce n'est pas bon reprenez ce qu'il manque.
Installation des extensions VS Code .
Dans VS Code allez dans l'onglet extension à gauche.
Recherchez flutter et installez la première.
Création d'un mobile virtuel
Allez dans Android Studio > Tools > Android > AVD Manager puis cliquez sur Create Virtual Device .
Choisissez par exemple Pixel 5 puis faites Next .
Installez ensuite une version d' Android puis faites Next .


Dans Graphics sélectionnez Hardware afin d'utiliser votre carte graphique. En sélectionnant Software vous aurez de moins bonnes performances.
Cliquez enfin sur Finish .
Enfin cliquez sur la flèche verte Run pour lancer l'émulateur.
