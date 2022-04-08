import 'dart:collection';
import '../model/m_article.dart';

class ControllerArticle {
  static final List<ModleArticle> _dataArticle = [
    ModleArticle(
        title:
            " تأملوا قوله تعالي: «مَنْ كَانَ يرِيدُ الْعَاجِلَةَ» و«وَمَنْ أَرَادَ الْآَخِرَةَ»، فالكلام هنا عن مفهوم الإرادة، وجميع مَن في الأرض بهذا المعني مريدون: إما مريداً للدنيا وإما مريداً للآخرة ولله سبحانه وتعالي، ومن ثم فوجودنا وحياتنا ومصيرنا جميعاً في هذا الدنيا مرتبطة بما نحن نريد ونتوجه أو نقصد",
        imageUrl:
            "https://i1.sndcdn.com/artworks-PobyBATSPYTui9Cb-pISyfg-t500x500.jpg",
        urlPage:
            "https://www.alhabibali.com/writing/%d9%85%d9%81%d9%87%d9%88%d9%85-%d8%a7%d9%84%d8%a5%d8%b1%d8%a7%d8%af%d8%a9/"),
    ModleArticle(
        title:
            "بداية الطريق لمن أراد أن يصل الى الله تعالى باعث، وهو خاطر يخطر في قلب الانسان، ومبدأ كل طاعة خاطر ومبدأ كل معصية خاطر في القلب، ولهذا جعلوا القلب مفتاح كل شيء، وجعل الحق سبحانه وتعالى القلب موضع نظره",
        imageUrl:
            "https://i1.sndcdn.com/artworks-TGFUxyZX1CTBbCC0-phxyUw-t500x500.jpg",
        urlPage:
            "https://www.alhabibali.com/writing/%d9%85%d9%81%d9%87%d9%88%d9%85-%d8%a7%d9%84%d8%a8%d8%a7%d8%b9%d8%ab/"),
    ModleArticle(
        title:
            "التوبة بمعني العلم بأن كل حركة وسكنة والتفاتة ونظرة مكتوبة ومسجلة، وإن كانت صدورنا لتضيق بهذا المعني، لأننا نأخذها بمفهوم الملاحقة أو المتابعة والحساب، إلا أن لها مفهوماً ودلالة أعمق وهي معني من معاني إكرام الله تعالي لك وإجلاله",
        imageUrl:
            "https://i1.sndcdn.com/artworks-BaX9FhQIc8DaqMft-X0JZzA-t500x500.jpg",
        urlPage:
            "https://www.alhabibali.com/writing/%d8%a3%d9%88%d9%84-%d8%a7%d9%84%d8%b7%d8%b1%d9%8a%d9%82-%d8%aa%d9%88%d8%a8%d8%a9/"),
    ModleArticle(
        title:
            "  إذا تكلمنا عن القلب في علم السلوك إلي الله، فليس المقصود به تلك العضلة الصنوبرية التي تضخ الدم، مثلما لا نقصد بالعقل ذلك الذي يرسل ويتلقي الإشارات",
        imageUrl:
            "https://i1.sndcdn.com/artworks-KZBPKv1JB74SsASj-vnzZTg-t500x500.jpg",
        urlPage:
            "https://www.alhabibali.com/writing/%d8%a7%d9%84%d8%a8%d8%af%d8%a7%d9%8a%d8%a9-%d8%b7%d9%87%d8%a7%d8%b1%d8%a9-%d8%a7%d9%84%d9%82%d9%84%d8%a8/"),
    ModleArticle(
        title:
            " فإذا أردت معرفة أثر هذا المنفذ علي قلبك راجع الأحاديث والآثار التي تحث علي طلب الحلال وأن من أمسي كالاً من عمل يديه أمسي مغفوراً له، وأن خروج العبد في طلب الحلال يرفعه إلي مراتب المجاهدين",
        imageUrl:
            "https://i1.sndcdn.com/artworks-w52ljPbPzruE9yhi-uQoqiA-t500x500.jpg",
        urlPage:
            "https://www.alhabibali.com/writing/%d8%b7%d9%87%d8%a7%d8%b1%d8%a9-%d8%a7%d9%84%d8%b8%d8%a7%d9%87%d8%b1-%d9%88%d8%a7%d9%84%d8%ae%d9%88%d8%a7%d8%b7%d8%b1/"),
    ModleArticle(
        title:
            "الشروع في الحديث عن ميدان خواطر الخير والشر إنما يعني أن تنتقل من حالة ضعف لا تليق بالسالك إلي الله، يكون فيها القلب تابعاً للخواطر التي تتوارد وتتلاعب، به إلي حالة يقود فيها الخواطر تلك ويضبطها",
        imageUrl:
            "https://i1.sndcdn.com/artworks-4xtbX1AyzqE9uZsI-ddgPWw-t500x500.jpg",
        urlPage:
            "https://www.alhabibali.com/writing/%d8%aa%d9%85%d9%8a%d9%8a%d8%b2-%d8%ae%d9%88%d8%a7%d8%b7%d8%b1-%d8%a7%d9%84%d8%b4%d8%b1/"),
  ];

  static UnmodifiableListView<ModleArticle> get dataArticle =>
      UnmodifiableListView(_dataArticle);
  static int get dataLength => _dataArticle.length;
}
