PGDMP         !                {         
   repairshop    15.2    15.2 *    D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            G           1262    16505 
   repairshop    DATABASE     �   CREATE DATABASE repairshop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';
    DROP DATABASE repairshop;
                postgres    false            H           0    0    DATABASE repairshop    ACL     0   GRANT ALL ON DATABASE repairshop TO repairshop;
                   postgres    false    3655            I           0    0    SCHEMA public    ACL     *   GRANT ALL ON SCHEMA public TO repairshop;
                   pg_database_owner    false    5            �            1259    16526    cars    TABLE       CREATE TABLE public.cars (
    id integer NOT NULL,
    make character varying NOT NULL,
    model character varying NOT NULL,
    year integer NOT NULL,
    vin character varying NOT NULL,
    mileage integer NOT NULL,
    status character varying NOT NULL
);
    DROP TABLE public.cars;
       public         heap 
   repairshop    false            �            1259    16525    cars_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cars_id_seq;
       public       
   repairshop    false    217            J           0    0    cars_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;
          public       
   repairshop    false    216            �            1259    16652    cars_owners    TABLE     g   CREATE TABLE public.cars_owners (
    "carsId" integer NOT NULL,
    "customersId" integer NOT NULL
);
    DROP TABLE public.cars_owners;
       public         heap 
   repairshop    false            �            1259    16535 	   customers    TABLE     �   CREATE TABLE public.customers (
    id integer NOT NULL,
    "firstName" character varying NOT NULL,
    "lastName" character varying NOT NULL,
    "phoneNumber" character varying NOT NULL,
    email character varying NOT NULL
);
    DROP TABLE public.customers;
       public         heap 
   repairshop    false            �            1259    16534    customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public       
   repairshop    false    219            K           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public       
   repairshop    false    218            �            1259    16517    repairs    TABLE     2  CREATE TABLE public.repairs (
    id integer NOT NULL,
    "carId" integer,
    "clientId" integer NOT NULL,
    "startDate" character varying NOT NULL,
    "endDate" character varying NOT NULL,
    description character varying NOT NULL,
    works character varying NOT NULL,
    cost integer NOT NULL
);
    DROP TABLE public.repairs;
       public         heap 
   repairshop    false            �            1259    16516    repairs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.repairs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.repairs_id_seq;
       public       
   repairshop    false    215            L           0    0    repairs_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.repairs_id_seq OWNED BY public.repairs.id;
          public       
   repairshop    false    214            �            1259    16544 	   warehouse    TABLE     |   CREATE TABLE public.warehouse (
    id integer NOT NULL,
    name character varying NOT NULL,
    count integer NOT NULL
);
    DROP TABLE public.warehouse;
       public         heap 
   repairshop    false            �            1259    16543    warehouse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.warehouse_id_seq;
       public       
   repairshop    false    221            M           0    0    warehouse_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.warehouse_id_seq OWNED BY public.warehouse.id;
          public       
   repairshop    false    220            �           2604    16529    cars id    DEFAULT     b   ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);
 6   ALTER TABLE public.cars ALTER COLUMN id DROP DEFAULT;
       public       
   repairshop    false    216    217    217            �           2604    16538    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public       
   repairshop    false    218    219    219            �           2604    16520 
   repairs id    DEFAULT     h   ALTER TABLE ONLY public.repairs ALTER COLUMN id SET DEFAULT nextval('public.repairs_id_seq'::regclass);
 9   ALTER TABLE public.repairs ALTER COLUMN id DROP DEFAULT;
       public       
   repairshop    false    215    214    215            �           2604    16547    warehouse id    DEFAULT     l   ALTER TABLE ONLY public.warehouse ALTER COLUMN id SET DEFAULT nextval('public.warehouse_id_seq'::regclass);
 ;   ALTER TABLE public.warehouse ALTER COLUMN id DROP DEFAULT;
       public       
   repairshop    false    221    220    221            <          0    16526    cars 
   TABLE DATA           K   COPY public.cars (id, make, model, year, vin, mileage, status) FROM stdin;
    public       
   repairshop    false    217   �/       A          0    16652    cars_owners 
   TABLE DATA           >   COPY public.cars_owners ("carsId", "customersId") FROM stdin;
    public       
   repairshop    false    222   0       >          0    16535 	   customers 
   TABLE DATA           V   COPY public.customers (id, "firstName", "lastName", "phoneNumber", email) FROM stdin;
    public       
   repairshop    false    219   :0       :          0    16517    repairs 
   TABLE DATA           l   COPY public.repairs (id, "carId", "clientId", "startDate", "endDate", description, works, cost) FROM stdin;
    public       
   repairshop    false    215   �0       @          0    16544 	   warehouse 
   TABLE DATA           4   COPY public.warehouse (id, name, count) FROM stdin;
    public       
   repairshop    false    221   �0       N           0    0    cars_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.cars_id_seq', 3, true);
          public       
   repairshop    false    216            O           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 2, true);
          public       
   repairshop    false    218            P           0    0    repairs_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.repairs_id_seq', 2, true);
          public       
   repairshop    false    214            Q           0    0    warehouse_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.warehouse_id_seq', 1, false);
          public       
   repairshop    false    220            �           2606    16542 (   customers PK_133ec679a801fab5e070f73d3ea 
   CONSTRAINT     h   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT "PK_133ec679a801fab5e070f73d3ea" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.customers DROP CONSTRAINT "PK_133ec679a801fab5e070f73d3ea";
       public         
   repairshop    false    219            �           2606    16656 *   cars_owners PK_428ecd2213a30026b0a1adc6215 
   CONSTRAINT        ALTER TABLE ONLY public.cars_owners
    ADD CONSTRAINT "PK_428ecd2213a30026b0a1adc6215" PRIMARY KEY ("carsId", "customersId");
 V   ALTER TABLE ONLY public.cars_owners DROP CONSTRAINT "PK_428ecd2213a30026b0a1adc6215";
       public         
   repairshop    false    222    222            �           2606    16551 (   warehouse PK_965abf9f99ae8c5983ae74ebde8 
   CONSTRAINT     h   ALTER TABLE ONLY public.warehouse
    ADD CONSTRAINT "PK_965abf9f99ae8c5983ae74ebde8" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.warehouse DROP CONSTRAINT "PK_965abf9f99ae8c5983ae74ebde8";
       public         
   repairshop    false    221            �           2606    16524 &   repairs PK_f075e413c4b1d29911f893b33e7 
   CONSTRAINT     f   ALTER TABLE ONLY public.repairs
    ADD CONSTRAINT "PK_f075e413c4b1d29911f893b33e7" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.repairs DROP CONSTRAINT "PK_f075e413c4b1d29911f893b33e7";
       public         
   repairshop    false    215            �           2606    16533 #   cars PK_fc218aa84e79b477d55322271b6 
   CONSTRAINT     c   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT "PK_fc218aa84e79b477d55322271b6" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.cars DROP CONSTRAINT "PK_fc218aa84e79b477d55322271b6";
       public         
   repairshop    false    217            �           1259    16657    IDX_4b51c83a05858fa41b0f8d1f8a    INDEX     \   CREATE INDEX "IDX_4b51c83a05858fa41b0f8d1f8a" ON public.cars_owners USING btree ("carsId");
 4   DROP INDEX public."IDX_4b51c83a05858fa41b0f8d1f8a";
       public         
   repairshop    false    222            �           1259    16658    IDX_9ff6a675c7b017c4d2739b29bd    INDEX     a   CREATE INDEX "IDX_9ff6a675c7b017c4d2739b29bd" ON public.cars_owners USING btree ("customersId");
 4   DROP INDEX public."IDX_9ff6a675c7b017c4d2739b29bd";
       public         
   repairshop    false    222            �           2606    16659 *   cars_owners FK_4b51c83a05858fa41b0f8d1f8a1    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars_owners
    ADD CONSTRAINT "FK_4b51c83a05858fa41b0f8d1f8a1" FOREIGN KEY ("carsId") REFERENCES public.cars(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.cars_owners DROP CONSTRAINT "FK_4b51c83a05858fa41b0f8d1f8a1";
       public       
   repairshop    false    3487    217    222            �           2606    16613 &   repairs FK_50d307545b34001299181bbb4e1    FK CONSTRAINT     �   ALTER TABLE ONLY public.repairs
    ADD CONSTRAINT "FK_50d307545b34001299181bbb4e1" FOREIGN KEY ("carId") REFERENCES public.cars(id);
 R   ALTER TABLE ONLY public.repairs DROP CONSTRAINT "FK_50d307545b34001299181bbb4e1";
       public       
   repairshop    false    3487    217    215            �           2606    16664 *   cars_owners FK_9ff6a675c7b017c4d2739b29bd5    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars_owners
    ADD CONSTRAINT "FK_9ff6a675c7b017c4d2739b29bd5" FOREIGN KEY ("customersId") REFERENCES public.customers(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.cars_owners DROP CONSTRAINT "FK_9ff6a675c7b017c4d2739b29bd5";
       public       
   repairshop    false    219    222    3489            <   Z   x�3�t���5�4200�wrtt142�0�4426p^�a߅M.l���� ��[.l����/lJm�2��Y1z\\\ S�E�      A      x������ � �      >   D   x�3�0�¦.�3.컰�S����������Ȑ35'5��(?/�21�(��!713G���+F��� ?b�      :      x������ � �      @      x������ � �     