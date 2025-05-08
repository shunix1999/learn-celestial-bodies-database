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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(255) NOT NULL,
    gravity integer,
    galaxy_id integer,
    wormhole boolean DEFAULT false NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    speed integer,
    description text,
    rotation_speed integer DEFAULT 100000 NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    name_code character varying(255) NOT NULL,
    has_water boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    amount_of_people numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius integer NOT NULL,
    color character varying(255) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagitario A', NULL, NULL, false);
INSERT INTO public.blackhole VALUES (2, 'TON 618', NULL, NULL, false);
INSERT INTO public.blackhole VALUES (3, 'IC 1101', NULL, NULL, false);
INSERT INTO public.blackhole VALUES (4, 'Phoenix A', NULL, NULL, false);
INSERT INTO public.blackhole VALUES (5, 'SDSS', NULL, NULL, false);
INSERT INTO public.blackhole VALUES (6, 'QSO', NULL, NULL, false);
INSERT INTO public.blackhole VALUES (7, 'Gaia', NULL, NULL, false);
INSERT INTO public.blackhole VALUES (8, 'OGLE', NULL, NULL, false);
INSERT INTO public.blackhole VALUES (9, 'Cygnus', NULL, NULL, false);
INSERT INTO public.blackhole VALUES (10, 'NGC', NULL, NULL, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (2, 'Gran Nube de Magallanes', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (3, 'IC 3583', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (4, 'NGC', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (5, 'Del sombrero', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (6, 'En espiral', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (7, 'Molinete', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (8, 'NGC 4248', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (9, 'NGC 4696', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (10, 'De Bode', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (11, 'ESO de polvo', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (12, 'Girasol', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (13, 'Palo de Hockey', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (14, 'IC342', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (15, 'IC 5201', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (16, 'Messier 74', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (17, 'Del abanico', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (18, 'MACS J0717', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (19, 'I Zwicky 18', NULL, NULL, 100000);
INSERT INTO public.galaxy VALUES (20, 'Messier 82', NULL, NULL, 100000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna llena', 'Luna1', true, 3);
INSERT INTO public.moon VALUES (2, 'Luna nueva', 'Luna2', true, 1);
INSERT INTO public.moon VALUES (3, 'Luna creciente', 'Luna3', true, 2);
INSERT INTO public.moon VALUES (4, 'Luna menguante', 'Luna4', true, 6);
INSERT INTO public.moon VALUES (5, 'Akaza', 'Luna5', false, 4);
INSERT INTO public.moon VALUES (6, 'Wakuraba', 'Luna6', false, 5);
INSERT INTO public.moon VALUES (7, 'Enmu', 'Luna7', false, 7);
INSERT INTO public.moon VALUES (8, 'Doma', 'Luna8', true, 10);
INSERT INTO public.moon VALUES (9, 'Kokushibo', 'Luna9', true, 11);
INSERT INTO public.moon VALUES (10, 'Rokuro', 'Luna10', true, 8);
INSERT INTO public.moon VALUES (11, 'Kamanue', 'Luna11', false, 9);
INSERT INTO public.moon VALUES (12, 'Ananke', 'Luna12', false, 13);
INSERT INTO public.moon VALUES (13, 'Carme', 'Luna13', true, 12);
INSERT INTO public.moon VALUES (14, 'Metis', 'Luna14', true, 5);
INSERT INTO public.moon VALUES (15, 'Adrastea', 'Luna15', true, 5);
INSERT INTO public.moon VALUES (16, 'Amaltea', 'Luna16', true, 5);
INSERT INTO public.moon VALUES (17, 'Tebe', 'Luna17', true, 5);
INSERT INTO public.moon VALUES (18, 'Calisto', 'Luna18', true, 5);
INSERT INTO public.moon VALUES (19, 'Leda', 'Luna19', true, 5);
INSERT INTO public.moon VALUES (20, 'Eufeme', 'Luna20', true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', NULL, false, 8);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, false, 5);
INSERT INTO public.planet VALUES (3, 'Tierra', NULL, false, 3);
INSERT INTO public.planet VALUES (4, 'Marte', NULL, false, 15);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, false, 20);
INSERT INTO public.planet VALUES (6, 'Saturno', NULL, false, 7);
INSERT INTO public.planet VALUES (7, 'Urano', NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', NULL, false, 17);
INSERT INTO public.planet VALUES (9, 'Pluton', NULL, false, 10);
INSERT INTO public.planet VALUES (10, 'Ceres', NULL, false, 11);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, false, 12);
INSERT INTO public.planet VALUES (12, 'Makemake', NULL, false, 13);
INSERT INTO public.planet VALUES (13, 'Eris', NULL, false, 14);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirio', 119000000, 'Blanco azulado', 1);
INSERT INTO public.star VALUES (2, 'Canopo', 493500000, 'Blanco amarillento', 3);
INSERT INTO public.star VALUES (3, 'Arcturo', 176710000, 'Naranja', 2);
INSERT INTO public.star VALUES (4, 'Alfa Centauri', 696340230, 'Amarillo', 6);
INSERT INTO public.star VALUES (5, 'Vega', 164320000, 'Azul blanquecino', 4);
INSERT INTO public.star VALUES (6, 'Capilla', 429000000, 'Amarillo', 9);
INSERT INTO public.star VALUES (7, 'Rigel', 548900000, 'Azul', 5);
INSERT INTO public.star VALUES (8, 'Proción', 146900000, 'Blanco amarillento', 7);
INSERT INTO public.star VALUES (9, 'Betelgeuse', 617100000, 'Naranja rojizo', 8);
INSERT INTO public.star VALUES (10, 'Altair', 126620000, 'Blanco', 10);
INSERT INTO public.star VALUES (11, 'Deneb', 141230000, 'Blanco azulado', 14);
INSERT INTO public.star VALUES (12, 'Fomalhaut', 128150000, 'Blanco', 12);
INSERT INTO public.star VALUES (13, 'Beta Crucis', 485300000, 'Azul blanquecino', 11);
INSERT INTO public.star VALUES (14, 'Rigil Kentaurus B', 412000000, 'Anaranjado', 13);
INSERT INTO public.star VALUES (15, 'Adara', 364000000, 'Azul', 15);
INSERT INTO public.star VALUES (16, 'Alpha Centauri B', 600790000, 'Naranja', 16);
INSERT INTO public.star VALUES (17, 'Regulus', 322000000, 'Azul', 20);
INSERT INTO public.star VALUES (18, 'Acrux A', 542700000, 'Azul blanquecino', 17);
INSERT INTO public.star VALUES (19, 'Alpha Gruis', 236540000, 'Azul blanquecino', 19);
INSERT INTO public.star VALUES (20, 'Denebola', 120220000, 'Azul blanquecino', 18);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet name_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique_planet UNIQUE (name);


--
-- Name: star name_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

