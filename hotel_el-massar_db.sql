PGDMP         	                z            hotel_db    9.6.0    9.6.0 Q    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           1262    16507    hotel_db    DATABASE     ?   CREATE DATABASE hotel_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_Chad.1252' LC_CTYPE = 'French_Chad.1252';
    DROP DATABASE hotel_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    16510    client    TABLE     Y  CREATE TABLE client (
    id integer NOT NULL,
    fname character varying(30) NOT NULL,
    lname character varying(30) NOT NULL,
    phone character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    p_code character varying(10) NOT NULL,
    city character varying(30) NOT NULL,
    country character varying(30) NOT NULL
);
    DROP TABLE public.client;
       public         postgres    false    3            ?            1259    16508    client_id_seq    SEQUENCE     o   CREATE SEQUENCE client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public       postgres    false    186    3            ?           0    0    client_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE client_id_seq OWNED BY client.id;
            public       postgres    false    185            ?            1259    16639    consommation    TABLE     ?   CREATE TABLE consommation (
    id integer NOT NULL,
    cons_num character varying(10) NOT NULL,
    cons_date date NOT NULL,
    cons_time time without time zone NOT NULL,
    prestation_id integer NOT NULL,
    client_id integer NOT NULL
);
     DROP TABLE public.consommation;
       public         postgres    false    3            ?            1259    16637    consommation_id_seq    SEQUENCE     u   CREATE SEQUENCE consommation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.consommation_id_seq;
       public       postgres    false    200    3            ?           0    0    consommation_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE consommation_id_seq OWNED BY consommation.id;
            public       postgres    false    199            ?            1259    16657    facture    TABLE     ?   CREATE TABLE facture (
    id integer NOT NULL,
    fact_num character varying(10) NOT NULL,
    fact_sum double precision NOT NULL,
    cons_id integer NOT NULL,
    resv_id integer NOT NULL,
    client_id integer NOT NULL
);
    DROP TABLE public.facture;
       public         postgres    false    3            ?            1259    16655    facture_id_seq    SEQUENCE     p   CREATE SEQUENCE facture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.facture_id_seq;
       public       postgres    false    202    3            ?           0    0    facture_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE facture_id_seq OWNED BY facture.id;
            public       postgres    false    201            ?            1259    16584    hotel    TABLE     "  CREATE TABLE hotel (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    address character varying(100) NOT NULL,
    p_code character varying(20) NOT NULL,
    phone character varying(20) NOT NULL,
    hoteltype_id integer NOT NULL,
    prestation_id integer NOT NULL
);
    DROP TABLE public.hotel;
       public         postgres    false    3            ?            1259    16582    hotel_id_seq    SEQUENCE     n   CREATE SEQUENCE hotel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.hotel_id_seq;
       public       postgres    false    194    3            ?           0    0    hotel_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE hotel_id_seq OWNED BY hotel.id;
            public       postgres    false    193            ?            1259    16526 
   hotel_type    TABLE     ?   CREATE TABLE hotel_type (
    id integer NOT NULL,
    star_num character varying(15) NOT NULL,
    caracteristique character varying(220) NOT NULL
);
    DROP TABLE public.hotel_type;
       public         postgres    false    3            ?            1259    16524    hotel_type_id_seq    SEQUENCE     s   CREATE SEQUENCE hotel_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.hotel_type_id_seq;
       public       postgres    false    188    3            ?           0    0    hotel_type_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE hotel_type_id_seq OWNED BY hotel_type.id;
            public       postgres    false    187            ?            1259    16576 
   prestation    TABLE     ?   CREATE TABLE prestation (
    id integer NOT NULL,
    code character varying(15) NOT NULL,
    designation character varying(220) NOT NULL,
    price real NOT NULL
);
    DROP TABLE public.prestation;
       public         postgres    false    3            ?            1259    16574    prestation_id_seq    SEQUENCE     s   CREATE SEQUENCE prestation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.prestation_id_seq;
       public       postgres    false    192    3            ?           0    0    prestation_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE prestation_id_seq OWNED BY prestation.id;
            public       postgres    false    191            ?            1259    16621    reservation    TABLE     =  CREATE TABLE reservation (
    id integer NOT NULL,
    resv_num character varying(10) NOT NULL,
    resv_date date NOT NULL,
    resv_start_date date NOT NULL,
    resv_end_date date NOT NULL,
    payment_date date NOT NULL,
    sum_pay real NOT NULL,
    room_id integer NOT NULL,
    client_id integer NOT NULL
);
    DROP TABLE public.reservation;
       public         postgres    false    3            ?            1259    16619    reservation_id_seq    SEQUENCE     t   CREATE SEQUENCE reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.reservation_id_seq;
       public       postgres    false    198    3            ?           0    0    reservation_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE reservation_id_seq OWNED BY reservation.id;
            public       postgres    false    197            ?            1259    16603    room    TABLE     ?   CREATE TABLE room (
    id integer NOT NULL,
    room_num character varying(10) NOT NULL,
    phone character varying(20) NOT NULL,
    roomcat_id integer NOT NULL,
    hotel_id integer NOT NULL
);
    DROP TABLE public.room;
       public         postgres    false    3            ?            1259    16542    room_cat    TABLE     ?   CREATE TABLE room_cat (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    description character varying(220) NOT NULL,
    price real NOT NULL
);
    DROP TABLE public.room_cat;
       public         postgres    false    3            ?            1259    16540    room_cat_id_seq    SEQUENCE     q   CREATE SEQUENCE room_cat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.room_cat_id_seq;
       public       postgres    false    190    3            ?           0    0    room_cat_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE room_cat_id_seq OWNED BY room_cat.id;
            public       postgres    false    189            ?            1259    16601    room_id_seq    SEQUENCE     m   CREATE SEQUENCE room_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.room_id_seq;
       public       postgres    false    3    196            ?           0    0    room_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE room_id_seq OWNED BY room.id;
            public       postgres    false    195                       2604    16513 	   client id    DEFAULT     X   ALTER TABLE ONLY client ALTER COLUMN id SET DEFAULT nextval('client_id_seq'::regclass);
 8   ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186                       2604    16642    consommation id    DEFAULT     d   ALTER TABLE ONLY consommation ALTER COLUMN id SET DEFAULT nextval('consommation_id_seq'::regclass);
 >   ALTER TABLE public.consommation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            	           2604    16660 
   facture id    DEFAULT     Z   ALTER TABLE ONLY facture ALTER COLUMN id SET DEFAULT nextval('facture_id_seq'::regclass);
 9   ALTER TABLE public.facture ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202                       2604    16587    hotel id    DEFAULT     V   ALTER TABLE ONLY hotel ALTER COLUMN id SET DEFAULT nextval('hotel_id_seq'::regclass);
 7   ALTER TABLE public.hotel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    194    194                       2604    16529    hotel_type id    DEFAULT     `   ALTER TABLE ONLY hotel_type ALTER COLUMN id SET DEFAULT nextval('hotel_type_id_seq'::regclass);
 <   ALTER TABLE public.hotel_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188                       2604    16579    prestation id    DEFAULT     `   ALTER TABLE ONLY prestation ALTER COLUMN id SET DEFAULT nextval('prestation_id_seq'::regclass);
 <   ALTER TABLE public.prestation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    191    192    192                       2604    16624    reservation id    DEFAULT     b   ALTER TABLE ONLY reservation ALTER COLUMN id SET DEFAULT nextval('reservation_id_seq'::regclass);
 =   ALTER TABLE public.reservation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197    198                       2604    16606    room id    DEFAULT     T   ALTER TABLE ONLY room ALTER COLUMN id SET DEFAULT nextval('room_id_seq'::regclass);
 6   ALTER TABLE public.room ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    195    196                       2604    16545    room_cat id    DEFAULT     \   ALTER TABLE ONLY room_cat ALTER COLUMN id SET DEFAULT nextval('room_cat_id_seq'::regclass);
 :   ALTER TABLE public.room_cat ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190            ?          0    16510    client 
   TABLE DATA                     public       postgres    false    186   ?U       ?           0    0    client_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('client_id_seq', 1, false);
            public       postgres    false    185            ?          0    16639    consommation 
   TABLE DATA                     public       postgres    false    200   ?U       ?           0    0    consommation_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('consommation_id_seq', 1, false);
            public       postgres    false    199            ?          0    16657    facture 
   TABLE DATA                     public       postgres    false    202   ?U       ?           0    0    facture_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('facture_id_seq', 1, false);
            public       postgres    false    201            ?          0    16584    hotel 
   TABLE DATA                     public       postgres    false    194   V       ?           0    0    hotel_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('hotel_id_seq', 1, false);
            public       postgres    false    193            ?          0    16526 
   hotel_type 
   TABLE DATA                     public       postgres    false    188   'V       ?           0    0    hotel_type_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('hotel_type_id_seq', 1, false);
            public       postgres    false    187            ?          0    16576 
   prestation 
   TABLE DATA                     public       postgres    false    192   AV       ?           0    0    prestation_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('prestation_id_seq', 1, false);
            public       postgres    false    191            ?          0    16621    reservation 
   TABLE DATA                     public       postgres    false    198   [V       ?           0    0    reservation_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('reservation_id_seq', 1, false);
            public       postgres    false    197            ?          0    16603    room 
   TABLE DATA                     public       postgres    false    196   uV       ?          0    16542    room_cat 
   TABLE DATA                     public       postgres    false    190   ?V       ?           0    0    room_cat_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('room_cat_id_seq', 1, false);
            public       postgres    false    189            ?           0    0    room_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('room_id_seq', 1, false);
            public       postgres    false    195                       2606    16515    client client_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public         postgres    false    186    186                       2606    16644    consommation consommation_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY consommation
    ADD CONSTRAINT consommation_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.consommation DROP CONSTRAINT consommation_pkey;
       public         postgres    false    200    200                       2606    16662    facture facture_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY facture
    ADD CONSTRAINT facture_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.facture DROP CONSTRAINT facture_pkey;
       public         postgres    false    202    202                       2606    16589    hotel hotel_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_pkey;
       public         postgres    false    194    194                       2606    16531    hotel_type hotel_type_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY hotel_type
    ADD CONSTRAINT hotel_type_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hotel_type DROP CONSTRAINT hotel_type_pkey;
       public         postgres    false    188    188                       2606    16581    prestation prestation_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY prestation
    ADD CONSTRAINT prestation_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.prestation DROP CONSTRAINT prestation_pkey;
       public         postgres    false    192    192                       2606    16626    reservation reservation_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_pkey;
       public         postgres    false    198    198                       2606    16547    room_cat room_cat_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY room_cat
    ADD CONSTRAINT room_cat_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.room_cat DROP CONSTRAINT room_cat_pkey;
       public         postgres    false    190    190                       2606    16608    room room_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public         postgres    false    196    196            #           2606    16650 (   consommation consommation_client_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY consommation
    ADD CONSTRAINT consommation_client_id_fkey FOREIGN KEY (client_id) REFERENCES client(id);
 R   ALTER TABLE ONLY public.consommation DROP CONSTRAINT consommation_client_id_fkey;
       public       postgres    false    2059    200    186            "           2606    16645 ,   consommation consommation_prestation_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY consommation
    ADD CONSTRAINT consommation_prestation_id_fkey FOREIGN KEY (prestation_id) REFERENCES prestation(id);
 V   ALTER TABLE ONLY public.consommation DROP CONSTRAINT consommation_prestation_id_fkey;
       public       postgres    false    192    200    2065            &           2606    16673    facture facture_client_id_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY facture
    ADD CONSTRAINT facture_client_id_fkey FOREIGN KEY (client_id) REFERENCES client(id);
 H   ALTER TABLE ONLY public.facture DROP CONSTRAINT facture_client_id_fkey;
       public       postgres    false    2059    186    202            $           2606    16663    facture facture_cons_id_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY facture
    ADD CONSTRAINT facture_cons_id_fkey FOREIGN KEY (cons_id) REFERENCES consommation(id);
 F   ALTER TABLE ONLY public.facture DROP CONSTRAINT facture_cons_id_fkey;
       public       postgres    false    202    200    2073            %           2606    16668    facture facture_resv_id_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY facture
    ADD CONSTRAINT facture_resv_id_fkey FOREIGN KEY (resv_id) REFERENCES reservation(id);
 F   ALTER TABLE ONLY public.facture DROP CONSTRAINT facture_resv_id_fkey;
       public       postgres    false    198    202    2071                       2606    16590    hotel hotel_hoteltype_id_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY hotel
    ADD CONSTRAINT hotel_hoteltype_id_fkey FOREIGN KEY (hoteltype_id) REFERENCES hotel_type(id);
 G   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_hoteltype_id_fkey;
       public       postgres    false    188    2061    194                       2606    16595    hotel hotel_prestation_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY hotel
    ADD CONSTRAINT hotel_prestation_id_fkey FOREIGN KEY (prestation_id) REFERENCES prestation(id);
 H   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_prestation_id_fkey;
       public       postgres    false    2065    192    194            !           2606    16632 &   reservation reservation_client_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY reservation
    ADD CONSTRAINT reservation_client_id_fkey FOREIGN KEY (client_id) REFERENCES client(id);
 P   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_client_id_fkey;
       public       postgres    false    198    186    2059                        2606    16627 $   reservation reservation_room_id_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY reservation
    ADD CONSTRAINT reservation_room_id_fkey FOREIGN KEY (room_id) REFERENCES room(id);
 N   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_room_id_fkey;
       public       postgres    false    198    196    2069                       2606    16614    room room_hotel_id_fkey    FK CONSTRAINT     i   ALTER TABLE ONLY room
    ADD CONSTRAINT room_hotel_id_fkey FOREIGN KEY (hotel_id) REFERENCES hotel(id);
 A   ALTER TABLE ONLY public.room DROP CONSTRAINT room_hotel_id_fkey;
       public       postgres    false    194    196    2067                       2606    16609    room room_roomcat_id_fkey    FK CONSTRAINT     p   ALTER TABLE ONLY room
    ADD CONSTRAINT room_roomcat_id_fkey FOREIGN KEY (roomcat_id) REFERENCES room_cat(id);
 C   ALTER TABLE ONLY public.room DROP CONSTRAINT room_roomcat_id_fkey;
       public       postgres    false    196    190    2063            ?   
   x???          ?   
   x???          ?   
   x???          ?   
   x???          ?   
   x???          ?   
   x???          ?   
   x???          ?   
   x???          ?   
   x???         