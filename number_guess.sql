--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    u_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 677, 2);
INSERT INTO public.games VALUES (2, 172, 2);
INSERT INTO public.games VALUES (3, 826, 3);
INSERT INTO public.games VALUES (4, 157, 3);
INSERT INTO public.games VALUES (5, 311, 2);
INSERT INTO public.games VALUES (6, 615, 2);
INSERT INTO public.games VALUES (7, 108, 2);
INSERT INTO public.games VALUES (8, 618, 4);
INSERT INTO public.games VALUES (9, 138, 4);
INSERT INTO public.games VALUES (10, 182, 5);
INSERT INTO public.games VALUES (11, 617, 5);
INSERT INTO public.games VALUES (12, 630, 4);
INSERT INTO public.games VALUES (13, 919, 4);
INSERT INTO public.games VALUES (14, 508, 4);
INSERT INTO public.games VALUES (15, 441, 6);
INSERT INTO public.games VALUES (16, 648, 6);
INSERT INTO public.games VALUES (17, 706, 7);
INSERT INTO public.games VALUES (18, 898, 7);
INSERT INTO public.games VALUES (19, 58, 6);
INSERT INTO public.games VALUES (20, 729, 6);
INSERT INTO public.games VALUES (21, 749, 6);
INSERT INTO public.games VALUES (22, 12, 1);
INSERT INTO public.games VALUES (23, 111, 8);
INSERT INTO public.games VALUES (24, 669, 8);
INSERT INTO public.games VALUES (25, 864, 9);
INSERT INTO public.games VALUES (26, 989, 9);
INSERT INTO public.games VALUES (27, 422, 8);
INSERT INTO public.games VALUES (28, 441, 8);
INSERT INTO public.games VALUES (29, 687, 8);
INSERT INTO public.games VALUES (30, 968, 10);
INSERT INTO public.games VALUES (31, 976, 10);
INSERT INTO public.games VALUES (32, 106, 11);
INSERT INTO public.games VALUES (33, 596, 11);
INSERT INTO public.games VALUES (34, 543, 10);
INSERT INTO public.games VALUES (35, 607, 10);
INSERT INTO public.games VALUES (36, 151, 10);
INSERT INTO public.games VALUES (37, 17, 1);
INSERT INTO public.games VALUES (38, 753, 12);
INSERT INTO public.games VALUES (39, 503, 12);
INSERT INTO public.games VALUES (40, 154, 13);
INSERT INTO public.games VALUES (41, 78, 13);
INSERT INTO public.games VALUES (42, 262, 12);
INSERT INTO public.games VALUES (43, 451, 12);
INSERT INTO public.games VALUES (44, 377, 12);
INSERT INTO public.games VALUES (45, 65, 14);
INSERT INTO public.games VALUES (46, 99, 14);
INSERT INTO public.games VALUES (47, 79, 15);
INSERT INTO public.games VALUES (48, 491, 15);
INSERT INTO public.games VALUES (49, 767, 14);
INSERT INTO public.games VALUES (50, 1001, 14);
INSERT INTO public.games VALUES (51, 883, 14);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'anushka');
INSERT INTO public.users VALUES (2, 'user_1718787505646');
INSERT INTO public.users VALUES (3, 'user_1718787505645');
INSERT INTO public.users VALUES (4, 'user_1718787612587');
INSERT INTO public.users VALUES (5, 'user_1718787612586');
INSERT INTO public.users VALUES (6, 'user_1718787878772');
INSERT INTO public.users VALUES (7, 'user_1718787878771');
INSERT INTO public.users VALUES (8, 'user_1718787978859');
INSERT INTO public.users VALUES (9, 'user_1718787978858');
INSERT INTO public.users VALUES (10, 'user_1718788057027');
INSERT INTO public.users VALUES (11, 'user_1718788057026');
INSERT INTO public.users VALUES (12, 'user_1718788136390');
INSERT INTO public.users VALUES (13, 'user_1718788136389');
INSERT INTO public.users VALUES (14, 'user_1718788177443');
INSERT INTO public.users VALUES (15, 'user_1718788177442');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

