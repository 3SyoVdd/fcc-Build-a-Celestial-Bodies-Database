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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_description text,
    galaxy_childs integer,
    galaxy_visible_by_eye boolean NOT NULL
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
    name character varying(50) NOT NULL,
    moon_description text,
    rotation_in_days numeric(4,1),
    planet_id integer
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
-- Name: physical_constant; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.physical_constant (
    physical_constant_id integer NOT NULL,
    name character varying(50) NOT NULL,
    physical_constant_value numeric(10,2)
);


ALTER TABLE public.physical_constant OWNER TO freecodecamp;

--
-- Name: physical_constant_physical_constant_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.physical_constant_physical_constant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.physical_constant_physical_constant_id_seq OWNER TO freecodecamp;

--
-- Name: physical_constant_physical_constant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.physical_constant_physical_constant_id_seq OWNED BY public.physical_constant.physical_constant_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_description text,
    star_id integer,
    life boolean
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
    name character varying(50) NOT NULL,
    star_description text,
    star_childs integer,
    star_visible_by_eye boolean NOT NULL,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: physical_constant physical_constant_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.physical_constant ALTER COLUMN physical_constant_id SET DEFAULT nextval('public.physical_constant_physical_constant_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'MILCHSTRASSE', 'Unsere MIlchstrasse', 150, true);
INSERT INTO public.galaxy VALUES (2, 'CANIS', 'CanisMayorZwerg', 25, false);
INSERT INTO public.galaxy VALUES (3, 'Saggittarius', 'Saggittarius-Zwerg', 78, false);
INSERT INTO public.galaxy VALUES (4, 'Ursa', 'UrsaMajor II', 100, false);
INSERT INTO public.galaxy VALUES (5, 'Seque', 'Segue2', 1140, false);
INSERT INTO public.galaxy VALUES (6, 'Bootes II', 'Bootes2 Zwert', 136, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mond', 'Beschreibung...', 27.3, 1);
INSERT INTO public.moon VALUES (2, 'Metis', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (3, 'Adrastea', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (4, 'Thebe', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (5, 'Io', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (7, 'Ganymed', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (8, 'Kallisto', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (9, 'Themisto', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (10, 'Leda', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (11, 'Himalia', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (12, 'Ersa', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (13, 'Pandia', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (14, 'Lysithea', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (15, 'Elara', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (16, 'Dia', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (17, 'Carpo', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (18, 'Valetudo', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (19, 'Euporie', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (20, 'Orthosie', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (21, 'Euanthe', 'Beschreibung...', NULL, 5);
INSERT INTO public.moon VALUES (22, 'Thyone', 'Beschreibung...', NULL, 5);


--
-- Data for Name: physical_constant; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.physical_constant VALUES (1, 'Lichtgeschwindigkeit', 299792.00);
INSERT INTO public.physical_constant VALUES (2, 'Elementarladung', 1.60);
INSERT INTO public.physical_constant VALUES (3, 'Wellenwiderstand', 376.70);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Merkur', 'Der Merkur...', 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'Die Venus...', 1, NULL);
INSERT INTO public.planet VALUES (3, 'Erde', 'Die Erde...', 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'Der Mars...', 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Der Jupiter...', 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Der Saturn...', 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Der Uranus...', 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptun', 'Der Neptun...', 1, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri A', 'Proxima Centauri A...', 2, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri B', 'Proxima Centauri B...', 2, NULL);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri C', 'Proxima Centauri C...', 2, NULL);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri D', 'Proxima Centauri D wurde noch nicht bestätigt...', 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sonne', 'Unsere Sonne', 8, true, 1);
INSERT INTO public.star VALUES (2, 'ProximaCentauri', 'Stern im Syetem vom Alpha Centauri', 3, false, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Stern im Doppelsternsystem vom Alpha Centauri', 0, false, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'zweiter Stern im Doppelsternsystem vom Alpha Centauri', 0, false, 1);
INSERT INTO public.star VALUES (5, 'Luhman 16 A', 'Stern im system vom Luhman', 0, false, 1);
INSERT INTO public.star VALUES (7, 'Luhman 16 B', 'Zweiter Stern im system vom Luhman', 0, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: physical_constant_physical_constant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.physical_constant_physical_constant_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_description_key UNIQUE (galaxy_description);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: physical_constant physical_constant_phsyical_constant_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.physical_constant
    ADD CONSTRAINT physical_constant_phsyical_constant_name_key UNIQUE (name);


--
-- Name: physical_constant physical_constant_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.physical_constant
    ADD CONSTRAINT physical_constant_pkey PRIMARY KEY (physical_constant_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_description_key UNIQUE (planet_description);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_description_key UNIQUE (star_description);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


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

