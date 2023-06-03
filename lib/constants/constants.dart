//Cards

// final _db = FirebaseFirestore.instance;
class CreditDetails {
  final String url;
  final String name;
  CreditDetails({required this.name, required this.url});
}

List creditList = [
  CreditDetails(
      name: "ApplesPC", url: "https://pixabay.com/users/applespc-19095802/"),
  CreditDetails(
      name: "Wenoc",
      url:
          "https://pixabay.com/photos/ai-generated-flower-cherry-blossom-7718952/"),
  CreditDetails(
      name: "Roses_Street",
      url:
          "https://pixabay.com/illustrations/generated-desk-book-inkwell-pen-7577945/"),
  CreditDetails(
      name: "artvizual",
      url:
          "https://pixabay.com/illustrations/winter-season-wilderness-outdoors-7593872/"),
  CreditDetails(
      name: "Hansuan_Fabregas",
      url:
          "https://pixabay.com/illustrations/ai-generated-woman-overboard-7979058/"),
  CreditDetails(
      name: "Alexandra_Koch",
      url:
          "https://pixabay.com/illustrations/ai-generated-cat-cloud-moon-asleep-7968325/"),
  CreditDetails(
      name: "Darkmoon_Art",
      url:
          "https://pixabay.com/illustrations/ai-generated-forest-tree-tunnel-7771756/"),
  CreditDetails(
      name: "susan-lu4esm",
      url:
          "https://pixabay.com/illustrations/ai-generated-art-cat-drawing-7935368/"),
  CreditDetails(
      name: "Ridderhof",
      url:
          "https://pixabay.com/illustrations/flowers-mot-moon-stars-planet-7711663/"),
  CreditDetails(
      name: "Hansuan_Fabregas",
      url:
          "https://pixabay.com/illustrations/ai-generated-love-two-romance-7979066/"),
  CreditDetails(
      name: "ApplesPC",
      url: "https://pixabay.com/photos/halloween-gothic-fantasy-dark-7430780/"),
  CreditDetails(
      name: "Franz26",
      url:
          "https://pixabay.com/photos/ai-generated-locomotive-steam-lock-8006921/"),
  CreditDetails(
      name: "Hansuan_Fabregas",
      url:
          "https://pixabay.com/illustrations/ai-generated-woman-overboard-7979059/"),
  CreditDetails(
      name: "susan-lu4esm",
      url:
          "https://pixabay.com/illustrations/ai-generated-woman-portrait-girl-7935369/"),
  CreditDetails(
      name: "Hansuan_Fabregas",
      url:
          "https://pixabay.com/vectors/crater-panorama-mountain-forest-7633035/"),
  CreditDetails(
      name: "AlanFrijns",
      url: "https://pixabay.com/photos/temple-overgrown-old-building-7459835/"),
  CreditDetails(
      name: "AlanFrijns",
      url:
          "https://pixabay.com/illustrations/ai-ai-generated-image-dimension-7685872/"),
  CreditDetails(
      name: "SuttleMedia",
      url:
          "https://pixabay.com/illustrations/ai-generated-new-moon-eclipse-7949036/"),
  CreditDetails(
      name: "AlanFrijns",
      url:
          "https://pixabay.com/illustrations/passage-entrance-ice-dimension-7685848/"),
  CreditDetails(
      name: "Hansuan_Fabregas",
      url:
          "https://pixabay.com/illustrations/mountain-ai-generated-lake-forest-7686642/"),
  CreditDetails(
      name: "hobim",
      url:
          "https://pixabay.com/illustrations/fairytale-mystic-fantasy-character-7990761/"),
  CreditDetails(
      name: "1PixStudio",
      url:
          "https://pixabay.com/illustrations/ai-generated-tree-river-dark-sea-7945042/"),
  CreditDetails(
      name: "AlanFrijns",
      url:
          "https://pixabay.com/illustrations/ai-generated-nature-outdoors-ai-art-7845461/"),
  CreditDetails(
      name: "AmeeTabz",
      url:
          "https://pixabay.com/illustrations/ai-generated-flowers-magnolia-bloom-7962874/"),
  CreditDetails(
      name: "Ridderhof",
      url:
          "https://pixabay.com/illustrations/apple-blossoms-blossom-trees-nature-7780364/"),
  CreditDetails(
      name: "TheDigitalArtist",
      url:
          "https://pixabay.com/illustrations/ai-generated-smoke-incense-7980967/"),
  CreditDetails(
      name: "Darkmoon_Art",
      url:
          "https://pixabay.com/illustrations/background-cat-cat-eyes-whiskers-7729864/"),
  CreditDetails(
      name: "ThankYouFantasyPictures",
      url:
          "https://pixabay.com/illustrations/portal-forest-deep-woods-dark-7783519/"),
  CreditDetails(
      name: "CrazyMind314",
      url:
          "https://pixabay.com/illustrations/ai-generated-man-universe-sky-7960121/"),
];

class CardDetails {
  final String audioName;
  final String imagePath;
  final String musicpath;

  const CardDetails(
      {required this.audioName,
      required this.imagePath,
      required this.musicpath});

  // static CardDetails fromSnapshot(DocumentSnapshot snap) {
  //   var snapshot = snap.data() as Map<String, dynamic>;
  //   return CardDetails(
  //       audioName: snapshot['audioName'],
  //       imagePath: snapshot['imagePath'],
  //       musicpath: snapshot['musicPath']);
  // }

  // Future<List<CardDetails>> getCardDetails() async {
  //   final snapshot = await _db.collection("music_card").get();
  //   final cardDetails =
  //       snapshot.docs.map((e) => CardDetails.fromSnapshot(e)).toList();
  //   return cardDetails;
  // }
}

// class FinalCardDetails extends GetxController {
//   final Rx<List<CardDetails>> _cardList = Rx<List<CardDetails>>([]);
//   List<CardDetails> get cardList => _cardList.value;
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     _cardList.bindStream(
//         _db.collection('video').snapshots().map((QuerySnapshot query) {
//       List<CardDetails> returnValue = [];
//       for (var element in query.docs) {
//         returnValue.add(CardDetails.fromSnapshot(element));
//       }
//       return returnValue;
//     }));
//   }
// }

// class to get duration

//card List

const cardList = [
  CardDetails(
      audioName: "The only way to do great work is to love what you do. ",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2F1(1).jpg?alt=media&token=174e839d-a692-4584-805b-0653c554659d&_gl=1*1c4gnct*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0Nzg5My4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fempty-mind-118973.mp3?alt=media&token=09efdbb9-9b13-4734-bdc1-7725ea6450fa&_gl=1*g7g381*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTIxOC4wLjAuMA.."),
  CardDetails(
      audioName:
          "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2F2(1).jpg?alt=media&token=a38899ae-0eba-43ac-a4a8-55c10ad6c056&_gl=1*1owx3fn*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTAzNi4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Flofi-beat-chill-7373.mp3?alt=media&token=6d0ce538-c352-4750-8276-0c00e7596796&_gl=1*1bevuq0*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTI3OS4wLjAuMA.."),
  CardDetails(
      audioName:
          "Don't wait for the perfect moment. Take the moment and make it perfect.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2F3(1).jpg?alt=media&token=739564f2-a6f3-4db1-81c2-24187e6a9b90&_gl=1*14rthny*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTA2Ny4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Flofi-study-112191.mp3?alt=media&token=40dad5e9-9458-4ad3-b48d-41962216b88b&_gl=1*2s1yfp*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTI5OS4wLjAuMA.."),
  CardDetails(
      audioName:
          "The harder you work for something, the greater you'll feel when you achieve it.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2F4(1).jpg?alt=media&token=169077c3-2f1e-41e5-9f8e-8630cfdd298e&_gl=1*132d4jk*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTA5MS4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Flost-ambient-lofi-60s-10821.mp3?alt=media&token=5fe0917a-d694-4422-b9c4-17409d8bb732&_gl=1*j80ks5*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTMxOS4wLjAuMA.."),
  CardDetails(
      audioName:
          "The future belongs to those who believe in the beauty of their dreams. ",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2F5(1).jpg?alt=media&token=34d59043-31d3-4c28-9deb-f97a3a79bb8a&_gl=1*xggrdf*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTEyMi4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Frain-and-nostalgia-version-60s-10820.mp3?alt=media&token=67051cf3-0eab-46a8-93ae-ec855bb6c869&_gl=1*1q5neef*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTM0MC4wLjAuMA.."),
  CardDetails(
      audioName: "Don't watch the clock; do what it does. Keep going.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2F6(1).jpg?alt=media&token=cc04deb5-3ee8-4086-8407-f4060d9143ea&_gl=1*eqg78p*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTE0NC4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fspirit-blossom-15285.mp3?alt=media&token=df41591a-8df4-4dfd-82f1-d35b95cae2fd&_gl=1*kpaohg*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTM2My4wLjAuMA.."),
  CardDetails(
      audioName:
          "Your time is limited, don't waste it living someone else's life. ",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2F7(1).jpg?alt=media&token=3ef25447-ea76-4ef6-9ab6-987f13d7bc2e&_gl=1*12w8frt*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTE2MS4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fwatr-fluid-10149.mp3?alt=media&token=94b51dc6-add9-41f2-b6b7-680893e19261&_gl=1*e6ewpn*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTM4NC4wLjAuMA.."),
  CardDetails(
      audioName: "Every accomplishment starts with the decision to try.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2F8(1).jpg?alt=media&token=6698ca09-9048-4347-8797-793edac71569&_gl=1*hlald3*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ0OTE4Ny4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fjho-deep-rain-8599.mp3?alt=media&token=ba8c362b-eb0d-4f78-a0ab-578d9ba1a5ec&_gl=1*8lmmwu*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ0NzQ4OS4zLjEuMTY4NTQ1MTAxNi4wLjAuMA.."),
  CardDetails(
      audioName:
          "Success is not about how high you climb but how you bounce back when you fall.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fgenerated-g0842e954f_1280.jpg?alt=media&token=8a426cfa-2620-4caf-ba61-0ee9d676d8e2&_gl=1*1mpq9y2*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDA4Mi4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fbathroom-chill-background-music-14977.mp3?alt=media&token=66204930-b6cf-440a-9ec7-7501d3e61e41&_gl=1*1jgaadr*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5MjY2NS4wLjAuMA.."),
  CardDetails(
      audioName:
          "You are never too old to set another goal or to dream a new dream. ",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fai-generated-g0e5ed6d72_1280.jpg?alt=media&token=e0ca4aee-4819-49d3-b64f-5307f4707b06&_gl=1*kkxke3*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5MzE0NS4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fchillhop-beat-quotthousand-milesquot-113254.mp3?alt=media&token=f6b96612-21f4-430d-8824-442ba1a96507&_gl=1*coler8*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5Mjg1OS4wLjAuMA.."),
  CardDetails(
      audioName: "In the middle of difficulty lies opportunity.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fai-generated-g5a59df155_1280.png?alt=media&token=30c19b72-24cb-484f-87e5-86c071dee5f0&_gl=1*a3s5nz*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5MzE4Ni4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fcoffee-chill-out-15283.mp3?alt=media&token=9b19e571-2706-4fcc-b515-bfd4fe713eea&_gl=1*1i7v3ea*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDg5Mi4wLjAuMA.."),
  CardDetails(
      audioName:
          "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fwinter-gb9312863f_1280.jpg?alt=media&token=a6bd1e25-b5d3-429e-85e4-89c8361434ec&_gl=1*fy9bfb*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDY4Ny4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fthe-weekend-117427.mp3?alt=media&token=261bbe2b-64fb-4b44-b515-37eb6e318a08&_gl=1*14owtr0*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDk3Ni4wLjAuMA.."),
  CardDetails(
      audioName: "Believe you can and you're halfway there. ",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Ftemple-g28d2603ba_1280.jpg?alt=media&token=876ac0b0-74ea-4ae8-ab1d-6c5333e59835&_gl=1*bvo0xg*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDY4MS4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fsunset-vibes-lo-fichillhop-9503.mp3?alt=media&token=c3b3d138-0e4b-44f1-a17c-b57a2cba1471&_gl=1*zsqr0f*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDk3MC4wLjAuMA.."),
  CardDetails(
      audioName:
          "The only person you are destined to become is the person you decide to be.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fleaves-g822712e1f_1280.jpg?alt=media&token=823d389b-5b6c-44a6-a472-24c9af691840&_gl=1*mfmf49*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDY3NS4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fstreet-food-112193.mp3?alt=media&token=ccb09bbc-44ce-469c-9a6b-4f6d8d34f3e2&_gl=1*fpm67d*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDk2Mi4wLjAuMA.."),
  CardDetails(
      audioName:
          "Failure is not the opposite of success; it's a stepping stone to success.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fcrater-gda650e664_1280.png?alt=media&token=cfa1a78d-368b-45dc-8fb1-2d641f35cee5&_gl=1*6cvmqr*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDY2OS4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Frain-forest-sleep-yoga-meditation-relaxation-2044.mp3?alt=media&token=3ef8a65f-ff57-494e-beb6-5736605cad25&_gl=1*1qiykj8*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDk1MC4wLjAuMA.."),
  CardDetails(
      audioName: "The secret to getting ahead is getting started.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fai-generated-gcc73a2594_1280.jpg?alt=media&token=69f31e9d-3228-47a4-8b47-70e589f3a81d&_gl=1*dcddk4*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDY2Mi4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Flofi-rhodes-for-introoutro-0132-12949.mp3?alt=media&token=bb086f1c-519a-4cd2-aaf6-9d87211a42af&_gl=1*gvf3sh*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDk0MC4wLjAuMA.."),
  CardDetails(
      audioName: "Success is not in what you have, but who you are",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fai-generated-g6408f24fe_1280.jpg?alt=media&token=387d4780-5c9c-4090-8bcc-aff1d6dd938e&_gl=1*17yl8jt*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDY1NC4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Flofi-in-the-bank-115135.mp3?alt=media&token=83be5c1f-2b6a-4604-8eec-c9119be94401&_gl=1*iw9yhy*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDkyOS4wLjAuMA.."),
  CardDetails(
      audioName: "The only way to do something great is to love what you do.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fai-generated-g5eaa95635_1280.jpg?alt=media&token=6d2cc37c-f32d-40a2-a44f-52af7170432d&_gl=1*16vu053*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDY0MS4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fleva-eternity-149473.mp3?alt=media&token=a3f68a48-e079-4742-8224-6d892e214c8b&_gl=1*1k50g8h*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDkxNy4wLjAuMA.."),
  CardDetails(
      audioName: "Don't be afraid to give up the good to go for the great.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fai-generated-g0e5ed6d72_1280.jpg?alt=media&token=e0ca4aee-4819-49d3-b64f-5307f4707b06&_gl=1*14ao67i*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDYxOS4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Flet-it-go-12279.mp3?alt=media&token=90554f75-ffb5-4cf3-8824-6b0598f1f7e9&_gl=1*56quyg*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDkwOS4wLjAuMA.."),
  CardDetails(
      audioName: "Embrace the challenge, conquer the impossible.",
      imagePath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/images%2Fai-generated-g2b24ef910_1280.jpg?alt=media&token=a0f27041-79fd-4512-b45b-b16966caed24&_gl=1*1qt02lc*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDYyOC4wLjAuMA..",
      musicpath:
          "https://firebasestorage.googleapis.com/v0/b/lofi-moosic.appspot.com/o/audios%2Fembrace-12278.mp3?alt=media&token=2eb22a64-ac95-4fbf-8eaa-db8b76ecc311&_gl=1*eiegcf*_ga*MTY1NDc1ODA0My4xNjg1MzY2MzQ4*_ga_CW55HF8NVT*MTY4NTQ5MTc4NC43LjEuMTY4NTQ5NDkwMi4wLjAuMA.."),
];
