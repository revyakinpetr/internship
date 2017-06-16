-- Не выполненные справочники:
-- П/операционные рубцы
-- Молочные железы
-- Пульс
-- Живот
-- Пальпация живота
-- Печень


-- Телосложение
create table tConstitutions ( 
id int identity(1,1) constraint PK_tConstitutions primary key, 
fname nvarchar(30) 
) 

insert into tConstitutions (fname) 
values ('Правильное'),('Неправильное') 

print 'tConstitutions created and filled in'

-- Телосложение. Конституционный тип
create table tConstitutionTypes ( 
id int identity(1,1) constraint PK_tConstitutionTypes primary key, 
fname nvarchar(30) 
) 

insert into tConstitutionTypes (fname) 
values ('Нормастеник'),('Астеник'),('Гиперстеник') 

print 'tConstitutionTypes created and filled in'

-- Рост и Вес указывать наверное надо отдельно

-- Питание больного
create table tPatientNutritions ( 
id int identity(1,1) constraint PK_tPatientNutritions primary key, 
fname nvarchar(30) 
) 

insert into tPatientNutritions (fname) 
values ('Удовлетвоительное'),('Хорошее'),('Избыточное'),('Пониженное'),('Кахексия')

print 'tPatientNutritions created and filled in'

-- Цвет кожных покровов
create table tSkinIntegumentColors ( 
id int identity(1,1) constraint PK_tSkinIntegumentColors primary key, 
fname nvarchar(30) 
) 

insert into tSkinIntegumentColors (fname) 
values ('Бледно-розовый'),('Красный'),('Бледный'),('Желтушный'),('Цианотичный'),('Землистый'),('Багровый'),('Друго')

print 'tSkinIntegumentColors created and filled in'


-- Депигментация кожного покрова
create table tSkinIntegumentDepigmentations ( 
id int identity(1,1) constraint PK_tSkinIntegumentDepigmentations primary key, 
fname nvarchar(30) 
) 

insert into tSkinIntegumentDepigmentations (fname) 
values ('Присутствует'),('Отсутствует')

print 'tSkinIntegumentDepigmentations created and filled in'


-- Тургор кожного покрова
create table tSkinIntegumentTurgors ( 
id int identity(1,1) constraint PK_tSkinIntegumentTurgors primary key, 
fname nvarchar(30) 
) 

insert into tSkinIntegumentTurgors (fname) 
values ('Cохранен'),('Понижен')

print 'tSkinIntegumentTurgors created and filled in'


-- Влажность кожного покрова
create table tSkinIntegumentMoistures ( 
id int identity(1,1) constraint PK_tSkinIntegumentMoistures primary key, 
fname nvarchar(30) 
) 

insert into tSkinIntegumentMoistures (fname) 
values ('Нормальная'),('Пониженная'),('Повышенная'),('Сухость кожи')

print 'tSkinIntegumentMoistures created and filled in'


-- Шелушение кожного покрова
create table tSkinIntegumentPeelings ( 
id int identity(1,1) constraint PK_tSkinIntegumentPeelings primary key, 
fname nvarchar(30) 
) 

insert into tSkinIntegumentPeelings (fname) 
values ('Присутствует'),('Отсутствует')

print 'tSkinIntegumentPeelings created and filled in'


-- Сыпь кожного покрова
create table tSkinIntegumentRashes ( 
id int identity(1,1) constraint PK_tSkinIntegumentRashes primary key, 
fname nvarchar(30) 
) 

insert into tSkinIntegumentRashes (fname) 
values ('Эритема'),('Розеола'),('Папуа'),('Пустула'),('Везикула'),('Волдырь'),('Петехии'),('Струп'),('Кровоподтеки'),('Эрозия'),('Трещинки'),('Язвы'),('Расчесы')

print 'tSkinIntegumentMoistures created and filled in'


-- Рубцы кожного покрова
create table tSkinIntegumentScarrings ( 
id int identity(1,1) constraint PK_tSkinIntegumentScarrings primary key, 
fname nvarchar(30) 
) 

insert into tSkinIntegumentScarrings (fname) 
values ('Присутствует'),('Отсутствует')

print 'tSkinIntegumentScarrings created and filled in'


-- Сосудистые звёздочки кожного покрова
create table tSkinIntegumentVascularAsterisks ( 
id int identity(1,1) constraint PK_tSkinIntegumentVascularAsterisks primary key, 
fname nvarchar(30) 
) 

insert into tSkinIntegumentVascularAsterisks (fname) 
values ('Присутствует'),('Отсутствует')

print 'tSkinIntegumentVascularAsterisks created and filled in'


-- Ксантомы кожного покрова
create table tSkinIntegumentXanthomas ( 
id int identity(1,1) constraint PK_tSkinIntegumentXanthomas primary key, 
fname nvarchar(30) 
) 

insert into tSkinIntegumentXanthomas (fname) 
values ('Присутствует'),('Отсутствует')

print 'tSkinIntegumentScarrings created and filled in'


-- Границы сердца
create table tBorderOfTheHeart ( 
id int identity(1,1) constraint PK_tBorderOfTheHeart primary key, 
fname nvarchar(30) 
) 

insert into tBorderOfTheHeart (fname) 
values ('В норме'),('Другое')

print 'tBorderOfTheHeart created and filled in'


-- Дыхание
create table tBreathing ( 
id int identity(1,1) constraint PK_tBreathing primary key, 
fname nvarchar(30) 
) 

insert into tBreathing (fname) 
values ('Везикулярное'),('Ослабленное'),('Усиленное'),('Жесткое'),('Бронхиальное'),('Амфорическое'),('Смешанное-бронхо-везикулярное')

print 'tBreathing created and filled in'


-- Хрипы
create table tWheesing ( 
id int identity(1,1) constraint PK_tWheesing primary key, 
fname nvarchar(30) 
) 

insert into tWheesing (fname) 
values ('Сухие'),('Влажные'),('Крепитация'),('Шум трения плевры')

print 'tWheesing created and filled in'


-- Язык
create table tTongue ( 
id int identity(1,1) constraint PK_tTongue primary key, 
fname nvarchar(30) 
) 

insert into tTongue (fname) 
values ('Влажный'),('Сухой'),('Обложен')

print 'tTongue created and filled in'


-- Поколачивание по пояснице
create table tLumbarEffleurage ( 
id int identity(1,1) constraint PK_tLumbarEffleurage primary key, 
fname nvarchar(30) 
) 

insert into tLumbarEffleurage (fname) 
values ('Безболезненно с обеих сторон'),('Болезненно справа'),('Болезненно слева')

print 'tLumbarEffleurage created and filled in'


-- Лимфатические узлы
create table tTheLymphNodes ( 
id int identity(1,1) constraint PK_tTheLymphNodes primary key, 
fname nvarchar(30) 
) 

insert into tTheLymphNodes (fname) 
values ('Увеличены'),('Не увеличены'),('Безболезненные при пальпации'),('Несколько увеличены'),('Чувствительные')

print 'tTheLymphNodes created and filled in'


-- Состояние костной системы
-- Кости черепа
create table tBoneSystemConditionSkulls	 ( 
id int identity(1,1) constraint PK_tBoneSystemConditionSkulls primary key, 
fname nvarchar(30) 
) 

insert into tBoneSystemConditionSkulls (fname) 
values ('Без деформации'),('Периостатика'),('Искривления'),('Акромегалии')

print 'tBoneSystemConditionSkulls created and filled in'

-- Кости грудной клетки
create table tBoneSystemConditionRibCages ( 
id int identity(1,1) constraint PK_tBoneSystemConditionRibCages primary key, 
fname nvarchar(30) 
) 

insert into tBoneSystemConditionRibCages (fname) 
values ('Без деформации'),('Периостатика'),('Искривления'),('Акромегалии')

print 'tBoneSystemConditionRibCages created and filled in'

-- Кости таза
create table tBoneSystemConditionPelvis ( 
id int identity(1,1) constraint PK_tBoneSystemConditionPelvis primary key, 
fname nvarchar(30) 
) 

insert into tBoneSystemConditionPelvis (fname) 
values ('Без деформации'),('Периостатика'),('Искривления'),('Акромегалии')

print 'tBoneSystemConditionRibCages created and filled in'

-- Кости конечностей
create table tBoneSystemConditionLimbs ( 
id int identity(1,1) constraint PK_tBoneSystemConditionLimbs primary key, 
fname nvarchar(30) 
) 

insert into tBoneSystemConditionLimbs (fname) 
values ('Без деформации'),('Периостатика'),('Искривления'),('Акромегалии'),('Барабанные пальцы')

print 'tBoneSystemConditionRibCages created and filled in'

-- Изменения концевых фаланго пальцев кистей и стоп
create table tBoneSystemConditionFingers ( 
id int identity(1,1) constraint PK_tBoneSystemConditionFingers primary key, 
fname nvarchar(30) 
) 

insert into tBoneSystemConditionFingers (fname) 
values ('Присутствует'),('Отсутствует')

print 'tBoneSystemConditionFingers created and filled in'

-- Болезненность при пальпации и перкуссии
create table tBoneSystemConditionPalpationAndPercussion ( 
id int identity(1,1) constraint PK_tBoneSystemConditionPalpationAndPercussion primary key, 
fname nvarchar(30) 
) 

insert into tBoneSystemConditionPalpationAndPercussion (fname) 
values ('Присутствует'),('Отсутствует')

print 'tBoneSystemConditionPalpationAndPercussion created and filled in'

-- 


-- Физиологические отправления
create table tPhysiologicalFunctions ( 
id int identity(1,1) constraint PK_tPhysiologicalFunctions primary key, 
fname nvarchar(30) 
) 

insert into tPhysiologicalFunctions (fname) 
values ('В норме'),('Стул был'),('Газы отходят'),('Мочеиспускание безболезненное'),('Газы не отходят, не беспокоят'),('Газы не отходят'),('Стула не было')

print 'tPhysiologicalFunctions created and filled in'


-- Наружные половые органы и промежность
create table tExternalGenitaliaAndPerineum ( 
id int identity(1,1) constraint PK_tExternalGenitaliaAndPerineum primary key, 
fname nvarchar(30) 
) 

insert into tExternalGenitaliaAndPerineum (fname) 
values ('Развиты правильно'),('Рубцовая деформация промежности'),('Рубцовая деформация малых половых губ'),('Образование размерами'),('Половая цель сомкнута'),('Половая щель зияет')

print 'tExternalGenitaliaAndPerineum created and filled in'


--Слизистая влагалища
create table tVaginalMucosa ( 
id int identity(1,1) constraint PK_tVaginalMucosa primary key, 
fname nvarchar(30) 
) 

insert into tVaginalMucosa (fname) 
values ('Чистая'),('Гиперемирована'),('Атрофичная'),('Цианотичная'),('Складчатость выражена'),('Складчатость не выражена'),('Заканчивается слепо'),('Vigro'),('Бледно-розового цвета'),('Чистая'),('Без патологических изменений')

print 'tVaginalMucosa created and filled in'


--Шейка матки (форма)
create table tCervixUteriForm ( 
id int identity(1,1) constraint PK_tCervixUteriForm primary key, 
fname nvarchar(30) 
) 

insert into tCervixUteriForm (fname) 
values ('Без патологических изменений'),('Гиперемирована'),('Чистая'),('Эрозирована'),('Ov naboti'),('Наружний зев деформирован за счет старых разрывов'),('Отсутствует'),('Нити ВМК'),('Определяются очаги эндометриоза'),('Легко кровоточит'),('Лейкплакия'),('Атрофична'),('Следы ДЭК'),('Полип')

print 'tCervixUteriForm created and filled in'


--Выделения
create table tExcreta ( 
id int identity(1,1) constraint PK_tExcreta primary key, 
fname nvarchar(30) 
) 

insert into tExcreta (fname) 
values ('Слизистые'),('Гноевидные'),('Кровянистые'),('Скудные'),('Умеренные'),('С запахом'),('Пенистые'),('Творожистые'),('Гомогенные')

print 'tExcreta created and filled in'


--Вход во влагалище
create table tEntranceToTheVagina ( 
id int identity(1,1) constraint PK_tEntranceToTheVagina primary key, 
fname nvarchar(30) 
) 

insert into tEntranceToTheVagina (fname) 
values ('Рожавшей'),('Не рожавшей')

print 'tEntranceToTheVagina created and filled in'


--Шейка матки
create table tCervixUteri ( 
id int identity(1,1) constraint PK_tCervixUteri primary key, 
fname nvarchar(30) 
) 

insert into tCervixUteri (fname) 
values ('Коническая'),('Цилиндрическая'),('Деформирована'),('Не деформирована'),('Длинная'),('Короткая'),('Наружный зев закрыт'),('Пропускает кончик пальца'),('Не определяется'),('Отсутствует')

print 'tCervixUteri created and filled in'