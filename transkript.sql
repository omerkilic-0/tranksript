PGDMP                         {         
   transkript    15.4    15.4 +    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    16654 
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
            public          postgres    false    217            �            1259    16733    notes    TABLE     �   CREATE TABLE public.notes (
    id integer NOT NULL,
    student character varying,
    lesson integer,
    note character varying
);
    DROP TABLE public.notes;
       public         heap    postgres    false            �            1259    16740    notes_id_seq    SEQUENCE     �   ALTER TABLE public.notes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    16655    sections    TABLE     s   CREATE TABLE public.sections (
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
            public          postgres    false    214            �            1259    16673    students    TABLE     �  CREATE TABLE public.students (
    id character varying(12) NOT NULL,
    name character varying(250),
    surname character varying(250),
    phone character varying(250),
    mail character varying(250),
    address text,
    save_time date DEFAULT CURRENT_TIMESTAMP,
    section integer,
    school_mail character varying(250),
    lesson1 integer,
    lesson2 integer,
    lesson3 integer,
    lesson4 integer,
    lesson5 integer
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
            public          postgres    false    215            $          0    16693    lessons 
   TABLE DATA           ?   COPY public.lessons (id, lesson, section, teacher) FROM stdin;
    public          postgres    false    217   �/       (          0    16733    notes 
   TABLE DATA           :   COPY public.notes (id, student, lesson, note) FROM stdin;
    public          postgres    false    221   �2       !          0    16655    sections 
   TABLE DATA           8   COPY public.sections (id, section, teacher) FROM stdin;
    public          postgres    false    214   �H       #          0    16673    students 
   TABLE DATA           �   COPY public.students (id, name, surname, phone, mail, address, save_time, section, school_mail, lesson1, lesson2, lesson3, lesson4, lesson5) FROM stdin;
    public          postgres    false    216   0J       "          0    16668    teachers 
   TABLE DATA           4   COPY public.teachers (id, name_surname) FROM stdin;
    public          postgres    false    215   �K       0           0    0    lessons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lessons_id_seq', 51, true);
          public          postgres    false    218            1           0    0    notes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.notes_id_seq', 1005, true);
          public          postgres    false    222            2           0    0    sections_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sections_id_seq', 1, false);
          public          postgres    false    220            3           0    0    teachers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.teachers_id_seq', 1, false);
          public          postgres    false    219            �           2606    16699    lessons lessons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_pkey;
       public            postgres    false    217            �           2606    16739    notes notes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.notes DROP CONSTRAINT notes_pkey;
       public            postgres    false    221            {           2606    16659    sections section_pkey 
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
       public            postgres    false    215            ~           1259    16752    fki_lesson2    INDEX     C   CREATE INDEX fki_lesson2 ON public.students USING btree (lesson2);
    DROP INDEX public.fki_lesson2;
       public            postgres    false    216                       1259    16758    fki_lesson3    INDEX     C   CREATE INDEX fki_lesson3 ON public.students USING btree (lesson3);
    DROP INDEX public.fki_lesson3;
       public            postgres    false    216            �           1259    16764    fki_lesson4    INDEX     C   CREATE INDEX fki_lesson4 ON public.students USING btree (lesson4);
    DROP INDEX public.fki_lesson4;
       public            postgres    false    216            �           1259    16770    fki_lesson5    INDEX     C   CREATE INDEX fki_lesson5 ON public.students USING btree (lesson5);
    DROP INDEX public.fki_lesson5;
       public            postgres    false    216            �           1259    16746    fki_lessons_id    INDEX     F   CREATE INDEX fki_lessons_id ON public.students USING btree (lesson1);
 "   DROP INDEX public.fki_lessons_id;
       public            postgres    false    216            �           1259    16692    fki_section    INDEX     C   CREATE INDEX fki_section ON public.students USING btree (section);
    DROP INDEX public.fki_section;
       public            postgres    false    216            y           1259    16686    fki_teacher    INDEX     C   CREATE INDEX fki_teacher ON public.sections USING btree (teacher);
    DROP INDEX public.fki_teacher;
       public            postgres    false    214            �           2606    16747    students lesson2    FK CONSTRAINT     {   ALTER TABLE ONLY public.students
    ADD CONSTRAINT lesson2 FOREIGN KEY (lesson2) REFERENCES public.lessons(id) NOT VALID;
 :   ALTER TABLE ONLY public.students DROP CONSTRAINT lesson2;
       public          postgres    false    217    3207    216            �           2606    16753    students lesson3    FK CONSTRAINT     {   ALTER TABLE ONLY public.students
    ADD CONSTRAINT lesson3 FOREIGN KEY (lesson3) REFERENCES public.lessons(id) NOT VALID;
 :   ALTER TABLE ONLY public.students DROP CONSTRAINT lesson3;
       public          postgres    false    216    3207    217            �           2606    16759    students lesson4    FK CONSTRAINT     {   ALTER TABLE ONLY public.students
    ADD CONSTRAINT lesson4 FOREIGN KEY (lesson4) REFERENCES public.lessons(id) NOT VALID;
 :   ALTER TABLE ONLY public.students DROP CONSTRAINT lesson4;
       public          postgres    false    3207    216    217            �           2606    16765    students lesson5    FK CONSTRAINT     {   ALTER TABLE ONLY public.students
    ADD CONSTRAINT lesson5 FOREIGN KEY (lesson5) REFERENCES public.lessons(id) NOT VALID;
 :   ALTER TABLE ONLY public.students DROP CONSTRAINT lesson5;
       public          postgres    false    3207    216    217            �           2606    16741    students lessons_id    FK CONSTRAINT     ~   ALTER TABLE ONLY public.students
    ADD CONSTRAINT lessons_id FOREIGN KEY (lesson1) REFERENCES public.lessons(id) NOT VALID;
 =   ALTER TABLE ONLY public.students DROP CONSTRAINT lessons_id;
       public          postgres    false    216    3207    217            �           2606    16700    lessons section    FK CONSTRAINT     {   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT section FOREIGN KEY (section) REFERENCES public.sections(id) NOT VALID;
 9   ALTER TABLE ONLY public.lessons DROP CONSTRAINT section;
       public          postgres    false    217    214    3195            �           2606    16687    students section1    FK CONSTRAINT     }   ALTER TABLE ONLY public.students
    ADD CONSTRAINT section1 FOREIGN KEY (section) REFERENCES public.sections(id) NOT VALID;
 ;   ALTER TABLE ONLY public.students DROP CONSTRAINT section1;
       public          postgres    false    3195    214    216            �           2606    16681    sections teacher    FK CONSTRAINT     |   ALTER TABLE ONLY public.sections
    ADD CONSTRAINT teacher FOREIGN KEY (teacher) REFERENCES public.teachers(id) NOT VALID;
 :   ALTER TABLE ONLY public.sections DROP CONSTRAINT teacher;
       public          postgres    false    3197    215    214            �           2606    16712    lessons teacher    FK CONSTRAINT     {   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT teacher FOREIGN KEY (teacher) REFERENCES public.teachers(id) NOT VALID;
 9   ALTER TABLE ONLY public.lessons DROP CONSTRAINT teacher;
       public          postgres    false    3197    215    217            $     x�]TK��F]W��'����� ���g� �7-���a�9hR��Axk���D�+�)ɦ.$�UW����8}�۶ɟ�o�t��ĉ3��~����~��t��lvk�{JKNf��/���:�a?�r@��'��=BC��ig@SN�o㝭�_��"�GS��	٘䮵m�=RW`$����w��M2|ů=�'������8P;�}2_;�=^���b)=5��f�������t�m����ety�$A�'T~���o�O�z�uu�1)XI�]Нy���d�g���n"�1�C�
�`�u�K������˨uRL�4.�έ�8)16�¦H1�qE�e2ɏϊ��Һ��v���7�:j�����~�.V@����ȏ���,�k��r�Co�c�����)�w)
���jݢ����T6VJ�IBЃޡ�I�cl�cP0!��uj�'4(C��B�dB�;g�. ��lZ�kgw�2�!Rz�Mx��#��z�?�"���ن��5ڗA����Ϙeqx{6�/۞f�-
�ƂH��1:�m�v���Yt��k�Mlɣj)δ!)��H�7���.�Ubb��>����|���VL���Y60�)�-te�IP���Η}a�%4�qng0?[�+:��a��TB�,/�ol*�Z�Ђ]n��E2cJ���� 
��(6�y�c_(Z��uk��.���h\*��6��sH;B)SY������84��~�^�8��k3v_�r��ɮ�,��t�\5�7�kq!�X�B��c���}      (      x�m�[��*����s���\z��8�\�/9�~��U@r�P&~~�.��~?�����}���������������Nc�5��~�ӈ_�V��a��붯yQ)���:���ڧ%��ZZ{X;�y��?��ow��ӥ{�_��ӽ~��:~{:u�����z��~��7����=Uсh���U���z=�o_�����
�r��1V<��r:��[gϔ?c5�v�?��~u�Fk�k��*�c���q��1ּh��*F�+�[���������x_������^��������*�,��n�b8Q��+���z�Ś���_���{��/�sl��j��h��jƯ־��j~4���5��s��1���گvz�2��!o�g����j�g��j�g�~T4�t���7���3���b��ӳ�!�\�g�	���3�\� ��jF���~���1�����F!Ͼ����_�����j�����Z�l,��O�X5��=}C՘��k�>?�8=C����k���^�U�8C��6�q:�z���k��m�=C͘O�q:ƪ7b���ꪡ�c�}\�t5c�>���g�S�k���ֱ1���fl����jƼ��8O�&O���l�ae�g�����<=C��14��5c>cI��5Ԍi��j���j�k\�tU?��uz65h�\��lj�:�==Cʹ>�:]C��]��:]C�X'g����a�I�N�'#6�}:��al�>�B��v১_�a\����(��>�B���ڧW��	U�^�^LP�����.�O��jk*bv��-Ԍ �'�i���ӵ�!��}��7��I��jǄ��t����s����xn,�M�!���f��(��/�`wB=�!�P���=윏��x��I# ��7Ia,���`�:�6����k�.��	΢�IP��q&�l�#	�NXI�%��I��T�+͎%����4nb��	��g����N'�G��t��g�ǆ'���|��'z) ���F((s�	���;��x�� ��^uJy���1��2z�9��f;���h6Ti������m��a�L��i��|W�w�;���/����8���1�8�`j�jȂ���,�AVh��[8��auj)ĿǱ�+��vn鿍srᮅ�8���^��*�z_0��k��������	��*�����-�`�q�>1[�y��9�T�� 3���dnޚGn��og����9��%'�f:i�q���:��.T���4U��8�`�rE:Ӽ5:�hۃ٠fq�;�`s�s�ᮈAw�)�:�d�AgW;����0:�`}p��	=8]c���1�)C۰3&��m���B�r����DTrx$��9�[q;w�ѝf����)��Y�s6��8��iq���,��Fs� �K`���+�9�&h6Ω����X�s�k5̡���)ܳ�cv3r4�J�.�D�l�ñ}`6���V��Syp����9�k��6� �WrX�U�q��8p��P`P�Π�Qp�X]�)��> ����^D�NѹSp��L�gj>;�T/�񆔉��xC�F�o(NPQ3��d�T�cp����A٤8�Plc�o(����7�-�8���_�&3���pP4��7��bjq�y��x��yq��z�V�<R?�nxo/7\�("�j��,Bjq�)b��p���lC�fc�Gzeq���|h6�y�RG:z)m�6C;����_���[�s�T��\�t�*6��yN6X3�e�4�Mq�y��F�[B�Q̠8�T����F�#�6U���Mil�����Ǖ�d#A�*�٠C(}��\A�N6�ผ�l���W�lxUc��6�iY��7�G�ʰ�P,������N6ܭ�F6[ڸ�����i/5�F�sM���HM��5����`Syf�p����.�0�`�ùQ�l���d�)ߝlp�LX]��pU'���p���ꇀ�Y�����p�����nt�7��T��R{�6�a��p�/T�H���/�c�M'@׈.M��馽͎ �Bd5��'�.�8\�G��V��9��(F_;�y����N����8�RN�4a۪N8��j�7��N��_;���7�Gtu���S#�ԹU���`�fkhC�A�2����5��G}�|3H25bN�!����oX�����tØJv�����V�FRa��n���/����<�=�$��7][{h7�6�����|�tM���tͦ�n�	9�p����pą������H+���ՈD�s!�)���V���a�Yd���0�Rq������Gq�=um��D�5G��������@�Mũ��Iu���Ũ;�0�N�V'�z�#�����O�8^`����M��p�7盡 }��l��o���'���Qo8U�*e |��bC�o�%�_�`��jx�sh�lxë�0�����N��2<YF��E��r�k�78�<�|��z��x�*��-<@����7SI�z�2�o�2dZ�MQ�9�P�78�˿E����������7���ͫ=6��0�h+k�7T$iN��3����xӴ8�oP!g��`+k�z��+�	�S����i[D��[�!��-���WƩ_�3Β��R��Ps�QvWs�)D��|q�j�7L}c�8�[�&��l�H���%G
A,�G[m�̚Gp�"@us�9�P�� 8��ǲ�qto!�(��E���s�E�ͤԜq���pИ�9�!��p��p���J�G��|t���	V#��đ"� j5'�5��k#�n8��_s�@4�7�9�t��p�6��p��	7��D��E߈�[�M�I7襫9��P�+y7�5�7b��t�kns�y��r�a��%{h��^�o߇��o�ٜo8y��)��0�P^0�4a{w�a��fml0��w�!�����������9�#��Qw�y��="SJ�둁sS���z�l'�5:�N8�ے�M��8%�!��x��!��n��`����T��C�Q�h�QFiw�)<Nz����8M�w���ˣGx���V�E�$����;�`|a��B���*Kvg����4{�j��Pp�M�(�Tad
+{�����G
5K�p:����b��7Դ��έ�䀃?O���W��n'=D2f���G�8��:�q��;�`����q�}4{
�-�q�T���5��sptd��q
i�G�J�uƹUe0�Rf�3�4�)8]{N N�2�.[=҈�Pԝp��fX{�J��ô����MN8�]���T�q����0_�|h8L!�S����#��Nw�)�=��8oب�8,����z�1Ҋu��W��%N9�]���-�;�[w��u�?vg��G���sk�|p��ó��vΑH�t����e8�4��9gq%ǜ���7���)��Aш8��g8����e�����}��87�g8�,502p��iD���R_�C�+9����6�#U�J�p�a@	֏�a*���!GB���x��'k�3Σ̜Q�B�gD�k� ���y�L�������3��e��S�DG��~<"ϸQ��h<	�#�i��,B��Yz���5�"GB�p��r&T��%*Z��S�}�*���S5MԌSq9�����+�H�)?�q���%G�(#�QT!�JGĩ�����̾y8J��8�F�8̌��Uz�72��<�����h��W����g���1q��p�l-� %�� )�#g�aWÛ# g���p�):B�y���g�S#L�~���]]����C�d}8���#�]�8b������ �(gd�0cf�q����C4�d���:�&j��S���q�&'�:�|>���㍢�#�T��1����K��xE���Dg��GN�f����2���|C�y��2Τ�=#N�X�8[o�>��2#G���7�̐q�!�t��<�fĩ�w�xѽ��̏�T�?w��;G����H1�r4o��O��0{��   b�3d���@���$c6:T%v� iR3�TB�2��z�(�s�P�N8U
�t�Y���j$�i8��g�ބ̈S)�5q(��JO����=g�uk N%k�xKu�oa]șd��3I-���wE:�p�a�@����Tmd0���i~9��9,��6�yO��*�3��r��t��S�i��S���J��z�Hǹ��9栉�vB��s�JN�4?�@�%g�L���(,5�s�7�5�*�#XŽ!S݌�O��nt:�O�#禂:#���`6�)����h�;t0<\��Pn��s��'�:��U�IGo\f�N����c%fϐr��t8�A:҃f�����&/��C��jr���w�N:��N'���oh9TQ�騣o��Hȑr6#�X��9�7o��aG/8g��jr&�����̐�F?�0
���t�Y;:����_��T�¯H��wIV$/�o+�r���*�0��|���ux�5Qg�u�f|�v�"�X�,��)��� ?.����Ãf}pN��<!G���*��+�U�w�s�|��9E���'�J�]_	������堃�i��:J�_񚊑"�=����>@�����瘓3�QHh9�V�+�=^��}}|Ԧ���9��G���_;�
�+VR(�s�������Ҽ�s��}E���lG��7�V��ֆsγ�/w�h�__	9����p|<�qș�vGd3踜qެ���v�Pr�q�V�#NUp{�wnxg[A8�o� ne0�{q���r��"V���#r\�s<�t?�xCo��q�@S��a�7U�mg�&�:�q��c!�
�!ʬxT����H9֗`2!g��"!��؈p��l��⋰�>R��Q�8��S�3G����
��o�8
�� ��y�*�au%G��|ӕ+�"�X/;W �I��fp�9��ƊX���Ps�Τ/5���;��p�t9�tָ?�U���x.�������j� �ܰ�kq�I�񪊩�0�t����:.��p��v��t��;bU�ZԎ��M�j�kq��#NՖ��q��6; G��C"�!�p��@�ݎ㕇��x0�nr������*>���Rۃٵ����Y��xT��|;�0�V���M�ڎ8E���GFv�b�������^v��RHn@����9�C��±?���exֱr9v0�և��qV�7�8��0��ӱH�p��C��	�?^�/��9Ǐ>�e�#�x|�+7G��o�)���9R�v|����X9D�#�XyD; �}���r �C�����,Wz�$+ﯗ������!�k��g����S^7�i�;�#d��+9:R��gq�����B�?>�Ǒ)Gy�;bV���?�v|�s�Y��!+��C���U�}�k���vȑιC�Qn�GI�;�UI�؁9�j�U�0�êMr١�,�¡�hp̑��#%GRڎ����;d�������-�0G�\;^�+��#f�-��QƎ�UR���e���Bʉ9�����?�#4x�F'���:����l�ȁ������� (f      !   *  x����J1���S�	���[Y*���X�m�IӴ�>�=zu/=�-�{9������c&��Ś��1;��ڀ���  �)�,0�6�"�]���5�B;�ӫ�w-�+{bf�0+�դ����"U���OU�ɾH���ش����z��y�o�i��@\����f��UKޗCq�P➬>���p"j���9�#���;�����Ի�y��|ȑ��\��AC�4�?	�:"���Քt�@����!U���e��|�\��w�P�~�Ȭ+�Xci���[Okvc�:�pg?ؑ/R�/;�̝      #   a  x�ݕ�j�0���S�Ֆ���Z
��th:��H����v�O�1s�N��W%秔B��:��Y6�>|:1�1�\�\P~*���0 �g�:��D�()T.���NF�@)y*��j��.��{�"�'�!#���L��|��ϐ	~l��f^����I�ѱ(80���u��ƿ�þ����fgI����?݅G�B��9��+�-b7���鸡���$sM����(��>a���.�D�lǰ�64W��TTK��0�ynp��`�Pȿ�a������8�aȵP���Z�����/�.�^_S���5�
� ����-e�<؟��\����{�R��Jy��ozc�̨�8_�QIz      "   �   x�-ʽ�0@��n
O����@DB�:�r��H�o6��4T��E"�~�%pb'�g��p97�J�E]p�G�Q�VF���V5.�
�ENV5�KH�ZS%.܅;���_͸���Vb�qi�Jqd�q�m���m0�BF��Q��6A���;�     