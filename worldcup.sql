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
    round character varying(40) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(40) NOT NULL
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

INSERT INTO public.games VALUES (28, 2018, 'Final', 4, 2, 213, 214);
INSERT INTO public.games VALUES (29, 2018, 'Third Place', 2, 0, 215, 216);
INSERT INTO public.games VALUES (30, 2018, 'Semi-Final', 2, 1, 214, 216);
INSERT INTO public.games VALUES (31, 2018, 'Semi-Final', 1, 0, 213, 215);
INSERT INTO public.games VALUES (32, 2018, 'Quarter-Final', 3, 2, 214, 217);
INSERT INTO public.games VALUES (33, 2018, 'Quarter-Final', 2, 0, 216, 218);
INSERT INTO public.games VALUES (34, 2018, 'Quarter-Final', 2, 1, 215, 219);
INSERT INTO public.games VALUES (35, 2018, 'Quarter-Final', 2, 0, 213, 220);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 2, 1, 216, 221);
INSERT INTO public.games VALUES (37, 2018, 'Eighth-Final', 1, 0, 218, 222);
INSERT INTO public.games VALUES (38, 2018, 'Eighth-Final', 3, 2, 215, 223);
INSERT INTO public.games VALUES (39, 2018, 'Eighth-Final', 2, 0, 219, 224);
INSERT INTO public.games VALUES (40, 2018, 'Eighth-Final', 2, 1, 214, 225);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 2, 1, 217, 226);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 2, 1, 220, 227);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 4, 3, 213, 228);
INSERT INTO public.games VALUES (44, 2014, 'Final', 1, 0, 229, 228);
INSERT INTO public.games VALUES (45, 2014, 'Third Place', 3, 0, 230, 219);
INSERT INTO public.games VALUES (46, 2014, 'Semi-Final', 1, 0, 228, 230);
INSERT INTO public.games VALUES (47, 2014, 'Semi-Final', 7, 1, 229, 219);
INSERT INTO public.games VALUES (48, 2014, 'Quarter-Final', 1, 0, 230, 231);
INSERT INTO public.games VALUES (49, 2014, 'Quarter-Final', 1, 0, 228, 215);
INSERT INTO public.games VALUES (50, 2014, 'Quarter-Final', 2, 1, 219, 221);
INSERT INTO public.games VALUES (51, 2014, 'Quarter-Final', 1, 0, 229, 213);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 2, 1, 219, 232);
INSERT INTO public.games VALUES (53, 2014, 'Eighth-Final', 2, 0, 221, 220);
INSERT INTO public.games VALUES (54, 2014, 'Eighth-Final', 2, 0, 213, 233);
INSERT INTO public.games VALUES (55, 2014, 'Eighth-Final', 2, 1, 229, 234);
INSERT INTO public.games VALUES (56, 2014, 'Eighth-Final', 2, 1, 230, 224);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 2, 1, 231, 235);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 1, 0, 228, 222);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 2, 1, 215, 236);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (213, 'France');
INSERT INTO public.teams VALUES (214, 'Croatia');
INSERT INTO public.teams VALUES (215, 'Belgium');
INSERT INTO public.teams VALUES (216, 'England');
INSERT INTO public.teams VALUES (217, 'Russia');
INSERT INTO public.teams VALUES (218, 'Sweden');
INSERT INTO public.teams VALUES (219, 'Brazil');
INSERT INTO public.teams VALUES (220, 'Uruguay');
INSERT INTO public.teams VALUES (221, 'Colombia');
INSERT INTO public.teams VALUES (222, 'Switzerland');
INSERT INTO public.teams VALUES (223, 'Japan');
INSERT INTO public.teams VALUES (224, 'Mexico');
INSERT INTO public.teams VALUES (225, 'Denmark');
INSERT INTO public.teams VALUES (226, 'Spain');
INSERT INTO public.teams VALUES (227, 'Portugal');
INSERT INTO public.teams VALUES (228, 'Argentina');
INSERT INTO public.teams VALUES (229, 'Germany');
INSERT INTO public.teams VALUES (230, 'Netherlands');
INSERT INTO public.teams VALUES (231, 'Costa Rica');
INSERT INTO public.teams VALUES (232, 'Chile');
INSERT INTO public.teams VALUES (233, 'Nigeria');
INSERT INTO public.teams VALUES (234, 'Algeria');
INSERT INTO public.teams VALUES (235, 'Greece');
INSERT INTO public.teams VALUES (236, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 59, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 236, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

