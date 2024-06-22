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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer,
    mass integer,
    age numeric,
    descritpion text,
    has_life boolean,
    has_water boolean
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter integer,
    orbit integer,
    age numeric,
    composition text,
    has_life boolean,
    has_water boolean
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer,
    name character varying(20) NOT NULL,
    details text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter integer,
    atmosphere integer,
    age numeric,
    terrain text,
    has_life boolean,
    has_water boolean
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
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    luminosity integer,
    temperature integer,
    age numeric,
    type text,
    has_life boolean,
    has_water boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'Andromeda', 1000, 1200, 2000.50, 'gas', true, true);
INSERT INTO public.galaxy VALUES (2, 2, 'Milky Way', 800, 1000, 1800.25, 'liquid', false, true);
INSERT INTO public.galaxy VALUES (3, 3, 'Triangulum', 600, 800, 1500.75, 'olid', true, false);
INSERT INTO public.galaxy VALUES (4, 4, 'Pegasus', 400, 600, 1200.50, 'gas', false, false);
INSERT INTO public.galaxy VALUES (5, 5, 'Cassiopeia', 200, 400, 1000.25, 'liquid', true, true);
INSERT INTO public.galaxy VALUES (6, 6, 'Orion', 100, 200, 800.75, 'olid', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Io', 200, 300, 600.25, 'rocky', true, true);
INSERT INTO public.moon VALUES (2, 3, 'Europa', 300, 400, 700.50, 'icy', false, true);
INSERT INTO public.moon VALUES (3, 3, 'Ganymede', 400, 500, 900.75, 'rocky', true, false);
INSERT INTO public.moon VALUES (4, 3, 'Callisto', 500, 600, 1100.25, 'icy', false, false);
INSERT INTO public.moon VALUES (5, 6, 'Titan', 600, 700, 1300.50, 'rocky', true, true);
INSERT INTO public.moon VALUES (6, 6, 'Enceladus', 500, 600, 1100.25, 'icy', false, true);
INSERT INTO public.moon VALUES (7, 6, 'Dione', 400, 500, 900.75, 'rocky', true, false);
INSERT INTO public.moon VALUES (8, 6, 'Rhea', 300, 400, 700.50, 'icy', false, false);
INSERT INTO public.moon VALUES (9, 6, 'Iapetus', 200, 300, 600.25, 'rocky', true, true);
INSERT INTO public.moon VALUES (10, 6, 'Tethys', 300, 400, 700.50, 'icy', false, true);
INSERT INTO public.moon VALUES (11, 6, 'Mimas', 400, 500, 900.75, 'rocky', true, false);
INSERT INTO public.moon VALUES (12, 6, 'Hyperion', 500, 600, 1100.25, 'icy', false, false);
INSERT INTO public.moon VALUES (13, 6, 'Phoebe', 600, 700, 1300.50, 'rocky', true, true);
INSERT INTO public.moon VALUES (14, 6, 'Janus', 500, 600, 1100.25, 'icy', false, true);
INSERT INTO public.moon VALUES (15, 6, 'Epimetheus', 400, 500, 900.75, 'rocky', true, false);
INSERT INTO public.moon VALUES (16, 6, 'Helene', 300, 400, 700.50, 'icy', false, false);
INSERT INTO public.moon VALUES (17, 6, 'Telesto', 200, 300, 600.25, 'rocky', true, true);
INSERT INTO public.moon VALUES (18, 6, 'Calypso', 300, 400, 700.50, 'icy', false, true);
INSERT INTO public.moon VALUES (19, 6, 'Atlas', 400, 500, 900.75, 'rocky', true, false);
INSERT INTO public.moon VALUES (20, 6, 'Prometheus', 500, 600, 1100.25, 'icy', false, false);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'Mercury Info', 'Mercury is the smallest planet in our solar system.');
INSERT INTO public.more_info VALUES (2, 2, 'Venus Info', 'Venus is the hottest planet in our solar system.');
INSERT INTO public.more_info VALUES (3, 3, 'Earth Info', 'Earth is the only known planet to support life.');
INSERT INTO public.more_info VALUES (4, 6, 'Saturn Info', 'Saturn is known for its stunning ring system.');
INSERT INTO public.more_info VALUES (5, 11, 'Jupiter Moon Info', 'Jupiter has a total of 79 known moons.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'Mercury', 200, 300, 600.25, 'rocky', true, true);
INSERT INTO public.planet VALUES (2, 1, 2, 'Venus', 300, 400, 700.50, 'gas', false, true);
INSERT INTO public.planet VALUES (3, 1, 3, 'Earth', 400, 500, 900.75, 'terrestrial', true, false);
INSERT INTO public.planet VALUES (4, 2, 4, 'Mars', 500, 600, 1100.25, 'rocky', false, false);
INSERT INTO public.planet VALUES (5, 3, 5, 'Jupiter', 600, 700, 1300.50, 'gas', true, true);
INSERT INTO public.planet VALUES (6, 3, 6, 'Saturn', 700, 800, 1500.75, 'gas', false, true);
INSERT INTO public.planet VALUES (7, 3, 7, 'Uranus', 500, 600, 1100.25, 'ice', true, false);
INSERT INTO public.planet VALUES (8, 3, 8, 'Neptune', 400, 500, 900.75, 'ice', false, false);
INSERT INTO public.planet VALUES (9, 3, 9, 'Titan', 300, 400, 700.50, 'rocky', true, true);
INSERT INTO public.planet VALUES (10, 3, 10, 'Enceladus', 200, 300, 600.25, 'icy', false, true);
INSERT INTO public.planet VALUES (11, 3, 11, 'Dione', 300, 400, 700.50, 'rocky', true, false);
INSERT INTO public.planet VALUES (12, 3, 12, 'Rhea', 400, 500, 900.75, 'icy', false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'Sun', 400, 600, 1200.50, 'gas', true, true);
INSERT INTO public.star VALUES (2, 2, 2, 'Proxima', 300, 500, 1000.25, 'liquid', false, true);
INSERT INTO public.star VALUES (3, 3, 3, 'Sirius', 200, 400, 800.75, 'olid', true, false);
INSERT INTO public.star VALUES (4, 4, 4, 'Canopus', 500, 700, 1400.50, 'gas', false, false);
INSERT INTO public.star VALUES (5, 5, 5, 'Arcturus', 600, 800, 1600.25, 'liquid', true, true);
INSERT INTO public.star VALUES (6, 6, 6, 'Vega', 700, 900, 1800.75, 'olid', false, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

