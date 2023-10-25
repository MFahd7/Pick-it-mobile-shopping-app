import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'xfaxhvy9': {
      'en': 'PICK IT',
      'ar': '',
    },
    'yb6iv601': {
      'en':
          'Search and Pick it                                                  ',
      'ar': '',
    },
    'yv3ecvu0': {
      'en': 'Phones & Tablets',
      'ar': 'الهواتف والأجهزة اللوحية',
    },
    'cqx83eph': {
      'en': 'Electronics',
      'ar': 'إلكترونيات',
    },
    'texm7ju4': {
      'en': 'Clothes',
      'ar': 'ملابس',
    },
    'rcvd3yf0': {
      'en': 'Groceries',
      'ar': 'البقالة',
    },
    'ydymvk25': {
      'en': 'Health & Beauty',
      'ar': 'الصحة والجمال',
    },
    'ibq3ud77': {
      'en': 'Phones & Tablets',
      'ar': 'الهواتف والأجهزة اللوحية',
    },
    'dx5inmzx': {
      'en': 'On sale',
      'ar': 'فئة',
    },
    'razc71vt': {
      'en': 'Category',
      'ar': 'فئة',
    },
    '4anwqnmx': {
      'en': 'Phones & Tablets',
      'ar': 'الهواتف والأجهزة اللوحية',
    },
    'ri1tqp5e': {
      'en': 'Apple, Samsung, Xiaomi, etc.',
      'ar': 'Apple و Samsung و Xiaomi وما إلى ذلك.',
    },
    'f0ap8s5p': {
      'en': 'Electronics',
      'ar': 'إلكترونيات',
    },
    'hcmreja7': {
      'en': 'TVs, ACs, Appliances, Laptops, etc.',
      'ar':
          'أجهزة التلفاز وسماعات الرأس والأجهزة المنزلية وأجهزة الكمبيوتر المحمولة وما إلى ذلك.',
    },
    'rlf60czq': {
      'en': 'Clothes',
      'ar': 'ملابس',
    },
    '7l06f8mj': {
      'en': 'T-Shirts, Pants, Dresses ,Shoes, etc.',
      'ar': 'قمصان ، بناطيل ، قمصان ، أحذية ، إلخ.',
    },
    'yemivf8x': {
      'en': 'Groceries',
      'ar': 'البقالة',
    },
    '4q778ffs': {
      'en': 'Rice, Pasta, Juices, Baking, Water, Herbs, etc.',
      'ar':
          'الأرز ، المعكرونة ، العصائر ، الخبز ، الماء ، البلاستيك ، الأعشاب ، إلخ.',
    },
    'qttatxpg': {
      'en': 'Health & Beauty',
      'ar': 'الصحة والجمال',
    },
    'uovk1ddx': {
      'en': 'Personal Care, Luxury Beauty, Makeup, etc.',
      'ar': 'العناية الشخصية ، مستحضرات التجميل الفاخرة ، الماكياج ، إلخ.',
    },
    '8lv03ufw': {
      'en': 'Used Products',
      'ar': 'منتجات مستخدمة',
    },
    'spkblgx1': {
      'en': 'Add',
      'ar': '',
    },
    'pqpfxmol': {
      'en': 'View Now',
      'ar': 'أستعرض',
    },
    'umiehdfr': {
      'en': 'Devils Cove',
      'ar': '',
    },
    'srjy6jwk': {
      'en': '4.7 Stars',
      'ar': '',
    },
    'unj07jlq': {
      'en': 'View Now',
      'ar': '',
    },
    'du9rsyv3': {
      'en': 'Juniper Beach',
      'ar': '',
    },
    '7e23m32r': {
      'en': '4.5 Stars',
      'ar': '',
    },
    'kdnv3fhl': {
      'en': 'View Now',
      'ar': '',
    },
    'joqtkez5': {
      'en': 'Andrea Davis',
      'ar': 'أندريا ديفيس',
    },
    'x01h76x7': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Product_Info
  {
    'm9qdo8l3': {
      'en': 'Button',
      'ar': '',
    },
    'xhpi0dh9': {
      'en': 'Quantity:',
      'ar': 'الكمية:',
    },
    'bi2xqs00': {
      'en': 'Add to cart',
      'ar': 'أضف إلى السلة',
    },
    '7hqhix1o': {
      'en': 'Quantity:',
      'ar': 'الكمية:',
    },
    '52hziiek': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Cart_shop
  {
    'liinzbr2': {
      'en': 'CheckOut',
      'ar': 'الدفع',
    },
    '72tc31ou': {
      'en': 'Seems you didn\'t add any products',
      'ar': 'يبدو أنك لم تضيف أي منتجات',
    },
    'hr6kq1gt': {
      'en':
          'Browse our shop to pick items you want to order, once you add products, they will appear here.',
      'ar':
          'تصفح متجرنا لاختيار العناصر التي تريد طلبها، بمجرد إضافة المنتجات، ستظهر هنا.',
    },
    'ceb3phwz': {
      'en': 'Go to Home',
      'ar': '',
    },
    'rdihxyik': {
      'en': 'Cart',
      'ar': 'عربة التسوق',
    },
  },
  // PAYMANT
  {
    '0cnsctcu': {
      'en': 'Select payment and address',
      'ar': '',
    },
    '7up48k6p': {
      'en': 'Payment method:',
      'ar': '',
    },
    '1ay3drvn': {
      'en': 'Cash on delivery (COD)',
      'ar': '',
    },
    'xwbsynxk': {
      'en': ' Other methods are coming soon...',
      'ar': '',
    },
    'jennxb68': {
      'en': 'Deliver to:',
      'ar': '',
    },
    '5xyt0oo2': {
      'en': ' St. Name',
      'ar': '',
    },
    'aqdiq9te': {
      'en': 'Building No.',
      'ar': '',
    },
    '24dnp3w3': {
      'en': 'Apartment No.',
      'ar': '',
    },
    'qwe7zh12': {
      'en': 'Cairo',
      'ar': '',
    },
    '626jn8us': {
      'en': 'Mansoura',
      'ar': '',
    },
    'qmkjnh5o': {
      'en': 'Giza',
      'ar': '',
    },
    '43l8frlu': {
      'en': 'Alexandria',
      'ar': '',
    },
    'e1s0uz2i': {
      'en': 'Port Said',
      'ar': '',
    },
    '2pkek6ge': {
      'en': 'Suez',
      'ar': '',
    },
    'rju6f0yl': {
      'en': 'Tanta',
      'ar': '',
    },
    '8g70twbq': {
      'en': 'Asyut',
      'ar': '',
    },
    'np495lpc': {
      'en': 'Fayoum',
      'ar': '',
    },
    '3v5jzyc5': {
      'en': 'Ismailia',
      'ar': '',
    },
    '47od8td9': {
      'en': 'Luxor',
      'ar': '',
    },
    'g7dqe5c7': {
      'en': 'Sohag',
      'ar': '',
    },
    '8fejjf2m': {
      'en': 'Aswan',
      'ar': '',
    },
    'n675kd0u': {
      'en': 'Search for an item...',
      'ar': '',
    },
    '8vuw2ask': {
      'en': 'Price Breakdown',
      'ar': '',
    },
    'q02ky51f': {
      'en': 'Base Price',
      'ar': '',
    },
    'rppfda7a': {
      'en': 'Delivery fees',
      'ar': '',
    },
    'o0tvpaiw': {
      'en': '25 EGP',
      'ar': '',
    },
    'e829besf': {
      'en': 'Total',
      'ar': '',
    },
    '2u46r35u': {
      'en': 'Place Order',
      'ar': '',
    },
    'avpopx6l': {
      'en': 'Home',
      'ar': '',
    },
  },
  // FAVORITE
  {
    'j6tf23qy': {
      'en': 'Seems you didn\'t like any products.',
      'ar': 'يبدو أنك لم تحب أي منتجات.',
    },
    'hwj7vtix': {
      'en':
          'Browse our shop then like items you want to add, once you like them, they will appear here.',
      'ar':
          'تصفح متجرنا ثم مثل العناصر التي تريد إضافتها، بمجرد إعجابك بها، ستظهر هنا.',
    },
    '0onzn7zy': {
      'en': 'Go to Home',
      'ar': '',
    },
    'z0upc3gp': {
      'en': 'Favorite',
      'ar': 'مفضل',
    },
  },
  // PROFILE
  {
    'ovsitecu': {
      'en': 'Switch to Dark Mode',
      'ar': 'تحويل للوضع الليلي',
    },
    'aizuitvo': {
      'en': 'Switch to Light Mode',
      'ar': 'تحويل الى الوضع الاعتيادي',
    },
    '1lmy493q': {
      'en': 'Edit Profile',
      'ar': 'تعديل الصفحة الشخصية',
    },
    'jbdwq9mm': {
      'en': 'My Orders',
      'ar': 'طلباتي',
    },
    'jpwng98w': {
      'en': 'Log Out',
      'ar': 'خروج',
    },
    '1yqpg8or': {
      'en': 'Profile',
      'ar': 'صفحتي',
    },
  },
  // Login
  {
    'vcanfxi1': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
    },
    'sgq5movk': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    '4i1znysu': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'dsk3tfs2': {
      'en': 'Login',
      'ar': ' الدخول',
    },
    '9ldww1ra': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
    },
    'xjicayrb': {
      'en': 'Don\'t have an account?',
      'ar': 'ليس لديك حساب؟',
    },
    'w8z8fy9g': {
      'en': 'Create now',
      'ar': 'اصنع الان',
    },
    'kwl426y5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Onboarding
  {
    'mrfljhtu': {
      'en': 'Page One',
      'ar': 'الصفحة الاولى',
    },
    '8gabzqzy': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'ar':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    },
    'yo1vwsgj': {
      'en': 'Page Two',
      'ar': 'الصفحة الثانية',
    },
    'ybr4087k': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'ar':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    },
    '737nn6f7': {
      'en': 'Page Three',
      'ar': 'الصفحة الثالثة',
    },
    '8blha7ju': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'ar':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    },
    '82eda0wp': {
      'en': 'Login',
      'ar': 'دخول',
    },
    'vryx3p0z': {
      'en': 'Register',
      'ar': 'تسجيل الدخول',
    },
    '8iyrjsd3': {
      'en': 'Welcome',
      'ar': '',
    },
    'a1imc9o5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Register
  {
    'a3wj00k3': {
      'en': 'Buyer',
      'ar': 'مشتر',
    },
    'jrpaazh6': {
      'en': 'Enter your full name',
      'ar': 'أدخل اسمك الكامل',
    },
    '61k10sqi': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
    },
    'szcphq52': {
      'en': 'Enter your password...',
      'ar': 'ادخل رقمك السري...',
    },
    'zepex3nb': {
      'en': 'Enter your phone no.',
      'ar': 'أدخل رقم هاتفك.',
    },
    '5f0zyhpw': {
      'en': '+20',
      'ar': '',
    },
    '3n5fa1xl': {
      'en': 'Cairo',
      'ar': 'القاهرة',
    },
    'b692wlhv': {
      'en': 'Giza',
      'ar': 'الجيزة',
    },
    '0p0gh5fv': {
      'en': 'Alexandria',
      'ar': 'الإسكندرية',
    },
    'wix0oar8': {
      'en': 'Port Said',
      'ar': 'بورسعيد',
    },
    'gzog0134': {
      'en': 'Suez',
      'ar': 'السويس',
    },
    '5j7fjvhf': {
      'en': 'Tanta',
      'ar': 'طنطا',
    },
    'o240ajdr': {
      'en': 'Asyut',
      'ar': 'أسيوط',
    },
    '06bdm12y': {
      'en': 'Fayoum',
      'ar': 'الفيوم',
    },
    'akwm0vex': {
      'en': 'Ismailia',
      'ar': 'الإسماعيلية',
    },
    '3g60lt0d': {
      'en': 'Luxor',
      'ar': 'الأقصر',
    },
    'rnbn5l4s': {
      'en': 'Sohag',
      'ar': 'سوهاج',
    },
    'lf5me4qb': {
      'en': 'Aswan',
      'ar': 'أسوان',
    },
    'a48onfkb': {
      'en': 'Mansoura',
      'ar': 'المنصورة',
    },
    'rotxvjag': {
      'en': 'Which city?',
      'ar': 'اي مدينة؟',
    },
    '48894chh': {
      'en': 'Birth date',
      'ar': '',
    },
    'j3muxhqq': {
      'en': 'Register',
      'ar': 'سجل الان',
    },
    'a1i2jnx9': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // edit_profile
  {
    'wrvklhwv': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'zrbut43a': {
      'en': 'Full Name',
      'ar': 'الاسم الكامل',
    },
    '6ed1dq7y': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '9v0kmrls': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '2j68ypjt': {
      'en': 'Phone No.',
      'ar': 'رقم الهاتف.',
    },
    '2c1pghud': {
      'en': 'Cairo',
      'ar': 'القاهرة',
    },
    'f2e25j9l': {
      'en': 'Giza',
      'ar': 'الجيزة',
    },
    'qdhscmzx': {
      'en': 'Alexandria',
      'ar': 'الإسكندرية',
    },
    'xw4ivoo8': {
      'en': 'Port Said',
      'ar': 'بورسعيد',
    },
    'bib11e8w': {
      'en': 'Suez',
      'ar': 'السويس',
    },
    'jl4z0ub4': {
      'en': 'Tanta',
      'ar': 'طنطا',
    },
    'crn7dzxl': {
      'en': 'Asyut',
      'ar': 'أسيوط',
    },
    'hz6i2ng7': {
      'en': 'Fayoum',
      'ar': 'الفيوم',
    },
    'r3grihrs': {
      'en': 'Ismailia',
      'ar': 'الإسماعيلية',
    },
    'svrmf88z': {
      'en': 'Luxor',
      'ar': 'الأقصر',
    },
    '3mlya5cj': {
      'en': 'Sohag',
      'ar': 'سوهاج',
    },
    'mvkikx6v': {
      'en': 'Aswan',
      'ar': 'أسوان',
    },
    '2x0y8gk8': {
      'en': 'Mansoura',
      'ar': 'المنصورة',
    },
    '8o7fwot1': {
      'en': 'Select City',
      'ar': 'اختر مدينة',
    },
    'q8b86ab7': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    '04z54p2r': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'swsd0gb8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'i7z9zjsi': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ajchj25r': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
  },
  // Search_Page
  {
    'x0my8ipx': {
      'en': 'Search and Pick it',
      'ar': '',
    },
    'byiuetwr': {
      'en': 'Option 1',
      'ar': '',
    },
    'nlrq3sdy': {
      'en': 'Matching search',
      'ar': '',
    },
    'm0tqyac7': {
      'en': 'Home',
      'ar': '',
    },
    'xeq1hnbx': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ProductList
  {
    'jvo81uiv': {
      'en': 'Home',
      'ar': '',
    },
    'v82rl7u2': {
      'en': 'All',
      'ar': '',
    },
    'adtcrmaa': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'a141u72w': {
      'en': 'Latest Products',
      'ar': '',
    },
    '7l4w4qpr': {
      'en': 'Apple',
      'ar': '',
    },
    'mdxo0y3c': {
      'en': 'Search for the product...',
      'ar': '',
    },
    't4xmsu5o': {
      'en': 'Latest Products',
      'ar': '',
    },
    'gp8poj1k': {
      'en': 'Samsung',
      'ar': '',
    },
    '9ha3oa7u': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'so3bvkmh': {
      'en': 'Latest Products',
      'ar': '',
    },
    '05ryhnrb': {
      'en': 'Xiaomi',
      'ar': '',
    },
    'zbf27mh4': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'mvlno1r7': {
      'en': 'Latest Products',
      'ar': '',
    },
    'q50hfaut': {
      'en': 'Huawei',
      'ar': '',
    },
    'pd5rfqqr': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'lsjpryj8': {
      'en': 'Latest Products',
      'ar': '',
    },
    'do0cl4o3': {
      'en': 'Oppo',
      'ar': '',
    },
    'i3yra808': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'twoq5iya': {
      'en': 'Latest Products',
      'ar': '',
    },
    '4m747l6o': {
      'en': 'Products',
      'ar': '',
    },
  },
  // ProductList_Elec
  {
    'tf6otd4l': {
      'en': 'Home',
      'ar': '',
    },
    '1mdvvh1m': {
      'en': 'All',
      'ar': '',
    },
    '75pgtegp': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'ttrxhuee': {
      'en': 'Latest Products',
      'ar': '',
    },
    '4dz8y1vx': {
      'en': 'Laptops & PCs',
      'ar': '',
    },
    'zb2tv34r': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'if6x5q1d': {
      'en': 'Latest Products',
      'ar': '',
    },
    '1w3k93q3': {
      'en': 'TVs',
      'ar': '',
    },
    'ojq9h01y': {
      'en': 'Search for the product...',
      'ar': '',
    },
    '7nlk2g9o': {
      'en': 'Latest Products',
      'ar': '',
    },
    'svplm026': {
      'en': 'ACs',
      'ar': '',
    },
    'tzmi3dtz': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'c5hb4880': {
      'en': 'Latest Products',
      'ar': '',
    },
    '0lre1f4n': {
      'en': 'Headphones',
      'ar': '',
    },
    'wpxz9awm': {
      'en': 'Search for the product...',
      'ar': '',
    },
    '5b8lvbp0': {
      'en': 'Latest Products',
      'ar': '',
    },
    'e54gk6ov': {
      'en': 'Speakers',
      'ar': '',
    },
    'kiqng5er': {
      'en': 'Search for the product...',
      'ar': '',
    },
    '0wek8t36': {
      'en': 'Latest Products',
      'ar': '',
    },
    'eza6e0yt': {
      'en': 'Products',
      'ar': '',
    },
  },
  // ProductList_Clot
  {
    'g25l11zz': {
      'en': 'Home',
      'ar': '',
    },
    'znxqx3lc': {
      'en': 'All',
      'ar': '',
    },
    'f0zpv14n': {
      'en': 'Search for the product...',
      'ar': '',
    },
    '1q5i4v6s': {
      'en': 'Latest Products',
      'ar': '',
    },
    'uxgr1ecf': {
      'en': 'Upper-Body',
      'ar': '',
    },
    'pcz1280j': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'i60iw1sa': {
      'en': 'Latest Products',
      'ar': '',
    },
    'eozj7rsm': {
      'en': 'Lower-Body',
      'ar': '',
    },
    's6etsmn5': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'v16e2n4s': {
      'en': 'Latest Products',
      'ar': '',
    },
    '8k51kb1u': {
      'en': 'Pyjamas',
      'ar': '',
    },
    'tfta691m': {
      'en': 'Search for the product...',
      'ar': '',
    },
    '7gln7til': {
      'en': 'Latest Products',
      'ar': '',
    },
    '5idv635e': {
      'en': 'Underwear',
      'ar': '',
    },
    'ra9p14yt': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'eo7jelgf': {
      'en': 'Latest Products',
      'ar': '',
    },
    'dvta5a6n': {
      'en': 'Socks & Shoes',
      'ar': '',
    },
    '0ae20hgt': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'xast2ujk': {
      'en': 'Latest Products',
      'ar': '',
    },
    'm2cn7q6z': {
      'en': 'Products',
      'ar': '',
    },
  },
  // ProductList_Groc
  {
    'sza608jc': {
      'en': 'Home',
      'ar': '',
    },
    'kbei7kyf': {
      'en': 'All',
      'ar': '',
    },
    '9l6hgxz3': {
      'en': 'Search for the product...',
      'ar': '',
    },
    '7utbxk6k': {
      'en': 'Latest Products',
      'ar': '',
    },
    'yto5ujhy': {
      'en': 'Food',
      'ar': '',
    },
    'co8rhhzb': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'sf0093ai': {
      'en': 'Latest Products',
      'ar': '',
    },
    'xfyipo3z': {
      'en': 'Beverages',
      'ar': '',
    },
    't7d0nxny': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'rkxu20z2': {
      'en': 'Latest Products',
      'ar': '',
    },
    'avaj76zp': {
      'en': 'Supermarket',
      'ar': '',
    },
    '5172xgcp': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'u2kjktmt': {
      'en': 'Latest Products',
      'ar': '',
    },
    '4iu6u2g3': {
      'en': 'Products',
      'ar': '',
    },
  },
  // ProductList_Health
  {
    '2z5uaugo': {
      'en': 'Home',
      'ar': '',
    },
    'mbxb8bjx': {
      'en': 'All',
      'ar': '',
    },
    'kqfaymhp': {
      'en': 'Search for the product...',
      'ar': '',
    },
    '447w39hp': {
      'en': 'Latest Products',
      'ar': '',
    },
    'cc8uxjb3': {
      'en': 'Personal',
      'ar': '',
    },
    'ihwwdlps': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'zswje2q4': {
      'en': 'Latest Products',
      'ar': '',
    },
    'if9vj0hn': {
      'en': 'Beauty',
      'ar': '',
    },
    'or8f4ry6': {
      'en': 'Search for the product...',
      'ar': '',
    },
    'dvxkeg6g': {
      'en': 'Latest Products',
      'ar': '',
    },
    'azqiir46': {
      'en': 'Products',
      'ar': '',
    },
  },
  // Orders_Page
  {
    'fcuvie1c': {
      'en': 'All orders',
      'ar': '',
    },
    'j7w065qf': {
      'en': 'TJ Maxx',
      'ar': '',
    },
    'dgp9mted': {
      'en': 'Feb 15, 2022',
      'ar': '',
    },
    'w46sigbl': {
      'en': '\$152.20',
      'ar': '',
    },
    'n6tir3e1': {
      'en': 'Nike Store',
      'ar': '',
    },
    'or44jkct': {
      'en': 'Feb 15, 2022',
      'ar': '',
    },
    '10ixk2r8': {
      'en': '\$552.20',
      'ar': '',
    },
    '3oili4mw': {
      'en': 'Border Bookstore',
      'ar': '',
    },
    '334cvavz': {
      'en': 'Feb 15, 2022',
      'ar': '',
    },
    '5qc5vg6o': {
      'en': '\$59.20',
      'ar': '',
    },
    'pqzcoqi4': {
      'en': 'Order History',
      'ar': '',
    },
    'gfhvggla': {
      'en': 'Home',
      'ar': '',
    },
  },
  // usedProduct_form
  {
    '6fiai14p': {
      'en': 'Add your product',
      'ar': '',
    },
    'zefplv5z': {
      'en': 'Fill all the required fields',
      'ar': '',
    },
    'y4feaogu': {
      'en': 'Product Name',
      'ar': '',
    },
    '34bmuh46': {
      'en': 'Price',
      'ar': '',
    },
    'yzg6oad0': {
      'en': 'Category type',
      'ar': '',
    },
    'ensigg4s': {
      'en': 'Short Description of the product...',
      'ar': '',
    },
    '1vwuv50y': {
      'en': 'Upload Screenshot',
      'ar': '',
    },
    'eix0tk6o': {
      'en': 'Upload Video',
      'ar': '',
    },
    '7vttlrfn': {
      'en': 'Phone No.',
      'ar': '',
    },
    '228gbtuq': {
      'en': 'Submit ',
      'ar': '',
    },
    'pjlazg4c': {
      'en': 'Home',
      'ar': '',
    },
  },
  // UsedProduct_Info
  {
    '64aoj38b': {
      'en': 'Button',
      'ar': '',
    },
    'k44pe9z9': {
      'en': 'Quantity:',
      'ar': 'الكمية:',
    },
    '0ua0q323': {
      'en': 'Add to cart',
      'ar': 'أضف إلى السلة',
    },
    '31x27yvp': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // payok
  {
    'q35lb4ib': {
      'en': 'Thank You',
      'ar': '',
    },
    's659drpx': {
      'en': 'Ok',
      'ar': '',
    },
  },
  // confirmation
  {
    'zws9azfw': {
      'en': 'Done!',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'xdqywsnc': {
      'en': '',
      'ar': '',
    },
    'ek7qtvws': {
      'en': '',
      'ar': '',
    },
    'i9fiac0g': {
      'en': '',
      'ar': '',
    },
    '3ubucx1t': {
      'en': '',
      'ar': '',
    },
    'hfw6ovg7': {
      'en': '',
      'ar': '',
    },
    'hsq3kg42': {
      'en': '',
      'ar': '',
    },
    'igcf1oba': {
      'en': '',
      'ar': '',
    },
    '25s3lpdn': {
      'en': '',
      'ar': '',
    },
    'giru3nql': {
      'en': '',
      'ar': '',
    },
    'rw9to4lj': {
      'en': '',
      'ar': '',
    },
    'arosnoz5': {
      'en': '',
      'ar': '',
    },
    'ladtecl8': {
      'en': '',
      'ar': '',
    },
    'k59nypyl': {
      'en': '',
      'ar': '',
    },
    '4qtxefni': {
      'en': '',
      'ar': '',
    },
    '7lej1975': {
      'en': '',
      'ar': '',
    },
    'hkvoz0i5': {
      'en': '',
      'ar': '',
    },
    '2hvbi9at': {
      'en': '',
      'ar': '',
    },
    'lpc11kht': {
      'en': '',
      'ar': '',
    },
    'auz6pq81': {
      'en': '',
      'ar': '',
    },
    '0qr8gxll': {
      'en': '',
      'ar': '',
    },
    'o7mzefmx': {
      'en': '',
      'ar': '',
    },
    'k0eehr2k': {
      'en': '',
      'ar': '',
    },
    'fj4hyfrx': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
