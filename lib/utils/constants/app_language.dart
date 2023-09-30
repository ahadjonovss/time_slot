import 'package:get/get_navigation/src/root/internacionalization.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'uz_UZ': {
          'password_invalid':
              "Parolning uzunligi eng kamida \n8 ta belgidan iborat bo'lishi shart!",
          'email_not_valid': 'Elektron pochta xato kiritildi!',
          'referall_not_valid': 'Referallni kiritish lozim!',
          'name_not_valid': "Ismda eng kamida 4 ta \nbelgi bo'lishi lozim",
          'sign_up': "Ro'yxatdan o'tish",
          'login': 'Kirish',
          '': 'Login to your account',
          'do_not_have_an_account': "Shaxsiy hisobingiz yo'qmi?",
          'email': 'Elektron pochta',
          'password': "Maxfiy so'z",
          'create_account': 'Shaxsiy hisob oching, bu tekin ;) ',
          'login_to_your_account': 'Shaxsiy hisobga kirish',
          'name': 'Ism',
          'surname': 'Familiya',
          'Already have an account?': 'Allaqachon shaxsiy hisobingiz bormi? ',
          'Login': 'Kirish',
          'choose_market': "Do'konni tanlash",
          'choose_dates': 'Sanalarni tanlash',
          'count_of_products': 'Mahsulotlar soni:',
          'delivery_note': 'Yukxat',
          'count': 'Soni',
          'choose_photo': 'Rasm tanlash',
          'add': "Qo'shish",
          'you_must_select_market': "Do'kon tanlanmadi!",
          'you_must_select_data': 'Eng kamida bitta sana\ntanlanishi kerak!',
          'you_must_add_product':
              'Eng kamida bitta mahsulot\ntanlanishi kerak!',
          'you_must_select_photo': 'Rasm yuklanishi shart!',
          'products': 'Mahsulotlar:',
          'order': 'Rasmiylashtirish',
          'ordered_successfully': 'Buyurtma rasmiylashtirildi!'
        },
        'ru_Ru': {
          'password_invalid': 'Пароль должен содержать не менее \n8 символов!',
          'email_not_valid': 'E-mail введен неверно!',
          'referall_not_valid': 'Вам необходимо ввести\nсвою рефераль!',
          'name_not_valid': 'Имя должно содержать не менее \n4 символов.',
          'sign_up': 'Зарегистрироваться',
          'login': 'Авторизоваться',
          'do_not_have_an_account': 'У вас нет учетной записи?',
          'email': 'Электронная почта',
          'password': 'Пароль',
          'create_account': 'Создайте учетную запись, это бесплатно',
          'login_to_your_account': 'Войдите в свой аккаунт',
          'name': 'Имя',
          'surname': 'Фамилия',
          'choose_market': 'Выберите магазин',
          'choose_dates': 'Выберите даты',
          'count_of_products': 'Количество продуктов:',
          'delivery_note': 'Накладная',
          'count': 'Количество',
          'choose_photo': 'Выберите изображениеh',
          'add': 'Добавлять',
          'order': 'Формализация',
          'you_must_select_market': 'Магазин не выбран!',
          'you_must_select_data': 'Необходимо ввести хотя\nбы одну дату!',
          'you_must_add_product': 'Должен быть хотя бы один товар!',
          'you_must_select_photo': 'Изображение должно\nбыть загружено!',
          'products': 'Продукты:',
          'ordered_successfully': 'Заказ выполнен!'
        }
      };
}
