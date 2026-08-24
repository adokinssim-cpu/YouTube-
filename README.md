📱 YouTube Clone - Application Mobile Flutter
Un clone moderne, élégant et fidèle de l'application mobile YouTube, développé avec le framework Flutter et le langage Dart.

📸 Aperçu & Fonctionnalités
🌙 Dark Theme YouTube Officiel : Interface sombre soignée basée sur les codes graphiques de YouTube (#0F0F0F).
🧭 Navigation par Onglets (BottomNavigationBar) : Accès direct aux sections Accueil, Shorts, Créer (+), Abonnements et Vous.
🔍 En-tête Personnalisé (CustomAppBar) : Logo YouTube, boutons Cast, Notifications, Recherche et Avatar utilisateur.
🏷️ Filtres de Catégories Horizontaux (CategoryChips) : Barre de sélection interactive avec ChoiceChip.
🎬 Flux de Vidéos Dynamique (HomePage & VideoCard) :
Affichage des miniatures avec badge de durée superposé.
Titres avec gestion des débordements (maxLines, ellipsis).
Informations de la chaîne (avatar, vues, date de publication).
Effet tactile ripple avec InkWell.
📺 Page de Détail Vidéo (VideoDetailPage) :
Lecteur vidéo simulé au ratio 16:9 (AspectRatio).
Bouton de fermeture / retour avec transition animée.
Barre d'actions rapides (J'aime, Partager, Télécharger, Enregistrer).
Encart chaîne avec bouton "S'abonner".
⚡ Expérience Shorts Verticale (ShortsPage) :
Défilement vertical plein écran fluide avec PageView.builder.
Dégradé sombre pour la lisibilité et boutons d'interactions latérales (Like, Commentaires, Partage).
📂 Architecture du Projet
Le projet suit une architecture modulaire avec séparation nette des données, des modèles et des interfaces :

lib/
│
├── 🧠 models/
│   └── video_model.dart        # Modèle de données typé (classe Video immuable)
│
├── 💾 data/
│   └── mock_data.dart          # Données statiques (vidéos, catégories, URLs)
│
├── 🎨 pages/
│   ├── main_screen.dart        # Écran principal gérant la BottomNavigationBar
│   ├── home_page.dart          # Flux d'accueil avec les filtres et la liste
│   ├── shorts_page.dart        # Lecteur de Shorts plein écran (scroll vertical)
│   └── video_detail_page.dart  # Écran de lecture détaillée d'une vidéo
│
├── 🧩 widgets/
│   ├── custom_app_bar.dart     # AppBar personnalisée avec logo et actions
│   ├── category_chips.dart     # Barre de filtres de catégories déroulante
│   └── video_card.dart         # Composant réutilisable pour afficher une vidéo
│
└── 🚀 main.dart                # Point d'entrée de l'application & configuration du thème
🛠️ Technologies et Widgets Clés
Framework : Flutter (SDK Dart 3+)
Architecture & Patterns : Composants réutilisables, séparation Modèle-Vue-Données.
Widgets Structure & Layout : Scaffold, SafeArea, Column, Row, Stack, Positioned, Expanded, AspectRatio, SizedBox, Padding.
Listes & Défilement : ListView.builder (vertical & horizontal), PageView.builder (scroll vertical).
Composants d'Interaction : ChoiceChip, InkWell, IconButton, ElevatedButton.
Navigation : BottomNavigationBar, Navigator.push, Navigator.pop, MaterialPageRoute.
🚀 Installation & Lancement
Prérequis
Flutter SDK installé (version >= 3.0.0).
Un émulateur Android/iOS ou un appareil physique configuré.
Étapes
Naviguer dans le dossier du projet :

cd "Flutter_youtube UI/youtube"
Récupérer les dépendances :

flutter pub get
Lancer l'application :

flutter run
👥 Équipe de Développement
Projet réalisé en équipe de 3 personnes :

Développeur 1 : Architecture, Modèles de données & Navigation globale.
Développeur 2 : Écran d'accueil, Widgets réutilisables & Thème sombre.
Développeur 3 : Page Shorts, Lecteur Vidéo & Responsive design.
