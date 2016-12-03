/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     3.12.2016 12:12:50                           */
/* Creator:		   Grega Vrečar									*/
/*==============================================================*/


drop table if exists tb_city;

drop table if exists tb_country;

drop table if exists tb_coutrylanguage;

drop table if exists tb_fraze;

drop table if exists tb_language;

drop table if exists tb_place;

drop table if exists tb_tagcity;

drop table if exists tb_tagcountry;

drop table if exists tb_tagplace;

drop table if exists tb_tags;

drop table if exists tb_type;

drop table if exists tb_user;

drop table if exists tb_usercity;

drop table if exists tb_userplace;

/*==============================================================*/
/* Table: tb_city                                               */
/*==============================================================*/
create table tb_city
(
   ci_nid               int not null,
   co_vid               varchar(3) not null,
   ci_vname             varchar(100) not null,
   ci_vlocalname        varchar(100) not null,
   ci_nlongitude        numeric(8,0) not null,
   ci_nlatitude         numeric(8,0) not null,
   primary key (ci_nid)
);

/*==============================================================*/
/* Table: tb_country                                            */
/*==============================================================*/
create table tb_country
(
   co_vid               varchar(3) not null,
   co_vname             varchar(30) not null,
   co_vlocalname        varchar(30) not null,
   co_pflag             varchar(100) not null,
   primary key (co_vid)
);

/*==============================================================*/
/* Table: tb_coutrylanguage                                     */
/*==============================================================*/
create table tb_coutrylanguage
(
   co_vid               varchar(3) not null,
   la_nid               int not null,
   primary key (co_vid, la_nid)
);

/*==============================================================*/
/* Table: tb_fraze                                              */
/*==============================================================*/
create table tb_fraze
(
   fr_nid               int not null,
   la_nid               int not null,
   fr_vname             varchar(100) not null,
   fr_vlocalname        varchar(100) not null,
   fr_psound            varchar(100),
   primary key (fr_nid)
);

/*==============================================================*/
/* Table: tb_language                                           */
/*==============================================================*/
create table tb_language
(
   la_nid               int not null,
   la_vname             varchar(100) not null,
   la_vlocalname        varchar(100) not null,
   la_vdescription      varchar(1024) not null,
   primary key (la_nid)
);

/*==============================================================*/
/* Table: tb_place                                              */
/*==============================================================*/
create table tb_place
(
   pl_nid               int not null,
   ci_nid               int not null,
   ty_nid               int not null,
   pl_vname             varchar(100) not null,
   pl_vlocalname        varchar(100) not null,
   pl_nlongitude        numeric(8,0) not null,
   pl_nlatitude         numeric(8,0) not null,
   primary key (pl_nid)
);

/*==============================================================*/
/* Table: tb_tagcity                                            */
/*==============================================================*/
create table tb_tagcity
(
   ta_nid               int not null,
   ci_vid               int not null,
   primary key (ta_nid, ci_vid)
);

/*==============================================================*/
/* Table: tb_tagcountry                                         */
/*==============================================================*/
create table tb_tagcountry
(
   ta_nid               int not null,
   co_vid               varchar(3) not null,
   primary key (ta_nid, co_vid)
);

/*==============================================================*/
/* Table: tb_tagplace                                           */
/*==============================================================*/
create table tb_tagplace
(
   ta_nid               int not null,
   pl_vid               int not null,
   primary key (ta_nid, pl_vid)
);

/*==============================================================*/
/* Table: tb_tags                                               */
/*==============================================================*/
create table tb_tags
(
   ta_nid               int not null,
   ta_vname             varchar(25) not null,
   primary key (ta_nid)
);

/*==============================================================*/
/* Table: tb_type                                               */
/*==============================================================*/
create table tb_type
(
   ty_nid               int not null,
   ty_vname             varchar(30) not null,
   primary key (ty_nid)
);

/*==============================================================*/
/* Table: tb_user                                               */
/*==============================================================*/
create table tb_user
(
   us_vemail            varchar(100) not null,
   co_vid               varchar(3),
   us_vpassword         varchar(30) not null,
   us_vname             varchar(30),
   us_vsurname          varchar(30),
   primary key (us_vemail)
);

/*==============================================================*/
/* Table: tb_usercity                                           */
/*==============================================================*/
create table tb_usercity
(
   us_vemail            varchar(100) not null,
   ci_nid               int not null,
   uc_nrating           numeric,
   primary key (us_vemail, ci_nid)
);

/*==============================================================*/
/* Table: tb_userplace                                          */
/*==============================================================*/
create table tb_userplace
(
   us_vemail            varchar(100) not null,
   pl_nid               int not null,
   up_nrating           numeric,
   primary key (us_vemail, pl_nid)
);

alter table tb_city add constraint FK_located foreign key (co_vid)
      references tb_country (co_vid) on delete restrict on update restrict;

alter table tb_coutrylanguage add constraint FK_speaks foreign key (co_vid)
      references tb_country (co_vid) on delete restrict on update restrict;

alter table tb_coutrylanguage add constraint FK_speaks2 foreign key (la_nid)
      references tb_language (la_nid) on delete restrict on update restrict;

alter table tb_fraze add constraint FK_usefull_frazes foreign key (la_nid)
      references tb_language (la_nid) on delete restrict on update restrict;

alter table tb_place add constraint FK_has foreign key (ci_nid)
      references tb_city (ci_nid) on delete restrict on update restrict;

alter table tb_place add constraint FK_istype foreign key (ty_nid)
      references tb_type (ty_nid) on delete restrict on update restrict;

alter table tb_tagcity add constraint FK_citytags foreign key (ta_nid)
      references tb_tags (ta_nid) on delete restrict on update restrict;

alter table tb_tagcity add constraint FK_citytags2 foreign key (ci_vid)
      references tb_city (ci_nid) on delete restrict on update restrict;

alter table tb_tagcountry add constraint FK_countrytag foreign key (ta_nid)
      references tb_tags (ta_nid) on delete restrict on update restrict;

alter table tb_tagcountry add constraint FK_countrytag2 foreign key (co_vid)
      references tb_country (co_vid) on delete restrict on update restrict;

alter table tb_tagplace add constraint FK_placestag foreign key (ta_nid)
      references tb_tags (ta_nid) on delete restrict on update restrict;

alter table tb_tagplace add constraint FK_placestag2 foreign key (pl_vid)
      references tb_place (pl_nid) on delete restrict on update restrict;

alter table tb_user add constraint FK_citizen foreign key (co_vid)
      references tb_country (co_vid) on delete restrict on update restrict;

alter table tb_usercity add constraint FK_usercity foreign key (us_vemail)
      references tb_user (us_vemail) on delete restrict on update restrict;

alter table tb_usercity add constraint FK_usercity2 foreign key (ci_nid)
      references tb_city (ci_nid) on delete restrict on update restrict;

alter table tb_userplace add constraint FK_ratingplaces foreign key (us_vemail)
      references tb_user (us_vemail) on delete restrict on update restrict;

alter table tb_userplace add constraint FK_ratingplaces2 foreign key (pl_nid)
      references tb_place (pl_nid) on delete restrict on update restrict;

