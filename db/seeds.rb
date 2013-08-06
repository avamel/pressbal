# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.create([{title: 'Россия'}, {title: 'Литва'}, {title: 'Латвия'}, {title: 'Эстония'}, {title: 'Беларусь'}, {title: 'Украина'}, {title: 'Польша'}])
Manager.create(name: 'Викторенко Дмитрий Петрович', phone: '+375 29 403 40 38', email: 'dmitry@pressbal-tour.com')
TypeOfTour.create([{title: 'Отдых на море'}, {title: 'Экскурсии по Европе'}, {title: 'Тур выходного дня'}, {title: 'Детский и молодежный отдых'}, {title: 'Шоп тур'}])
News.create([{published: 'true',title: 'В гостиницах необходимо соблюдать тишину, чистоту, не оставлять после себя пищевые отходы, бутылки и консервные банки.', content: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'},
             {published: 'true',title: 'Регион Затока - уникальное место в Одесской области Украины.', content: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'},
             {published: 'true',title: 'Прежде всего, помните, что Вас сопровождает надежный друг и помощник – наш сопровождающий, который всегда готов прийти Вам на помощь!', content: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'}])
Visa.create([{title: 'Вся нужная информация для получения визы в Мексику', overview: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'},{title: 'Информация для получения визы во Францию', overview: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'}])
StaticBlock.create([{title: 'Номе', block_key: 'home', content: '<p><strong>Туристическая компания &quot;Прессбол-тур&quot; является одним из ведущих туроператоров Беларуси. Мы рады предложить вам автобусные экскурсионные туры по Восточной и Западной Европе.</strong></p> <p>Авиатуры по всему миру &mdash; к восточному колориту Турции, к цветущим кораллам и теплым пляжам Египта, к солнечной и древней Греции, к черному морю Болгарии, к мягкому средиземноморскому климату Испании и другим странам по всему миру</p>'},
                    {title: 'О нас', block_key: 'about_as', content: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'},
                    {title: 'Контакты', block_key: 'contacts', content: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'},
                    {title: 'Туристам',block_key:'for_tourists', content: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'},
                    {title: 'Корпоративным клиентам',block_key: 'for_clients', content: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'},
                    {title: 'Агенствам', block_key: 'for_agency',content: '<p>Aenean hendrerit orci vitae tristique congue. Vestibulum mattis turpis sed urna semper, hendrerit pulvinar risus dignissim. Integer nunc erat, dapibus nec velit ac, sodales vestibulum mi. Donec non molestie libero. Cras ac dui convallis, dignissim justo a, aliquet felis. Sed vitae metus velit. Pellentesque luctus congue nisi, id ultricies urna tristique sed. Sed vitae mattis magna, dictum dignissim nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent non libero id augue condimentum fermentum. Aenean egestas sollicitudin metus, quis pharetra metus congue eu. Morbi a felis orci. Aenean ut fringilla felis.</p>'}])
Tour.create([{price: '400',active: 'true',title: 'Варшава', overview: ' 	<p><strong>Туристическая компания &quot;Прессбол-тур&quot; является одним из ведущих туроператоров Беларуси. Мы рады предложить вам автобусные экскурсионные туры по Восточной и Западной Европе.</strong></p> <p>Обзорная экскурсия &quot;Тель Авив &ndash; Яффо&quot;. Яффо - древний финикийский порт, скала Андромеды, церковь св. Петра, место строительства Ноева Ковчега. Посещение крупнейшей в мире бриллиантовой биржи, музей алмазов Оппенгеймера.</p> <p>Тель Авив - прекрасный город на берегу Средиземного моря, в центре Израиля. Если Иерусалим считается душой Израиля, то Тель Авив это его сердце - работающее и пышущее жизнью 24 часа в сутки. Тель Авив или дословно с иврита &quot;холм весны&quot; является экономическим и культурным центром страны. Это без сомнения город молодых: здесь расположены многочисленные рестораны, бары и дискотеки, улицы и набережная всегда освещены и многолюдны. Прекрасные набережные, тёплое Средиземное море и развлечения 24 часа в сутки, превращают Тель Авив в один из самых привлекательных курортных городов Израиля. И конечно же к вашим услугам все виды водного спорта и множество развлечений, как для взрослых, так и для детей.</p>', preview: 'В Варшаву, как и во многие другие города Польши, можно добираться разными способами, но самым распространенным и вполне удобным является поездка на автобусе.', published: 'true', manager_id: '1', country_ids: [1], type_of_tour_ids:[1]},
             {price: '500', title: 'Путешествие в Вильнюсь', overview: '<p><strong>Туристическая компания &quot;Прессбол-тур&quot; является одним из ведущих туроператоров Беларуси. Мы рады предложить вам автобусные экскурсионные туры по Восточной и Западной Европе.</strong></p> <p>Обзорная экскурсия &quot;Тель Авив &ndash; Яффо&quot;. Яффо - древний финикийский порт, скала Андромеды, церковь св. Петра, место строительства Ноева Ковчега. Посещение крупнейшей в мире бриллиантовой биржи, музей алмазов Оппенгеймера.</p> <p>Тель Авив - прекрасный город на берегу Средиземного моря, в центре Израиля. Если Иерусалим считается душой Израиля, то Тель Авив это его сердце - работающее и пышущее жизнью 24 часа в сутки. Тель Авив или дословно с иврита &quot;холм весны&quot; является экономическим и культурным центром страны. Это без сомнения город молодых: здесь расположены многочисленные рестораны, бары и дискотеки, улицы и набережная всегда освещены и многолюдны. Прекрасные набережные, тёплое Средиземное море и развлечения 24 часа в сутки, превращают Тель Авив в один из самых привлекательных курортных городов Израиля. И конечно же к вашим услугам все виды водного спорта и множество развлечений, как для взрослых, так и для детей.</p>', preview: 'В Варшаву, как и во многие другие города Польши, можно добираться разными способами, но самым распространенным и вполне удобным является поездка на автобусе.', published: 'true', manager_id: '1', country_ids: [2], type_of_tour_ids:[3]},
             {price: '600', title: 'Путешествие в Минск', overview: '<p><strong>Туристическая компания &quot;Прессбол-тур&quot; является одним из ведущих туроператоров Беларуси. Мы рады предложить вам автобусные экскурсионные туры по Восточной и Западной Европе.</strong></p> <p>Обзорная экскурсия &quot;Тель Авив &ndash; Яффо&quot;. Яффо - древний финикийский порт, скала Андромеды, церковь св. Петра, место строительства Ноева Ковчега. Посещение крупнейшей в мире бриллиантовой биржи, музей алмазов Оппенгеймера.</p> <p>Тель Авив - прекрасный город на берегу Средиземного моря, в центре Израиля. Если Иерусалим считается душой Израиля, то Тель Авив это его сердце - работающее и пышущее жизнью 24 часа в сутки. Тель Авив или дословно с иврита &quot;холм весны&quot; является экономическим и культурным центром страны. Это без сомнения город молодых: здесь расположены многочисленные рестораны, бары и дискотеки, улицы и набережная всегда освещены и многолюдны. Прекрасные набережные, тёплое Средиземное море и развлечения 24 часа в сутки, превращают Тель Авив в один из самых привлекательных курортных городов Израиля. И конечно же к вашим услугам все виды водного спорта и множество развлечений, как для взрослых, так и для детей.</p>', preview: 'В Варшаву, как и во многие другие города Польши, можно добираться разными способами, но самым распространенным и вполне удобным является поездка на автобусе.', published: 'true', manager_id: '1', country_ids: [5], type_of_tour_ids:[2,4]},
             {price: '300', title: 'Мутешествие в Москву', overview: '<p><strong>Туристическая компания &quot;Прессбол-тур&quot; является одним из ведущих туроператоров Беларуси. Мы рады предложить вам автобусные экскурсионные туры по Восточной и Западной Европе.</strong></p> <p>Обзорная экскурсия &quot;Тель Авив &ndash; Яффо&quot;. Яффо - древний финикийский порт, скала Андромеды, церковь св. Петра, место строительства Ноева Ковчега. Посещение крупнейшей в мире бриллиантовой биржи, музей алмазов Оппенгеймера.</p> <p>Тель Авив - прекрасный город на берегу Средиземного моря, в центре Израиля. Если Иерусалим считается душой Израиля, то Тель Авив это его сердце - работающее и пышущее жизнью 24 часа в сутки. Тель Авив или дословно с иврита &quot;холм весны&quot; является экономическим и культурным центром страны. Это без сомнения город молодых: здесь расположены многочисленные рестораны, бары и дискотеки, улицы и набережная всегда освещены и многолюдны. Прекрасные набережные, тёплое Средиземное море и развлечения 24 часа в сутки, превращают Тель Авив в один из самых привлекательных курортных городов Израиля. И конечно же к вашим услугам все виды водного спорта и множество развлечений, как для взрослых, так и для детей.</p>', preview: 'В Варшаву, как и во многие другие города Польши, можно добираться разными способами, но самым распространенным и вполне удобным является поездка на автобусе.', published: 'true', manager_id: '1', country_ids: [1], type_of_tour_ids:[1,2,3]},
             {price: '700', title: 'Путешествие по Эстонии', overview: '<p><strong>Туристическая компания &quot;Прессбол-тур&quot; является одним из ведущих туроператоров Беларуси. Мы рады предложить вам автобусные экскурсионные туры по Восточной и Западной Европе.</strong></p> <p>Обзорная экскурсия &quot;Тель Авив &ndash; Яффо&quot;. Яффо - древний финикийский порт, скала Андромеды, церковь св. Петра, место строительства Ноева Ковчега. Посещение крупнейшей в мире бриллиантовой биржи, музей алмазов Оппенгеймера.</p> <p>Тель Авив - прекрасный город на берегу Средиземного моря, в центре Израиля. Если Иерусалим считается душой Израиля, то Тель Авив это его сердце - работающее и пышущее жизнью 24 часа в сутки. Тель Авив или дословно с иврита &quot;холм весны&quot; является экономическим и культурным центром страны. Это без сомнения город молодых: здесь расположены многочисленные рестораны, бары и дискотеки, улицы и набережная всегда освещены и многолюдны. Прекрасные набережные, тёплое Средиземное море и развлечения 24 часа в сутки, превращают Тель Авив в один из самых привлекательных курортных городов Израиля. И конечно же к вашим услугам все виды водного спорта и множество развлечений, как для взрослых, так и для детей.</p>', preview: 'В Варшаву, как и во многие другие города Польши, можно добираться разными способами, но самым распространенным и вполне удобным является поездка на автобусе.', published: 'true', manager_id: '1', country_ids: [4], type_of_tour_ids:[4,5]},
             {price: '450', title: 'Путешествие по Латвии', overview: '<p><strong>Туристическая компания &quot;Прессбол-тур&quot; является одним из ведущих туроператоров Беларуси. Мы рады предложить вам автобусные экскурсионные туры по Восточной и Западной Европе.</strong></p> <p>Обзорная экскурсия &quot;Тель Авив &ndash; Яффо&quot;. Яффо - древний финикийский порт, скала Андромеды, церковь св. Петра, место строительства Ноева Ковчега. Посещение крупнейшей в мире бриллиантовой биржи, музей алмазов Оппенгеймера.</p> <p>Тель Авив - прекрасный город на берегу Средиземного моря, в центре Израиля. Если Иерусалим считается душой Израиля, то Тель Авив это его сердце - работающее и пышущее жизнью 24 часа в сутки. Тель Авив или дословно с иврита &quot;холм весны&quot; является экономическим и культурным центром страны. Это без сомнения город молодых: здесь расположены многочисленные рестораны, бары и дискотеки, улицы и набережная всегда освещены и многолюдны. Прекрасные набережные, тёплое Средиземное море и развлечения 24 часа в сутки, превращают Тель Авив в один из самых привлекательных курортных городов Израиля. И конечно же к вашим услугам все виды водного спорта и множество развлечений, как для взрослых, так и для детей.</p>', preview: 'В Варшаву, как и во многие другие города Польши, можно добираться разными способами, но самым распространенным и вполне удобным является поездка на автобусе.', published: 'true', manager_id: '1', country_ids: [3], type_of_tour_ids:[5]},
             {price: '900', title: 'Путешествие в Киев', overview: '<p><strong>Туристическая компания &quot;Прессбол-тур&quot; является одним из ведущих туроператоров Беларуси. Мы рады предложить вам автобусные экскурсионные туры по Восточной и Западной Европе.</strong></p> <p>Обзорная экскурсия &quot;Тель Авив &ndash; Яффо&quot;. Яффо - древний финикийский порт, скала Андромеды, церковь св. Петра, место строительства Ноева Ковчега. Посещение крупнейшей в мире бриллиантовой биржи, музей алмазов Оппенгеймера.</p> <p>Тель Авив - прекрасный город на берегу Средиземного моря, в центре Израиля. Если Иерусалим считается душой Израиля, то Тель Авив это его сердце - работающее и пышущее жизнью 24 часа в сутки. Тель Авив или дословно с иврита &quot;холм весны&quot; является экономическим и культурным центром страны. Это без сомнения город молодых: здесь расположены многочисленные рестораны, бары и дискотеки, улицы и набережная всегда освещены и многолюдны. Прекрасные набережные, тёплое Средиземное море и развлечения 24 часа в сутки, превращают Тель Авив в один из самых привлекательных курортных городов Израиля. И конечно же к вашим услугам все виды водного спорта и множество развлечений, как для взрослых, так и для детей.</p>', preview: 'В Варшаву, как и во многие другие города Польши, можно добираться разными способами, но самым распространенным и вполне удобным является поездка на автобусе.', published: 'true', manager_id: '1', country_ids: [6], type_of_tour_ids:[4]},
             {price: '100', title: 'Путешествие по Европе', overview: '<p><strong>Туристическая компания &quot;Прессбол-тур&quot; является одним из ведущих туроператоров Беларуси. Мы рады предложить вам автобусные экскурсионные туры по Восточной и Западной Европе.</strong></p> <p>Обзорная экскурсия &quot;Тель Авив &ndash; Яффо&quot;. Яффо - древний финикийский порт, скала Андромеды, церковь св. Петра, место строительства Ноева Ковчега. Посещение крупнейшей в мире бриллиантовой биржи, музей алмазов Оппенгеймера.</p> <p>Тель Авив - прекрасный город на берегу Средиземного моря, в центре Израиля. Если Иерусалим считается душой Израиля, то Тель Авив это его сердце - работающее и пышущее жизнью 24 часа в сутки. Тель Авив или дословно с иврита &quot;холм весны&quot; является экономическим и культурным центром страны. Это без сомнения город молодых: здесь расположены многочисленные рестораны, бары и дискотеки, улицы и набережная всегда освещены и многолюдны. Прекрасные набережные, тёплое Средиземное море и развлечения 24 часа в сутки, превращают Тель Авив в один из самых привлекательных курортных городов Израиля. И конечно же к вашим услугам все виды водного спорта и множество развлечений, как для взрослых, так и для детей.</p>', preview: 'В Варшаву, как и во многие другие города Польши, можно добираться разными способами, но самым распространенным и вполне удобным является поездка на автобусе.', published: 'true', manager_id: '1', country_ids: [2,3,7], type_of_tour_ids:[2,3,4]}])
TourImage.create([{active: 'true',id: '1', image_file_name: 'VARSHAVA1.jpg', image_content_type: 'image/jpeg', image_file_size: '143057', tour_id: '1'},
                 {active: 'true',id: '2', image_file_name: 'VARSHAVA1.jpg', image_content_type: 'image/jpeg', image_file_size: '143057', tour_id: '2'},
                 {active: 'true',id: '3', image_file_name: 'VARSHAVA1.jpg', image_content_type: 'image/jpeg', image_file_size: '143057', tour_id: '3'},
                 {active: 'true',id: '4', image_file_name: 'VARSHAVA1.jpg', image_content_type: 'image/jpeg', image_file_size: '143057', tour_id: '4'},
                 {active: 'true',id: '5', image_file_name: 'VARSHAVA1.jpg', image_content_type: 'image/jpeg', image_file_size: '143057', tour_id: '5'},
                 {active: 'true',id: '6', image_file_name: 'VARSHAVA1.jpg', image_content_type: 'image/jpeg', image_file_size: '143057', tour_id: '6'},
                 {active: 'true',id: '7', image_file_name: 'VARSHAVA1.jpg', image_content_type: 'image/jpeg', image_file_size: '143057', tour_id: '7'},
                 {active: 'true',id: '8', image_file_name: 'VARSHAVA1.jpg', image_content_type: 'image/jpeg', image_file_size: '143057', tour_id: '8'},
                 {id: '9', image_file_name: '1317285021_varshava.jpg', image_content_type: 'image/jpeg', image_file_size: '39078', tour_id: '1'}])