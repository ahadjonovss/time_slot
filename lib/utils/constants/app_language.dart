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
          'product count:': 'Tovar soni',
          'sum': "To'lov:",
          'all': 'Barchasi',
          'mine': 'Mening',
          'referals': 'Referallar',
          'done': 'Yakunlangan',
          'created': 'Yaratilgan',
          'cancelled': 'Rad etilgan',
          'progress': 'Jarayonda',
          'choose_market': "Do'kon: ",
          'choose_dates': 'Sanalar: ',
          'count_of_products': 'Mahsulotlar soni:',
          'delivery_note': 'Yukxat',
          'count': 'Soni',
          'choose_photo': 'Rasm tanlash',
          'add': "Qo'shish",
          'you_must_select_market': "Do'kon tanlanmadi!",
          'you_must_select_data': 'Sanani tanlash shart!',
          'you_must_add_product':
              'Eng kamida 10 ta mahsulot\ntanlanishi kerak!',
          'you_must_select_photo': 'Rasm yuklanishi shart!',
          'products': 'Mahsulotlar:',
          'order': 'Rasmiylashtirish',
          'ordered_successfully': 'Buyurtma rasmiylashtirildi!',
          'you_need_to_create_market':
              "Do'kon qo'shgach buyurtma\nqila olasiz.",
          'try_again': "Qayta urinib ko'ring",
          'create_order': 'Buyurtma rasmiylashtirish',
          'balance': 'Balans: ',
          'in_progress': 'Jarayonda: ',
          'referalls': 'Referallar: ',
          'all_purchased': 'Barcha yechilgan: ',
          'purchase': 'Pul yechish',
          'amount': 'Miqdor:',
          'payment': "To'lov:",
          'referral': 'Referal:',
          'store': "Do'kon",
          'no_markets_yet': "Do'konlar mavjud emas.",
          'add_your_store': "Do'koningizni qo'shing.",
          'enter_your_stores_name_and_add':
              "Do'kon nomini kiriting va uni saqlang.",
          'enter_store_name': "Do'kon nomini kiriting...",
          'cancel': 'Bekor qilish',
          'market_name_must_include_more_than_3_letters':
              "Do'kon nomi eng kamida 3ta\nharfdan iborat bo'lishi kerak!",
          'uz_sum': "so'm",
          'total_amount_withdrawn': 'Jami yechib olingan:',
          'piece': 'ta',
          'added_successfully': "Muvaffaqqiyatli qo'shildi!",
          'uzbek': "O'zbek tili",
          'russian': 'Rus tili',
          'dark_mode': 'Tunggi rejim',
          'light_mode': 'Kunduzgi rejim',
          'you_need_to_enter_more_then_50':
              "Eng kamida 50 000 so'm\nyechish mumkin.",
          'you_cant_afford': "Kiritilgan mablag' hisobingizda\nmavjud emas!",
          'cant_purchase':
              "Pul yechish uchun hisobingizda eng\nkamida 50 000 so'm bo'lishi kerak!",
          'card_not_found':
              'Bank kartasi kirtimasdan\nushbu amaliyotni bajara olmaysiz!',
          '[firebase_auth/email-already-in-use] The email address is already in use by another account.':
              'Ushbu hisobga akkaunt ochilgan!',
          'banking_card': 'Bank kartasi:',
          'enter_money_amount': 'Miqdorni kiriting',
          'invalid_card_number': "Karta raqami to'liq kiritilmadi!",
          'add_your_banking_card': "Bank kartangizni qo'shing.",
          'ok': 'Tasdiqlash',
          'take_photo': 'Rasm tanlash',
          'show_products': "Mahsulotlarni ko'rsatish",
          'logging_out': 'Akkauntdan chiqish',
          'are_you_sure_you_want_to_logout':
              'Chindan ham akkauntdan chiqmoqchimisiz?',
          'yes': 'Ha',
          'orders': 'Buyurtmalar',
          'membership': 'Hamkorlik',
          'account': 'Shaxsiy hisob',
          'date_must_be_after': "O'tgan sanani tanlash mumkin emas!",
          'date_limit_reached': '15 tadan ortiq sana tanlay olmaysiz!',
          'order_detail': 'Buyurtma haqida',
          'service_price': 'Xizmat haqi:  ',
          'dates_count': 'Sanalar soni:  ',
          'products_count': 'Tovarlar soni:  ',
          'market_name': "Do'kon nomi:  ",
          'confirm': 'Tasdiqlash',
          'you_cant_create_order_now': 'Ayni damda buyurtma\nberish imkonsiz!',
          'partner_id': 'Hamkor IDsi:',
          'banners': 'Bannerlar',
          'prices': 'Narxlar',
          'other': 'Boshqalar',
          'users': 'Mijozlar',
          'partners': 'Hamkor',
          'pay': "To'lov",
          'admin_panel': "Admin bo'limi",
          'are_you_sure_you_want_to_delete_this_banner':
              "Bannerni o'chirishga ishonchingiz komilmi?",
          'delete_banner': "Bannerni o'chirish",
          'delete': "O'chirish",
          'enter_price': 'Narxni kiriting: ',
          'enter_member_percent': 'Hamkor ulushini kiriting',
          'enter_delivery_note': 'Yukxatini kiriting.',
          'member_percent': 'Hamkor ulushi',
          'accept': 'Qabul qilish',
          'decline': 'Bekor qilish',
          'finished': 'Yakunlangan',
          'un_finished': 'Tugamagan',
          'edit': 'Tahrirlash',
          'product_count': 'Mahsulot soni:',
          'status': 'Status:',
          'user_data': "Foydalanuvchi ma'lumotlari",
          'block': 'Bloklash',
          'unblock': 'Blokdan chiqarish',
          'are_you_sure_to_confirm_this_action':
              'Ushbu amaliyotni amalga oshirishda ishonchingiz komilmi?',
          'confirming': 'Tasdiqlash',
          'updated_successfully': 'Muvaffaqqiyatli yangilandi!',
          'benefit': 'Foyda:',
          'createt': 'Faoliyat:',
          'partner_data': "Hamkor ma'lumotlari",
          'komissiya': 'Komissiya:',
          'close': 'Yopish',
          'day_count': 'Kunlar soni:',
          'createt': 'Faoliyat:',
          'purchase_data': "To'lov malumotlari",
          'you_are_blocked':
              "Siz bloklangansiz! Ma'lumot uchun\n@Timeslot_Admin ga Telegram\norqali bog'laning!",
          'active': 'Faol',
          'blocked': 'Bloklangan',
          'pay': "To'lov qilish",
          'update': 'Yangilash',
          'support': "Qo'llab-quvvatlash",
          'share': 'Ulashish',
          'order_id': 'Buyurtma:',
          'price_per_one': 'Bir dona uchun: ',
          'markets': "Do'konlar",
          'instruction': "Qo'llanma",
          'terms_of_using': 'Foydalanish shartlari',
          'wrong_password': 'Parol xato kiritildi!',
          'phone_number': 'Telefon raqam',
          'don_not_forget_to_add_number':
              "Do'koningizga @number raqamini yuk xatlari bilan ishlaydigan xodim sifatida qo'shishni unutmang hamda do'kon nomini to'g'ri kiriting!",
          'you_will_be_blocked':
              "Parolni 3 martadan ortiq noto'g'ri kiritilishi bloklanishingiz uchun asos bo'ladi! ",
          'add_comment': "Izoh qo'shing",
          'sign_in_with_google': 'Google orqali kirish',
          'onboarding_title': ' Diqqat bu muhim!',
          'onboarding_1':
              'Biz hech qachon katta miqdorni oldindan band qilmaymiz va bu boshqalar haqqiga xiyonat deb hisoblaymiz!',
          'onboarding_2':
              'Barcha zahira sanalarni bekor qilingan sanalar hisobidan shakllantiramiz va tabiiyki xizmat xarajati evaziga sizga imkon qadar arzon narxda taqdim etamiz!',
          'onboarding_3':
              'Maqsadimiz oldindan katta miqdorni band qilib so’ngra uni boshqa yuk xatiga almashtirib olishni reja qilganlarning ishi amalga oshmasligiga harakat qilish va bu orqali soxta bandliklarni yo’qqa chiqarish!',
          'onboarding_4':
              'Ilovaning kabinet bo’limida “Qo’llanma” va “Foydalanish shartlari” bilan tanishib chiqing. Bu orqali chegirmalar va tekin limitlar haqida ma’lumot olasiz!',
          'start': 'Boshlash',
          'logistics': 'Logistika',
          'soon_logistics':
              'Tez orada bu yerda logistika bilan bog’liq monopoliyaga chek qo’yish uchun siz kutgan logistika bo’limi ishga tushiriladi',
          'promo_codes': 'Promokodlar',
          'new_promo_code': 'Yangi Promokod',
          'discount': 'Chegirma',
          'min_count': 'Miqdor',
          'times': ' marta',
          'used': 'Foydalanildi: ',
          'promo_code': 'Promokod',
          'done_successfully': 'Muvaffaqqiyatli bajarildi!',
          'update_store': "Do'konni tahrirlash",
          'max_limit': 'Maksimal miqdor',
          'enter_max_limit': 'Maksimal miqdorni kiriting.',
          'about_free_limit': 'Bepul limit haqida',
          'text_about_free_limit':
              'Bepul limit - bu siz o’z referal ID ingiz orqali dasturga taklif qilgan foydalanuvchilar hisobidan sizga bepul buyurtma berish uchun beriladigan limitdir. 1 ta yangi foydalanuvchi uchun siz 100 ta mahsulot uchun bepul limitga ega bo’lasiz.',
          'your_token_is': 'Sizning referal: @token',
          'copied_to_clipboard': 'Nusxalandi!',
          'free_limits': 'Bepul limitlar: ',
          'reserve': 'Zahira:',
          'reserve_tab': 'Zahira',
          'all_reserves': 'Jami zahira:',
          'active_reserves': 'Faol zahira:',
          'date': 'Sana:',
          'price': 'Narx:',
          'reserve_information': "Zahira ma'lumotlari:",
          'change_market': "Do'konni o'zgartirish",
          'change_date': "Sanani o'zgartirish",
          'change_product': "Mahsulot qo'shish",
          'next': 'Keyingisi',
          'in_this_day_reverse_is_not_enough':
              '@day kuni uchun zahira miqdori @max_limit ga teng. Sizning tovarlaringgiz miqdori esa shu miqdordan oshishi mumkin emas!',
          'check': 'Tekshirish',
          'promo_code_not_found': 'Promokod topilmadi!',
          'min_limit_of_promo_code_is':
              'Ushbu promokodni ishlatish uchun eng kamida @count ta mahsulot kiritish lozim!',
          'selected_date_has_no_enough_reserve':
              'Tanlangan kunda siz kiritgan miqdordagi tovarlar uchun zahira mavjud emas! @date kunida @count ta zahira mavjud!',
          'update_confirmed': '@orderId raqamli buyurtmangiz tasdiqlandi!',
          'update_is_in_progress':
              '@orderId raqamli buyurtmangiz qabul qilindi va jarayonda!',
          'update_cancelled': '@orderId raqamli buyurtmangiz bekor qilindi',
          'added_new_code':
              'Bizda yangi @discount % chegirma beruvchi promokod!',
          'try_now': 'Imkoniyatdan hoziroq foydalaning!',
          'news_in_order': 'Buyurtma yangilandi!',
          'take_photo_info':
              'To’lovni amalga oshirgandan so’ng chek rasmi yoki screenshotini quyidagi tugma orqali yuboring!',
          'it_is_free':
              'Ushbu buyurtmangiz Bepul limitlaringiz hisobidan bepul amalga oshiriladi!',
          'thanks_for_partnership':
              'Siz bilan hamkorlik qilishdan xursandmiz :)',
          'confirm_order':
              '@number ni xodimlar ro’yhatiga qo’shganingizga ishonchingiz komilmi? Tizimga kor’satilgan raqamni xodim sifatida qo’shmaganligingiz sababli do’konni topilmasligi va buyurtmangiz kechikishi mumkin!',
          'card_number': 'Karta raqami',
          'call': "Adminstratorga qo'ng'iroq qilish",
          'by_telegram': "Telegram orqali bog'lanish",
          'referrals': 'Referallar: ',
          'free_limits_disclaimer':
              "Siz foydalanayotkan Bepul limitlar bir martalik hisoblanadi. Ya'ni buyurtmangizda xatolik uchrab qaytarilsa, hisoblangan bepul limitlar qaytarilmaydi!",
          'you_need_to_add_free_limit':
              "Qo'shilishi kerak bo'lgan bepul limitlar soni kiritilmagan!",
          'upload_photo_from': 'Rasm yuklash',
          'gallery': 'Galereyadan',
          'camera': 'Kameradan',
          'loading': 'Iltimos, kuting...',
          'you_can_not_remove_product':
              "Agar ushbu tovarlarni buyurtmadan chiqarsangiz, promo koddan foydalana olmaysiz. Chunki promo koddan foydalanishning minimal miqdori @count ta tovarga teng. Tovarani o'chirishga rozimisiz?",
          'deleted': "O'chirildi!",
          'updated': 'Yangilandi!',
          'make_an_order': 'Buyurtma berish',
          'first_add_your_store':
              "Avval Shaxsiy hisob sahifasiga o'tib do'koningizni qo'shing.",
          'good_users': 'Foydali mijozlar',
          'unconfirmed': 'Tasdiqlanmagan',
          'confirmed': 'Tasdiqlangan',
          'admins': 'Adminlar',
          'inactive': 'Nofaol',
          'restricted': 'Cheklangan',
          'forgot_your_password': 'Parolni unutdingizmi? ',
          'reset_your_password': 'Adminga murojaat qiling.',
          'owner': 'Tegishli:',
          'chance': 'Imkoniyat: ',
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
          'choose_market': 'Mагазин:',
          'choose_dates': 'Даты',
          'count_of_products': 'Кол. продуктов:',
          'delivery_note': 'Накладная',
          'count': 'шт',
          'choose_photo': 'Выберите изображениеh',
          'add': 'Добавить',
          'order': 'Формализация',
          'you_must_select_market': 'Магазин не выбран!',
          'you_must_select_data': 'Выбор даты обязателен!',
          'you_must_add_product': 'Должен быть хотя бы 10 товар!',
          'you_must_select_photo': 'Изображение должно\nбыть загружено!',
          'products': 'Продукты:',
          'ordered_successfully': 'Заказ выполнен!',
          'you_need_to_create_market':
              'Оформить заказ можно после\nдобавления магазина.',
          'try_again': 'Попробуйте еще раз',
          'create_order': 'Сделать заказ',
          'balance': 'Баланс: ',
          'in_progress': 'Прогресс: ',
          'referalls': 'Рефералы: ',
          'all_purchased': 'Barcha yechilgan: ',
          'purchase': 'Снять деньги',
          'product count:': 'Кол. продуктов:',
          'sum': 'Цена усл:',
          'all': 'Все',
          'mine': 'Мой',
          'referals': 'Рефералы',
          'done': 'Завершенный',
          'created': 'Созданный',
          'cancelled': 'Отменено',
          'progress': 'Прогресс',
          'amount': 'Сумма:',
          'payment': 'Оплата:',
          'referral': 'Реферал:',
          'store': 'Магазин',
          'no_markets_yet': 'Магазинов нет.',
          'add_your_store': 'Добавьте свой магазин.',
          'enter_your_stores_name_and_add':
              'Введите название магазина и сохраните его.',
          'enter_store_name': 'Введите название магазина...',
          'cancel': 'Отмена',
          'market_name_must_include_more_than_3_letters':
              'Название магазина должно\nсостоять минимум из 3 букв!',
          'uz_sum': 'сум',
          'total_amount_withdrawn': 'Всего снято:',
          'piece': 'шт',
          'added_successfully': 'Добавлено успешно!',
          'uzbek': 'Узбекский язык',
          'russian': 'Pусский язык',
          'dark_mode': 'Ночной режим',
          'light_mode': 'Дневной режим',
          'you_need_to_enter_more_then_50':
              'Вывести можно не менее 50 000 сумов.',
          'you_cant_afford': 'Внесенные средства недоступны на вашем счету!',
          'card_not_found':
              'Вы не сможете выполнить эту\nоперацию без ввода банковской карты!',
          '[firebase_auth/email-already-in-use] The email address is already in use by another account.':
              'Адрес электронной почты уже\nиспользуется другой учетной записью!',
          'banking_card': 'Kарта:',
          'enter_money_amount': 'Введите сумму',
          'invalid_card_number': 'Номер карты введен не полностью!',
          'add_your_banking_card': 'Добавьте свою банковскую карту.',
          'ok': 'Подтверждать',
          'take_photo': 'Выбор фотографии',
          'show_products': 'Показать продукты',
          'logging_out': 'Выйти из аккаунта',
          'are_you_sure_you_want_to_logout': 'Вы действительно хотите выйти?',
          'yes': 'Да',
          'orders': 'Заказы',
          'membership': 'Сотрудничество',
          'account': 'Кабинет',
          'date_must_be_after': 'Невозможно выбрать прошлую дату!',
          'date_limit_reached': 'Вы не можете выбрать более 15 дат!',
          'order_detail': 'О заказе',
          'service_price': 'Плата за обслуживание:  ',
          'dates_count': 'Количество дат:  ',
          'products_count': 'Количество товаров:  ',
          'market_name': 'Название магазина:  ',
          'confirm': 'Подтверждать',
          'you_cant_create_order_now':
              'В данный момент невозможно\nсделать заказ!',
          'partner_id': 'ID партнера:',
          'banners': 'Баннеры',
          'prices': 'Цены',
          'other': 'Другие',
          'users': 'Клиенты',
          'partners': 'Партнер',
          'pay': 'Оплата',
          'admin_panel': 'Панель администратора',
          'are_you_sure_you_want_to_delete_this_banner':
              'Вы уверены, что хотите удалить баннер?',
          'delete_banner': 'Удалить баннер',
          'delete': 'Удалить',
          'enter_price': 'Введите цену:',
          'enter_member_percent': 'Введите партнерскую долю',
          'enter_delivery_note': 'Введитe...',
          'member_percent': 'Партнерская доля',
          'accept': 'Принять',
          'decline': 'Отменить',
          'finished': 'Готово',
          'un_finished': 'Незакончено',
          'edit': 'Pедактировать',
          'product_count': 'Кол. товаров:',
          'status': 'Статус:',
          'user_data': 'Пользовательские данные',
          'block': 'Блокировать',
          'unblock': 'Разблокировать',
          'are_you_sure_to_confirm_this_action': 'Вы уверены в этой практике?',
          'confirming': 'Подтверждение',
          'updated_successfully': 'Успешно обновлено!',
          'benefit': 'Выгода:',
          'createt': 'Активность:',
          'partner_data': 'Данные партнера',
          'komissiya': 'Комиссия:',
          'close': 'Закрывать',
          'day_count': 'Количество дней:',
          'createt': 'Активность:',
          'purchase_data': 'Платежная информация',
          'you_are_blocked':
              'Вы заблокированы! Свяжитесь\n@Timeslot_Admin через Telegram\nля получения информации!',
          'active': 'Активный',
          'blocked': 'Заблокировано',
          'pay': 'Оплата',
          'update': 'Обновлять',
          'support': 'Центр поддержки',
          'share': 'Делиться',
          'order_id': 'Заказ:',
          'price_per_one': 'За одну:  ',
          'markets': 'Mагазины',
          'cant_purchase':
              'Для вывода денег на вашем счет\n должно быть не менее 50 000 сум!',
          'instruction': 'Инструкция',
          'terms_of_using': 'Условия использования',
          'wrong_password': 'Пароль введен неверно!',
          'you_will_be_blocked':
              'Неправильный ввод пароля более 3 раз станет причиной вашей блокировки!',
          'phone_number': 'Номер телефона',
          'add_comment': 'Добавить комментарий',
          'don_not_forget_to_add_number':
              'Не забудьте добавить @number в свой магазин в качестве сотрудника по отправке писем и правильно ввести название магазина!',
          'sign_in_with_google': 'Войти через Google',
          'onboarding_title': ' Внимание важно!',
          'onboarding_1':
              'Мы никогда не бронируем большую сумму вперед и считаем это предательством чужих прав!',
          'onboarding_2':
              'Все зарезервированные даты мы формируем на основе отмененных дат и предлагаем вам максимально дешевую цену, естественно, со стоимостью услуги!',
          'onboarding_3':
              'Наша цель – постараться предотвратить работу тех, кто планирует заранее забронировать крупную сумму, а затем обменять ее на другую накладную, и тем самым исключить фейковые бронирования!',
          'onboarding_4':
              'Прочтите «Руководство» и «Условия использования» в разделе кабинета приложения. Здесь вы получите информацию о скидках и бесплатных лимитах!',
          'start': 'Начинать',
          'logistics': 'Логистика',
          'soon_logistics':
              'Здесь скоро откроется отдел логистики, которого вы так долго ждали, чтобы положить конец логистической монополии.',
          'promo_codes': 'Промокоды',
          'new_promo_code': 'Новый промокод',
          'discount': 'Скидка',
          'min_count': 'Кол.',
          'times': ' раз',
          'used': 'Использовал: ',
          'promo_code': 'Промокод',
          'done_successfully': 'Сделано успешно!',
          'update_store': 'Редактировать магазин',
          'max_limit': 'Максимальное количество товара',
          'enter_max_limit': 'Введите максимальное количество товара.',
          'about_free_limit': 'О бесплатном лимите',
          'text_about_free_limit':
              'Бесплатный лимит — это лимит, предоставляемый вам для бесплатных заказов с аккаунтов пользователей, которых вы пригласили в программу через свой реферальный идентификатор. За 1 нового пользователя вы получаете бесплатный лимит в 100 товаров.',
          'your_token_is': 'Ваш реферал: @token',
          'copied_to_clipboard': 'Скопировано!',
          'free_limits': 'Бесплатные лимиты: ',
          'reserve': 'Pезерв:',
          'reserve_tab': 'Pезерв',
          'all_reserves': 'Общий резерв:',
          'active_reserves': 'Активный резерв:',
          'date': 'Дата:',
          'price': 'Цена:',
          'reserve_information': 'Резервные данные:',
          'change_market': 'Сменить магазин',
          'change_date': 'Изменить дату',
          'change_product': 'Добавить продукт',
          'next': 'Следующий',
          'in_this_day_reverse_is_not_enough':
              'Сумма резерва на @day составляет @max_limit. И количество ваших товаров не может превышать эту сумму!',
          'check': 'Проверять',
          'promo_code_not_found': 'Промокод не найден!',
          'min_limit_of_promo_code_is':
              'Чтобы использовать этот промокод, вам необходимо ввести как минимум @count продуктов!',
          'selected_date_has_no_enough_reserve':
              'Резерва на количество товара, введенное вами в выбранный день, нет! @count доступно @date!',
          'update_confirmed': '@orderId — Ваш заказ подтвержден!',
          'update_is_in_progress':
              '@orderId - Ваш заказ получен и находится в обработке!',
          'update_cancelled': '@orderId Ваш заказ отменен!',
          'added_new_code': 'У нас новый промокод на скидку @discount %!',
          'try_now': 'Воспользуйтесь преимуществом сейчас!!',
          'news_in_order': 'Заказ обновлен!',
          'take_photo_info':
              'После оплаты отправьте фото чека или скриншот с помощью кнопки ниже!',
          'it_is_free':
              'Этот заказ делается бесплатно с вашими бесплатными лимитами!',
          'thanks_for_partnership': 'Мы рады сотрудничеству с вами :)',
          'confirm_order':
              'Не забудьте добавить @number в свой список сотрудников! Если вы не добавили в качестве сотрудника указанный системой номер, ваш заказ может задержаться!',
          'card_number': 'Номер карты',
          'call': 'Позвонить администратору',
          'by_telegram': 'Связаться через Telegram',
          'referrals': 'Рефералы: ',
          'free_limits_disclaimer':
              'Бесплатные лимиты, которые вы используете, являются единоразовыми. То есть, если ваш заказ будет возвращен по ошибке, рассчитанные бесплатные лимиты не будут возвращены!',
          'you_need_to_add_free_limit':
              'Количество добавляемых бесплатных лимитов не учитывается!',
          'upload_photo_from': 'Загрузить изображение',
          'gallery': 'Из галереи',
          'camera': 'С камеры',
          'loading': 'Пожалуйста, подождите...',
          'you_can_not_remove_product':
              'Вы не сможете использовать промокод, если закажете эти товары. Потому что минимальная сумма использования промокода равна @count товаров. Вы согласны удалить товар?',
          'deleted': 'Удалено!',
          'updated': 'Обновлено!',
          'make_an_order': 'Сделать заказ',
          'first_add_your_store':
              'Сначала добавьте свой магазин, перейдя на страницу Личного кабинета.',
          'good_users': 'Полезные клиенты',
          'unconfirmed': 'Не подтверждено',
          'confirmed': 'Подтвержденный',
          'admins': 'Админы',
          'inactive': 'Неактивный',
          'restricted': 'Ограниченное',
          'forgot_your_password': 'Забыли пароль? ',
          'reset_your_password': 'Свяжитесь с администратором. ',
          'owner': 'Соответствующий:',
          'chance': 'Возможность: ',
        }
      };
}
