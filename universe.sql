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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    distance boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    name character varying(50) NOT NULL,
    galaxy_types_id integer NOT NULL,
    year_established integer,
    average_size numeric,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    moon_id integer NOT NULL,
    age_in_millions_of_years integer,
    bodies_of_water integer,
    what_is_on_the_dark_side text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    vegetation character varying(25),
    age_in_millions_of_years integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    color character varying(10),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Mikly Way', 1, true, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Galaxy YBJ 546', 3, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Galaxy YBJ 536', 4, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Galaxy YBJ 16', 5, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('THE END', 6, false, NULL, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('test', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy_types VALUES ('testing', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy_types VALUES ('row 3', 3, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Mond', 1, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon2', 2, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon3', 3, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon4', 4, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon5', 5, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon6', 6, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon7', 7, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon8', 8, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon9', 9, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon10', 10, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon11', 11, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon12', 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon13', 13, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon14', 14, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon15', 15, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon16', 16, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon17', 17, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon18', 18, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon19', 19, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon20', 20, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Earth 2.0', 2, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 3', 3, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 4', 4, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 5', 5, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 6', 6, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 7', 7, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 8', 8, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 9', 9, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 10', 10, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 11', 11, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Planet 12', 12, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Star 2', 2, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('Another Star', 3, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES ('Yet Another Star', 4, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES ('Bright Star', 5, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES ('Not so bright star', 6, NULL, NULL, NULL, 6);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: galaxy pk_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy PRIMARY KEY (galaxy_id);


--
-- Name: moon pk_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon PRIMARY KEY (moon_id);


--
-- Name: planet pk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet PRIMARY KEY (planet_id);


--
-- Name: star pk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star PRIMARY KEY (star_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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

