import '../models/video_model.dart';

// Liste de categories pour la barre de filtres horizontale
final List<String> mockCategories = [
  'Tous',
  'Musique',
  'Flutter',
  'Tutoriels',
  'En direct',
  'Réseaux',
];

// Liste de videos statiques pour simuler le flux YouTube
final List<Video> mockVideos = [
  const Video(
    id:'1',
    title: 'Découvrir Flutter en 20 minutes - Guide Débutant',
    thumbnailUrl: 'https://picsum.photos/id/1/600/350',
    duration: '10:15',
    views: '125 k views',
    uploadTime: 'il y a 2 jours',
    channelName: 'Flutter Dev FR',
    channelAvatarUrl:
    'https://picsum.photos/id/1005/100/100',
  
  ),

  const Video(
    id:'2',
    title: 'Les meilleures pratiques UI/UX pour vos applications mobiles',
    thumbnailUrl:'https://picsum.photos/id/20/600/350',
    duration: '18:40',
    views: '45 k views',
    uploadTime: 'il y a 1 semaine',
    channelName: 'Design Code',
    channelAvatarUrl: 'https://picsum.photos/id/1012/100/100',
  ),


];