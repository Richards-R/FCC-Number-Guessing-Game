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
    guess_record integer
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

INSERT INTO public.users VALUES (44, 'r', NULL, NULL);
INSERT INTO public.users VALUES (45, 'joe', NULL, NULL);
INSERT INTO public.users VALUES (46, 're', NULL, NULL);
INSERT INTO public.users VALUES (47, 'ret', NULL, NULL);
INSERT INTO public.users VALUES (48, 'rttt', NULL, NULL);
INSERT INTO public.users VALUES (49, 'sfasfa', NULL, NULL);
INSERT INTO public.users VALUES (50, 'asfdykjggg', NULL, NULL);
INSERT INTO public.users VALUES (51, 'fffff', NULL, NULL);
INSERT INTO public.users VALUES (52, 'ttttt', NULL, NULL);
INSERT INTO public.users VALUES (53, 'wetwetwetr', NULL, NULL);
INSERT INTO public.users VALUES (54, 'user_1690561873065', NULL, NULL);
INSERT INTO public.users VALUES (55, 'user_1690561873064', NULL, NULL);
INSERT INTO public.users VALUES (56, 'user_1690561886493', NULL, NULL);
INSERT INTO public.users VALUES (57, 'user_1690561886492', NULL, NULL);
INSERT INTO public.users VALUES (58, 'user_1690561895819', NULL, NULL);
INSERT INTO public.users VALUES (59, 'user_1690561895818', NULL, NULL);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 59, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

