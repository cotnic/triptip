insert into tb_country (co_vid, co_vname, co_vlocalname, co_pflag) values ('SVN', 'Slovenia', 'Slovenija', 'img/flags/svn.png');

insert into tb_country (co_vid, co_vname, co_vlocalname, co_pflag) values ('HRV', 'Croatia', 'Hrvatska', 'img/flags/hrv.png');

insert into tb_country (co_vid, co_vname, co_vlocalname, co_pflag) values ('ITA', 'Italy', 'Italia', 'img/flags/ita.png');

insert into tb_country (co_vid, co_vname, co_vlocalname, co_pflag) values ('AUT', 'Austria', 'Österreich', 'img/flags/aut.png');

insert into tb_country (co_vid, co_vname, co_vlocalname, co_pflag) values ('GBR', 'Great Britain', 'Great Britain', 'img/flags/gbr.png');

insert into tb_city (ci_nid, co_vid, ci_vname, ci_vlocalname, ci_nlongitude, ci_nlatitude) values (1000, 'SVN', 'Ljubljana', 'Ljubljana', 14.5144444, 46.0552778);

insert into tb_city (ci_nid, co_vid, ci_vname, ci_vlocalname, ci_nlongitude, ci_nlatitude) values (2000, 'SVN', 'Maribor', 'Maribor', 15.6466667, 46.5547222);

insert into tb_city (ci_nid, co_vid, ci_vname, ci_vlocalname, ci_nlongitude, ci_nlatitude) values (3000, 'SVN', 'Celje', 'Celje', 15.2675, 46.2361111);

insert into tb_city (ci_nid, co_vid, ci_vname, ci_vlocalname, ci_nlongitude, ci_nlatitude) values (6000, 'SVN', 'Koper', 'Koper', 13.7294444, 45.5469444);

insert into tb_city (ci_nid, co_vid, ci_vname, ci_vlocalname, ci_nlongitude, ci_nlatitude) values (4260, 'SVN', 'Bled', 'Bled', 14.1136111, 46.3691667);

insert into tb_language (la_nid, la_vname, la_vlocalname, la_vdescription) values (4, 'Slovenian', 'slovenščina', 'Language of Slovenije');

insert into tb_language (la_nid, la_vname, la_vlocalname, la_vdescription) values (2, 'English', 'english', 'Language of Great Britain');

insert into tb_language (la_nid, la_vname, la_vlocalname, la_vdescription) values (5, 'German', 'Deutsch', 'Language of Austria');

insert into tb_language (la_nid, la_vname, la_vlocalname, la_vdescription) values (1, 'Croatian', 'hrvaščina', 'Language of Croatia');

insert into tb_language (la_nid, la_vname, la_vlocalname, la_vdescription) values (3, 'Italian', 'italiano', 'Language of Italy');

insert into tb_fraze (fr_nid, la_nid, fr_vname, fr_vlocalname, fr_psound) values (2, 4, 'Hello', 'Pozdravljen', 'voice/SVN/hello.mp3');

insert into tb_fraze (fr_nid, la_nid, fr_vname, fr_vlocalname, fr_psound) values (1, 4, 'Goodbye', 'Nasvidenje', 'voice/SVN/goodbye.mp3');

insert into tb_fraze (fr_nid, la_nid, fr_vname, fr_vlocalname, fr_psound) values (4, 4, 'Where is', 'Kje je', 'voice/SVN/whereis.mp3');

insert into tb_fraze (fr_nid, la_nid, fr_vname, fr_vlocalname, fr_psound) values (3, 4, 'How much does it cost?', 'Koliko stane?', 'voice/SVN/howmuchdoesitcost.mp3');

insert into tb_fraze (fr_nid, la_nid, fr_vname, fr_vlocalname, fr_psound) values (5, 4, 'Excuse me', 'Oprostite', 'voice/SVN/excuseme.mp3');

insert into tb_type (ty_nid, ty_vname) values (1, 'Landmark');

insert into tb_type (ty_nid, ty_vname) values (2, 'Food');

insert into tb_type (ty_nid, ty_vname) values (3, 'Sleep');

insert into tb_type (ty_nid, ty_vname) values (4, 'Sport');

insert into tb_type (ty_nid, ty_vname) values (5, 'Entertainment');

insert into tb_tags (ta_nid, ta_vname) values (2, 'fun');

insert into tb_tags (ta_nid, ta_vname) values (5, 'enjoy');

insert into tb_tags (ta_nid, ta_vname) values (4, 'foodporn');

insert into tb_tags (ta_nid, ta_vname) values (3, 'activities');

insert into tb_tags (ta_nid, ta_vname) values (1, 'friends');

insert into tb_coutrylanguage (co_vid, la_nid) values ('SVN', 4);

insert into tb_coutrylanguage (co_vid, la_nid) values ('ITA', 3);

insert into tb_coutrylanguage (co_vid, la_nid) values ('HRV', 1);

insert into tb_coutrylanguage (co_vid, la_nid) values ('GBR', 2);

insert into tb_coutrylanguage (co_vid, la_nid) values ('AUT', 5);

insert into tb_tagcity (ta_nid, ci_vid) values (2, 1000);

insert into tb_tagcity (ta_nid, ci_vid) values (5, 2000);

insert into tb_tagcity (ta_nid, ci_vid) values (4, 3000);

insert into tb_tagcity (ta_nid, ci_vid) values (3, 6000);

insert into tb_tagcity (ta_nid, ci_vid) values (1, 4260);

insert into tb_tagcountry (ta_nid, co_vid) values (2, 'SVN');

insert into tb_tagcountry (ta_nid, co_vid) values (5, 'HRV');

insert into tb_tagcountry (ta_nid, co_vid) values (4, 'ITA');

insert into tb_tagcountry (ta_nid, co_vid) values (3, 'GBR');

insert into tb_tagcountry (ta_nid, co_vid) values (1, 'AUT');

insert into tb_place (pl_nid, ci_nid, ty_nid, pl_vname, pl_vlocalname, pl_nlongitude, pl_nlatitude) values (1, 1000, 2, 'Triple Bridge', 'Tromostovje', 14.506190, 46.051117);

insert into tb_place (pl_nid, ci_nid, ty_nid, pl_vname, pl_vlocalname, pl_nlongitude, pl_nlatitude) values (5, 2000, 4, 'Triple Bridge', 'Tromostovje', 14.506190, 46.051117);

insert into tb_place (pl_nid, ci_nid, ty_nid, pl_vname, pl_vlocalname, pl_nlongitude, pl_nlatitude) values (3, 6000, 5, 'Triple Bridge', 'Tromostovje', 14.506190, 46.051117);

insert into tb_place (pl_nid, ci_nid, ty_nid, pl_vname, pl_vlocalname, pl_nlongitude, pl_nlatitude) values (4, 3000, 1, 'Triple Bridge', 'Tromostovje', 14.506190, 46.051117);

insert into tb_place (pl_nid, ci_nid, ty_nid, pl_vname, pl_vlocalname, pl_nlongitude, pl_nlatitude) values (2, 4260, 3, 'Triple Bridge', 'Tromostovje', 14.506190, 46.051117);

insert into tb_tagplace (ta_nid, pl_vid) values (2, 1);

insert into tb_tagplace (ta_nid, pl_vid) values (5, 4);

insert into tb_tagplace (ta_nid, pl_vid) values (4, 5);

insert into tb_tagplace (ta_nid, pl_vid) values (3, 2);

insert into tb_tagplace (ta_nid, pl_vid) values (1, 3);

insert into tb_user (us_vemail, co_vid, us_vpassword, us_vname, us_vsurname) values ('mitja@triptip.com', 'SVN', 'mitja', 'Mitja', '');

insert into tb_user (us_vemail, co_vid, us_vpassword, us_vname, us_vsurname) values ('ziga@triptip.com', 'SVN', 'ziga', 'ziga', '');

insert into tb_user (us_vemail, co_vid, us_vpassword, us_vname, us_vsurname) values ('tristan@triptip.com', 'SVN', 'tristan', 'Tristan', '');

insert into tb_user (us_vemail, co_vid, us_vpassword, us_vname, us_vsurname) values ('grega@triptip.com', 'SVN', 'grega', 'Grega', 'Vrečar');

insert into tb_user (us_vemail, co_vid, us_vpassword, us_vname, us_vsurname) values ('info@triptip.com', 'SVN', 'trip', 'Trip', 'Tip');

insert into tb_userplace (us_vemail, pl_nid, up_nrating) values ('mitja@triptip.com', 1, 1);

insert into tb_userplace (us_vemail, pl_nid, up_nrating) values ('grega@triptip.com', 4, 3);

insert into tb_userplace (us_vemail, pl_nid, up_nrating) values ('tristan@triptip.com', 5, 2);

insert into tb_userplace (us_vemail, pl_nid, up_nrating) values ('ziga@triptip.com', 2, 5);

insert into tb_userplace (us_vemail, pl_nid, up_nrating) values ('mitja@triptip.com', 3, 4);

insert into tb_usercity (us_vemail, ci_nid, uc_nrating) values ('mitja@triptip.com', 1, 1);

insert into tb_usercity (us_vemail, ci_nid, uc_nrating) values ('grega@triptip.com', 5, 3);

insert into tb_usercity (us_vemail, ci_nid, uc_nrating) values ('ziga@triptip.com', 2, 4);

insert into tb_usercity (us_vemail, ci_nid, uc_nrating) values ('tristan@triptip.com', 4, 5);

insert into tb_usercity (us_vemail, ci_nid, uc_nrating) values ('ziga@triptip.com', 3, 2);

