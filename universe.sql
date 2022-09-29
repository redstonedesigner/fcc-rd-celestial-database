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
-- Name: exploration; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exploration (
    exploration_id integer NOT NULL,
    departure_date date NOT NULL,
    transport_name character varying(30) NOT NULL,
    return_date date,
    name character varying(30)
);


ALTER TABLE public.exploration OWNER TO freecodecamp;

--
-- Name: exploration_exploration_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.exploration_exploration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exploration_exploration_id_seq OWNER TO freecodecamp;

--
-- Name: exploration_exploration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.exploration_exploration_id_seq OWNED BY public.exploration.exploration_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_type character varying(1),
    age integer NOT NULL,
    discovery_date date NOT NULL
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
    name character varying(40) NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL,
    discovery_date date NOT NULL
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
    name character varying(40) NOT NULL,
    description text,
    planet_class character varying(1),
    distance_from_earth numeric(7,2) NOT NULL,
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
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    type character varying(1) NOT NULL,
    age integer NOT NULL,
    is_dying boolean DEFAULT false
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
-- Name: exploration exploration_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration ALTER COLUMN exploration_id SET DEFAULT nextval('public.exploration_exploration_id_seq'::regclass);


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
-- Data for Name: exploration; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exploration VALUES (1, '2002-09-13', 'Apollo X', NULL, NULL);
INSERT INTO public.exploration VALUES (2, '2022-09-03', 'Apollo XII', NULL, NULL);
INSERT INTO public.exploration VALUES (3, '2013-05-31', 'Space Shuttle', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'D', 100000, '2002-02-20');
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 'S', 12547, '1989-11-22');
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'J', 5467, '2021-05-06');
INSERT INTO public.galaxy VALUES (4, 'Little Sombrero Galaxy', 'E', 2364, '2022-09-29');
INSERT INTO public.galaxy VALUES (5, 'Needle Galaxy', 'A', 45238, '2022-06-01');
INSERT INTO public.galaxy VALUES (6, 'Sunflower Galaxy', 'Q', 87235, '2015-02-28');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Gwendolyn', true, 2, '1972-10-20');
INSERT INTO public.moon VALUES (2, 'Seanna', true, 5, '1976-05-09');
INSERT INTO public.moon VALUES (3, 'Lonyn', false, 1, '1978-12-09');
INSERT INTO public.moon VALUES (4, 'Roisin', true, 9, '1979-07-18');
INSERT INTO public.moon VALUES (5, 'Kellyn', false, 1, '1981-03-26');
INSERT INTO public.moon VALUES (6, 'Morvoren', false, 1, '1984-09-18');
INSERT INTO public.moon VALUES (7, 'Eli', false, 6, '1986-01-07');
INSERT INTO public.moon VALUES (8, 'Nikole', false, 6, '1987-03-18');
INSERT INTO public.moon VALUES (9, 'Tess', true, 1, '1987-05-17');
INSERT INTO public.moon VALUES (10, 'Rayna', true, 10, '1991-06-26');
INSERT INTO public.moon VALUES (11, 'Marian', true, 12, '1993-08-27');
INSERT INTO public.moon VALUES (12, 'Nessia', true, 7, '1994-08-15');
INSERT INTO public.moon VALUES (13, 'Marie', false, 4, '2000-04-27');
INSERT INTO public.moon VALUES (14, 'Catrina', true, 3, '2003-07-10');
INSERT INTO public.moon VALUES (15, 'Lovelyn', false, 4, '2003-10-21');
INSERT INTO public.moon VALUES (16, 'Eibhlhin', true, 11, '2011-08-28');
INSERT INTO public.moon VALUES (17, 'Mary-Lou', false, 9, '2012-03-16');
INSERT INTO public.moon VALUES (18, 'Aubriana', true, 3, '2013-09-09');
INSERT INTO public.moon VALUES (19, 'Rowen', true, 4, '2018-08-30');
INSERT INTO public.moon VALUES (20, 'Lyndon', true, 3, '2022-04-16');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, 'A', 12000.00, 2);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, 'B', 5632.75, 1);
INSERT INTO public.planet VALUES (3, 'Gaia', NULL, 'C', 5687.20, 5);
INSERT INTO public.planet VALUES (4, 'Utilitaria', NULL, 'D', 12687.23, 2);
INSERT INTO public.planet VALUES (5, 'Militaria', NULL, 'G', 32465.22, 3);
INSERT INTO public.planet VALUES (6, 'Euphoria', NULL, 'M', 36543.67, 4);
INSERT INTO public.planet VALUES (7, 'Genoria', NULL, 'Z', 25687.26, 5);
INSERT INTO public.planet VALUES (8, 'Lima-Epsilon', NULL, 'D', 37892.68, 1);
INSERT INTO public.planet VALUES (9, 'L5 Colony', NULL, 'K', 37892.33, 3);
INSERT INTO public.planet VALUES (10, '[REDACTED]', NULL, 'J', 43586.23, 2);
INSERT INTO public.planet VALUES (11, 'Kilo-November', NULL, 'Q', 58624.78, 3);
INSERT INTO public.planet VALUES (12, 'Jubilee', NULL, 'L', 99999.99, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha', 2, 'B', 2398623, true);
INSERT INTO public.star VALUES (2, 'Gamma', 6, 'M', 29683231, false);
INSERT INTO public.star VALUES (3, 'Delta', 3, 'O', 56923167, false);
INSERT INTO public.star VALUES (4, 'Beta', 1, 'G', 234567986, false);
INSERT INTO public.star VALUES (5, 'Theta', 4, 'K', 23187564, true);
INSERT INTO public.star VALUES (6, 'Epsilon', 4, 'O', 1678953, false);


--
-- Name: exploration_exploration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.exploration_exploration_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: exploration exploration_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration
    ADD CONSTRAINT exploration_name_key UNIQUE (name);


--
-- Name: exploration exploration_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration
    ADD CONSTRAINT exploration_pkey PRIMARY KEY (exploration_id);


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

