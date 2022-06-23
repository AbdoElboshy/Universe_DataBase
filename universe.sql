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
-- Name: asteriod; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteriod (
    asteriod_id integer NOT NULL,
    type character varying(30),
    name character varying(30) NOT NULL
);


ALTER TABLE public.asteriod OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    type character varying(30),
    distance_from_earth_light_years bigint,
    billions_of_stars integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    diameter numeric,
    period numeric,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    type character varying(30),
    number_of_moons integer,
    is_spherical boolean,
    length_of_year numeric,
    distance_from_earth_million_km numeric,
    has_life boolean,
    description text,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    type character varying(30),
    age_in_billion_years numeric,
    have_solar_system boolean NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteriod; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteriod VALUES (1, 'S-type', 'Eros');
INSERT INTO public.asteriod VALUES (2, 'Apollo', 'Hermes');
INSERT INTO public.asteriod VALUES (3, 'S-type', 'Icarus');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Sprial', 200000000, NULL, 'NGC 4622');
INSERT INTO public.galaxy VALUES (1, 'Sprial', 2500000, 10000, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Sprial', 17000000, 100, 'Black Eye');
INSERT INTO public.galaxy VALUES (4, 'Sprial', 12000000, NULL, 'Messier 81');
INSERT INTO public.galaxy VALUES (5, 'Sprial', 3200000000, NULL, 'Comet');
INSERT INTO public.galaxy VALUES (6, 'Sprial', 1190000000, NULL, 'Malian 1');
INSERT INTO public.galaxy VALUES (7, 'Sprial', 0, 100, 'Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3476, 27.32, 3, 'Moon');
INSERT INTO public.moon VALUES (2, 23, 0.32, 4, 'Phobos');
INSERT INTO public.moon VALUES (3, 13, 1.26, 4, 'Deioms');
INSERT INTO public.moon VALUES (4, 90, 0.67, 5, 'Thebe');
INSERT INTO public.moon VALUES (5, 3138, 3.55, 5, 'Europa');
INSERT INTO public.moon VALUES (6, 4800, 16.69, 5, 'Callisto');
INSERT INTO public.moon VALUES (7, 170, 251, 5, 'Himalia');
INSERT INTO public.moon VALUES (8, 20, 0.58, 6, 'Pan');
INSERT INTO public.moon VALUES (9, 40, 0.60, 6, 'Atlas');
INSERT INTO public.moon VALUES (10, 190, 0.69, 6, 'Janus');
INSERT INTO public.moon VALUES (11, 394, 0.94, 6, 'Mimas');
INSERT INTO public.moon VALUES (12, 1048, 1.89, 6, 'Tethys');
INSERT INTO public.moon VALUES (13, 1120, 2.74, 6, 'Dione');
INSERT INTO public.moon VALUES (14, 1530, 4.52, 6, 'Rhea');
INSERT INTO public.moon VALUES (15, 5150, 15.95, 6, 'Titan');
INSERT INTO public.moon VALUES (17, 1160, 2.52, 7, 'Ariel');
INSERT INTO public.moon VALUES (16, 170, 0.76, 7, 'Puck');
INSERT INTO public.moon VALUES (18, 485, 1.41, 7, 'Miranda');
INSERT INTO public.moon VALUES (19, 20, 20, 10, 'Styx');
INSERT INTO public.moon VALUES (20, 46, 24, 10, 'Nix');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'terrestrial', 0, true, 87.97, 124.39, false, 'The smallest planet in the solar system', 1, 'Mercury');
INSERT INTO public.planet VALUES (2, 'terrestrial', 0, true, 225, 203.19, false, 'The second planet from the sun', 1, 'Venus');
INSERT INTO public.planet VALUES (3, 'terrestrial', 1, false, 365, NULL, true, 'Our home The third planet from the sun', 1, 'Earth');
INSERT INTO public.planet VALUES (4, 'terrestrial', 2, false, 687, 201.37, false, 'Some times called the red planet', 1, 'Mars');
INSERT INTO public.planet VALUES (5, 'gas', 79, true, 4333, 740.69, false, 'The largest in the solar system', 1, 'Jupiter');
INSERT INTO public.planet VALUES (6, 'gas', 82, true, 10756, 1427, false, 'The second largest in the solar system', 1, 'Saturn');
INSERT INTO public.planet VALUES (7, 'Ice Giant', 27, false, 30687, 2600, false, 'It was the first planet found with the aid of telescope', 1, 'Uranus');
INSERT INTO public.planet VALUES (8, 'Ice Giant', 27, false, 30687, 2600, false, 'It was the first planet found with the aid of telescope', 1, 'Neptune');
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, NULL, false, 'super earth exoplanet', 7, 'Kepler-186f');
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, NULL, false, NULL, 1, 'Pluto');
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, NULL, false, NULL, 1, 'Charon');
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, NULL, false, NULL, 1, '2003 UB313');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'G dwarf', 4.5, true, 7, 'Sun');
INSERT INTO public.star VALUES (2, 'variable hypergaint', NULL, true, 7, 'UY Scuti');
INSERT INTO public.star VALUES (3, 'B8IVpMnHg', 0.06, false, 1, 'Alpheratz');
INSERT INTO public.star VALUES (4, 'A0', 0.230, false, 7, 'Sirius');
INSERT INTO public.star VALUES (6, 'M2lab', NULL, false, 7, 'Betelgeuse');
INSERT INTO public.star VALUES (5, 'M0 III', NULL, true, 1, 'Mirach');
INSERT INTO public.star VALUES (7, NULL, NULL, true, 7, 'kepler-186');


--
-- Name: asteriod asteriod_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_name_key UNIQUE (name);


--
-- Name: asteriod asteriod_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_pkey PRIMARY KEY (asteriod_id);


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
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_pk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

