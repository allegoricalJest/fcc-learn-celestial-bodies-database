--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)

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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_billions_of_years numeric(4,1) NOT NULL,
    galaxy_type text NOT NULL,
    distance_from_earth_in_lightyears integer NOT NULL
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric(2,1),
    distance_from_earth_in_lightyears integer NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric(2,1),
    planet_type text NOT NULL,
    distance_from_earth_in_lightyears integer NOT NULL,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_billions_of_years numeric(2,1) NOT NULL,
    star_type text NOT NULL,
    distance_from_earth_in_lightyears integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Gets its name from the area of the sky in which it appears, the constellation of Andromeda.', false, 5.0, 'Spiral', 2500000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'The galaxy containing the Sun and its Solar System, and therefore Earth.', true, 16.0, 'Spiral', 0);
INSERT INTO public.galaxy VALUES (3, 'Eye of Sauron', 'Named due to its resemblance to the Eye of Sauron from "The Lord of the Rings"', false, -1.0, 'Spiral', 52000000);
INSERT INTO public.galaxy VALUES (4, 'Medusa Merger', 'Ejected dust from the merging galaxies is said to look like the snakes that the Gorgon Medusa from Greek mythology had on her head.', false, -1.0, 'Irregular', 128800000);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'Named after its location within the Triangulum constellation', false, -1.0, 'Spiral', 2540000);
INSERT INTO public.galaxy VALUES (6, 'Wolf-Lundmark-Melotte', 'Named for the three astronomers instrumental in its discovery and identification', false, 13.0, 'Irregular', 3010000);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'They look like giant pinwheels. The arms of the pinwheel are made up of stars and lots of gas and dust. Gas and dust are some of the main ingredients needed to form new stars. Young stars burn much hotter than older stars, so spiral galaxies are often some of the brightest in the unvierse. About 60% of nearby galaxies are spirals. Our home galaxy, the Milky Way, is a very good example of one.');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'They are shaped like stretched-out circles, or ellipses. Some elliptical galaxies are more stretched out than others. One might look almost perfectly circular. Another one might look long and flat. Elliptical galaxies contain mostly older stars. That means they often aren''t as bright as spiral galaxies. They also have very little dust and gas. Elliptical galaxies are the largest most common galaxies observed. They make up about 20% of nearby galaxies.');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'As their name implies they are irregular. They don''t have a single common shape. Irregular galaxies are among the smallest galaxies scientists have observed. However, they can also be very bright. Like sprial galaxies, irregular galaxies are often filled with gas, dust, and lots of bright young start. About 20% of nearby galaxies are irregular galaxies.');
INSERT INTO public.galaxy_types VALUES (4, 'Quasars', 'Quasars are compact areas in the center of a galaxy. They give off enormous amounts of energy. Quasars are actually some of the brightest objest in the universe. There are no quasars near our Milky Way.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestial Planet', 'Also known as a telluric planet or rocky planet. A planet that is composed primarily of carbonaceous or silicate rocks or metals');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'A massive planet compose primarily of hydrogen and helium');
INSERT INTO public.planet_types VALUES (3, 'Gas Dwarf', 'A low-mass planet composed primarily of hydrogen and helium');
INSERT INTO public.planet_types VALUES (4, 'Protoplanet', 'A large planetary embryo that originates within protoplanetary discs and has undergone internal melting to produce differentiated interiors. Protoplanets are believed to form out of kilometer-sized planetesimals that attract each other gravitationally and collide');
INSERT INTO public.planet_types VALUES (5, 'Ocean', 'A theoretical planet which has a substantial fraction of its mass made of water');
INSERT INTO public.planet_types VALUES (6, 'Lava', 'A theoretical planet with a surface mostly or entirely covered by molten lava');
INSERT INTO public.planet_types VALUES (7, 'Silicate', 'A terrestrial planet that is composed primarily of silicate rocks. All four inner planets in the Solar System are silicon-based');
INSERT INTO public.planet_types VALUES (8, 'Puffy', 'Also known as hot Saturn. A gas giant with a large radius and very low density whichy is similar to or lower than Saturn''s');
INSERT INTO public.planet_types VALUES (9, 'Iron', 'A theoretical planet that consists primarily of an iron-rich core with little or no mantle');
INSERT INTO public.planet_types VALUES (10, 'Ice', 'A theoretical planet with an icy surface and consists of a global cryosphere');
INSERT INTO public.planet_types VALUES (11, 'Ice Giant', 'A giant planet compose mainly of ''ices''-volatile substances heavier than hydrogen and helium, such as water, methane, and ammonia-as opposed to ''gas'' (hydrogen and helium)');
INSERT INTO public.planet_types VALUES (12, 'Hycean', 'A hypothetical type of habitable planet described as a hot, water-covered planet with a hydrogen-rich atmosphere');
INSERT INTO public.planet_types VALUES (13, 'Helium', 'A theoretical planet that may form via mass loss from a low-mass white dwarf. Helium planets are predicted to have roughly the same diameter as hydrogen-helium planets of the same mass');
INSERT INTO public.planet_types VALUES (14, 'Desert', 'A theoretical terrestial planet with very little water');
INSERT INTO public.planet_types VALUES (16, 'Carbon', 'A theoretical terrestrial planet that could form if protoplanetary discs are carbon-rich and oxygen-poor');
INSERT INTO public.planet_types VALUES (17, 'Chthonian', 'An extrasolar planet that orbits close to it''s parent star. Most Chthonian planets are expected to be gas giants that had their atmospheres stripped away, leaving their cores');
INSERT INTO public.planet_types VALUES (15, 'Coreless', 'A theoretical planet that has undergone planetary differentiation but has no metallic core. Not to be confused with the Hollow Earth concept');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, true, -1.0, 'Yellow Dwarf', 0, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', NULL, false, 4.9, 'Red Dwarf', 4, 2);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', NULL, false, -1.0, 'Red Dwarf', 4, 2);
INSERT INTO public.star VALUES (4, 'Toliman', NULL, false, -1.0, 'Red Dwarf', 4, 2);
INSERT INTO public.star VALUES (5, 'Barnard''s Star', NULL, false, -1.0, 'Red Dwarf', 6, 2);
INSERT INTO public.star VALUES (6, 'Wolf 359', NULL, false, 0.1, 'Red Dwarf', 7, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

