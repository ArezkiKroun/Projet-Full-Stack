--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    designation character varying(100) NOT NULL,
    image oid,
    marque character varying(255) NOT NULL,
    prix_unit double precision NOT NULL,
    q_stock double precision NOT NULL
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    title character varying(100) NOT NULL,
    tva double precision NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: category_articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category_articles (
    category_id bigint NOT NULL,
    article_id bigint NOT NULL
);


ALTER TABLE public.category_articles OWNER TO postgres;

--
-- Name: horaires; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horaires (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    begin_time time without time zone NOT NULL,
    date date NOT NULL,
    day character varying(255) NOT NULL,
    end_time time without time zone NOT NULL,
    week_num integer NOT NULL,
    year integer NOT NULL,
    shop_id bigint NOT NULL
);


ALTER TABLE public.horaires OWNER TO postgres;

--
-- Name: horaires_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.horaires_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.horaires_id_seq OWNER TO postgres;

--
-- Name: horaires_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.horaires_id_seq OWNED BY public.horaires.id;


--
-- Name: shop_articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_articles (
    shop_id bigint NOT NULL,
    article_id bigint NOT NULL
);


ALTER TABLE public.shop_articles OWNER TO postgres;

--
-- Name: shops; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shops (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    is_vacation boolean NOT NULL,
    nom character varying(255) NOT NULL
);


ALTER TABLE public.shops OWNER TO postgres;

--
-- Name: shops_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shops_id_seq OWNER TO postgres;

--
-- Name: shops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shops_id_seq OWNED BY public.shops.id;


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: horaires id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaires ALTER COLUMN id SET DEFAULT nextval('public.horaires_id_seq'::regclass);


--
-- Name: shops id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shops ALTER COLUMN id SET DEFAULT nextval('public.shops_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles (id, created_at, updated_at, designation, image, marque, prix_unit, q_stock) FROM stdin;
1	2022-12-16 15:28:26.861	2022-12-16 15:28:26.861	Mac	\N	apple	7500	10
2	2022-12-16 15:30:13.697	2022-12-16 15:30:13.697	Power mac	\N	apple	20000	10
3	2022-12-16 15:31:56.609	2022-12-16 15:31:56.609	Access	\N	microsoft	1000	10
4	2022-12-16 15:32:44.181	2022-12-16 15:32:44.181	Paradox	\N	borland	800	30
5	2022-12-23 22:35:42.706	2022-12-23 22:35:42.706	Word	\N	kyukyuk	234	245
6	2022-12-27 19:56:39.937	2022-12-27 19:56:39.937	pc	\N	acer	3456	2345
7	2023-01-02 20:53:17.936	2023-01-02 20:53:17.936	pc hp	\N	HP	300	4
8	2023-01-02 20:54:08.592	2023-01-02 20:54:08.592	Pc Lenovo	\N	Lenovo	345	3
9	2023-01-02 20:55:26.096	2023-01-02 20:55:26.096	pc DELL	\N	DELL	456	5
10	2023-01-02 20:56:06.805	2023-01-02 20:56:06.805	pc Toshiba	\N	Toshiba	267	6
11	2023-01-02 20:57:15.233	2023-01-02 20:57:15.233	Pc Macbook 	\N	Apple	789	2
12	2023-01-02 20:57:39.303	2023-01-02 20:57:39.303	pc acer	\N	acer	400	3
13	2023-01-02 20:58:37.095	2023-01-02 20:58:37.095	pc Mackbook Pro	\N	Apple	699	5
14	2023-01-02 20:59:17.153	2023-01-02 20:59:17.153	Pc Asus	\N	Asus	345	4
15	2023-01-02 21:00:04.33	2023-01-02 21:00:04.33	Sourie	\N	hp	45	9
16	2023-01-02 21:00:37.19	2023-01-02 21:00:37.19	clavier	\N	acer	69	3
17	2023-01-02 21:08:36.309	2023-01-02 21:08:36.309	licence googleplay / mois	\N	google	10	4
18	2023-01-02 21:31:16.864	2023-01-02 21:31:16.864	basket 	\N	adidas	100	7
19	2023-01-02 21:32:51.778	2023-01-02 21:32:51.778	basket puma	\N	puma	89	5
20	2023-01-02 21:33:21.384	2023-01-02 21:33:21.384	basket asiks	\N	asiks	50	30
21	2023-01-02 21:34:12.799	2023-01-02 21:34:12.799	chemise lacoste	\N	lacoste	50.99	5
22	2023-01-02 21:34:34.018	2023-01-02 21:34:34.018	chemise polo	\N	polo	58.99	3
23	2023-01-02 21:35:27.564	2023-01-02 21:35:27.564	polo	\N	polo	60	7
24	2023-01-02 21:36:11.265	2023-01-02 21:36:11.265	claquette adidas	\N	adidas	15	10
25	2023-01-02 21:36:38.13	2023-01-02 21:36:38.13	claquette nike	\N	nike	20	7
26	2023-01-02 21:37:18.459	2023-01-02 21:37:18.459	jean bleu lacoste	\N	lacoste	45	5
27	2023-01-02 21:37:38.057	2023-01-02 21:37:38.057	jean noir lacoste	\N	lacoste	60	5
28	2023-01-02 21:38:28.879	2023-01-02 21:38:28.879	jean gris lacoste	\N	lacoste	50	2
29	2023-01-02 21:38:51.687	2023-01-02 21:38:51.687	jean bleu polo	\N	polo	45	5
30	2023-01-02 21:40:49.554	2023-01-02 21:40:49.554	couteau	\N	inox	2	15
31	2023-01-02 21:41:23.32	2023-01-02 21:41:23.32	vert en inox	\N	inox	15	50
32	2023-01-02 21:42:40.688	2023-01-02 21:42:40.688	torchon cuisine	\N	Fecido	4	3
33	2023-01-02 21:44:02.126	2023-01-02 21:44:02.126	essuie-tout	\N	Fecido	1.55	100
34	2023-01-02 21:44:31.282	2023-01-02 21:44:31.282	fourchette inox	\N	inox	3	78
35	2023-01-02 21:45:13.219	2023-01-02 21:45:13.219	cuillère	\N	inox	3	45
36	2023-01-02 21:46:08.138	2023-01-02 21:46:08.138	spatule ajournée	\N	inox	5	56
37	2023-01-02 21:46:30.161	2023-01-02 21:46:30.161	planche a decouper	\N	Fecido	5	20
38	2023-01-02 21:47:18.237	2023-01-02 21:47:18.237	pince sallade	\N	inox	6	67
39	2023-01-02 21:47:56.222	2023-01-02 21:47:56.222	petite cuillère inox	\N	inox	4	123
40	2023-01-02 21:48:35.902	2023-01-02 21:48:35.902	chargeur pc acer	\N	acer	35	5
41	2023-01-02 21:48:57.923	2023-01-02 21:48:57.923	chargeur pc hp	\N	ibm	50	6
42	2023-01-02 21:49:27.662	2023-01-02 21:49:27.662	chargeur pc DELL	\N	DELL	45	9
43	2023-01-02 21:50:00.87	2023-01-02 21:50:00.87	samsung galxy s12	\N	samsung	400	5
44	2023-01-02 21:50:21.276	2023-01-02 21:50:21.276	samsung galxy s20	\N	samsung	800	4
45	2023-01-02 21:51:00.658	2023-01-02 21:51:00.658	samsung galaxy M31	\N	samsung	350	4
46	2023-01-02 21:51:41.957	2023-01-02 21:51:41.957	iphone X	\N	apple	670.99	5
47	2023-01-02 21:52:04.901	2023-01-02 21:52:04.901	chargeur universel samsung	\N	samsung	40	17
48	2023-01-02 21:52:26.583	2023-01-02 21:52:26.583	chargeur universel apple	\N	apple	60	8
49	2023-01-02 21:52:45.566	2023-01-02 21:52:45.566	chargeur standard	\N	ibm	45	7
50	2023-01-02 21:53:19.155	2023-01-02 21:53:19.155	Oppo reno	\N	oppo	400	45
51	2023-01-02 21:53:43.537	2023-01-02 21:53:43.537	chargeur universel oppo	\N	oppo	40.99	9
52	2023-01-02 21:54:15.534	2023-01-02 21:54:15.534	Iphone 13 	\N	apple	890.99	3
53	2023-01-02 21:54:41.782	2023-01-02 21:54:41.782	iphone 13 pro max	\N	apple	999.99	3
54	2023-01-02 21:55:13.419	2023-01-02 21:55:13.419	iphone 14 	\N	apple	1200	4
55	2023-01-02 21:55:38.841	2023-01-02 21:55:38.841	iphone 14 pro max	\N	apple	1400	2
56	2023-01-02 22:05:32.432	2023-01-02 22:05:32.432	Lot de 7 tournevisses	\N	Bosch	17.78	5
57	2023-01-02 22:05:52.403	2023-01-02 22:05:52.403	perceuse	\N	Bosch	300	4
58	2023-01-02 22:06:20.222	2023-01-02 22:06:20.222	tournevis	\N	Facom	4	6
59	2023-01-02 22:08:14.874	2023-01-02 22:08:14.874	marteau	\N	Facom	34	5
60	2023-01-02 22:12:10.235	2023-01-02 22:12:10.235	sacs poubelle 3l	\N	Facom	2	50
61	2023-01-02 22:14:21.232	2023-01-02 22:14:21.232	DOLIPRANE	\N	bayer	3	54
62	2023-01-02 22:14:42.577	2023-01-02 22:14:42.577	EFFERALGAN	\N	bayer	2	43
63	2023-01-02 22:15:09.161	2023-01-02 22:15:09.161	DAFALGAN	\N	bayer	3.5	45
64	2023-01-02 22:16:43.534	2023-01-02 22:16:43.534	couche bebe	\N	Pampers	5	43
65	2023-01-02 22:18:24.756	2023-01-02 22:18:24.756	LEVOTHYROX	\N	Radiante	6	43
66	2023-01-02 22:18:49.784	2023-01-02 22:18:49.784	IMODIUM	\N	Nailner	13	23
67	2023-01-02 22:19:17.993	2023-01-02 22:19:17.993	KARDEGIC	\N	Natessance	10	12
68	2023-01-02 22:19:47.674	2023-01-02 22:19:47.674	SPASFON	\N	Oenobiol	45	12
69	2023-01-02 22:20:54.267	2023-01-02 22:20:54.267	ISIMIG	\N	Nailner	50	23
70	2023-01-02 22:22:17.591	2023-01-02 22:22:17.591	SPEDIFEN	\N	Panda Tea	23	15
71	2023-01-02 22:23:11.178	2023-01-02 22:23:11.178	VOLTARENE	\N	Offidis	14.99	5
72	2023-01-02 22:24:39.941	2023-01-02 22:24:39.941	CLAMOXYL	\N	Nat&Form	34	12
73	2023-01-02 22:27:25.943	2023-01-02 22:27:25.943	clé plate	\N	Stanley	13	12
74	2023-01-02 22:29:19.313	2023-01-02 22:29:19.313	clé Torx	\N	Facom	45	12
75	2023-01-02 22:29:50.892	2023-01-02 22:29:50.892	mètre	\N	Bosch	3	45
76	2023-01-02 22:34:19.273	2023-01-02 22:34:19.273	niveau à bulle	\N	Black	10	15
77	2023-01-02 22:35:36.927	2023-01-02 22:35:36.927	cutter	\N	Stanley	4	56
78	2023-01-02 22:45:01.501	2023-01-02 22:45:01.501	ballon de foot	\N	nike	25	12
79	2023-01-02 22:45:24.49	2023-01-02 22:45:24.49	requette de tenis	\N	adidas	30	4
80	2023-01-02 22:45:54.758	2023-01-02 22:45:54.758	balle de tenis	\N	adidas	4	12
81	2023-01-02 22:46:55.477	2023-01-02 22:46:55.477	haltère musculation 5KG	\N	decathlon	50	34
82	2023-01-02 22:47:19.021	2023-01-02 22:47:19.021	haltère musculation 20KG	\N	decathlon	100	6
83	2023-01-02 22:47:40.007	2023-01-02 22:47:40.007	Saxe de box	\N	decathlon	40.99	5
84	2023-01-02 22:48:19.976	2023-01-02 22:48:19.976	T-shirt barcelone	\N	nike	69.99	10
85	2023-01-02 22:48:53.589	2023-01-02 22:48:53.589	dacia sandero	\N	Dacia	10000	2
86	2023-01-02 22:49:23.3	2023-01-02 22:49:23.3	Kia picanto	\N	Kia	12000	4
87	2023-01-02 22:49:49.469	2023-01-02 22:49:49.469	Dodge RAM	\N	Dodge	40000	1
88	2023-01-02 22:50:18.361	2023-01-02 22:50:18.361	Ford fiesta	\N	Ford	15500	5
89	2023-01-02 22:50:40.781	2023-01-02 22:50:40.781	Mercedes Benz	\N	Mercedes	50000	1
90	2023-01-02 22:51:36.262	2023-01-02 22:51:36.262	table 90 x 150	\N	Ikea	400	3
91	2023-01-02 22:51:54.903	2023-01-02 22:51:54.903	chaise 	\N	Ikea	35	19
92	2023-01-02 22:52:19.111	2023-01-02 22:52:19.111	meuble de television	\N	Ikea	100	4
93	2023-01-02 23:02:00.303	2023-01-02 23:02:00.303	cuisiniére	\N	Ikea	350	13
94	2023-01-02 23:02:41.985	2023-01-02 23:02:41.985	refrigerateur	\N	Boulanger	400	4
95	2023-01-02 23:03:07.224	2023-01-02 23:03:07.224	machine a laver	\N	Boulanger	255.99	5
96	2023-01-02 23:03:32.319	2023-01-02 23:03:32.319	table ronde	\N	Ikea	150.99	4
97	2023-01-02 23:03:58.756	2023-01-02 23:03:58.756	Golf	\N	Wolkswagen	20000	3
98	2023-01-02 23:04:23.624	2023-01-02 23:04:23.624	écouteurs sans fil	\N	apple	99	6
99	2023-01-02 23:04:59.05	2023-01-02 23:04:59.05	Gant gardeir de but	\N	adidas	30	5
100	2023-01-02 23:06:15.235	2023-01-03 00:41:49.81	chauffage résistqnce	\N	Boulanger	100	9
101	2023-01-03 01:04:03.344	2023-01-03 01:04:03.344	Duster	\N	Dacia	18000	6
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, created_at, updated_at, title, tva) FROM stdin;
1	2022-12-01 13:44:15.088	2022-12-01 14:14:45.827	Ordinateurs	10
2	2023-01-02 22:37:57.201	2023-01-02 22:37:57.201	Vetement	20
3	2023-01-02 22:38:50.854	2023-01-02 22:38:50.854	Telephone	15
4	2023-01-02 22:39:07.377	2023-01-02 22:39:07.377	Bricolage	31
5	2023-01-02 22:39:45.366	2023-01-02 22:39:45.366	pharmacie	16
6	2023-01-02 22:40:12.548	2023-01-02 22:40:12.548	cuisine	18
7	2023-01-02 22:42:31.534	2023-01-02 22:42:31.534	ElectroMenager	12
8	2023-01-02 22:42:47.619	2023-01-02 22:42:47.619	voiture	32
9	2023-01-02 22:43:54.554	2023-01-02 22:43:54.554	Meuble	25
10	2023-01-02 22:44:06.07	2023-01-02 22:44:06.07	Sport	20
\.


--
-- Data for Name: category_articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category_articles (category_id, article_id) FROM stdin;
1	3
1	4
1	2
1	6
1	8
4	73
4	76
7	100
10	99
3	98
8	97
9	96
7	95
7	94
7	93
9	92
9	91
9	90
8	89
8	88
8	87
8	86
8	85
10	84
10	83
10	82
10	81
10	80
10	79
10	78
5	65
5	64
5	63
5	62
5	61
6	60
4	59
4	58
4	57
4	56
3	45
3	44
3	43
3	42
1	41
1	40
6	39
6	38
6	37
6	36
6	35
6	34
6	33
6	32
6	31
6	30
4	29
2	28
2	27
2	26
2	25
2	24
2	23
2	22
2	21
2	20
2	19
2	18
1	17
1	16
1	15
1	14
1	13
1	12
1	11
1	10
1	9
1	7
1	5
4	75
4	74
5	72
5	71
5	70
5	69
5	68
5	67
5	66
\.


--
-- Data for Name: horaires; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.horaires (id, created_at, updated_at, begin_time, date, day, end_time, week_num, year, shop_id) FROM stdin;
1	2022-12-18 00:15:49.423	2022-12-18 00:15:49.423	09:00:00	2022-12-12	Lundi	20:00:00	50	2022	1
2	2022-12-18 00:17:03.637	2022-12-18 00:17:03.637	09:00:00	2022-12-13	Mardi	20:00:00	50	2022	1
3	2022-12-18 00:17:20.829	2022-12-18 00:17:20.829	09:00:00	2022-12-14	Mercredi	20:00:00	50	2022	1
4	2022-12-18 00:17:40.201	2022-12-18 00:17:40.201	09:00:00	2022-12-15	Jeudi	20:00:00	50	2022	1
5	2022-12-18 00:18:33.564	2022-12-18 00:18:33.564	09:00:00	2022-12-16	Vendredi	20:00:00	50	2022	1
6	2022-12-18 00:19:02.646	2022-12-18 00:19:02.646	09:00:00	2022-12-17	Samedi	17:00:00	50	2022	1
7	2022-12-23 14:56:36.302	2022-12-23 15:30:33.242	11:50:00	2022-12-17	Mardi	20:50:08	51	0	4
8	2022-12-23 16:25:48.614	2022-12-23 16:25:48.614	11:50:00	2022-12-08	lundi	21:00:00	0	0	4
9	2022-12-23 16:29:51.553	2022-12-23 16:29:51.553	11:50:00	2022-12-23	vendredi	21:00:00	514	0	4
10	2022-12-23 16:33:11.226	2022-12-23 16:33:11.226	11:50:00	2022-12-23	vendredi	20:50:08	5	0	4
11	2022-12-23 16:37:17.768	2022-12-23 16:37:17.768	09:50:00	2022-12-23	vendredi	20:50:00	511	0	4
12	2022-12-23 16:40:11.849	2022-12-23 16:58:08.375	13:50:00	2022-12-22	jeudi	23:50:08	51	0	4
13	2022-12-23 22:29:36.91	2022-12-23 22:29:36.91	00:31:00	2022-12-08	Mardi	22:32:00	51	0	2
14	2022-12-27 23:56:57.883	2022-12-27 23:56:57.883	09:00:00	2022-12-26	Lundi	20:00:00	52	0	4
15	2022-12-28 00:00:05.097	2022-12-28 00:00:05.097	08:30:00	2022-12-27	Mardi	18:00:00	52	0	4
16	2022-12-28 00:01:29.507	2022-12-28 00:01:29.507	09:00:00	2022-12-28	Mercredi	20:00:00	52	0	4
17	2022-12-28 00:02:08.772	2022-12-28 00:02:08.772	09:00:00	2022-12-29	Jeudi	20:02:00	52	0	4
18	2022-12-28 00:02:55.596	2022-12-28 00:02:55.596	09:02:00	2022-12-30	Vendredi	20:57:00	52	0	4
19	2022-12-28 00:03:25.286	2022-12-28 00:03:25.286	11:03:00	2022-12-31	Samedi	15:03:00	52	0	4
20	2023-01-03 00:36:42.342	2023-01-03 00:36:42.342	08:38:00	2023-01-10	Lundi	20:51:00	2	0	3
21	2023-01-03 00:37:16.977	2023-01-03 00:37:16.977	07:36:00	2023-01-11	Mardi	21:37:00	2	0	3
22	2023-01-03 00:37:57.991	2023-01-03 00:37:57.991	08:00:00	2023-01-11	Mercredi	20:00:00	2	0	3
23	2023-01-03 00:38:24.224	2023-01-03 00:38:24.224	07:47:00	2023-01-12	Jeudi	21:38:00	2	0	3
24	2023-01-03 00:38:50.817	2023-01-03 00:38:50.817	08:18:00	2023-01-13	Vendredi	19:38:00	2	0	3
25	2023-01-03 00:39:41.048	2023-01-03 00:39:41.048	09:27:00	2023-01-14	Samedi	21:44:00	2	0	3
26	2023-01-03 00:40:43.24	2023-01-03 00:40:43.24	09:00:00	2023-01-15	Dimanche	12:00:00	2	0	3
\.


--
-- Data for Name: shop_articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_articles (shop_id, article_id) FROM stdin;
4	1
6	2
4	4
4	3
4	6
2	32
2	33
2	34
3	92
3	91
3	90
3	96
4	7
4	9
4	13
4	14
4	41
4	17
5	18
5	19
5	20
5	21
5	28
5	29
6	43
6	44
6	45
6	47
6	48
6	50
6	51
6	52
6	53
6	54
6	46
6	55
7	56
7	57
7	58
7	59
7	60
7	75
7	76
7	73
7	74
7	77
8	61
8	62
8	64
8	65
8	66
8	67
8	68
8	69
8	70
8	71
8	72
9	97
9	89
9	88
9	87
9	86
9	85
10	100
10	95
10	94
10	93
11	99
11	84
11	78
11	80
11	79
9	101
11	83
4	8
4	10
4	12
4	11
4	5
2	31
2	35
2	36
2	39
2	38
2	37
4	15
4	16
4	42
4	49
4	40
6	98
11	81
11	82
5	22
5	23
5	24
5	25
5	26
5	27
8	63
\.


--
-- Data for Name: shops; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shops (id, created_at, updated_at, is_vacation, nom) FROM stdin;
1	2022-12-16 15:03:38.575	2022-12-16 15:03:38.575	f	Colbert
2	2022-12-27 18:10:18.596	2023-01-02 23:39:04.339	f	Boutique cuisine
3	2022-12-27 18:12:41.089	2023-01-02 23:40:57.551	f	Boutique Meuble
4	2022-12-16 15:02:36.201	2023-01-02 23:44:45.025	t	Boutique ordinateurs
5	2022-12-27 18:17:44.063	2023-01-02 23:47:41.47	f	Boutique vetements
6	2022-12-16 15:03:24.14	2023-01-02 23:49:51.243	t	Boutique telephone
7	2022-12-27 18:13:37.943	2023-01-02 23:57:08.997	t	Boutice bricolage
8	2022-12-27 18:06:48.602	2023-01-03 00:02:31.396	f	Boutique pharmacie
9	2022-12-27 17:58:02.619	2023-01-03 00:04:52.279	f	Boutique Voitures
10	2022-12-23 22:00:19.425	2023-01-03 00:15:12.242	f	Boutique Electromenager
11	2022-12-16 15:04:03.541	2023-01-03 00:15:49.25	f	Boutique Sport
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_id_seq', 101, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 10, true);


--
-- Name: horaires_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horaires_id_seq', 26, true);


--
-- Name: shops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shops_id_seq', 11, true);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: category_articles category_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_articles
    ADD CONSTRAINT category_articles_pkey PRIMARY KEY (article_id, category_id);


--
-- Name: horaires horaires_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaires
    ADD CONSTRAINT horaires_pkey PRIMARY KEY (id);


--
-- Name: shop_articles shop_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_articles
    ADD CONSTRAINT shop_articles_pkey PRIMARY KEY (article_id, shop_id);


--
-- Name: shops shops_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shops
    ADD CONSTRAINT shops_pkey PRIMARY KEY (id);


--
-- Name: articles uk_cgfovdmm8ixhgfnox5dv3i3o; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT uk_cgfovdmm8ixhgfnox5dv3i3o UNIQUE (designation);


--
-- Name: categories uk_tkwloef0k6ccv94cipgnmvma8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT uk_tkwloef0k6ccv94cipgnmvma8 UNIQUE (title);


--
-- Name: horaires fk268g2232bxjd2mco9bsnq3ora; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaires
    ADD CONSTRAINT fk268g2232bxjd2mco9bsnq3ora FOREIGN KEY (shop_id) REFERENCES public.shops(id) ON DELETE CASCADE;


--
-- Name: category_articles fk2gccy667dvdishg7k8a21qcev; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_articles
    ADD CONSTRAINT fk2gccy667dvdishg7k8a21qcev FOREIGN KEY (article_id) REFERENCES public.articles(id);


--
-- Name: category_articles fk4jf57ea2haa5boe5y0o6yjmff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_articles
    ADD CONSTRAINT fk4jf57ea2haa5boe5y0o6yjmff FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: shop_articles fkhld5fvwfgcoywtpd37b41yugv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_articles
    ADD CONSTRAINT fkhld5fvwfgcoywtpd37b41yugv FOREIGN KEY (shop_id) REFERENCES public.shops(id);


--
-- Name: shop_articles fkpdefgykb514evixiew3a82dm5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_articles
    ADD CONSTRAINT fkpdefgykb514evixiew3a82dm5 FOREIGN KEY (article_id) REFERENCES public.articles(id);


--
-- PostgreSQL database dump complete
--

