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
    description character(100),
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types character(50),
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL
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
    description character(100),
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types character(50),
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    description character(100),
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types character(50),
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL
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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types character(50),
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    position_number numeric
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
-- Name: visited_planets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.visited_planets (
    name character varying(100) NOT NULL,
    visited_planets_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.visited_planets OWNER TO freecodecamp;

--
-- Name: visited_planets_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.visited_planets_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visited_planets_table_id_seq OWNER TO freecodecamp;

--
-- Name: visited_planets_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.visited_planets_table_id_seq OWNED BY public.visited_planets.visited_planets_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: visited_planets visited_planets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visited_planets ALTER COLUMN visited_planets_id SET DEFAULT nextval('public.visited_planets_table_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (description, has_life, age_in_millions_of_years, distance_from_earth, planet_types, galaxy_id, name) FROM stdin;
on of the constellations listed by the 2nd century Greco-roman ATRONOMER.                           	f	67095	56860	galaxy                                            	1	andromeda
is a barred spiral galaxy                                                                           	f	5370	1446	galaxy                                            	2	Messier
is a face on spiral galaxy.                                                                         	f	67555	30860	galaxy                                            	3	pinwheel
is a second largest member of the M81 group                                                         	f	34370	56446	galaxy                                            	4	ciger galaxy
is a spiral galaxy                                                                                  	f	34679	67769	galaxy                                            	5	triangulum
is a peculiar galaxy on unclear classification in the constellation borders of Vigro and Corvus     	f	9867	5784	galaxy                                            	6	sombrero
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (description, has_life, age_in_millions_of_years, distance_from_earth, planet_types, moon_id, name) FROM stdin;
is a prograde irregular satelite of jupiter                                                         	f	3469	7769	moon                                              	1	elara
is the second largest moon of jupyter                                                               	f	22867	565774	moon                                              	2	calisto
is the outermost major moon of the planet Uranus                                                    	f	13469	17769	moon                                              	3	oberon
is the smallest of the four galilean moons orbiting jupiter                                         	f	2287	56574	moon                                              	4	europa
this is the moon of satan                                                                           	f	469	17459	moon                                              	5	helene
is the fifth closest innet satelite of neptune.                                                     	f	22876	564	moon                                              	6	larissa
is the is the moon of Saturn.                                                                       	f	12783	94868	moon                                              	7	titan
is the fourth largest of the 27 known moons of Uranus.                                              	f	23283	44868	moon                                              	8	ariel
is the fourth largest moon of Saturn.                                                               	f	232813	144868	moon                                              	9	dione
is the fourth moon of jupiter.                                                                      	f	35789	50246	moon                                              	10	thebe
is the inner satelite of Uranus.                                                                    	f	32894	28943	moon                                              	11	portia
is the smallest and outermost of the two natural satellite of Mars.                                 	f	132813	144161	moon                                              	12	deimos
the largest satellite of planet Neptune.                                                            	f	5789	150246	moon                                              	13	triton
is the largest og the five known natural satellite of Pluto.                                        	f	1044	28333	moon                                              	14	charon
is the moon of Saturn also has irregula shape.                                                      	f	139013	124161	moon                                              	15	hyperion
is the non-round moon.                                                                              	f	125789	125246	moon                                              	16	calypso
is the moon of Uranus.                                                                              	f	107044	283233	moon                                              	17	umbriel
is the beaver moon.                                                                                 	f	130013	95161	moon                                              	18	beaver
is the most massive irregula satellite of Saturn.                                                   	f	120089	111246	moon                                              	19	phoebe
is an inner satellite of Uranus.                                                                    	f	1684044	283222	moon                                              	20	bianca
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (description, has_life, age_in_millions_of_years, distance_from_earth, planet_types, name, planet_id) FROM stdin;
the second planet from the sun                                                                      	f	4509	85095	planet                                            	venus	1
has life and if contains water land and air(gases)                                                  	t	29867	0	planet                                            	earth	2
is a dwarf planet in the kuiper belt                                                                	f	456369	341749	planet                                            	pluto	3
is the seventh planet from the sun and has a giant ice in it.                                       	f	228076	563564	planet                                            	uranus	4
is the fourth planet from the sun and the furthest terrestrial planet                               	t	156069	341759	planet                                            	mars	5
is the sixth planet from the sun and the second largest in the soler system.                        	f	290076	56364	planet                                            	satarn	6
is the first planet from the sun and the smallest in the solar system                               	f	24436	467	planet                                            	mercury	7
is the fifth planet from the sun and the largest in the solar system.                               	f	34555	457783	Planet                                            	jupiter	8
is the most massive and second largest dwarf in the solar system.                                   	f	3565	46666	planet                                            	eris	9
is the second largest moon and neptunes kargest inner satelite.                                     	f	45788	123457	planet                                            	proteus	10
is a dwarf planet in the asteroid belt between the orbits of Mars and Jupiter.                      	f	54673	54432	planet                                            	ceres	11
is a dwarf planet located beyond neptunes orbit.                                                    	f	444567	246778	planet                                            	haumea	12
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (description, has_life, age_in_millions_of_years, distance_from_earth, planet_types, star_id, name, position_number) FROM stdin;
its the ball of burning gases situated in the center of the sollar system.	f	40005	150	star                                              	1	sun	1
is the brightest star in the constellation	f	100	10046	star                                              	2	altair	23443
the brightest star in the night sky.	f	678905	360	star                                              	3	serius	23
is the second brightest star in the constellation	f	370	12346	star                                              	4	castor	23243
the triple star in the constellation Terus.	f	6705	89360	star                                              	5	atlas	423
is a star in the northern circumpoler constellation of Ursa Minor	f	45370	146	star                                              	6	palaris	243
\.


--
-- Data for Name: visited_planets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.visited_planets (name, visited_planets_id, planet_id) FROM stdin;
uranus	2	4
earth	3	2
pluto	1	3
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: visited_planets_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.visited_planets_table_id_seq', 1, false);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: visited_planets visited_planets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visited_planets
    ADD CONSTRAINT visited_planets_name_key UNIQUE (name);


--
-- Name: visited_planets visited_planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visited_planets
    ADD CONSTRAINT visited_planets_pkey PRIMARY KEY (visited_planets_id);


--
-- Name: visited_planets visited_planets_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visited_planets
    ADD CONSTRAINT visited_planets_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

