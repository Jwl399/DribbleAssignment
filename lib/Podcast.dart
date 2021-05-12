class Podcast{
  final String title;
  final String artist;
  final String image;
  final String genre;
  Podcast({this.title, this.artist, this.image, this.genre});

}

List<Podcast> recommended = [
  Podcast(
    title: "reco1",
    artist: "I guess me",
    image: 'assets/podcasts/stonk.jpg',
    genre: "funny times",
  ),
  Podcast(
    title: "20 minute flutter learn it all",
    artist: "definitely not me",
    image: "assets/podcasts/flutter.png",
    genre: "funny times",
  ),
  Podcast(
    title: "Growing potatoes in a bathtub",
    artist: "proboably me",
    image: "assets/podcasts/potato2.jfif",
    genre: "upscale gardening",
  ),
  Podcast(
    title: "Pencil Slingshots",
    artist: "12 Year Old Me",
    image: "assets/podcasts/pencils.jfif",
    genre: "Modern Weaponry",
  ),
  Podcast(
    title: "The Coffee Made Me Do It",
    artist: "Current Me",
    image: "assets/podcasts/coffee.jfif",
    genre: "Allnighters",
  ),
];

