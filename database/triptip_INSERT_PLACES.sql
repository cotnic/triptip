/*----------------------------*/
/*   Creator: Grega Vrečar    */
/*----------------------------*/

/*------------------*/
/*     LANDMARKS    */
/*------------------*/

UPDATE tb_place
    SET ci_nid = 1000, 
		ty_nid = 1,
		pl_vname = 'Ljubljana Castle',
		pl_vlocalname = 'Ljubljanski grad',
		pl_nlongitude = 14.508374,
		pl_nlatitude =  46.049027, 
		pl_vdescription = "Ljubljana Castle (Slovene: Ljubljanski grad) is a castle complex standing on Castle Hill above the downtown of Ljubljana, the capital of Slovenia.
		It is a key element of the Ljubljana skyline. Originally a Medieval fortress, probably built in the 11th century and rebuilt in the 12th century,
		it acquired its present outline with an almost complete overhaul in the 15th century, whereas the majority of the buildings date to the 16th and 17th centuries.
		At first a defense structure and since the first half of the 14th century the seat of the lords of Carniola, it was since the early 19th century used as a penitentiary,
		then in the first half of the 20th century as a residential complex and in the latest times as a tourist attraction and a major cultural venue.",
		pl_pimg = 'img/places/1.jpg'
    WHERE pl_nid = 1

UPDATE tb_place
    SET ci_nid = 1000, 
		ty_nid = 1,
		pl_vname = 'The Triple Bridge',
		pl_vlocalname = 'Tromostovje',
		pl_nlongitude = 14.506190,
		pl_nlatitude =  46.051117, 
		pl_vdescription = "The Triple Bridge (Slovene: Tromostovje, in older sources also Tromostje) is a group of three bridges across the Ljubljanica River.
		It connects the Ljubljana's historical, medieval, town on one bank, and the modern city of Ljubljana, capital of Slovenia, on the other.",
		pl_pimg = 'img/places/3.jpg'
    WHERE pl_nid = 3

UPDATE tb_place
    SET ci_nid = 1000, 
		ty_nid = 1,
		pl_vname = 'The Dragon Bridge',
		pl_vlocalname = 'Zmajski most',
		pl_nlongitude = 14.510476,
		pl_nlatitude =  46.052139, 
		pl_vdescription = "The Dragon Bridge (Slovene: Zmajski most, historically also Zmajev most) is a road bridge located in Ljubljana, the capital of Slovenia.
		It crosses the Ljubljanica River. between Kopitar Street (Kopitarjeva ulica) and Ressel Street (Resljeva cesta), to the north of the Ljubljana Central Market at Vodnik Square.
		It was built in the beginning of the 20th century, when Ljubljana was part of the Austro-Hungarian Monarchy.
		As one of the best examples of reinforced concrete bridges and of the Vienna Secession style, the bridge is today protected as a technical monument.
		It is intended primarily for motorised traffic.",
		pl_pimg = 'img/places/2.jpg'
    WHERE pl_nid = 2

UPDATE tb_place
    SET ci_nid = 1000, 
		ty_nid = 1,
		pl_vname = 'University of Ljubljana',
		pl_vlocalname = 'Univerza Ljubljane',
		pl_nlongitude = 14.504102,
		pl_nlatitude =  46.049320,  
		pl_vdescription = "The University of Ljubljana (Slovene: Univerza v Ljubljani [uniʋɛ́ːrza w ljubljàːni], acronym: UL, Latin: Universitas Labacensis) is the oldest and largest university in Slovenia, being among the 800 world's best universities. With over 63,000 enrolled undergraduate and graduate students, it is among the largest universities in Europe.",
		pl_pimg = 'img/places/4.jpg'
    WHERE pl_nid = 4

UPDATE tb_place
    SET ci_nid = 1000, 
		ty_nid = 1,
		pl_vname = 'Prešeren Monument',
		pl_vlocalname = 'Prešernov spomenik',
		pl_nlongitude = 14.506224,
		pl_nlatitude =  46.051569,  
		pl_vdescription = "The Prešeren Monument in Ljubljana (Slovene: Prešernov spomenik), also Prešeren Statue in Ljubljana,
		is a late Historicist bronze statue of the Slovene national poet France Prešeren in Ljubljana, the capital of Slovenia.
		It stands in the eastern side of Prešeren Square, in front of the Central Pharmacy Building in Ljubljana, the capital of Slovenia. It is among the best-known Slovenian monuments.",
		pl_pimg = 'img/places/5.jpg'
    WHERE pl_nid = 5	

/*------------------*/
/*   ENTERTAIMENT   */
/*------------------*/

insert into tb_place (pl_nid, ci_nid, ty_nid, pl_vname, pl_vlocalname, pl_nlongitude, pl_nlatitude, pl_vdescription, pl_pimg ) values (6, 1000, 5, 'Escape Room Enigmarium',
'Escape Room Enigmarium', 14.506190, 46.051117, 'The Escape Room Enigmarium offers three different escape rooms in Ljubljana.
The exciting experiences provided in the rooms are modelled on the cult escape-the-room computer games and inspired by the local historical heritage.
In January 2015, the Escape Room Enigmarium was ranked the no. 1 activity in Ljubljana on the TripAdvisor website.', 'img/places/6.jpg');

insert into tb_place (pl_nid, ci_nid, ty_nid, pl_vname, pl_vlocalname, pl_nlongitude, pl_nlatitude, pl_vdescription, pl_pimg ) values (7, 1000, 5, 'Cat Caffe',
'Cat Caffe', 14.506190, 46.051117, 'Cat Caffe Ljubljana is a very special little café. It is home to a group of friendly cats that will keep you company while you enjoy your cup of coffee or tea.
You can watch the cats, take photographs of them and even play with them as long as you observe the rules of behaviour in the presence of cats displayed next to the entrance.
The café serves a choice of drinks, sells cat-themed souvenirs, and holds a small collection of books where you can find interesting facts about different cat breeds.', 'img/places/7.jpg');





























