PGDMP                         {           soccer    15.4    15.4 9    ;           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            <           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            =           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            >           1262    16563    soccer    DATABASE     �   CREATE DATABASE soccer WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE soccer;
                postgres    false            �            1259    16852    coaches    TABLE     x   CREATE TABLE public.coaches (
    id integer NOT NULL,
    team_id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.coaches;
       public         heap    postgres    false            �            1259    16851    coaches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coaches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.coaches_id_seq;
       public          postgres    false    215            ?           0    0    coaches_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.coaches_id_seq OWNED BY public.coaches.id;
          public          postgres    false    214            �            1259    16861    leagues    TABLE     Z   CREATE TABLE public.leagues (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.leagues;
       public         heap    postgres    false            �            1259    16860    leagues_id_seq    SEQUENCE     �   CREATE SEQUENCE public.leagues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.leagues_id_seq;
       public          postgres    false    217            @           0    0    leagues_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.leagues_id_seq OWNED BY public.leagues.id;
          public          postgres    false    216            �            1259    16908    match_scorers    TABLE     e   CREATE TABLE public.match_scorers (
    match_id integer NOT NULL,
    player_id integer NOT NULL
);
 !   DROP TABLE public.match_scorers;
       public         heap    postgres    false            �            1259    16912    matches    TABLE     �   CREATE TABLE public.matches (
    id integer NOT NULL,
    away_team_goals integer,
    home_team_goals integer,
    match_date timestamp(6) without time zone,
    away_team_id integer NOT NULL,
    home_team_id integer NOT NULL
);
    DROP TABLE public.matches;
       public         heap    postgres    false            �            1259    16911    matches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.matches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.matches_id_seq;
       public          postgres    false    226            A           0    0    matches_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.matches_id_seq OWNED BY public.matches.id;
          public          postgres    false    225            �            1259    16868    players    TABLE     x   CREATE TABLE public.players (
    id integer NOT NULL,
    team_id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.players;
       public         heap    postgres    false            �            1259    16867    players_id_seq    SEQUENCE     �   CREATE SEQUENCE public.players_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.players_id_seq;
       public          postgres    false    219            B           0    0    players_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.players_id_seq OWNED BY public.players.id;
          public          postgres    false    218            �            1259    16875    referees    TABLE     {   CREATE TABLE public.referees (
    id integer NOT NULL,
    league_id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.referees;
       public         heap    postgres    false            �            1259    16874    referees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.referees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.referees_id_seq;
       public          postgres    false    221            C           0    0    referees_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.referees_id_seq OWNED BY public.referees.id;
          public          postgres    false    220            �            1259    16882    teams    TABLE     x   CREATE TABLE public.teams (
    id integer NOT NULL,
    league_id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.teams;
       public         heap    postgres    false            �            1259    16881    teams_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.teams_id_seq;
       public          postgres    false    223            D           0    0    teams_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;
          public          postgres    false    222            �           2604    16855 
   coaches id    DEFAULT     h   ALTER TABLE ONLY public.coaches ALTER COLUMN id SET DEFAULT nextval('public.coaches_id_seq'::regclass);
 9   ALTER TABLE public.coaches ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16864 
   leagues id    DEFAULT     h   ALTER TABLE ONLY public.leagues ALTER COLUMN id SET DEFAULT nextval('public.leagues_id_seq'::regclass);
 9   ALTER TABLE public.leagues ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16915 
   matches id    DEFAULT     h   ALTER TABLE ONLY public.matches ALTER COLUMN id SET DEFAULT nextval('public.matches_id_seq'::regclass);
 9   ALTER TABLE public.matches ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16871 
   players id    DEFAULT     h   ALTER TABLE ONLY public.players ALTER COLUMN id SET DEFAULT nextval('public.players_id_seq'::regclass);
 9   ALTER TABLE public.players ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16878    referees id    DEFAULT     j   ALTER TABLE ONLY public.referees ALTER COLUMN id SET DEFAULT nextval('public.referees_id_seq'::regclass);
 :   ALTER TABLE public.referees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16885    teams id    DEFAULT     d   ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);
 7   ALTER TABLE public.teams ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            -          0    16852    coaches 
   TABLE DATA           4   COPY public.coaches (id, team_id, name) FROM stdin;
    public          postgres    false    215   =>       /          0    16861    leagues 
   TABLE DATA           +   COPY public.leagues (id, name) FROM stdin;
    public          postgres    false    217   r>       6          0    16908    match_scorers 
   TABLE DATA           <   COPY public.match_scorers (match_id, player_id) FROM stdin;
    public          postgres    false    224   �>       8          0    16912    matches 
   TABLE DATA           o   COPY public.matches (id, away_team_goals, home_team_goals, match_date, away_team_id, home_team_id) FROM stdin;
    public          postgres    false    226   @?       1          0    16868    players 
   TABLE DATA           4   COPY public.players (id, team_id, name) FROM stdin;
    public          postgres    false    219   U@       3          0    16875    referees 
   TABLE DATA           7   COPY public.referees (id, league_id, name) FROM stdin;
    public          postgres    false    221   �@       5          0    16882    teams 
   TABLE DATA           4   COPY public.teams (id, league_id, name) FROM stdin;
    public          postgres    false    223   �@       E           0    0    coaches_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.coaches_id_seq', 3, true);
          public          postgres    false    214            F           0    0    leagues_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.leagues_id_seq', 2, true);
          public          postgres    false    216            G           0    0    matches_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.matches_id_seq', 24, true);
          public          postgres    false    225            H           0    0    players_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.players_id_seq', 6, true);
          public          postgres    false    218            I           0    0    referees_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.referees_id_seq', 1, false);
          public          postgres    false    220            J           0    0    teams_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.teams_id_seq', 24, true);
          public          postgres    false    222            �           2606    16857    coaches coaches_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.coaches
    ADD CONSTRAINT coaches_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.coaches DROP CONSTRAINT coaches_pkey;
       public            postgres    false    215            �           2606    16859    coaches coaches_team_id_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.coaches
    ADD CONSTRAINT coaches_team_id_key UNIQUE (team_id);
 E   ALTER TABLE ONLY public.coaches DROP CONSTRAINT coaches_team_id_key;
       public            postgres    false    215            �           2606    16866    leagues leagues_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.leagues
    ADD CONSTRAINT leagues_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.leagues DROP CONSTRAINT leagues_pkey;
       public            postgres    false    217            �           2606    16917    matches matches_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.matches DROP CONSTRAINT matches_pkey;
       public            postgres    false    226            �           2606    16873    players players_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.players DROP CONSTRAINT players_pkey;
       public            postgres    false    219            �           2606    16880    referees referees_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.referees
    ADD CONSTRAINT referees_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.referees DROP CONSTRAINT referees_pkey;
       public            postgres    false    221            �           2606    16887    teams teams_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
       public            postgres    false    223            �           2606    16928 #   matches fk2e8erbfecb0tjtq9iudg36bxu    FK CONSTRAINT     �   ALTER TABLE ONLY public.matches
    ADD CONSTRAINT fk2e8erbfecb0tjtq9iudg36bxu FOREIGN KEY (away_team_id) REFERENCES public.teams(id);
 M   ALTER TABLE ONLY public.matches DROP CONSTRAINT fk2e8erbfecb0tjtq9iudg36bxu;
       public          postgres    false    3219    226    223            �           2606    16893 #   players fk5nglidr00c4dyybl171v6kask    FK CONSTRAINT     �   ALTER TABLE ONLY public.players
    ADD CONSTRAINT fk5nglidr00c4dyybl171v6kask FOREIGN KEY (team_id) REFERENCES public.teams(id);
 M   ALTER TABLE ONLY public.players DROP CONSTRAINT fk5nglidr00c4dyybl171v6kask;
       public          postgres    false    3219    219    223            �           2606    16918 )   match_scorers fk6q1m6nhukiye08hkes3aa4uqc    FK CONSTRAINT     �   ALTER TABLE ONLY public.match_scorers
    ADD CONSTRAINT fk6q1m6nhukiye08hkes3aa4uqc FOREIGN KEY (player_id) REFERENCES public.players(id);
 S   ALTER TABLE ONLY public.match_scorers DROP CONSTRAINT fk6q1m6nhukiye08hkes3aa4uqc;
       public          postgres    false    224    3215    219            �           2606    16933 #   matches fk8k68nekawp47js52dq8720voe    FK CONSTRAINT     �   ALTER TABLE ONLY public.matches
    ADD CONSTRAINT fk8k68nekawp47js52dq8720voe FOREIGN KEY (home_team_id) REFERENCES public.teams(id);
 M   ALTER TABLE ONLY public.matches DROP CONSTRAINT fk8k68nekawp47js52dq8720voe;
       public          postgres    false    223    3219    226            �           2606    16888 #   coaches fkcdq4rnavxgc1iff9jawneh758    FK CONSTRAINT     �   ALTER TABLE ONLY public.coaches
    ADD CONSTRAINT fkcdq4rnavxgc1iff9jawneh758 FOREIGN KEY (team_id) REFERENCES public.teams(id);
 M   ALTER TABLE ONLY public.coaches DROP CONSTRAINT fkcdq4rnavxgc1iff9jawneh758;
       public          postgres    false    223    3219    215            �           2606    16903 !   teams fkcmnrlwu7alyse9s3x5tgvxyqj    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT fkcmnrlwu7alyse9s3x5tgvxyqj FOREIGN KEY (league_id) REFERENCES public.leagues(id);
 K   ALTER TABLE ONLY public.teams DROP CONSTRAINT fkcmnrlwu7alyse9s3x5tgvxyqj;
       public          postgres    false    223    3213    217            �           2606    16923 )   match_scorers fkqwcyoilrq6n6otqqdw17lmkmj    FK CONSTRAINT     �   ALTER TABLE ONLY public.match_scorers
    ADD CONSTRAINT fkqwcyoilrq6n6otqqdw17lmkmj FOREIGN KEY (match_id) REFERENCES public.matches(id);
 S   ALTER TABLE ONLY public.match_scorers DROP CONSTRAINT fkqwcyoilrq6n6otqqdw17lmkmj;
       public          postgres    false    224    3221    226            �           2606    16898 $   referees fkryvrch4b23bx9evlvvhuomnqq    FK CONSTRAINT     �   ALTER TABLE ONLY public.referees
    ADD CONSTRAINT fkryvrch4b23bx9evlvvhuomnqq FOREIGN KEY (league_id) REFERENCES public.leagues(id);
 N   ALTER TABLE ONLY public.referees DROP CONSTRAINT fkryvrch4b23bx9evlvvhuomnqq;
       public          postgres    false    217    221    3213            -   %   x�3�4��(�S(�H�H,I�2�4�,..����� u�E      /   "   x�3�tM�,(�L��2�(J��L-����� k?G      6   �   x�m�Q� C����T�w���c�Z��ȃD��QȺt�$�'���ޕ��l�7���|�#s���S�"���P���I��Nt�w(3u�x�.Mdf�]��e1\9�5���I{�?О0.nGt��pS�~_�&�9�      8     x�m�˕� Eצ�i`8� ��2��1\��lr���.(`�/�_�t�;ܩ�+x�m��P��~���nd��k�#�ҮDhpM���*iO��wB���}�[�$l�H��hхw1�ҥ_�N�S����F*��\�H%�\Da�4�-����H[+�����iH����D#o�E�Bu�vO佥��y�m��i�meV�S_G�|�#(1�r�G��8�������d�Dа9�w�5d#���mZ�*�<�?R��[      1   ?   x�3�4�t��MM�2�r2��9�9�s��L�ߌ��.S�Tbqyq9��	gqq1W� �l�      3      x������ � �      5   �   x�U�M
�@���Sx1��?[�]�	:`��b
��7S��d��p�p�A4�RA2s��It�ﲺ>���	���VDNvFgr6�m�X��@�e�/��g37\贗�1�Ƀ������U�.k �6?�     