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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (9, 2018, 'Final', 82, 83, 4, 2);
INSERT INTO public.games VALUES (10, 2018, 'Third Place', 84, 85, 2, 0);
INSERT INTO public.games VALUES (11, 2018, 'Semi-Final', 83, 85, 2, 1);
INSERT INTO public.games VALUES (12, 2018, 'Semi-Final', 82, 84, 1, 0);
INSERT INTO public.games VALUES (13, 2018, 'Quarter-Final', 83, 86, 3, 2);
INSERT INTO public.games VALUES (14, 2018, 'Quarter-Final', 85, 87, 2, 0);
INSERT INTO public.games VALUES (15, 2018, 'Quarter-Final', 84, 88, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Quarter-Final', 82, 89, 2, 0);
INSERT INTO public.games VALUES (17, 2018, 'Eighth-Final', 85, 90, 2, 1);
INSERT INTO public.games VALUES (18, 2018, 'Eighth-Final', 87, 91, 1, 0);
INSERT INTO public.games VALUES (19, 2018, 'Eighth-Final', 84, 92, 3, 2);
INSERT INTO public.games VALUES (20, 2018, 'Eighth-Final', 88, 93, 2, 0);
INSERT INTO public.games VALUES (21, 2018, 'Eighth-Final', 83, 94, 2, 1);
INSERT INTO public.games VALUES (22, 2018, 'Eighth-Final', 86, 95, 2, 1);
INSERT INTO public.games VALUES (23, 2018, 'Eighth-Final', 89, 96, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Eighth-Final', 82, 97, 4, 3);
INSERT INTO public.games VALUES (25, 2014, 'Final', 98, 97, 1, 0);
INSERT INTO public.games VALUES (26, 2014, 'Third Place', 99, 88, 3, 0);
INSERT INTO public.games VALUES (27, 2014, 'Semi-Final', 97, 99, 1, 0);
INSERT INTO public.games VALUES (28, 2014, 'Semi-Final', 98, 88, 7, 1);
INSERT INTO public.games VALUES (29, 2014, 'Quarter-Final', 99, 100, 1, 0);
INSERT INTO public.games VALUES (30, 2014, 'Quarter-Final', 97, 84, 1, 0);
INSERT INTO public.games VALUES (31, 2014, 'Quarter-Final', 88, 90, 2, 1);
INSERT INTO public.games VALUES (32, 2014, 'Quarter-Final', 98, 82, 1, 0);
INSERT INTO public.games VALUES (33, 2014, 'Eighth-Final', 88, 101, 2, 1);
INSERT INTO public.games VALUES (34, 2014, 'Eighth-Final', 90, 89, 2, 0);
INSERT INTO public.games VALUES (35, 2014, 'Eighth-Final', 82, 102, 2, 0);
INSERT INTO public.games VALUES (36, 2014, 'Eighth-Final', 98, 103, 2, 1);
INSERT INTO public.games VALUES (37, 2014, 'Eighth-Final', 99, 93, 2, 1);
INSERT INTO public.games VALUES (38, 2014, 'Eighth-Final', 100, 104, 2, 1);
INSERT INTO public.games VALUES (39, 2014, 'Eighth-Final', 97, 91, 1, 0);
INSERT INTO public.games VALUES (40, 2014, 'Eighth-Final', 84, 105, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (82, 'France');
INSERT INTO public.teams VALUES (83, 'Croatia');
INSERT INTO public.teams VALUES (84, 'Belgium');
INSERT INTO public.teams VALUES (85, 'England');
INSERT INTO public.teams VALUES (86, 'Russia');
INSERT INTO public.teams VALUES (87, 'Sweden');
INSERT INTO public.teams VALUES (88, 'Brazil');
INSERT INTO public.teams VALUES (89, 'Uruguay');
INSERT INTO public.teams VALUES (90, 'Colombia');
INSERT INTO public.teams VALUES (91, 'Switzerland');
INSERT INTO public.teams VALUES (92, 'Japan');
INSERT INTO public.teams VALUES (93, 'Mexico');
INSERT INTO public.teams VALUES (94, 'Denmark');
INSERT INTO public.teams VALUES (95, 'Spain');
INSERT INTO public.teams VALUES (96, 'Portugal');
INSERT INTO public.teams VALUES (97, 'Argentina');
INSERT INTO public.teams VALUES (98, 'Germany');
INSERT INTO public.teams VALUES (99, 'Netherlands');
INSERT INTO public.teams VALUES (100, 'Costa Rica');
INSERT INTO public.teams VALUES (101, 'Chile');
INSERT INTO public.teams VALUES (102, 'Nigeria');
INSERT INTO public.teams VALUES (103, 'Algeria');
INSERT INTO public.teams VALUES (104, 'Greece');
INSERT INTO public.teams VALUES (105, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 40, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 105, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

