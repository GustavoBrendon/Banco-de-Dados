PGDMP                         {            Teste1    15.3    15.3 !    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    16437    Teste1    DATABASE        CREATE DATABASE "Teste1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Teste1";
                postgres    false            �            1259    16438    tbcargo    TABLE     g   CREATE TABLE public.tbcargo (
    id integer NOT NULL,
    nomecargo character varying(20) NOT NULL
);
    DROP TABLE public.tbcargo;
       public         heap    postgres    false            �            1259    16441    tbcargo_id_seq    SEQUENCE     �   ALTER TABLE public.tbcargo ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tbcargo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    16442 	   tbcliente    TABLE     �   CREATE TABLE public.tbcliente (
    id integer NOT NULL,
    nome character varying NOT NULL,
    cpf double precision,
    rg integer,
    datanasc date,
    datacadastro date,
    codconsulta integer
);
    DROP TABLE public.tbcliente;
       public         heap    postgres    false            �            1259    16447    tbcliente_id_seq    SEQUENCE     �   ALTER TABLE public.tbcliente ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tbcliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16448 
   tbconsulta    TABLE     O  CREATE TABLE public.tbconsulta (
    id integer NOT NULL,
    idcliente integer NOT NULL,
    idfuncionario integer NOT NULL,
    idatendente integer NOT NULL,
    procedimento character varying(30) NOT NULL,
    valor double precision NOT NULL,
    dataconsulta timestamp with time zone NOT NULL,
    dataatendimento date NOT NULL
);
    DROP TABLE public.tbconsulta;
       public         heap    postgres    false            �            1259    16451    tbconsulta_id_seq    SEQUENCE     �   ALTER TABLE public.tbconsulta ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tbconsulta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16452 
   tbendereco    TABLE       CREATE TABLE public.tbendereco (
    id integer NOT NULL,
    rua character varying(90) NOT NULL,
    bairro character varying(20) NOT NULL,
    cidade character varying(25) NOT NULL,
    uf character varying(2) NOT NULL,
    cep integer NOT NULL,
    idfuncionario integer
);
    DROP TABLE public.tbendereco;
       public         heap    postgres    false            �            1259    16455    tbendereco_id_seq    SEQUENCE     �   ALTER TABLE public.tbendereco ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tbendereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    16456 	   tbestoque    TABLE     �   CREATE TABLE public.tbestoque (
    id integer NOT NULL,
    produto character varying NOT NULL,
    quantidade integer NOT NULL,
    valorunitario double precision NOT NULL
);
    DROP TABLE public.tbestoque;
       public         heap    postgres    false            �            1259    16461    tbestoque_id_seq    SEQUENCE     �   ALTER TABLE public.tbestoque ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tbestoque_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    16462    tbfuncionario    TABLE       CREATE TABLE public.tbfuncionario (
    id integer NOT NULL,
    nome character varying(90) NOT NULL,
    codcargo integer NOT NULL,
    datanasc date,
    rg double precision,
    cpf double precision,
    carteiradetrabalho double precision,
    datacontratacao date
);
 !   DROP TABLE public.tbfuncionario;
       public         heap    postgres    false            �            1259    16465    tbfuncionario_id_seq    SEQUENCE     �   ALTER TABLE public.tbfuncionario ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tbfuncionario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224                      0    16438    tbcargo 
   TABLE DATA           0   COPY public.tbcargo (id, nomecargo) FROM stdin;
    public          postgres    false    214   R%                 0    16442 	   tbcliente 
   TABLE DATA           [   COPY public.tbcliente (id, nome, cpf, rg, datanasc, datacadastro, codconsulta) FROM stdin;
    public          postgres    false    216   �%                 0    16448 
   tbconsulta 
   TABLE DATA           �   COPY public.tbconsulta (id, idcliente, idfuncionario, idatendente, procedimento, valor, dataconsulta, dataatendimento) FROM stdin;
    public          postgres    false    218   a&                 0    16452 
   tbendereco 
   TABLE DATA           U   COPY public.tbendereco (id, rua, bairro, cidade, uf, cep, idfuncionario) FROM stdin;
    public          postgres    false    220   �&                 0    16456 	   tbestoque 
   TABLE DATA           K   COPY public.tbestoque (id, produto, quantidade, valorunitario) FROM stdin;
    public          postgres    false    222   �'                  0    16462    tbfuncionario 
   TABLE DATA           s   COPY public.tbfuncionario (id, nome, codcargo, datanasc, rg, cpf, carteiradetrabalho, datacontratacao) FROM stdin;
    public          postgres    false    224   D(       (           0    0    tbcargo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tbcargo_id_seq', 4, true);
          public          postgres    false    215            )           0    0    tbcliente_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tbcliente_id_seq', 4, true);
          public          postgres    false    217            *           0    0    tbconsulta_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbconsulta_id_seq', 3, true);
          public          postgres    false    219            +           0    0    tbendereco_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tbendereco_id_seq', 12, true);
          public          postgres    false    221            ,           0    0    tbestoque_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tbestoque_id_seq', 7, true);
          public          postgres    false    223            -           0    0    tbfuncionario_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbfuncionario_id_seq', 13, true);
          public          postgres    false    225                       2606    16467    tbcargo tbcargo_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tbcargo
    ADD CONSTRAINT tbcargo_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tbcargo DROP CONSTRAINT tbcargo_pkey;
       public            postgres    false    214            �           2606    16469    tbcliente tbcliente_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbcliente
    ADD CONSTRAINT tbcliente_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbcliente DROP CONSTRAINT tbcliente_pkey;
       public            postgres    false    216            �           2606    16471    tbendereco tbendereco_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbendereco
    ADD CONSTRAINT tbendereco_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tbendereco DROP CONSTRAINT tbendereco_pkey;
       public            postgres    false    220            �           2606    16473    tbestoque tbestoque_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbestoque
    ADD CONSTRAINT tbestoque_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbestoque DROP CONSTRAINT tbestoque_pkey;
       public            postgres    false    222            �           2606    16475     tbfuncionario tbfuncionario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbfuncionario
    ADD CONSTRAINT tbfuncionario_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tbfuncionario DROP CONSTRAINT tbfuncionario_pkey;
       public            postgres    false    224               3   x�3�tO-J�+I�2�J�IL�/�2�t,I�K��p� ���D�=... hb.         �   x�%��j1���S��X��cs	r����vk��䒧���0|F3z���.��z�PXJ�RX���Ā���S 
�ND�:��M�}��rZ�u3"\�0#�\�=�3c�Q<�} r~���Z��Ҷ�+�$��9E@��^���ؐhb`���m�������<˫-G��fw���O$|�H����9� �8�         |   x�3�4��4�tN�K��4420�4204�"#+0�50�
�p5Y 5�d��V%rBt����	��ru�s�r�'��%^~xq>�9�>S]3�����-�L�=... F�"h         �   x���A
�0E�3��	�Q�vi��� �r3�A����(^L��q�w�����R�:�]��I<�,9)�^O5���Ar��L�w���sUU�E��՜)���cA�W�}�O�
�Pk��A�>s"�Z�鰆>ĐIM����Q�+�_�%�
:�QŴ�<���������(y5Mb�*��s�I�c�y��"�����         w   x��A
�0���S��m���r�܌5`!�bb���f�\+�*�GP�`��0����qMٵ��"���dX�3Y>-u���R�Ɉ�?Lv�ù�e#E�=���]f"�ܽ��}��          j  x�U�An�0D��)|$%RҲȢ@�l���n|��E`N����Qz����aZ��4|C=�������W�ZK�$��K�$�?ꤕ�6����^�m^~��}�^�W�A-9����MD�̒{-�,'��7�LOm�lm�z�.S7B#�A*�C4Z�d%�R�NZYqW�֡�t������Q�FD�P���9'�dr�*����m�Ƈi��F���D��`"1��n�?���r�0X]o��Dk>¡��� j*Y=2�����Я����֍�m�w$5��^�W<k�HȆE߷y���;�q_�V�K�G���L���0PܳEz���h��v�;�{Ϛ
i�������!���w�0��N��     