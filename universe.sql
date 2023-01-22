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
    name character varying(20) NOT NULL,
    size integer,
    dis_from_sun numeric(5,2),
    discrip text,
    age integer,
    date_of_covry date,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_lfe boolean,
    cov_date date,
    discrip text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    discrip text,
    has_life boolean NOT NULL,
    dis_from_sun numeric(5,2),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    descrip text,
    dis_from_sun numeric(5,2),
    dicovry_date date,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(20) NOT NULL,
    dis_from_moon numeric(5,2),
    has_life boolean,
    age integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('one galaxy ', 255, 523.22, 'first on line', 522, '1114-02-03', 1);
INSERT INTO public.galaxy VALUES (' galaxy two ', 256, 533.22, 'second on line', 522, '1014-02-03', 2);
INSERT INTO public.galaxy VALUES ('galaxy 3', 255, 365.23, 'bigest', 100, '1244-03-02', 3);
INSERT INTO public.galaxy VALUES ('dark galaxy', 322, 562.32, 'darkerst', 500, '1245-02-04', 4);
INSERT INTO public.galaxy VALUES ('milkyway', 235, 852.23, 'close to the sun', 255, '2141-05-11', 5);
INSERT INTO public.galaxy VALUES ('mistroway', 336, 855.23, 'golible', 333, '1095-08-03', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lo', false, '1102-02-03', 'the most volcanivcanical', 5);
INSERT INTO public.moon VALUES (2, 'europa', false, '1100-04-09', 'mostly watwr ice', 5);
INSERT INTO public.moon VALUES (3, 'ganymede', false, '1010-02-09', 'the lagest moon', 5);
INSERT INTO public.moon VALUES (4, 'callisto', false, '1011-01-07', 'heavilly surface', 5);
INSERT INTO public.moon VALUES (5, 'structure', false, '1147-08-09', 'its the interiors ', 5);
INSERT INTO public.moon VALUES (6, 'aeglr', false, '1102-02-03', 'the most volcanivcanical', 6);
INSERT INTO public.moon VALUES (7, 'alblorix', false, '1100-04-09', 'mostly watwr ice', 6);
INSERT INTO public.moon VALUES (8, 'alvaldl', false, '1010-02-09', 'the lagest moon', 6);
INSERT INTO public.moon VALUES (9, 'atlas', false, '1011-01-07', 'heavilly surface', 4);
INSERT INTO public.moon VALUES (10, 'bell', false, '1147-08-09', 'its the interiors ', 6);
INSERT INTO public.moon VALUES (11, 'gridr', false, '1102-02-03', 'the most volcanivcanical', 6);
INSERT INTO public.moon VALUES (12, 'gred', false, '1100-04-09', 'mostly watwr ice', 2);
INSERT INTO public.moon VALUES (13, 'calypso', false, '1010-02-09', 'the lagest moon', 6);
INSERT INTO public.moon VALUES (14, 'dlone', false, '1011-01-07', 'heavilly surface', 3);
INSERT INTO public.moon VALUES (15, 'bebhlonn', false, '1147-08-09', 'its the interiors ', 1);
INSERT INTO public.moon VALUES (16, 'ridr', false, '1102-02-03', 'the most volcanivcanical', 6);
INSERT INTO public.moon VALUES (17, 'gre', false, '1100-04-09', 'mostly watwr ice', 2);
INSERT INTO public.moon VALUES (18, 'cypso', false, '1010-02-09', 'the lagest moon', 6);
INSERT INTO public.moon VALUES (19, 'lone', false, '1011-01-07', 'heavilly surface', 3);
INSERT INTO public.moon VALUES (20, 'beonn', false, '1147-08-09', 'its the interiors ', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 'close to the sun ', false, 233.23, 1);
INSERT INTO public.planet VALUES (2, 'venus ', 'secound close to the sun ', false, 233.23, 1);
INSERT INTO public.planet VALUES (3, 'earth', 'thired in line', true, 231.23, 3);
INSERT INTO public.planet VALUES (4, 'mars', 'has no light', false, 123.23, 5);
INSERT INTO public.planet VALUES (5, 'jupiter', 'cooled', false, 232.23, 4);
INSERT INTO public.planet VALUES (6, 'saturn', 'not close to the sun', false, 1.23, 2);
INSERT INTO public.planet VALUES (7, 'uranus', 'like that ', false, 1.21, 5);
INSERT INTO public.planet VALUES (8, 'nupiter', 'hmmm', false, 521.23, 1);
INSERT INTO public.planet VALUES (9, 'neptune', 'putulanad', false, 523.12, 2);
INSERT INTO public.planet VALUES (10, 'pluto', 'not close to the sun', true, 326.14, 6);
INSERT INTO public.planet VALUES (11, 'ceres', 'off the land', false, 234.23, 2);
INSERT INTO public.planet VALUES (12, 'makamake', 'atificial planet', false, 258.21, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'black star', 'black in color', 523.23, '1452-05-02', 2);
INSERT INTO public.star VALUES (2, 'light star', 'shines and close to the sun', 123.23, '1452-05-02', 3);
INSERT INTO public.star VALUES (3, 'siris', 'most brithers star', 112.32, '1154-02-04', 1);
INSERT INTO public.star VALUES (4, 'canopus', 'brithers in southern', 235.22, '0101-02-03', 5);
INSERT INTO public.star VALUES (5, 'vega', 'brithers in the north', 321.23, '1144-02-03', 6);
INSERT INTO public.star VALUES (6, 'bellatrix', 'third brithers star  inconstellation', 232.23, '0211-05-08', 4);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'aelia', 231.23, false, 5252);
INSERT INTO public.sun VALUES (2, 'aurora', 321.23, false, 4541);
INSERT INTO public.sun VALUES (3, 'eostrs', 454.23, false, 212);


--
-- Name: galaxy gal_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT gal_name UNIQUE (name);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet pla_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pla_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: moon q_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT q_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star str_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT str_name UNIQUE (name);


--
-- Name: sun sun_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

