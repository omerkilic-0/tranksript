PGDMP     $                     {         
   transkript    15.4    15.4 !    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    16654 
   transkript    DATABASE        CREATE DATABASE transkript WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE transkript;
                postgres    false            �            1259    16693    lessons    TABLE     �   CREATE TABLE public.lessons (
    id integer NOT NULL,
    lesson character varying(250),
    section integer,
    teacher integer
);
    DROP TABLE public.lessons;
       public         heap    postgres    false            �            1259    16717    lessons_id_seq    SEQUENCE     �   ALTER TABLE public.lessons ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.lessons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16705    notes    TABLE     }   CREATE TABLE public.notes (
    id integer NOT NULL,
    student integer,
    lessons integer,
    note character varying
);
    DROP TABLE public.notes;
       public         heap    postgres    false            �            1259    16720    notes_id_seq    SEQUENCE     �   ALTER TABLE public.notes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16655    sections    TABLE     s   CREATE TABLE public.sections (
    id integer NOT NULL,
    section character varying(250),
    teacher integer
);
    DROP TABLE public.sections;
       public         heap    postgres    false            �            1259    16719    sections_id_seq    SEQUENCE     �   ALTER TABLE public.sections ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    16673    students    TABLE     M  CREATE TABLE public.students (
    id character varying(12) NOT NULL,
    name character varying(250),
    surname character varying(250),
    phone character varying(250),
    mail character varying(250),
    address text,
    save_time date DEFAULT CURRENT_TIMESTAMP,
    section integer,
    school_mail character varying(250)
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    16668    teachers    TABLE     c   CREATE TABLE public.teachers (
    id integer NOT NULL,
    name_surname character varying(250)
);
    DROP TABLE public.teachers;
       public         heap    postgres    false            �            1259    16718    teachers_id_seq    SEQUENCE     �   ALTER TABLE public.teachers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.teachers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215                      0    16693    lessons 
   TABLE DATA           ?   COPY public.lessons (id, lesson, section, teacher) FROM stdin;
    public          postgres    false    217   r#                 0    16705    notes 
   TABLE DATA           ;   COPY public.notes (id, student, lessons, note) FROM stdin;
    public          postgres    false    218   �&                 0    16655    sections 
   TABLE DATA           8   COPY public.sections (id, section, teacher) FROM stdin;
    public          postgres    false    214   �&                 0    16673    students 
   TABLE DATA           l   COPY public.students (id, name, surname, phone, mail, address, save_time, section, school_mail) FROM stdin;
    public          postgres    false    216   �'                 0    16668    teachers 
   TABLE DATA           4   COPY public.teachers (id, name_surname) FROM stdin;
    public          postgres    false    215   �(       &           0    0    lessons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lessons_id_seq', 51, true);
          public          postgres    false    219            '           0    0    notes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.notes_id_seq', 1, false);
          public          postgres    false    222            (           0    0    sections_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sections_id_seq', 1, false);
          public          postgres    false    221            )           0    0    teachers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.teachers_id_seq', 1, false);
          public          postgres    false    220            �           2606    16699    lessons lessons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_pkey;
       public            postgres    false    217            �           2606    16711    notes notes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.notes DROP CONSTRAINT notes_pkey;
       public            postgres    false    218            {           2606    16659    sections section_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.sections
    ADD CONSTRAINT section_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.sections DROP CONSTRAINT section_pkey;
       public            postgres    false    214            �           2606    16680    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    216            }           2606    16672    teachers teacher_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teacher_pkey;
       public            postgres    false    215            ~           1259    16692    fki_section    INDEX     C   CREATE INDEX fki_section ON public.students USING btree (section);
    DROP INDEX public.fki_section;
       public            postgres    false    216            y           1259    16686    fki_teacher    INDEX     C   CREATE INDEX fki_teacher ON public.sections USING btree (teacher);
    DROP INDEX public.fki_teacher;
       public            postgres    false    214            �           2606    16687    students section    FK CONSTRAINT     |   ALTER TABLE ONLY public.students
    ADD CONSTRAINT section FOREIGN KEY (section) REFERENCES public.sections(id) NOT VALID;
 :   ALTER TABLE ONLY public.students DROP CONSTRAINT section;
       public          postgres    false    3195    216    214            �           2606    16700    lessons section    FK CONSTRAINT     {   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT section FOREIGN KEY (section) REFERENCES public.sections(id) NOT VALID;
 9   ALTER TABLE ONLY public.lessons DROP CONSTRAINT section;
       public          postgres    false    217    3195    214            �           2606    16681    sections teacher    FK CONSTRAINT     |   ALTER TABLE ONLY public.sections
    ADD CONSTRAINT teacher FOREIGN KEY (teacher) REFERENCES public.teachers(id) NOT VALID;
 :   ALTER TABLE ONLY public.sections DROP CONSTRAINT teacher;
       public          postgres    false    3197    215    214            �           2606    16712    lessons teacher    FK CONSTRAINT     {   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT teacher FOREIGN KEY (teacher) REFERENCES public.teachers(id) NOT VALID;
 9   ALTER TABLE ONLY public.lessons DROP CONSTRAINT teacher;
       public          postgres    false    217    215    3197                 x�]TK��F]W��'����� ���g� �7-���a�9hR��Axk���D�+�)ɦ.$�UW����8}�۶ɟ�o�t��ĉ3��~����~��t��lvk�{JKNf��/���:�a?�r@��'��=BC��ig@SN�o㝭�_��"�GS��	٘䮵m�=RW`$����w��M2|ů=�'������8P;�}2_;�=^���b)=5��f�������t�m����ety�$A�'T~���o�O�z�uu�1)XI�]Нy���d�g���n"�1�C�
�`�u�K������˨uRL�4.�έ�8)16�¦H1�qE�e2ɏϊ��Һ��v���7�:j�����~�.V@����ȏ���,�k��r�Co�c�����)�w)
���jݢ����T6VJ�IBЃޡ�I�cl�cP0!��uj�'4(C��B�dB�;g�. ��lZ�kgw�2�!Rz�Mx��#��z�?�"���ن��5ڗA����Ϙeqx{6�/۞f�-
�ƂH��1:�m�v���Yt��k�Mlɣj)δ!)��H�7���.�Ubb��>����|���VL���Y60�)�-te�IP���Η}a�%4�qng0?[�+:��a��TB�,/�ol*�Z�Ђ]n��E2cJ���� 
��(6�y�c_(Z��uk��.���h\*��6��sH;B)SY������84��~�^�8��k3v_�r��ɮ�,��t�\5�7�kq!�X�B��c���}            x������ � �         *  x����J1���S�	���[Y*���X�m�IӴ�>�=zu/=�-�{9������c&��Ś��1;��ڀ���  �)�,0�6�"�]���5�B;�ӫ�w-�+{bf�0+�դ����"U���OU�ɾH���ش����z��y�o�i��@\����f��UKޗCq�P➬>���p"j���9�#���;�����Ի�y��|ȑ��\��AC�4�?	�:"���Քt�@����!U���e��|�\��w�P�~�Ȭ+�Xci���[Okvc�:�pg?ؑ/R�/;�̝         �   x����J1 ���+�lܝXOE�zY�^3�K#�Fد�ѳO���/���LH�0�
"c�E��//xmaj��x�f�[?U�}rg��b�;'�o�}�r��޲���<\_�����6c�����k9�7=c=l��� 3)iR\�r���fyL:�9J�9P^�=��ᝏO��#��U7{�d�N�n^��oI�M��j��R?�Z-�         �   x�-ʽ�0@��n
O����@DB�:�r��H�o6��4T��E"�~�%pb'�g��p97�J�E]p�G�Q�VF���V5.�
�ENV5�KH�ZS%.܅;���_͸���Vb�qi�Jqd�q�m���m0�BF��Q��6A���;�     