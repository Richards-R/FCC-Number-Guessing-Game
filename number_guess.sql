--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE random_number_guess;
--
-- Name: random_number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE random_number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE random_number_guess OWNER TO freecodecamp;

\connect random_number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    guess_record integer DEFAULT 9999
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (134, 'user_1690567780652', 5, 50);
INSERT INTO public.users VALUES (116, 'user_1690566069146', NULL, 9999);
INSERT INTO public.users VALUES (72, 'user_1690564453566', 2, 75);
INSERT INTO public.users VALUES (114, 'user_1690566012995', 1, 741);
INSERT INTO public.users VALUES (127, 'user_1690567111948', NULL, 9999);
INSERT INTO public.users VALUES (137, 'user_1690567801482', 2, 173);
INSERT INTO public.users VALUES (151, 'user_1690567958923', 2, 331);
INSERT INTO public.users VALUES (71, 'user_1690564365421', 2, 139);
INSERT INTO public.users VALUES (136, 'user_1690567801483', 4, 609);
INSERT INTO public.users VALUES (128, 'user_1690567427667', 1, 771);
INSERT INTO public.users VALUES (150, 'user_1690567958924', 5, 18);
INSERT INTO public.users VALUES (139, 'user_1690567840959', 2, 191);
INSERT INTO public.users VALUES (69, 'reon', 3, 2);
INSERT INTO public.users VALUES (118, 'user_1690566260548', NULL, 9999);
INSERT INTO public.users VALUES (129, 'user_1690567427666', NULL, 9999);
INSERT INTO public.users VALUES (130, 'user_1690567480496', 1, 417);
INSERT INTO public.users VALUES (138, 'user_1690567840960', 4, 163);
INSERT INTO public.users VALUES (153, 'user_1690567973158', 1, 288);
INSERT INTO public.users VALUES (110, 'user_1690565834728', 1, 208);
INSERT INTO public.users VALUES (126, 'user_1690567111949', 1, 172);
INSERT INTO public.users VALUES (111, 'user_1690565940430', 2, 351);
INSERT INTO public.users VALUES (122, 'user_1690566647928', NULL, 9999);
INSERT INTO public.users VALUES (131, 'user_1690567480495', NULL, 9999);
INSERT INTO public.users VALUES (152, 'user_1690567973159', 4, 246);
INSERT INTO public.users VALUES (120, 'user_1690566466370', NULL, 9999);
INSERT INTO public.users VALUES (141, 'user_1690567862766', 2, 453);
INSERT INTO public.users VALUES (109, 'user_1690565834729', 3, 72);
INSERT INTO public.users VALUES (125, 'user_1690566868716', NULL, 9999);
INSERT INTO public.users VALUES (140, 'user_1690567862767', 4, 75);
INSERT INTO public.users VALUES (155, 'user_1690567999416', 1, 702);
INSERT INTO public.users VALUES (119, 'user_1690566466371', NULL, 9999);
INSERT INTO public.users VALUES (143, 'user_1690567888023', 2, 31);
INSERT INTO public.users VALUES (115, 'user_1690566069147', NULL, 9999);
INSERT INTO public.users VALUES (70, 'user_1690564365422', 3, 189);
INSERT INTO public.users VALUES (75, 'user_1690564527575', 1, 590);
INSERT INTO public.users VALUES (76, 'user_1690564805307', 1, 284);
INSERT INTO public.users VALUES (74, 'user_1690564527576', 2, 69);
INSERT INTO public.users VALUES (154, 'user_1690567999417', 4, 173);
INSERT INTO public.users VALUES (73, 'user_1690564453565', NULL, 9999);
INSERT INTO public.users VALUES (113, 'user_1690566012996', 1, 438);
INSERT INTO public.users VALUES (142, 'user_1690567888024', 5, 239);
INSERT INTO public.users VALUES (123, 'Reon', 4, 7);
INSERT INTO public.users VALUES (112, 'user_1690565940429', 1, 958);
INSERT INTO public.users VALUES (77, 'user_1690564805306', NULL, 9999);
INSERT INTO public.users VALUES (157, 'user_1690568024314', 2, 452);
INSERT INTO public.users VALUES (145, 'user_1690567897756', 2, 950);
INSERT INTO public.users VALUES (133, 'user_1690567762579', 2, 208);
INSERT INTO public.users VALUES (124, 'user_1690566868717', NULL, 9999);
INSERT INTO public.users VALUES (144, 'user_1690567897757', 5, 84);
INSERT INTO public.users VALUES (132, 'user_1690567762580', 5, 22);
INSERT INTO public.users VALUES (117, 'user_1690566260549', NULL, 9999);
INSERT INTO public.users VALUES (121, 'user_1690566647929', 1, 642);
INSERT INTO public.users VALUES (156, 'user_1690568024315', 5, 192);
INSERT INTO public.users VALUES (135, 'user_1690567780651', 2, 30);
INSERT INTO public.users VALUES (147, 'user_1690567927817', 2, 101);
INSERT INTO public.users VALUES (146, 'user_1690567927818', 5, 209);
INSERT INTO public.users VALUES (159, 'user_1690568090732', 2, 790);
INSERT INTO public.users VALUES (158, 'user_1690568090733', 5, 142);
INSERT INTO public.users VALUES (149, 'user_1690567941924', 2, 233);
INSERT INTO public.users VALUES (148, 'user_1690567941925', 5, 686);
INSERT INTO public.users VALUES (161, 'user_1690568182576', 2, 678);
INSERT INTO public.users VALUES (160, 'user_1690568182577', 4, 163);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 161, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE random_number_guess;
--
-- Name: random_number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE random_number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE random_number_guess OWNER TO freecodecamp;

\connect random_number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    guess_record integer DEFAULT 9999
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (71, 'user_1690564365421', 2, 139);
INSERT INTO public.users VALUES (69, 'reon', 3, 2);
INSERT INTO public.users VALUES (75, 'user_1690564527575', 1, 590);
INSERT INTO public.users VALUES (70, 'user_1690564365422', 1, 189);
INSERT INTO public.users VALUES (74, 'user_1690564527576', 2, 69);
INSERT INTO public.users VALUES (72, 'user_1690564453566', 2, 75);
INSERT INTO public.users VALUES (73, 'user_1690564453565', NULL, 9999);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 75, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

