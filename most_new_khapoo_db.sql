--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: aeplugins; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE aeplugins (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE aeplugins OWNER TO sixarts;

--
-- Name: aeplugins_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE aeplugins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aeplugins_id_seq OWNER TO sixarts;

--
-- Name: aeplugins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE aeplugins_id_seq OWNED BY aeplugins.id;


--
-- Name: akusukas; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE akusukas (
    id integer NOT NULL,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying
);


ALTER TABLE akusukas OWNER TO sixarts;

--
-- Name: akusukas_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE akusukas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE akusukas_id_seq OWNER TO sixarts;

--
-- Name: akusukas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE akusukas_id_seq OWNED BY akusukas.id;


--
-- Name: allskills; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE allskills (
    id integer NOT NULL,
    skill_id integer,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    vacancy_id integer
);


ALTER TABLE allskills OWNER TO khapoo;

--
-- Name: allskills_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE allskills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE allskills_id_seq OWNER TO khapoo;

--
-- Name: allskills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE allskills_id_seq OWNED BY allskills.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO khapoo;

--
-- Name: brokes; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE brokes (
    id integer NOT NULL,
    resources character varying,
    theme_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer,
    graphic_id integer,
    t3d_id integer,
    videofx_id integer,
    font_id integer
);


ALTER TABLE brokes OWNER TO sixarts;

--
-- Name: brokes_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE brokes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE brokes_id_seq OWNER TO sixarts;

--
-- Name: brokes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE brokes_id_seq OWNED BY brokes.id;


--
-- Name: browsers; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE browsers (
    id integer NOT NULL,
    name character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE browsers OWNER TO sixarts;

--
-- Name: browsers_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE browsers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE browsers_id_seq OWNER TO sixarts;

--
-- Name: browsers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE browsers_id_seq OWNED BY browsers.id;


--
-- Name: canopens; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE canopens (
    id integer NOT NULL,
    softopen3d_id integer,
    t3d_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE canopens OWNER TO sixarts;

--
-- Name: canopens_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE canopens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE canopens_id_seq OWNER TO sixarts;

--
-- Name: canopens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE canopens_id_seq OWNED BY canopens.id;


--
-- Name: carts; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE carts (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    purchased_at timestamp without time zone,
    user_id integer,
    status character varying DEFAULT 'failed'::character varying
);


ALTER TABLE carts OWNER TO khapoo;

--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE carts_id_seq OWNER TO khapoo;

--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE carts_id_seq OWNED BY carts.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying(50),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    to_item character varying,
    slug character varying
);


ALTER TABLE categories OWNER TO sixarts;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO sixarts;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: categorydetails; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE categorydetails (
    id integer NOT NULL,
    category_id integer,
    subcategory_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE categorydetails OWNER TO sixarts;

--
-- Name: categorydetails_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE categorydetails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categorydetails_id_seq OWNER TO sixarts;

--
-- Name: categorydetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE categorydetails_id_seq OWNED BY categorydetails.id;


--
-- Name: code_autocompletes; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE code_autocompletes (
    id integer NOT NULL,
    term character varying,
    popularity integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE code_autocompletes OWNER TO khapoo;

--
-- Name: code_autocompletes_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE code_autocompletes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE code_autocompletes_id_seq OWNER TO khapoo;

--
-- Name: code_autocompletes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE code_autocompletes_id_seq OWNED BY code_autocompletes.id;


--
-- Name: codes; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE codes (
    id integer NOT NULL,
    name character varying(150),
    description text,
    category_id integer,
    dependency_id integer,
    note text,
    thumbnail character varying,
    price numeric,
    agree boolean DEFAULT false,
    slug character varying,
    url_demo character varying,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    codesub_id integer,
    video_demo character varying,
    price_ext numeric,
    team_id integer,
    reject boolean DEFAULT false,
    average_rate numeric,
    sell integer DEFAULT 0
);


ALTER TABLE codes OWNER TO sixarts;

--
-- Name: codes_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE codes_id_seq OWNER TO sixarts;

--
-- Name: codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE codes_id_seq OWNED BY codes.id;


--
-- Name: codesubs; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE codesubs (
    id integer NOT NULL,
    name character varying,
    subcategory_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE codesubs OWNER TO sixarts;

--
-- Name: codesubs_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE codesubs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE codesubs_id_seq OWNER TO sixarts;

--
-- Name: codesubs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE codesubs_id_seq OWNED BY codesubs.id;


--
-- Name: cofiles; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE cofiles (
    id integer NOT NULL,
    coke character varying,
    course_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE cofiles OWNER TO sixarts;

--
-- Name: cofiles_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE cofiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cofiles_id_seq OWNER TO sixarts;

--
-- Name: cofiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE cofiles_id_seq OWNED BY cofiles.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE comments (
    id integer NOT NULL,
    content text,
    user_id integer,
    theme_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer,
    graphic_id integer,
    t3d_id integer,
    videofx_id integer,
    font_id integer,
    course_id integer
);


ALTER TABLE comments OWNER TO sixarts;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comments_id_seq OWNER TO sixarts;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: compatibles; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE compatibles (
    id integer NOT NULL,
    name character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE compatibles OWNER TO sixarts;

--
-- Name: compatibles_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE compatibles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE compatibles_id_seq OWNER TO sixarts;

--
-- Name: compatibles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE compatibles_id_seq OWNED BY compatibles.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE countries (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    abbreviation character varying(10)
);


ALTER TABLE countries OWNER TO sixarts;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE countries_id_seq OWNER TO sixarts;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE countries_id_seq OWNED BY countries.id;


--
-- Name: course_autocompletes; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE course_autocompletes (
    id integer NOT NULL,
    term character varying,
    popularity integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE course_autocompletes OWNER TO khapoo;

--
-- Name: course_autocompletes_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE course_autocompletes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE course_autocompletes_id_seq OWNER TO khapoo;

--
-- Name: course_autocompletes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE course_autocompletes_id_seq OWNED BY course_autocompletes.id;


--
-- Name: courses; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE courses (
    id integer NOT NULL,
    name character varying,
    description character varying,
    category_id integer,
    note text,
    thumbnail character varying,
    price numeric,
    agree boolean DEFAULT false,
    slug character varying,
    vi_length character varying(10),
    skill_level character varying(20),
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    language_id integer,
    price_ext numeric,
    team_id integer,
    reject boolean DEFAULT false,
    average_rate numeric,
    sell integer DEFAULT 0
);


ALTER TABLE courses OWNER TO sixarts;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE courses_id_seq OWNER TO sixarts;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE courses_id_seq OWNED BY courses.id;


--
-- Name: databrowsers; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE databrowsers (
    id integer NOT NULL,
    browser_id integer,
    theme_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer
);


ALTER TABLE databrowsers OWNER TO sixarts;

--
-- Name: databrowsers_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE databrowsers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE databrowsers_id_seq OWNER TO sixarts;

--
-- Name: databrowsers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE databrowsers_id_seq OWNED BY databrowsers.id;


--
-- Name: datacompatibles; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE datacompatibles (
    id integer NOT NULL,
    theme_id integer,
    compatible_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer
);


ALTER TABLE datacompatibles OWNER TO sixarts;

--
-- Name: datacompatibles_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE datacompatibles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE datacompatibles_id_seq OWNER TO sixarts;

--
-- Name: datacompatibles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE datacompatibles_id_seq OWNED BY datacompatibles.id;


--
-- Name: dataincludes; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE dataincludes (
    id integer NOT NULL,
    include_id integer,
    theme_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer,
    graphic_id integer,
    t3d_id integer,
    videofx_id integer,
    font_id integer
);


ALTER TABLE dataincludes OWNER TO sixarts;

--
-- Name: dataincludes_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE dataincludes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dataincludes_id_seq OWNER TO sixarts;

--
-- Name: dataincludes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE dataincludes_id_seq OWNED BY dataincludes.id;


--
-- Name: dataositems; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE dataositems (
    id integer NOT NULL,
    t3d_id integer,
    ositem_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE dataositems OWNER TO sixarts;

--
-- Name: dataositems_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE dataositems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dataositems_id_seq OWNER TO sixarts;

--
-- Name: dataositems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE dataositems_id_seq OWNED BY dataositems.id;


--
-- Name: datasubcategories; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE datasubcategories (
    id integer NOT NULL,
    subcategory_id integer,
    theme_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer,
    graphic_id integer,
    t3d_id integer,
    videofx_id integer,
    course_id integer
);


ALTER TABLE datasubcategories OWNER TO sixarts;

--
-- Name: datasubcategories_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE datasubcategories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE datasubcategories_id_seq OWNER TO sixarts;

--
-- Name: datasubcategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE datasubcategories_id_seq OWNED BY datasubcategories.id;


--
-- Name: dependencies; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE dependencies (
    id integer NOT NULL,
    name character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    category_id integer
);


ALTER TABLE dependencies OWNER TO sixarts;

--
-- Name: dependencies_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE dependencies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dependencies_id_seq OWNER TO sixarts;

--
-- Name: dependencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE dependencies_id_seq OWNED BY dependencies.id;


--
-- Name: diasukas; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE diasukas (
    id integer NOT NULL,
    akusuka_id integer,
    theme_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer,
    graphic_id integer,
    videofx_id integer,
    font_id integer,
    course_id integer,
    t3d_id integer
);


ALTER TABLE diasukas OWNER TO sixarts;

--
-- Name: diasukas_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE diasukas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE diasukas_id_seq OWNER TO sixarts;

--
-- Name: diasukas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE diasukas_id_seq OWNED BY diasukas.id;


--
-- Name: encodes; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE encodes (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE encodes OWNER TO sixarts;

--
-- Name: encodes_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE encodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE encodes_id_seq OWNER TO sixarts;

--
-- Name: encodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE encodes_id_seq OWNED BY encodes.id;


--
-- Name: follows; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE follows (
    id integer NOT NULL,
    following_id integer,
    follower_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE follows OWNER TO sixarts;

--
-- Name: follows_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE follows_id_seq OWNER TO sixarts;

--
-- Name: follows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE follows_id_seq OWNED BY follows.id;


--
-- Name: font_autocompletes; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE font_autocompletes (
    id integer NOT NULL,
    term character varying,
    popularity integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE font_autocompletes OWNER TO khapoo;

--
-- Name: font_autocompletes_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE font_autocompletes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE font_autocompletes_id_seq OWNER TO khapoo;

--
-- Name: font_autocompletes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE font_autocompletes_id_seq OWNED BY font_autocompletes.id;


--
-- Name: fontindustries; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE fontindustries (
    id integer NOT NULL,
    industry_id integer,
    font_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE fontindustries OWNER TO sixarts;

--
-- Name: fontindustries_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE fontindustries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fontindustries_id_seq OWNER TO sixarts;

--
-- Name: fontindustries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE fontindustries_id_seq OWNED BY fontindustries.id;


--
-- Name: fonts; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE fonts (
    id integer NOT NULL,
    name character varying,
    description text,
    category_id integer,
    note text,
    thumbnail character varying,
    price numeric,
    agree boolean DEFAULT false,
    slug character varying,
    file_size character varying(20),
    vector character varying(10),
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    price_ext numeric,
    team_id integer,
    reject boolean DEFAULT false,
    average_rate numeric,
    sell integer DEFAULT 0
);


ALTER TABLE fonts OWNER TO sixarts;

--
-- Name: fonts_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE fonts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fonts_id_seq OWNER TO sixarts;

--
-- Name: fonts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE fonts_id_seq OWNED BY fonts.id;


--
-- Name: framerates; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE framerates (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE framerates OWNER TO sixarts;

--
-- Name: framerates_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE framerates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE framerates_id_seq OWNER TO sixarts;

--
-- Name: framerates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE framerates_id_seq OWNED BY framerates.id;


--
-- Name: freeitems; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE freeitems (
    id integer NOT NULL,
    theme_id integer,
    code_id integer,
    t3d_id integer,
    graphic_id integer,
    videofx_id integer,
    font_id integer,
    course_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE freeitems OWNER TO khapoo;

--
-- Name: freeitems_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE freeitems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE freeitems_id_seq OWNER TO khapoo;

--
-- Name: freeitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE freeitems_id_seq OWNED BY freeitems.id;


--
-- Name: freepis; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE freepis (
    id integer NOT NULL,
    cacaca character varying,
    course_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE freepis OWNER TO sixarts;

--
-- Name: freepis_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE freepis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE freepis_id_seq OWNER TO sixarts;

--
-- Name: freepis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE freepis_id_seq OWNED BY freepis.id;


--
-- Name: genres; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE genres (
    id integer NOT NULL,
    name character varying(40),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE genres OWNER TO sixarts;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genres_id_seq OWNER TO sixarts;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE genres_id_seq OWNED BY genres.id;


--
-- Name: geometries; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE geometries (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE geometries OWNER TO sixarts;

--
-- Name: geometries_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE geometries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geometries_id_seq OWNER TO sixarts;

--
-- Name: geometries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE geometries_id_seq OWNED BY geometries.id;


--
-- Name: graphic_autocompletes; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE graphic_autocompletes (
    id integer NOT NULL,
    term character varying,
    popularity integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE graphic_autocompletes OWNER TO khapoo;

--
-- Name: graphic_autocompletes_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE graphic_autocompletes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE graphic_autocompletes_id_seq OWNER TO khapoo;

--
-- Name: graphic_autocompletes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE graphic_autocompletes_id_seq OWNED BY graphic_autocompletes.id;


--
-- Name: graphics; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE graphics (
    id integer NOT NULL,
    name character varying(150),
    description character varying,
    category_id integer,
    softopen_id integer,
    note text,
    thumbnail character varying,
    price numeric,
    agree boolean DEFAULT false,
    slug character varying,
    url_demo character varying,
    video_demo character varying,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    price_ext numeric,
    team_id integer,
    reject boolean DEFAULT false,
    average_rate numeric,
    sell integer DEFAULT 0
);


ALTER TABLE graphics OWNER TO sixarts;

--
-- Name: graphics_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE graphics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE graphics_id_seq OWNER TO sixarts;

--
-- Name: graphics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE graphics_id_seq OWNED BY graphics.id;


--
-- Name: graphindustries; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE graphindustries (
    id integer NOT NULL,
    graphic_id integer,
    industry_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE graphindustries OWNER TO sixarts;

--
-- Name: graphindustries_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE graphindustries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE graphindustries_id_seq OWNER TO sixarts;

--
-- Name: graphindustries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE graphindustries_id_seq OWNED BY graphindustries.id;


--
-- Name: headsecs; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE headsecs (
    id integer NOT NULL,
    name character varying,
    course_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE headsecs OWNER TO sixarts;

--
-- Name: headsecs_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE headsecs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE headsecs_id_seq OWNER TO sixarts;

--
-- Name: headsecs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE headsecs_id_seq OWNED BY headsecs.id;


--
-- Name: includes; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE includes (
    id integer NOT NULL,
    name character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE includes OWNER TO sixarts;

--
-- Name: includes_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE includes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE includes_id_seq OWNER TO sixarts;

--
-- Name: includes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE includes_id_seq OWNED BY includes.id;


--
-- Name: industries; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE industries (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying
);


ALTER TABLE industries OWNER TO sixarts;

--
-- Name: industries_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE industries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE industries_id_seq OWNER TO sixarts;

--
-- Name: industries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE industries_id_seq OWNED BY industries.id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE languages (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE languages OWNER TO sixarts;

--
-- Name: languages_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE languages_id_seq OWNER TO sixarts;

--
-- Name: languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE languages_id_seq OWNED BY languages.id;


--
-- Name: latars; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE latars (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE latars OWNER TO sixarts;

--
-- Name: latars_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE latars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE latars_id_seq OWNER TO sixarts;

--
-- Name: latars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE latars_id_seq OWNED BY latars.id;


--
-- Name: lectures; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE lectures (
    id integer NOT NULL,
    name character varying,
    description text,
    headsec_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE lectures OWNER TO sixarts;

--
-- Name: lectures_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE lectures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lectures_id_seq OWNER TO sixarts;

--
-- Name: lectures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE lectures_id_seq OWNED BY lectures.id;


--
-- Name: line_items; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE line_items (
    id integer NOT NULL,
    cart_id integer,
    theme_id integer,
    unit_price numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    license character varying,
    support boolean DEFAULT false,
    code_id integer,
    font_id integer,
    course_id integer,
    t3d_id integer,
    graphic_id integer,
    videofx_id integer,
    who_have character varying
);


ALTER TABLE line_items OWNER TO khapoo;

--
-- Name: line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE line_items_id_seq OWNER TO khapoo;

--
-- Name: line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE line_items_id_seq OWNED BY line_items.id;


--
-- Name: mailboxer_conversation_opt_outs; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE mailboxer_conversation_opt_outs (
    id integer NOT NULL,
    unsubscriber_type character varying,
    unsubscriber_id integer,
    conversation_id integer
);


ALTER TABLE mailboxer_conversation_opt_outs OWNER TO khapoo;

--
-- Name: mailboxer_conversation_opt_outs_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE mailboxer_conversation_opt_outs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mailboxer_conversation_opt_outs_id_seq OWNER TO khapoo;

--
-- Name: mailboxer_conversation_opt_outs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE mailboxer_conversation_opt_outs_id_seq OWNED BY mailboxer_conversation_opt_outs.id;


--
-- Name: mailboxer_conversations; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE mailboxer_conversations (
    id integer NOT NULL,
    subject character varying DEFAULT ''::character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE mailboxer_conversations OWNER TO khapoo;

--
-- Name: mailboxer_conversations_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE mailboxer_conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mailboxer_conversations_id_seq OWNER TO khapoo;

--
-- Name: mailboxer_conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE mailboxer_conversations_id_seq OWNED BY mailboxer_conversations.id;


--
-- Name: mailboxer_notifications; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE mailboxer_notifications (
    id integer NOT NULL,
    type character varying,
    body text,
    subject character varying DEFAULT ''::character varying,
    sender_type character varying,
    sender_id integer,
    conversation_id integer,
    draft boolean DEFAULT false,
    notification_code character varying,
    notified_object_type character varying,
    notified_object_id integer,
    attachment character varying,
    updated_at timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    global boolean DEFAULT false,
    expires timestamp without time zone
);


ALTER TABLE mailboxer_notifications OWNER TO khapoo;

--
-- Name: mailboxer_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE mailboxer_notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mailboxer_notifications_id_seq OWNER TO khapoo;

--
-- Name: mailboxer_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE mailboxer_notifications_id_seq OWNED BY mailboxer_notifications.id;


--
-- Name: mailboxer_receipts; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE mailboxer_receipts (
    id integer NOT NULL,
    receiver_type character varying,
    receiver_id integer,
    notification_id integer NOT NULL,
    is_read boolean DEFAULT false,
    trashed boolean DEFAULT false,
    deleted boolean DEFAULT false,
    mailbox_type character varying(25),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    is_delivered boolean DEFAULT false,
    delivery_method character varying,
    message_id character varying
);


ALTER TABLE mailboxer_receipts OWNER TO khapoo;

--
-- Name: mailboxer_receipts_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE mailboxer_receipts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mailboxer_receipts_id_seq OWNER TO khapoo;

--
-- Name: mailboxer_receipts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE mailboxer_receipts_id_seq OWNED BY mailboxer_receipts.id;


--
-- Name: maintoitems; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE maintoitems (
    id integer NOT NULL,
    include_id integer,
    toitem_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE maintoitems OWNER TO khapoo;

--
-- Name: maintoitems_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE maintoitems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE maintoitems_id_seq OWNER TO khapoo;

--
-- Name: maintoitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE maintoitems_id_seq OWNED BY maintoitems.id;


--
-- Name: memos; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE memos (
    id integer NOT NULL,
    content character varying(200),
    note_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE memos OWNER TO khapoo;

--
-- Name: memos_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE memos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE memos_id_seq OWNER TO khapoo;

--
-- Name: memos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE memos_id_seq OWNED BY memos.id;


--
-- Name: messagereviewers; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE messagereviewers (
    id integer NOT NULL,
    team_id integer,
    user_id integer,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE messagereviewers OWNER TO khapoo;

--
-- Name: messagereviewers_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE messagereviewers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE messagereviewers_id_seq OWNER TO khapoo;

--
-- Name: messagereviewers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE messagereviewers_id_seq OWNED BY messagereviewers.id;


--
-- Name: modelsubs; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE modelsubs (
    id integer NOT NULL,
    name character varying,
    subcategory_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE modelsubs OWNER TO sixarts;

--
-- Name: modelsubs_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE modelsubs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE modelsubs_id_seq OWNER TO sixarts;

--
-- Name: modelsubs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE modelsubs_id_seq OWNED BY modelsubs.id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE notes (
    id integer NOT NULL,
    title character varying(150),
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    team_id integer,
    shared boolean DEFAULT false
);


ALTER TABLE notes OWNER TO khapoo;

--
-- Name: notes_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notes_id_seq OWNER TO khapoo;

--
-- Name: notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE notes_id_seq OWNED BY notes.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE notifications (
    id integer NOT NULL,
    user_id integer,
    notified_by_id integer,
    theme_id integer,
    identifier integer,
    notice_type character varying,
    read boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer,
    graphic_id integer,
    t3d_id integer,
    videofx_id integer,
    font_id integer,
    course_id integer,
    line_item_id integer
);


ALTER TABLE notifications OWNER TO sixarts;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notifications_id_seq OWNER TO sixarts;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE notifications_id_seq OWNED BY notifications.id;


--
-- Name: ositems; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE ositems (
    id integer NOT NULL,
    name character varying(20),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ositems OWNER TO sixarts;

--
-- Name: ositems_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE ositems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ositems_id_seq OWNER TO sixarts;

--
-- Name: ositems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE ositems_id_seq OWNED BY ositems.id;


--
-- Name: ourstores; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE ourstores (
    id integer NOT NULL,
    header character varying,
    description character varying,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    website character varying
);


ALTER TABLE ourstores OWNER TO sixarts;

--
-- Name: ourstores_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE ourstores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ourstores_id_seq OWNER TO sixarts;

--
-- Name: ourstores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE ourstores_id_seq OWNED BY ourstores.id;


--
-- Name: payment_noties; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE payment_noties (
    id integer NOT NULL,
    params text,
    cart_id integer,
    status character varying,
    transaction_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE payment_noties OWNER TO khapoo;

--
-- Name: payment_noties_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE payment_noties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE payment_noties_id_seq OWNER TO khapoo;

--
-- Name: payment_noties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE payment_noties_id_seq OWNED BY payment_noties.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE reviews (
    id integer NOT NULL,
    rating integer,
    comment text,
    user_id integer,
    theme_id integer,
    code_id integer,
    font_id integer,
    videofx_id integer,
    course_id integer,
    t3d_id integer,
    graphic_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE reviews OWNER TO khapoo;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reviews_id_seq OWNER TO khapoo;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE reviews_id_seq OWNED BY reviews.id;


--
-- Name: revrests; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE revrests (
    id integer NOT NULL,
    content text,
    theme_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer,
    graphic_id integer,
    font_id integer,
    t3d_id integer,
    course_id integer,
    videofx_id integer
);


ALTER TABLE revrests OWNER TO khapoo;

--
-- Name: revrests_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE revrests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE revrests_id_seq OWNER TO khapoo;

--
-- Name: revrests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE revrests_id_seq OWNED BY revrests.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO sixarts;

--
-- Name: screenshots; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE screenshots (
    id integer NOT NULL,
    screenshot character varying,
    theme_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer,
    graphic_id integer,
    t3d_id integer,
    videofx_id integer,
    font_id integer
);


ALTER TABLE screenshots OWNER TO sixarts;

--
-- Name: screenshots_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE screenshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE screenshots_id_seq OWNER TO sixarts;

--
-- Name: screenshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE screenshots_id_seq OWNED BY screenshots.id;


--
-- Name: skills; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE skills (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE skills OWNER TO khapoo;

--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE skills_id_seq OWNER TO khapoo;

--
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE skills_id_seq OWNED BY skills.id;


--
-- Name: social_networks; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE social_networks (
    id integer NOT NULL,
    behance character varying,
    deviant character varying,
    digg character varying,
    facebook character varying,
    dribbble character varying,
    flickr character varying,
    github character varying,
    linkedin character varying,
    youtube character varying,
    twitter character varying,
    tumblr character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE social_networks OWNER TO sixarts;

--
-- Name: social_networks_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE social_networks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_networks_id_seq OWNER TO sixarts;

--
-- Name: social_networks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE social_networks_id_seq OWNED BY social_networks.id;


--
-- Name: softopen3ds; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE softopen3ds (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE softopen3ds OWNER TO sixarts;

--
-- Name: softopen3ds_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE softopen3ds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE softopen3ds_id_seq OWNER TO sixarts;

--
-- Name: softopen3ds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE softopen3ds_id_seq OWNED BY softopen3ds.id;


--
-- Name: softopens; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE softopens (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE softopens OWNER TO sixarts;

--
-- Name: softopens_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE softopens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE softopens_id_seq OWNER TO sixarts;

--
-- Name: softopens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE softopens_id_seq OWNED BY softopens.id;


--
-- Name: states; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE states (
    id integer NOT NULL,
    name character varying,
    country_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE states OWNER TO sixarts;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE states_id_seq OWNER TO sixarts;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE states_id_seq OWNED BY states.id;


--
-- Name: subcategories; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE subcategories (
    id integer NOT NULL,
    name character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying
);


ALTER TABLE subcategories OWNER TO sixarts;

--
-- Name: subcategories_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE subcategories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subcategories_id_seq OWNER TO sixarts;

--
-- Name: subcategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE subcategories_id_seq OWNED BY subcategories.id;


--
-- Name: t3d_autocompletes; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE t3d_autocompletes (
    id integer NOT NULL,
    term character varying,
    popularity integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE t3d_autocompletes OWNER TO khapoo;

--
-- Name: t3d_autocompletes_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE t3d_autocompletes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t3d_autocompletes_id_seq OWNER TO khapoo;

--
-- Name: t3d_autocompletes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE t3d_autocompletes_id_seq OWNED BY t3d_autocompletes.id;


--
-- Name: t3ds; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE t3ds (
    id integer NOT NULL,
    name character varying(150),
    description character varying,
    category_id integer,
    note text,
    thumbnail character varying,
    price numeric,
    agree boolean DEFAULT false,
    slug character varying,
    url_demo character varying,
    video_demo character varying,
    user_id integer,
    animated character varying(10),
    low_poly character varying(10),
    material character varying(10),
    rigged character varying(10),
    texture character varying(10),
    uv_mapped character varying(10),
    unwrapped_uvs character varying(10),
    bitmap_texture character varying(10),
    procedural_texture character varying(10),
    tileable character varying(10),
    layered character varying(10),
    resolution character varying(20),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    polygons_count character varying(20),
    vertices_count character varying(20),
    modelsub_id integer,
    genre_id integer,
    geometry_id integer,
    price_ext numeric,
    team_id integer,
    reject boolean DEFAULT false,
    average_rate numeric,
    sell integer DEFAULT 0
);


ALTER TABLE t3ds OWNER TO sixarts;

--
-- Name: t3ds_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE t3ds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t3ds_id_seq OWNER TO sixarts;

--
-- Name: t3ds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE t3ds_id_seq OWNED BY t3ds.id;


--
-- Name: taggings; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE taggings (
    id integer NOT NULL,
    tag_id integer,
    theme_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_id integer,
    graphic_id integer,
    t3d_id integer,
    videofx_id integer,
    font_id integer,
    course_id integer
);


ALTER TABLE taggings OWNER TO sixarts;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggings_id_seq OWNER TO sixarts;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE taggings_id_seq OWNED BY taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE tags (
    id integer NOT NULL,
    name character varying(40),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE tags OWNER TO sixarts;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tags_id_seq OWNER TO sixarts;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE teams (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE teams OWNER TO khapoo;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE teams_id_seq OWNER TO khapoo;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE teams_id_seq OWNED BY teams.id;


--
-- Name: theme_autocompletes; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE theme_autocompletes (
    id integer NOT NULL,
    term character varying,
    popularity integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE theme_autocompletes OWNER TO khapoo;

--
-- Name: theme_autocompletes_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE theme_autocompletes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE theme_autocompletes_id_seq OWNER TO khapoo;

--
-- Name: theme_autocompletes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE theme_autocompletes_id_seq OWNED BY theme_autocompletes.id;


--
-- Name: themes; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE themes (
    id integer NOT NULL,
    name character varying(150),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    category_id integer,
    "column" character varying,
    layout character varying,
    dependency_id integer,
    note text,
    thumbnail character varying,
    price numeric,
    aggree boolean,
    slug character varying,
    url_demo character varying,
    user_id integer,
    team_id integer,
    price_ext numeric,
    reject boolean DEFAULT false,
    average_rate numeric,
    sell integer DEFAULT 0
);


ALTER TABLE themes OWNER TO sixarts;

--
-- Name: themes_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE themes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE themes_id_seq OWNER TO sixarts;

--
-- Name: themes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE themes_id_seq OWNED BY themes.id;


--
-- Name: toitems; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE toitems (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE toitems OWNER TO khapoo;

--
-- Name: toitems_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE toitems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE toitems_id_seq OWNER TO khapoo;

--
-- Name: toitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE toitems_id_seq OWNED BY toitems.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    password_digest character varying,
    activation_digest character varying,
    activated boolean DEFAULT false,
    activated_at timestamp without time zone,
    remember_digest character varying,
    reset_digest character varying,
    reset_sent_at timestamp without time zone,
    first_n character varying(30),
    last_n character varying(30),
    company character varying(40),
    city character varying(30),
    postal_code character varying(10),
    avatar character varying,
    show_country boolean DEFAULT false,
    freelance_av boolean DEFAULT false,
    username character varying(30),
    country_id integer,
    state_id integer,
    seller boolean DEFAULT false,
    admin boolean DEFAULT false,
    reviewer boolean DEFAULT false,
    job_post boolean DEFAULT false,
    team_id integer,
    leader boolean DEFAULT false,
    balance numeric DEFAULT 0.0
);


ALTER TABLE users OWNER TO sixarts;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO sixarts;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: vacancies; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE vacancies (
    id integer NOT NULL,
    name character varying,
    description text,
    category_id integer,
    user_id integer,
    location character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    job_type character varying(20),
    recruiter character varying(10),
    experience character varying(10),
    country_id integer,
    state_id integer,
    slug character varying,
    url_form character varying
);


ALTER TABLE vacancies OWNER TO khapoo;

--
-- Name: vacancies_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE vacancies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vacancies_id_seq OWNER TO khapoo;

--
-- Name: vacancies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE vacancies_id_seq OWNED BY vacancies.id;


--
-- Name: videms; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE videms (
    id integer NOT NULL,
    trailer character varying,
    videofx_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE videms OWNER TO sixarts;

--
-- Name: videms_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE videms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videms_id_seq OWNER TO sixarts;

--
-- Name: videms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE videms_id_seq OWNED BY videms.id;


--
-- Name: videofx_autocompletes; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE videofx_autocompletes (
    id integer NOT NULL,
    term character varying,
    popularity integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE videofx_autocompletes OWNER TO khapoo;

--
-- Name: videofx_autocompletes_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE videofx_autocompletes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videofx_autocompletes_id_seq OWNER TO khapoo;

--
-- Name: videofx_autocompletes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE videofx_autocompletes_id_seq OWNED BY videofx_autocompletes.id;


--
-- Name: videofxes; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE videofxes (
    id integer NOT NULL,
    name character varying,
    description character varying,
    category_id integer,
    softopen_id integer,
    note text,
    thumbnail character varying,
    price numeric,
    agree boolean DEFAULT false,
    slug character varying,
    url_demo character varying,
    video_demo character varying,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    duration character varying(10),
    resolution character varying(10),
    looped_video character varying(10),
    alpha_channel character varying(10),
    source_audio character varying(10),
    file_size character varying(10),
    require_plugin character varying(10),
    encode_id integer,
    latar_id integer,
    vidsub_id integer,
    poster character varying,
    price_ext numeric,
    team_id integer,
    reject boolean DEFAULT false,
    average_rate numeric,
    sell integer DEFAULT 0
);


ALTER TABLE videofxes OWNER TO sixarts;

--
-- Name: videofxes_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE videofxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videofxes_id_seq OWNER TO sixarts;

--
-- Name: videofxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE videofxes_id_seq OWNED BY videofxes.id;


--
-- Name: videorates; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE videorates (
    id integer NOT NULL,
    framerate_id integer,
    videofx_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE videorates OWNER TO sixarts;

--
-- Name: videorates_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE videorates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videorates_id_seq OWNER TO sixarts;

--
-- Name: videorates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE videorates_id_seq OWNED BY videorates.id;


--
-- Name: vidplugs; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE vidplugs (
    id integer NOT NULL,
    aeplugin_id integer,
    videofx_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE vidplugs OWNER TO sixarts;

--
-- Name: vidplugs_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE vidplugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vidplugs_id_seq OWNER TO sixarts;

--
-- Name: vidplugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE vidplugs_id_seq OWNED BY vidplugs.id;


--
-- Name: vidsubs; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE vidsubs (
    id integer NOT NULL,
    name character varying,
    subcategory_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE vidsubs OWNER TO sixarts;

--
-- Name: vidsubs_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE vidsubs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vidsubs_id_seq OWNER TO sixarts;

--
-- Name: vidsubs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE vidsubs_id_seq OWNED BY vidsubs.id;


--
-- Name: votes; Type: TABLE; Schema: public; Owner: sixarts
--

CREATE TABLE votes (
    id integer NOT NULL,
    votable_id integer,
    votable_type character varying,
    voter_id integer,
    voter_type character varying,
    vote_flag boolean,
    vote_scope character varying,
    vote_weight integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE votes OWNER TO sixarts;

--
-- Name: votes_id_seq; Type: SEQUENCE; Schema: public; Owner: sixarts
--

CREATE SEQUENCE votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE votes_id_seq OWNER TO sixarts;

--
-- Name: votes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixarts
--

ALTER SEQUENCE votes_id_seq OWNED BY votes.id;


--
-- Name: withdrawals; Type: TABLE; Schema: public; Owner: khapoo
--

CREATE TABLE withdrawals (
    id integer NOT NULL,
    mount numeric,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    status boolean DEFAULT false,
    address character varying
);


ALTER TABLE withdrawals OWNER TO khapoo;

--
-- Name: withdrawals_id_seq; Type: SEQUENCE; Schema: public; Owner: khapoo
--

CREATE SEQUENCE withdrawals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE withdrawals_id_seq OWNER TO khapoo;

--
-- Name: withdrawals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khapoo
--

ALTER SEQUENCE withdrawals_id_seq OWNED BY withdrawals.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY aeplugins ALTER COLUMN id SET DEFAULT nextval('aeplugins_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY akusukas ALTER COLUMN id SET DEFAULT nextval('akusukas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY allskills ALTER COLUMN id SET DEFAULT nextval('allskills_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY brokes ALTER COLUMN id SET DEFAULT nextval('brokes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY browsers ALTER COLUMN id SET DEFAULT nextval('browsers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY canopens ALTER COLUMN id SET DEFAULT nextval('canopens_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY carts ALTER COLUMN id SET DEFAULT nextval('carts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY categorydetails ALTER COLUMN id SET DEFAULT nextval('categorydetails_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY code_autocompletes ALTER COLUMN id SET DEFAULT nextval('code_autocompletes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codes ALTER COLUMN id SET DEFAULT nextval('codes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codesubs ALTER COLUMN id SET DEFAULT nextval('codesubs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY cofiles ALTER COLUMN id SET DEFAULT nextval('cofiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY compatibles ALTER COLUMN id SET DEFAULT nextval('compatibles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY countries ALTER COLUMN id SET DEFAULT nextval('countries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY course_autocompletes ALTER COLUMN id SET DEFAULT nextval('course_autocompletes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY courses ALTER COLUMN id SET DEFAULT nextval('courses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY databrowsers ALTER COLUMN id SET DEFAULT nextval('databrowsers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datacompatibles ALTER COLUMN id SET DEFAULT nextval('datacompatibles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataincludes ALTER COLUMN id SET DEFAULT nextval('dataincludes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataositems ALTER COLUMN id SET DEFAULT nextval('dataositems_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datasubcategories ALTER COLUMN id SET DEFAULT nextval('datasubcategories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dependencies ALTER COLUMN id SET DEFAULT nextval('dependencies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas ALTER COLUMN id SET DEFAULT nextval('diasukas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY encodes ALTER COLUMN id SET DEFAULT nextval('encodes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY follows ALTER COLUMN id SET DEFAULT nextval('follows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY font_autocompletes ALTER COLUMN id SET DEFAULT nextval('font_autocompletes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY fontindustries ALTER COLUMN id SET DEFAULT nextval('fontindustries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY fonts ALTER COLUMN id SET DEFAULT nextval('fonts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY framerates ALTER COLUMN id SET DEFAULT nextval('framerates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY freeitems ALTER COLUMN id SET DEFAULT nextval('freeitems_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY freepis ALTER COLUMN id SET DEFAULT nextval('freepis_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY genres ALTER COLUMN id SET DEFAULT nextval('genres_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY geometries ALTER COLUMN id SET DEFAULT nextval('geometries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY graphic_autocompletes ALTER COLUMN id SET DEFAULT nextval('graphic_autocompletes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphics ALTER COLUMN id SET DEFAULT nextval('graphics_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphindustries ALTER COLUMN id SET DEFAULT nextval('graphindustries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY headsecs ALTER COLUMN id SET DEFAULT nextval('headsecs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY includes ALTER COLUMN id SET DEFAULT nextval('includes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY industries ALTER COLUMN id SET DEFAULT nextval('industries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY languages ALTER COLUMN id SET DEFAULT nextval('languages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY latars ALTER COLUMN id SET DEFAULT nextval('latars_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY lectures ALTER COLUMN id SET DEFAULT nextval('lectures_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items ALTER COLUMN id SET DEFAULT nextval('line_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_conversation_opt_outs ALTER COLUMN id SET DEFAULT nextval('mailboxer_conversation_opt_outs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_conversations ALTER COLUMN id SET DEFAULT nextval('mailboxer_conversations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_notifications ALTER COLUMN id SET DEFAULT nextval('mailboxer_notifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_receipts ALTER COLUMN id SET DEFAULT nextval('mailboxer_receipts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY maintoitems ALTER COLUMN id SET DEFAULT nextval('maintoitems_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY memos ALTER COLUMN id SET DEFAULT nextval('memos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY messagereviewers ALTER COLUMN id SET DEFAULT nextval('messagereviewers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY modelsubs ALTER COLUMN id SET DEFAULT nextval('modelsubs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY notes ALTER COLUMN id SET DEFAULT nextval('notes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications ALTER COLUMN id SET DEFAULT nextval('notifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY ositems ALTER COLUMN id SET DEFAULT nextval('ositems_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY ourstores ALTER COLUMN id SET DEFAULT nextval('ourstores_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY payment_noties ALTER COLUMN id SET DEFAULT nextval('payment_noties_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews ALTER COLUMN id SET DEFAULT nextval('reviews_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY revrests ALTER COLUMN id SET DEFAULT nextval('revrests_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY screenshots ALTER COLUMN id SET DEFAULT nextval('screenshots_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY skills ALTER COLUMN id SET DEFAULT nextval('skills_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY social_networks ALTER COLUMN id SET DEFAULT nextval('social_networks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY softopen3ds ALTER COLUMN id SET DEFAULT nextval('softopen3ds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY softopens ALTER COLUMN id SET DEFAULT nextval('softopens_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY states ALTER COLUMN id SET DEFAULT nextval('states_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY subcategories ALTER COLUMN id SET DEFAULT nextval('subcategories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY t3d_autocompletes ALTER COLUMN id SET DEFAULT nextval('t3d_autocompletes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY t3ds ALTER COLUMN id SET DEFAULT nextval('t3ds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings ALTER COLUMN id SET DEFAULT nextval('taggings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY teams ALTER COLUMN id SET DEFAULT nextval('teams_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY theme_autocompletes ALTER COLUMN id SET DEFAULT nextval('theme_autocompletes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY themes ALTER COLUMN id SET DEFAULT nextval('themes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY toitems ALTER COLUMN id SET DEFAULT nextval('toitems_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY vacancies ALTER COLUMN id SET DEFAULT nextval('vacancies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videms ALTER COLUMN id SET DEFAULT nextval('videms_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY videofx_autocompletes ALTER COLUMN id SET DEFAULT nextval('videofx_autocompletes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videofxes ALTER COLUMN id SET DEFAULT nextval('videofxes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videorates ALTER COLUMN id SET DEFAULT nextval('videorates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY vidplugs ALTER COLUMN id SET DEFAULT nextval('vidplugs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY vidsubs ALTER COLUMN id SET DEFAULT nextval('vidsubs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY votes ALTER COLUMN id SET DEFAULT nextval('votes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY withdrawals ALTER COLUMN id SET DEFAULT nextval('withdrawals_id_seq'::regclass);


--
-- Data for Name: aeplugins; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY aeplugins (id, name, created_at, updated_at) FROM stdin;
1	ReelSmart Motion Blur	2016-07-28 13:07:03.34934	2016-07-28 13:07:03.34934
2	Element 3D v1	2016-07-28 13:07:03.41132	2016-07-28 13:07:03.41132
3	Element 3D v2	2016-07-28 13:07:03.418912	2016-07-28 13:07:03.418912
4	Element 3D Pro Shaders	2016-07-28 13:07:03.424808	2016-07-28 13:07:03.424808
5	Twitch	2016-07-28 13:07:03.431874	2016-07-28 13:07:03.431874
6	Optical Flares	2016-07-28 13:07:03.437466	2016-07-28 13:07:03.437466
7	Plexus	2016-07-28 13:07:03.441837	2016-07-28 13:07:03.441837
8	Plexus 2	2016-07-28 13:07:03.445213	2016-07-28 13:07:03.445213
9	Trapcode Particular	2016-07-28 13:07:03.448419	2016-07-28 13:07:03.448419
10	Trapcode Form	2016-07-28 13:07:03.452123	2016-07-28 13:07:03.452123
11	Trapcode Shine	2016-07-28 13:07:03.455694	2016-07-28 13:07:03.455694
12	Trapcode 3D Stroke	2016-07-28 13:07:03.459132	2016-07-28 13:07:03.459132
13	Trapcode Starglow	2016-07-28 13:07:03.463527	2016-07-28 13:07:03.463527
14	Trapcode Mir	2016-07-28 13:07:03.467265	2016-07-28 13:07:03.467265
15	Trapcode Lux	2016-07-28 13:07:03.470714	2016-07-28 13:07:03.470714
16	Trapcode Sound Keys	2016-07-28 13:07:03.474154	2016-07-28 13:07:03.474154
17	Trapcode Horizon	2016-07-28 13:07:03.477726	2016-07-28 13:07:03.477726
18	Trapcode Echospace	2016-07-28 13:07:03.481195	2016-07-28 13:07:03.481195
19	Magic Bullet Looks	2016-07-28 13:07:03.484918	2016-07-28 13:07:03.484918
20	Magic Bullet Colorista II	2016-07-28 13:07:03.488501	2016-07-28 13:07:03.488501
21	Magic Bullet Colorista III	2016-07-28 13:07:03.492667	2016-07-28 13:07:03.492667
22	Magic Bullet Mojo	2016-07-28 13:07:03.496538	2016-07-28 13:07:03.496538
23	Magic Bullet LUT Buddy	2016-07-28 13:07:03.500081	2016-07-28 13:07:03.500081
24	Video Copilot SABER	2016-07-28 13:07:03.503503	2016-07-28 13:07:03.503503
25	Other	2016-07-28 13:07:03.507071	2016-07-28 13:07:03.507071
\.


--
-- Name: aeplugins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('aeplugins_id_seq', 26, true);


--
-- Data for Name: akusukas; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY akusukas (id, user_id, created_at, updated_at, name) FROM stdin;
8	18	2016-08-11 08:23:40.192271	2016-08-11 08:23:40.192271	Ultimate
11	19	2016-08-12 09:57:13.152258	2016-08-12 09:57:13.152258	Unlimited
13	20	2016-08-13 09:27:31.316011	2016-08-13 09:27:31.316011	Kaphoo
\.


--
-- Name: akusukas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('akusukas_id_seq', 13, true);


--
-- Data for Name: allskills; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY allskills (id, skill_id, user_id, created_at, updated_at, vacancy_id) FROM stdin;
1	1	18	2016-09-02 09:04:14.317896	2016-09-02 09:04:14.317896	\N
2	2	18	2016-09-02 09:04:14.324265	2016-09-02 09:04:14.324265	\N
3	3	18	2016-09-02 09:04:14.328911	2016-09-02 09:04:14.328911	\N
4	4	18	2016-09-02 09:04:14.334559	2016-09-02 09:04:14.334559	\N
5	5	25	2016-09-10 01:43:15.176781	2016-09-10 01:43:15.176781	\N
6	6	25	2016-09-10 01:43:15.207899	2016-09-10 01:43:15.207899	\N
7	7	25	2016-09-10 01:43:15.21365	2016-09-10 01:43:15.21365	\N
30	27	\N	2016-10-03 18:44:40.857344	2016-10-03 18:44:40.857344	8
31	28	\N	2016-10-03 18:44:40.860644	2016-10-03 18:44:40.860644	8
32	29	\N	2016-10-03 18:44:40.863421	2016-10-03 18:44:40.863421	8
33	30	\N	2016-10-03 18:44:40.866309	2016-10-03 18:44:40.866309	8
34	31	\N	2016-10-03 18:44:40.869287	2016-10-03 18:44:40.869287	8
35	32	\N	2016-10-03 18:44:40.872616	2016-10-03 18:44:40.872616	8
36	33	\N	2016-10-03 18:56:11.399042	2016-10-03 18:56:11.399042	9
37	34	\N	2016-10-03 18:56:11.402052	2016-10-03 18:56:11.402052	9
\.


--
-- Name: allskills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('allskills_id_seq', 37, true);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2016-08-17 09:27:59.899766	2016-08-17 09:27:59.899766
\.


--
-- Data for Name: brokes; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY brokes (id, resources, theme_id, created_at, updated_at, code_id, graphic_id, t3d_id, videofx_id, font_id) FROM stdin;
26	5780133cb2ab16b84d80098b5237773c3efb677a31134cd6d4.zip	15	2016-08-20 05:29:23.565048	2016-08-20 05:29:23.565048	\N	\N	\N	\N	\N
27	6451726e0ee5febb0a81ee63a74fab30a250724429e20d4b03.zip	20	2016-08-23 19:02:42.40093	2016-08-23 19:02:42.40093	\N	\N	\N	\N	\N
138	e11cbb0d72aeb2f144db8332248ae985ba1f5c876d17837ed0.zip	\N	2016-08-29 18:31:04.355664	2016-08-29 18:31:04.355664	13	\N	\N	\N	\N
140	2628b51731bf6adde9446a824b5c651b3fb1b830287954d659.zip	\N	2016-09-06 16:41:02.750177	2016-09-06 16:41:02.750177	14	\N	\N	\N	\N
142	57a35694e728dfafcdb4447127e3bbcbfaa4f45da51d1da80d.zip	\N	2016-09-07 17:49:18.507817	2016-09-07 17:49:18.507817	\N	\N	\N	\N	4
144	fc3dc49025b2e57dc1abcfa81fefd1313e08d388440b09b3ee.zip	\N	2016-09-07 19:43:48.547116	2016-09-07 19:43:48.547116	\N	3	\N	\N	\N
146	42ebf9b8a5698229588a0351cd2bac4401cb1ec0ff15e2d117.zip	\N	2016-09-08 03:13:30.53024	2016-09-08 03:13:30.53024	\N	\N	5	\N	\N
147	17657584e9befad56be3db4b9da8fd717737c73761ecdb38e8.zip	\N	2016-09-08 03:17:41.344263	2016-09-08 03:17:41.344263	\N	\N	6	\N	\N
149	26f49241485d46f2c968dfd0ecb8ea4c90fe870ab32d681ac8.zip	\N	2016-09-08 09:39:27.58182	2016-09-08 09:39:27.58182	\N	\N	\N	5	\N
137	81fe0d816a3f21a6dc5add552bbfbb5ba7ddc06bc030f0ab54.zip	11	2016-08-28 19:54:42.266552	2016-08-28 19:54:42.266552	\N	\N	\N	4	\N
151	a94e9313c7721f5aa39c663e33efd19a0a616f152f967a6ad6.zip	23	2016-10-11 11:59:12.578842	2016-10-11 11:59:12.578842	\N	\N	\N	\N	\N
152	5cc3933401f8084796d8aba66b3404777e408eb23edc78e977.zip	\N	2016-10-11 12:28:20.38836	2016-10-11 12:28:20.38836	16	\N	\N	\N	\N
105	6cc38d071bba77ba4a640b1407d8002080f0e449a0acdb1e6d.zip	\N	2016-08-27 19:39:32.204042	2016-08-27 19:39:32.204042	\N	2	\N	\N	\N
110	f8514b05728fbcfa04add5d0e5c63c6fb5b292b7ed953a8252.zip	10	2016-08-28 07:36:40.454421	2016-08-28 07:36:40.454421	\N	\N	\N	\N	\N
114	8fed278bb2abe698828c44b54a154ce521ac189cc19c57f033.zip	\N	2016-08-28 08:06:13.09174	2016-08-28 08:06:13.09174	9	\N	\N	\N	\N
121	b4eeecbcae285717b4346fd1536eab828fdbe87dc58fcaf674.zip	\N	2016-08-28 09:42:15.398905	2016-08-28 09:42:15.398905	\N	\N	\N	\N	1
\.


--
-- Name: brokes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('brokes_id_seq', 152, true);


--
-- Data for Name: browsers; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY browsers (id, name, created_at, updated_at) FROM stdin;
1	IE	2016-06-04 07:30:03.533171	2016-06-04 07:30:03.533171
2	Mozilla Firefox	2016-06-04 07:31:21.780791	2016-06-04 07:31:21.780791
3	Chrome	2016-06-04 07:38:06.77027	2016-06-04 07:38:06.77027
4	Safari	2016-06-04 07:45:05.809534	2016-06-04 07:45:05.809534
5	Opera	2016-06-04 07:45:35.563525	2016-06-04 07:45:35.563525
6	Opera Mini	2016-06-04 07:45:46.94316	2016-06-04 07:45:46.94316
7	iOS Safari	2016-06-04 07:46:07.209837	2016-06-04 07:46:07.209837
8	Android Browser	2016-06-04 07:46:32.290119	2016-06-04 07:46:32.290119
9	Chrome Mobile	2016-06-04 07:47:00.268452	2016-06-04 07:47:00.268452
10	Edge	2016-06-04 07:47:17.395809	2016-06-04 07:47:17.395809
\.


--
-- Name: browsers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('browsers_id_seq', 11, true);


--
-- Data for Name: canopens; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY canopens (id, softopen3d_id, t3d_id, created_at, updated_at) FROM stdin;
1	4	4	2016-07-27 03:23:03.37005	2016-07-27 03:23:03.37005
2	10	4	2016-07-27 03:23:03.393114	2016-07-27 03:23:03.393114
3	12	2	2016-07-27 04:34:34.872749	2016-07-27 04:34:34.872749
4	16	2	2016-07-27 04:34:34.878305	2016-07-27 04:34:34.878305
5	44	2	2016-07-27 04:34:34.884038	2016-07-27 04:34:34.884038
8	12	5	2016-09-08 03:14:36.078242	2016-09-08 03:14:36.078242
9	12	6	2016-09-08 03:18:26.156802	2016-09-08 03:18:26.156802
\.


--
-- Name: canopens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('canopens_id_seq', 10, true);


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY carts (id, created_at, updated_at, purchased_at, user_id, status) FROM stdin;
223	2016-10-14 04:23:37.388993	2016-10-14 04:23:37.402691	\N	18	failed
174	2016-09-26 15:05:08.085943	2016-09-26 15:09:19.905104	2016-09-26 15:09:19.901819	20	success
175	2016-09-26 15:12:39.116025	2016-09-26 15:12:39.116025	\N	\N	failed
224	2016-10-14 04:24:51.725415	2016-10-14 04:24:51.746114	\N	24	failed
176	2016-09-26 15:13:05.916874	2016-09-26 15:33:07.213818	2016-09-26 15:33:07.209752	18	success
177	2016-09-26 15:35:45.442902	2016-09-26 15:38:39.118494	2016-09-26 15:38:39.114694	\N	success
178	2016-09-26 15:40:10.113537	2016-09-26 15:40:10.113537	\N	\N	failed
225	2016-10-14 07:43:01.726064	2016-10-14 07:43:01.752966	\N	18	failed
179	2016-09-26 15:40:29.847889	2016-09-26 15:43:09.324964	2016-09-26 15:43:09.320685	19	success
180	2016-09-26 15:44:13.429365	2016-09-26 15:44:13.429365	\N	\N	failed
226	2016-10-14 18:40:55.27781	2016-10-14 18:40:55.411076	\N	18	failed
181	2016-09-26 15:44:40.25233	2016-09-26 15:47:31.813424	2016-09-26 15:47:31.809735	20	success
182	2016-09-26 15:47:55.731797	2016-09-26 15:47:55.731797	\N	\N	failed
227	2016-10-14 18:43:37.947566	2016-10-14 18:43:37.97209	\N	19	failed
183	2016-09-26 15:48:26.304895	2016-09-26 15:50:40.727766	2016-09-26 15:50:40.723459	18	success
228	2016-10-15 03:36:17.636672	2016-10-15 03:36:17.713209	\N	24	failed
184	2016-09-26 16:00:05.7032	2016-09-26 16:00:05.734117	\N	19	failed
185	2016-09-26 18:35:31.359691	2016-09-26 18:35:31.380478	\N	23	failed
229	2016-10-15 06:46:14.167738	2016-10-15 06:46:14.248508	\N	24	failed
186	2016-10-03 03:30:47.650485	2016-10-03 05:45:17.713331	\N	18	failed
187	2016-10-03 07:12:07.660407	2016-10-03 07:12:07.732678	\N	18	failed
230	2016-10-16 05:31:40.835273	2016-10-16 05:31:40.915008	\N	24	failed
188	2016-10-04 14:08:48.78004	2016-10-04 14:08:48.850518	\N	19	failed
189	2016-10-08 04:54:28.62384	2016-10-08 04:54:28.702494	\N	18	failed
231	2016-10-16 12:59:45.164038	2016-10-16 12:59:45.241307	\N	24	failed
190	2016-10-08 13:52:54.310377	2016-10-08 13:52:54.35896	\N	19	failed
191	2016-10-08 13:58:24.944812	2016-10-08 13:58:24.961073	\N	18	failed
232	2016-10-17 03:03:58.679428	2016-10-17 03:03:58.755386	\N	24	failed
192	2016-10-08 14:28:39.56278	2016-10-08 14:28:39.581659	\N	19	failed
193	2016-10-08 14:36:26.198219	2016-10-08 14:36:26.219595	\N	18	failed
194	2016-10-09 02:48:45.518067	2016-10-09 02:48:45.518067	\N	\N	failed
195	2016-10-09 04:30:50.567203	2016-10-09 04:30:50.567203	\N	\N	failed
196	2016-10-09 04:50:59.273635	2016-10-09 04:50:59.273635	\N	\N	failed
233	2016-10-17 09:25:50.639839	2016-10-17 09:25:50.715941	\N	24	failed
197	2016-10-09 10:19:24.288944	2016-10-09 17:41:31.697642	2016-10-09 17:41:31.692	18	success
234	2016-10-17 11:49:36.209078	2016-10-17 11:49:36.233659	\N	18	failed
198	2016-10-09 17:41:59.18137	2016-10-09 18:06:05.734763	2016-10-09 18:06:05.730975	\N	success
199	2016-10-09 18:06:28.487097	2016-10-09 18:06:28.487097	\N	\N	failed
235	2016-10-17 11:50:21.313379	2016-10-17 11:50:21.334961	\N	24	failed
236	2016-10-18 04:57:11.79915	2016-10-18 04:57:11.88288	\N	24	failed
200	2016-10-10 02:51:05.924271	2016-10-10 02:55:36.131667	2016-10-10 02:55:36.125915	19	success
201	2016-10-10 02:55:59.723157	2016-10-10 02:55:59.723157	\N	\N	failed
237	2016-10-18 05:52:43.634147	2016-10-18 05:52:43.65827	\N	18	failed
202	2016-10-10 02:58:23.159309	2016-10-10 03:00:18.283526	2016-10-10 03:00:18.279579	18	success
203	2016-10-10 03:00:50.869541	2016-10-10 03:00:50.869541	\N	\N	failed
204	2016-10-10 14:19:26.947995	2016-10-10 17:50:18.225806	\N	19	failed
238	2016-10-18 06:02:12.02936	2016-10-18 06:02:12.045922	\N	24	failed
205	2016-10-11 08:37:59.401555	2016-10-11 08:37:59.474421	\N	18	failed
206	2016-10-11 08:43:55.548573	2016-10-11 08:43:55.548573	\N	\N	failed
207	2016-10-11 08:43:57.066781	2016-10-11 08:43:57.066781	\N	\N	failed
208	2016-10-11 11:23:20.470351	2016-10-11 11:23:20.550148	\N	18	failed
209	2016-10-11 11:43:13.558078	2016-10-11 11:43:13.558078	\N	\N	failed
210	2016-10-11 11:43:14.744189	2016-10-11 11:43:14.744189	\N	\N	failed
239	2016-10-19 00:34:09.695359	2016-10-19 00:34:09.778496	\N	24	failed
211	2016-10-11 11:44:48.002107	2016-10-11 11:44:48.021439	\N	18	failed
212	2016-10-11 11:47:04.042911	2016-10-11 11:47:30.92574	\N	18	failed
240	2016-10-19 04:37:39.658847	2016-10-19 04:37:39.682562	\N	23	failed
213	2016-10-11 13:27:38.098329	2016-10-11 13:27:38.109847	\N	20	failed
214	2016-10-13 06:14:48.008006	2016-10-13 06:14:48.193892	\N	18	failed
241	2016-10-19 05:21:56.362381	2016-10-19 05:21:56.403219	\N	25	failed
215	2016-10-13 08:26:47.331181	2016-10-13 08:26:47.355564	\N	24	failed
216	2016-10-13 14:57:11.882877	2016-10-13 14:57:11.912632	\N	18	failed
242	2016-10-19 06:01:18.211308	2016-10-19 06:01:18.25766	\N	23	failed
217	2016-10-13 14:57:35.608902	2016-10-13 14:57:35.637335	\N	24	failed
218	2016-10-13 14:57:53.132936	2016-10-13 14:57:53.161279	\N	23	failed
243	2016-10-19 06:02:42.531868	2016-10-19 06:02:42.55902	\N	25	failed
219	2016-10-13 15:07:22.258019	2016-10-13 15:07:22.286494	\N	18	failed
220	2016-10-13 15:08:44.829836	2016-10-13 15:08:44.871916	\N	23	failed
244	2016-10-19 08:25:53.240453	2016-10-19 08:32:32.617232	\N	23	failed
221	2016-10-14 04:09:42.15198	2016-10-14 04:09:42.21703	\N	23	failed
222	2016-10-14 04:10:03.962116	2016-10-14 04:10:03.985117	\N	24	failed
245	2016-10-19 08:33:27.898003	2016-10-19 08:33:27.91614	\N	25	failed
246	2016-10-19 08:34:04.258002	2016-10-19 08:34:04.275896	\N	24	failed
247	2016-10-19 08:37:34.290468	2016-10-19 08:37:34.322983	\N	23	failed
248	2016-10-19 11:41:06.035892	2016-10-19 11:41:06.053398	\N	18	failed
249	2016-10-19 11:47:38.172037	2016-10-19 11:47:38.186737	\N	24	failed
250	2016-10-20 03:18:17.372019	2016-10-20 03:18:17.454294	\N	24	failed
251	2016-10-20 06:35:00.696744	2016-10-20 06:35:00.720263	\N	18	failed
252	2016-10-20 07:17:25.510183	2016-10-20 07:17:25.533901	\N	19	failed
253	2016-10-20 08:10:45.141247	2016-10-20 08:10:45.158113	\N	19	failed
254	2016-10-20 08:23:19.830746	2016-10-20 08:23:19.844415	\N	24	failed
255	2016-10-25 11:16:36.53357	2016-10-25 11:16:36.609209	\N	24	failed
256	2016-10-25 11:41:58.855331	2016-10-25 11:41:58.871852	\N	18	failed
257	2016-10-25 16:36:16.97283	2016-10-25 16:36:17.050248	\N	18	failed
258	2016-10-25 16:36:45.24483	2016-10-25 16:36:45.263163	\N	18	failed
259	2016-10-25 16:38:40.979437	2016-10-25 16:38:40.996275	\N	18	failed
260	2016-10-25 16:39:57.59415	2016-10-25 16:39:57.614313	\N	18	failed
261	2016-10-25 16:41:47.946894	2016-10-25 16:41:47.971028	\N	18	failed
262	2016-10-25 16:42:59.458623	2016-10-25 16:42:59.479175	\N	18	failed
263	2016-10-25 17:45:54.728945	2016-10-25 17:45:54.743034	\N	18	failed
264	2016-10-25 17:50:16.077511	2016-10-25 17:50:16.100446	\N	18	failed
265	2016-10-25 17:50:42.452675	2016-10-25 17:50:42.469657	\N	18	failed
266	2016-10-25 17:51:28.988573	2016-10-25 17:51:29.007354	\N	18	failed
267	2016-10-25 17:52:39.321902	2016-10-25 17:52:39.33708	\N	18	failed
268	2016-10-25 17:54:39.523439	2016-10-25 17:54:39.537468	\N	18	failed
269	2016-10-25 17:55:35.792332	2016-10-25 17:55:35.809495	\N	18	failed
270	2016-10-25 17:56:58.52417	2016-10-25 17:56:58.54033	\N	18	failed
271	2016-10-25 17:58:28.969325	2016-10-25 17:58:28.983671	\N	18	failed
272	2016-10-25 18:53:16.142408	2016-10-25 18:53:16.156744	\N	24	failed
273	2016-10-26 11:04:12.99766	2016-10-26 11:04:13.073945	\N	24	failed
274	2016-10-26 14:47:05.11203	2016-10-26 14:47:05.209307	\N	18	failed
275	2016-10-26 14:50:10.682304	2016-10-26 14:50:10.704066	\N	24	failed
276	2016-10-27 10:28:17.433739	2016-10-27 10:28:17.518166	\N	24	failed
277	2016-11-01 16:12:22.380586	2016-11-01 16:12:22.464131	\N	24	failed
278	2016-11-02 17:24:08.227409	2016-11-02 17:24:08.30797	\N	19	failed
279	2016-11-02 18:38:39.05058	2016-11-02 18:38:39.100296	\N	23	failed
280	2016-11-03 12:34:05.842259	2016-11-03 12:34:05.917549	\N	24	failed
281	2016-11-03 12:37:39.240939	2016-11-03 12:37:39.257736	\N	24	failed
282	2016-11-03 12:39:07.178045	2016-11-03 12:39:07.198558	\N	24	failed
283	2016-11-04 03:59:36.74625	2016-11-04 03:59:36.819563	\N	18	failed
284	2016-11-04 15:48:36.124584	2016-11-04 15:48:36.261886	\N	18	failed
285	2016-11-04 15:49:52.652237	2016-11-04 15:49:52.669122	\N	24	failed
286	2016-11-05 03:04:21.427344	2016-11-05 03:04:21.505867	\N	24	failed
287	2016-11-05 04:48:49.310066	2016-11-05 04:48:49.360792	\N	18	failed
288	2016-11-05 04:49:35.184456	2016-11-05 04:49:35.199307	\N	24	failed
289	2016-11-06 01:58:48.826751	2016-11-06 01:58:48.909413	\N	24	failed
290	2016-11-06 08:16:49.681016	2016-11-06 08:59:52.516225	\N	18	failed
291	2016-11-07 12:33:50.039058	2016-11-07 12:33:50.140397	\N	24	failed
292	2016-11-07 19:17:22.754057	2016-11-07 19:28:33.398397	\N	18	failed
293	2016-11-07 19:30:19.396043	2016-11-07 19:30:19.417385	\N	19	failed
294	2016-11-07 19:35:03.73145	2016-11-07 19:35:03.752306	\N	18	failed
295	2016-11-07 19:43:19.464912	2016-11-07 19:43:19.486206	\N	18	failed
296	2016-11-07 19:45:17.626592	2016-11-07 19:46:55.775806	\N	18	failed
297	2016-11-07 19:47:35.746161	2016-11-07 19:47:35.765999	\N	24	failed
298	2016-11-07 19:51:41.122304	2016-11-07 19:51:41.145746	\N	23	failed
299	2016-11-07 19:55:37.178244	2016-11-07 19:55:37.197233	\N	18	failed
300	2016-11-09 02:19:53.779823	2016-11-09 02:19:54.101477	\N	18	failed
301	2016-11-09 20:37:29.408357	2016-11-09 20:54:48.791371	\N	18	failed
302	2016-11-09 23:35:21.226254	2016-11-09 23:48:58.168738	\N	23	failed
303	2016-11-10 00:24:44.312622	2016-11-10 00:24:44.368775	\N	23	failed
304	2016-11-10 01:23:16.013527	2016-11-10 01:23:16.03456	\N	25	failed
305	2016-11-10 07:36:13.858455	2016-11-10 07:36:14.003671	\N	23	failed
306	2016-11-10 10:46:13.696327	2016-11-10 10:46:13.72292	\N	25	failed
307	2016-11-10 10:56:08.472539	2016-11-10 10:56:08.503766	\N	30	failed
308	2016-11-10 10:57:27.674507	2016-11-10 10:57:27.697515	\N	24	failed
309	2016-11-10 11:17:30.716967	2016-11-10 11:17:30.768543	\N	18	failed
310	2016-11-10 11:20:51.114502	2016-11-10 11:20:51.156977	\N	18	failed
311	2016-11-10 11:21:51.839136	2016-11-10 11:21:51.877683	\N	18	failed
312	2016-11-10 11:24:19.281326	2016-11-10 11:24:19.318047	\N	18	failed
\.


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('carts_id_seq', 312, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY categories (id, name, created_at, updated_at, to_item, slug) FROM stdin;
1077	Design	2016-08-07 04:21:48.954235	2016-08-07 04:21:48.954235	course	design-courses
1057	serif	2016-08-06 05:01:25.012038	2016-09-06 05:14:23.580061	font	serif
1058	sans serif	2016-08-06 05:01:38.908478	2016-09-06 05:14:23.6154	font	sans-serif
1059	handwriting	2016-08-06 05:01:51.460638	2016-09-06 05:14:23.624997	font	handwriting
1060	monospace	2016-08-06 05:02:03.903691	2016-09-06 05:14:23.635613	font	monospace
1061	display	2016-08-06 05:02:15.385532	2016-09-06 05:14:23.646728	font	display
1063	script	2016-08-06 05:02:40.945992	2016-09-06 05:14:23.669311	font	script
1064	slab serif	2016-08-06 05:03:27.683113	2016-09-06 05:14:23.68036	font	slab-serif
1065	symbols	2016-08-06 05:03:38.626145	2016-09-06 05:14:23.693359	font	symbols
1066	icons	2016-08-06 05:03:51.802985	2016-09-06 05:14:23.702219	font	icons
1068	fancy	2016-08-06 05:04:18.94035	2016-09-06 05:14:23.725362	font	fancy
1069	foreign	2016-08-06 05:04:31.827162	2016-09-06 05:14:23.736057	font	foreign
1027	Logo	2016-07-22 14:58:20.441273	2016-09-06 05:14:23.191398	graphic	logo
1028	Bussines Card	2016-07-22 14:58:20.49728	2016-09-06 05:14:23.20237	graphic	bussines-card
1029	Illustrations	2016-07-22 14:58:20.55908	2016-09-06 05:14:23.213396	graphic	illustrations
1030	Pattern	2016-07-22 14:58:20.625897	2016-09-06 05:14:23.224989	graphic	pattern
1031	Mockups	2016-07-22 14:58:20.686426	2016-09-06 05:14:23.235436	graphic	mockups
1032	Texture	2016-07-22 14:58:20.747513	2016-09-06 05:14:23.246688	graphic	texture
1033	Web Elements	2016-07-22 14:58:20.809654	2016-09-06 05:14:23.258984	graphic	web-elements
1034	Stationery	2016-07-22 14:58:20.875792	2016-09-06 05:14:23.26876	graphic	stationery
1035	Advertising	2016-07-22 14:58:20.936872	2016-09-06 05:14:23.279629	graphic	advertising
1036	Cloting	2016-07-22 14:58:20.997599	2016-09-06 05:14:23.291669	graphic	cloting
1037	Merchandise	2016-07-22 14:58:21.059256	2016-09-06 05:14:23.30302	graphic	merchandise
1040	 Animals	2016-07-25 01:25:08.004876	2016-09-06 05:14:23.336092	tigad	animals
1041	 Technology	2016-07-25 01:25:08.019017	2016-09-06 05:14:23.346444	tigad	technology
1042	 Vehicles	2016-07-25 01:25:08.024493	2016-09-06 05:14:23.357946	tigad	vehicles
1043	 Jewelry	2016-07-25 01:25:08.031017	2016-09-06 05:14:23.369871	tigad	jewelry
1044	 Architechture	2016-07-25 01:25:08.038959	2016-09-06 05:14:23.380299	tigad	architechture
1045	 Characters	2016-07-25 01:25:08.044755	2016-09-06 05:14:23.391317	tigad	characters
1046	 Furniture	2016-07-25 01:25:08.049953	2016-09-06 05:14:23.403497	tigad	furniture
1048	 Material	2016-07-25 01:25:08.060911	2016-09-06 05:14:23.419815	tigad	material
1050	Landscapes	2016-07-25 03:29:10.33469	2016-09-06 05:14:23.493218	tigad	landscapes
1051	Plugin	2016-07-26 03:07:31.258371	2016-09-06 05:14:23.514335	tigad	plugin
1047	 Texture	2016-07-25 01:25:08.055081	2016-07-25 01:25:08.055081	tigad	texture-foo
1052	Video Footage	2016-07-28 07:46:36.336343	2016-09-06 05:14:23.524716	video	video-footage
1092	Business	2016-08-14 06:24:45.400183	2016-08-14 06:24:45.400183	\N	\N
1054	After Effects	2016-07-28 07:48:01.44285	2016-09-06 05:14:23.547238	video	after-effects
1055	Apple Motion	2016-07-28 07:48:35.531259	2016-09-06 05:14:23.558513	video	apple-motion
1112	Landscapes	2016-08-14 06:24:45.530839	2016-08-14 06:24:45.530839	\N	\N
1114	Lifestyle	2016-08-14 06:24:45.545777	2016-08-14 06:24:45.545777	\N	\N
1126	Sports	2016-08-14 06:24:45.626108	2016-08-14 06:24:45.626108	\N	\N
1001	ghost	2016-05-31 14:44:53.593383	2016-09-06 05:14:22.895364	theme	ghost
1021	Wordpress	2016-07-18 11:59:51.765715	2016-07-18 11:59:51.765715	code	wordpress-plugin
1073	Business	2016-08-07 04:20:12.617736	2016-09-06 05:14:23.780896	course	business
1074	IT & Software	2016-08-07 04:20:42.266041	2016-09-06 05:14:23.791935	course	it-software
1075	Office	2016-08-07 04:21:06.647855	2016-09-06 05:14:23.803161	course	office
1078	Marketing	2016-08-07 04:21:57.432979	2016-09-06 05:14:23.830244	course	marketing
1079	Lifestyle	2016-08-07 04:22:16.735589	2016-09-06 05:14:23.847737	course	lifestyle
1080	Photography	2016-08-07 04:22:28.840014	2016-09-06 05:14:23.858229	course	photography
1081	Health	2016-08-07 04:22:45.519689	2016-09-06 05:14:23.86932	course	health
1082	Music	2016-08-07 04:22:53.655796	2016-09-06 05:14:23.880671	course	music
1084	Language	2016-08-07 04:23:54.689255	2016-09-06 05:14:23.902738	course	language
1085	Animals / Wildlife	2016-08-14 06:24:45.31406	2016-09-06 05:14:23.914524	\N	animals-wildlife
1087	Arts	2016-08-14 06:24:45.364344	2016-09-06 05:14:23.936096	\N	arts
1088	Background	2016-08-14 06:24:45.375612	2016-09-06 05:14:23.947117	\N	background
1089	Beach	2016-08-14 06:24:45.382038	2016-09-06 05:14:23.958766	\N	beach
1091	Building and Architecture	2016-08-14 06:24:45.394828	2016-09-06 05:14:23.981107	\N	building-and-architecture
1093	Cars	2016-08-14 06:24:45.405496	2016-09-06 05:14:23.996902	\N	cars
1094	Community	2016-08-14 06:24:45.412673	2016-09-06 05:14:24.014278	\N	community
1095	Couple	2016-08-14 06:24:45.418768	2016-09-06 05:14:24.025163	\N	couple
1097	Education	2016-08-14 06:24:45.430763	2016-09-06 05:14:24.047217	\N	education
1098	Environment	2016-08-14 06:24:45.442188	2016-09-06 05:14:24.059053	\N	environment
1099	Expansive	2016-08-14 06:24:45.454773	2016-09-06 05:14:24.069648	\N	expansive
1101	Femininity	2016-08-14 06:24:45.468523	2016-09-06 05:14:24.093864	\N	femininity
1102	Focus	2016-08-14 06:24:45.473499	2016-09-06 05:14:24.114411	\N	focus
1103	Food	2016-08-14 06:24:45.480326	2016-09-06 05:14:24.125042	\N	food
1105	Hobbies and Leisure	2016-08-14 06:24:45.491594	2016-09-06 05:14:24.147362	\N	hobbies-and-leisure
1106	Holidays	2016-08-14 06:24:45.49684	2016-09-06 05:14:24.158969	\N	holidays
1107	Independence	2016-08-14 06:24:45.502169	2016-09-06 05:14:24.170226	\N	independence
1108	Industry	2016-08-14 06:24:45.507739	2016-09-06 05:14:24.180614	\N	industry
1110	Intimacy	2016-08-14 06:24:45.519069	2016-09-06 05:14:24.203626	\N	intimacy
1111	Kids	2016-08-14 06:24:45.52501	2016-09-06 05:14:24.214235	\N	kids
1113	Liberation	2016-08-14 06:24:45.538051	2016-09-06 05:14:24.229946	\N	liberation
1116	Medical	2016-08-14 06:24:45.558126	2016-09-06 05:14:24.269829	\N	medical
1117	People	2016-08-14 06:24:45.563615	2016-09-06 05:14:24.280895	\N	people
1118	Plants and Flowers	2016-08-14 06:24:45.569426	2016-09-06 05:14:24.291596	\N	plants-and-flowers
1120	Culture and Religion	2016-08-14 06:24:45.582579	2016-09-06 05:14:24.336685	\N	culture-and-religion
1121	Selfie	2016-08-14 06:24:45.591082	2016-09-06 05:14:24.348449	\N	selfie
1122	Science	2016-08-14 06:24:45.599328	2016-09-06 05:14:24.370818	\N	science
1123	Sports	2016-08-14 06:24:45.608712	2016-09-06 05:14:24.381052	\N	sports
1125	Social Issues	2016-08-14 06:24:45.621713	2016-09-06 05:14:24.403208	\N	social-issues
1127	Techonology	2016-08-14 06:24:45.632453	2016-09-06 05:14:24.419309	\N	techonology
1129	Vintage	2016-08-14 06:24:45.643519	2016-09-06 05:14:24.447419	\N	vintage
1130	Woman	2016-08-14 06:24:45.649019	2016-09-06 05:14:24.458773	\N	woman
1131	Work	2016-08-14 06:24:45.66228	2016-09-06 05:14:24.470474	\N	work
1132	Transport	2016-08-14 06:24:45.671462	2016-09-06 05:14:24.480781	\N	transport
1070	bitmap	2016-08-06 05:04:45.536912	2016-09-06 05:14:23.746877	font	bitmap
1071	gothic	2016-08-06 05:04:56.607522	2016-09-06 05:14:23.758143	font	gothic
1062	blackletter	2016-08-06 05:02:27.134939	2016-09-06 05:14:23.658797	font	blackletter
1067	webfont	2016-08-06 05:04:05.627616	2016-09-06 05:14:23.713564	font	webfont
1038	Packaging	2016-07-22 14:58:21.126071	2016-09-06 05:14:23.313774	graphic	packaging
1039	Magazine	2016-07-22 14:58:21.1857	2016-09-06 05:14:23.324782	graphic	magazine
1049	Tree	2016-07-25 03:26:15.662482	2016-09-06 05:14:23.435574	tigad	tree
1053	Effects	2016-07-28 07:47:02.486083	2016-09-06 05:14:23.535864	video	effects
1056	Motion Graphics	2016-07-28 07:49:08.979827	2016-09-06 05:14:23.569199	video	motion-graphics
1000	drupal	2016-05-31 14:44:53.580641	2016-09-06 05:14:22.835964	theme	drupal
1002	html/css	2016-05-31 14:44:53.598204	2016-09-06 05:14:22.913761	theme	html-css
1003	joomla	2016-05-31 14:44:53.601675	2016-09-06 05:14:22.924776	theme	joomla
1004	magento	2016-05-31 14:44:53.607768	2016-09-06 05:14:22.936082	theme	magento
1005	opencart	2016-05-31 14:44:53.611933	2016-09-06 05:14:22.9469	theme	opencart
1006	tumblr	2016-05-31 14:44:53.615639	2016-09-06 05:14:22.957974	theme	tumblr
1007	wordpress	2016-05-31 14:44:53.61969	2016-09-06 05:14:22.969608	theme	wordpress
1008	prestashop	2016-05-31 14:44:53.626101	2016-09-06 05:14:22.979939	theme	prestashop
1009	ionic	2016-05-31 14:44:53.630303	2016-09-06 05:14:22.990928	theme	ionic
1010	design	2016-05-31 14:44:53.634468	2016-09-06 05:14:23.00328	theme	design
1011	shopify	2016-05-31 14:44:53.639004	2016-09-06 05:14:23.013518	theme	shopify
1086	Abstract	2016-08-14 06:24:45.358818	2016-09-06 05:14:23.925041	\N	abstract
1090	Beauty / Fashion	2016-08-14 06:24:45.388247	2016-09-06 05:14:23.969422	\N	beauty-fashion
1096	Drinks	2016-08-14 06:24:45.424352	2016-09-06 05:14:24.036125	\N	drinks
1100	States of Mind	2016-08-14 06:24:45.462967	2016-09-06 05:14:24.08073	\N	states-of-mind
1104	Graphic Resources	2016-08-14 06:24:45.486746	2016-09-06 05:14:24.135971	\N	graphic-resources
1109	Innovation	2016-08-14 06:24:45.513728	2016-09-06 05:14:24.191471	\N	innovation
1115	Nature	2016-08-14 06:24:45.552258	2016-09-06 05:14:24.252901	\N	nature
1119	Perspective	2016-08-14 06:24:45.57623	2016-09-06 05:14:24.326214	\N	perspective
1124	Success	2016-08-14 06:24:45.616318	2016-09-06 05:14:24.392572	\N	success
1128	Textures	2016-08-14 06:24:45.63763	2016-09-06 05:14:24.436976	\N	textures
1133	Travel	2016-08-14 06:24:45.678827	2016-09-06 05:14:24.491528	\N	travel
1012	PHP Script	2016-07-18 11:56:51.795687	2016-09-06 05:14:23.024365	code	php-script
1013	Javascript	2016-07-18 11:57:17.410883	2016-09-06 05:14:23.036668	code	javascript
1014	Python	2016-07-18 11:57:42.879753	2016-09-06 05:14:23.04624	code	python
1015	Java	2016-07-18 11:57:53.681787	2016-09-06 05:14:23.057548	code	java
1016	Ruby	2016-07-18 11:58:10.916395	2016-09-06 05:14:23.069495	code	ruby
1017	C & C++	2016-07-18 11:58:24.160806	2016-09-06 05:14:23.080852	code	c-c
1018	C#	2016-07-18 11:58:38.593562	2016-09-06 05:14:23.091592	code	c
1019	VB.NET	2016-07-18 11:58:58.55712	2016-09-06 05:14:23.102517	code	vb-net
1020	Swift	2016-07-18 11:59:11.936905	2016-09-06 05:14:23.11435	code	swift
1022	CSS	2016-07-18 12:00:06.182692	2016-09-06 05:14:23.130671	code	css
1023	HTML5	2016-07-18 12:00:15.727071	2016-09-06 05:14:23.147624	code	html5
1024	Mobile	2016-07-18 12:00:31.148449	2016-09-06 05:14:23.15788	code	mobile
1025	E-Commerce	2016-07-18 12:00:46.008849	2016-09-06 05:14:23.169253	code	e-commerce
1026	Plugins	2016-07-18 12:01:10.753252	2016-09-06 05:14:23.180329	code	plugins
1072	Development	2016-08-07 04:19:58.161463	2016-09-06 05:14:23.769934	course	development
1076	Personal Development	2016-08-07 04:21:30.328881	2016-09-06 05:14:23.813857	course	personal-development
1083	Academic	2016-08-07 04:23:08.650621	2016-09-06 05:14:23.891436	course	academic
1134	Programmer	2016-10-03 11:20:44.826806	2016-10-03 11:20:44.826806	vacancies	programmer
1135	Designer	2016-10-03 11:21:12.770544	2016-10-03 11:21:12.770544	vacancies	designer
1136	Animator	2016-10-03 11:21:36.62657	2016-10-03 11:21:36.62657	vacancies	animator
1137	Network Security	2016-10-03 11:22:07.152531	2016-10-03 11:22:07.152531	vacancies	network-security
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('categories_id_seq', 24, true);


--
-- Data for Name: categorydetails; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY categorydetails (id, category_id, subcategory_id, created_at, updated_at) FROM stdin;
508	1000	1101	2016-06-02 20:03:41.316093	2016-06-02 20:03:41.316093
509	1000	1102	2016-06-02 20:03:41.42249	2016-06-02 20:03:41.42249
510	1000	1103	2016-06-02 20:03:41.429803	2016-06-02 20:03:41.429803
511	1000	1104	2016-06-02 20:03:41.438173	2016-06-02 20:03:41.438173
512	1000	1105	2016-06-02 20:03:41.444398	2016-06-02 20:03:41.444398
513	1000	1106	2016-06-02 20:03:41.449671	2016-06-02 20:03:41.449671
514	1000	1107	2016-06-02 20:03:41.455434	2016-06-02 20:03:41.455434
515	1000	1108	2016-06-02 20:03:41.460592	2016-06-02 20:03:41.460592
516	1000	1109	2016-06-02 20:03:41.465378	2016-06-02 20:03:41.465378
517	1000	1110	2016-06-02 20:03:41.470609	2016-06-02 20:03:41.470609
518	1000	1111	2016-06-02 20:03:41.475962	2016-06-02 20:03:41.475962
519	1000	1112	2016-06-02 20:03:41.481645	2016-06-02 20:03:41.481645
520	1000	1113	2016-06-02 20:03:41.487479	2016-06-02 20:03:41.487479
521	1000	1114	2016-06-02 20:03:41.492126	2016-06-02 20:03:41.492126
522	1000	1115	2016-06-02 20:03:41.497942	2016-06-02 20:03:41.497942
523	1000	1116	2016-06-02 20:03:41.504088	2016-06-02 20:03:41.504088
524	1000	1117	2016-06-02 20:03:41.509169	2016-06-02 20:03:41.509169
525	1000	1118	2016-06-02 20:03:41.513864	2016-06-02 20:03:41.513864
526	1000	1119	2016-06-02 20:03:41.51935	2016-06-02 20:03:41.51935
527	1000	1120	2016-06-02 20:03:41.52534	2016-06-02 20:03:41.52534
528	1000	1121	2016-06-02 20:03:41.53022	2016-06-02 20:03:41.53022
529	1000	1122	2016-06-02 20:03:41.535122	2016-06-02 20:03:41.535122
530	1000	1123	2016-06-02 20:03:41.539673	2016-06-02 20:03:41.539673
531	1000	1124	2016-06-02 20:03:41.544714	2016-06-02 20:03:41.544714
532	1000	1125	2016-06-02 20:03:41.549196	2016-06-02 20:03:41.549196
533	1000	1126	2016-06-02 20:03:41.553648	2016-06-02 20:03:41.553648
534	1000	1127	2016-06-02 20:03:41.568564	2016-06-02 20:03:41.568564
535	1000	1128	2016-06-02 20:03:41.578564	2016-06-02 20:03:41.578564
536	1000	1129	2016-06-02 20:03:41.583103	2016-06-02 20:03:41.583103
537	1001	1102	2016-06-02 20:03:41.588436	2016-06-02 20:03:41.588436
538	1001	1104	2016-06-02 20:03:41.593284	2016-06-02 20:03:41.593284
539	1001	1105	2016-06-02 20:03:41.597833	2016-06-02 20:03:41.597833
540	1001	1106	2016-06-02 20:03:41.602631	2016-06-02 20:03:41.602631
541	1001	1107	2016-06-02 20:03:41.607206	2016-06-02 20:03:41.607206
542	1001	1108	2016-06-02 20:03:41.612335	2016-06-02 20:03:41.612335
543	1001	1109	2016-06-02 20:03:41.616297	2016-06-02 20:03:41.616297
544	1001	1110	2016-06-02 20:03:41.621413	2016-06-02 20:03:41.621413
545	1001	1111	2016-06-02 20:03:41.626107	2016-06-02 20:03:41.626107
546	1001	1112	2016-06-02 20:03:41.630207	2016-06-02 20:03:41.630207
547	1001	1113	2016-06-02 20:03:41.63464	2016-06-02 20:03:41.63464
548	1001	1115	2016-06-02 20:03:41.638805	2016-06-02 20:03:41.638805
549	1001	1116	2016-06-02 20:03:41.643996	2016-06-02 20:03:41.643996
550	1001	1117	2016-06-02 20:03:41.647915	2016-06-02 20:03:41.647915
551	1001	1118	2016-06-02 20:03:41.652664	2016-06-02 20:03:41.652664
552	1001	1120	2016-06-02 20:03:41.657408	2016-06-02 20:03:41.657408
553	1001	1121	2016-06-02 20:03:41.66193	2016-06-02 20:03:41.66193
554	1001	1122	2016-06-02 20:03:41.667206	2016-06-02 20:03:41.667206
555	1001	1123	2016-06-02 20:03:41.673067	2016-06-02 20:03:41.673067
556	1001	1124	2016-06-02 20:03:41.678014	2016-06-02 20:03:41.678014
557	1001	1125	2016-06-02 20:03:41.683052	2016-06-02 20:03:41.683052
558	1001	1127	2016-06-02 20:03:41.689039	2016-06-02 20:03:41.689039
559	1001	1128	2016-06-02 20:03:41.693634	2016-06-02 20:03:41.693634
560	1001	1129	2016-06-02 20:03:41.698338	2016-06-02 20:03:41.698338
561	1002	1101	2016-06-02 20:03:41.703138	2016-06-02 20:03:41.703138
562	1002	1102	2016-06-02 20:03:41.70847	2016-06-02 20:03:41.70847
563	1002	1105	2016-06-02 20:03:41.713104	2016-06-02 20:03:41.713104
564	1002	1106	2016-06-02 20:03:41.717592	2016-06-02 20:03:41.717592
565	1002	1107	2016-06-02 20:03:41.722416	2016-06-02 20:03:41.722416
566	1002	1108	2016-06-02 20:03:41.726903	2016-06-02 20:03:41.726903
567	1002	1109	2016-06-02 20:03:41.732034	2016-06-02 20:03:41.732034
568	1002	1110	2016-06-02 20:03:41.736099	2016-06-02 20:03:41.736099
569	1002	1113	2016-06-02 20:03:41.741795	2016-06-02 20:03:41.741795
570	1002	1114	2016-06-02 20:03:41.746179	2016-06-02 20:03:41.746179
571	1002	1115	2016-06-02 20:03:41.750499	2016-06-02 20:03:41.750499
572	1002	1116	2016-06-02 20:03:41.75508	2016-06-02 20:03:41.75508
573	1002	1117	2016-06-02 20:03:41.760341	2016-06-02 20:03:41.760341
574	1002	1118	2016-06-02 20:03:41.764342	2016-06-02 20:03:41.764342
575	1002	1119	2016-06-02 20:03:41.769319	2016-06-02 20:03:41.769319
576	1002	1120	2016-06-02 20:03:41.774668	2016-06-02 20:03:41.774668
577	1002	1121	2016-06-02 20:03:41.781293	2016-06-02 20:03:41.781293
578	1002	1122	2016-06-02 20:03:41.794443	2016-06-02 20:03:41.794443
579	1002	1123	2016-06-02 20:03:41.806105	2016-06-02 20:03:41.806105
580	1002	1124	2016-06-02 20:03:41.813353	2016-06-02 20:03:41.813353
581	1002	1125	2016-06-02 20:03:41.82287	2016-06-02 20:03:41.82287
582	1002	1126	2016-06-02 20:03:41.827271	2016-06-02 20:03:41.827271
583	1002	1127	2016-06-02 20:03:41.83214	2016-06-02 20:03:41.83214
584	1002	1128	2016-06-02 20:03:41.836406	2016-06-02 20:03:41.836406
585	1002	1129	2016-06-02 20:03:41.841196	2016-06-02 20:03:41.841196
586	1003	1101	2016-06-02 20:03:41.845659	2016-06-02 20:03:41.845659
587	1003	1102	2016-06-02 20:03:41.855407	2016-06-02 20:03:41.855407
588	1003	1103	2016-06-02 20:03:41.862273	2016-06-02 20:03:41.862273
589	1003	1104	2016-06-02 20:03:41.872086	2016-06-02 20:03:41.872086
590	1003	1105	2016-06-02 20:03:41.877673	2016-06-02 20:03:41.877673
591	1003	1106	2016-06-02 20:03:41.882731	2016-06-02 20:03:41.882731
592	1003	1107	2016-06-02 20:03:41.887002	2016-06-02 20:03:41.887002
593	1003	1109	2016-06-02 20:03:41.891747	2016-06-02 20:03:41.891747
594	1003	1110	2016-06-02 20:03:41.89738	2016-06-02 20:03:41.89738
595	1003	1111	2016-06-02 20:03:41.901561	2016-06-02 20:03:41.901561
596	1003	1112	2016-06-02 20:03:41.905722	2016-06-02 20:03:41.905722
597	1003	1113	2016-06-02 20:03:41.910634	2016-06-02 20:03:41.910634
598	1003	1114	2016-06-02 20:03:41.915644	2016-06-02 20:03:41.915644
599	1003	1115	2016-06-02 20:03:41.920745	2016-06-02 20:03:41.920745
600	1003	1116	2016-06-02 20:03:41.925338	2016-06-02 20:03:41.925338
601	1003	1117	2016-06-02 20:03:41.929675	2016-06-02 20:03:41.929675
602	1003	1119	2016-06-02 20:03:41.935204	2016-06-02 20:03:41.935204
603	1003	1120	2016-06-02 20:03:41.939506	2016-06-02 20:03:41.939506
604	1003	1121	2016-06-02 20:03:41.94508	2016-06-02 20:03:41.94508
605	1003	1122	2016-06-02 20:03:41.949103	2016-06-02 20:03:41.949103
606	1003	1123	2016-06-02 20:03:41.95387	2016-06-02 20:03:41.95387
607	1003	1124	2016-06-02 20:03:41.958853	2016-06-02 20:03:41.958853
608	1003	1125	2016-06-02 20:03:41.963787	2016-06-02 20:03:41.963787
609	1003	1126	2016-06-02 20:03:41.968762	2016-06-02 20:03:41.968762
610	1003	1127	2016-06-02 20:03:41.973255	2016-06-02 20:03:41.973255
611	1003	1128	2016-06-02 20:03:41.977043	2016-06-02 20:03:41.977043
612	1003	1129	2016-06-02 20:03:41.981316	2016-06-02 20:03:41.981316
613	1004	1101	2016-06-02 20:03:41.987091	2016-06-02 20:03:41.987091
614	1004	1102	2016-06-02 20:03:41.991384	2016-06-02 20:03:41.991384
615	1004	1103	2016-06-02 20:03:41.996305	2016-06-02 20:03:41.996305
616	1004	1104	2016-06-02 20:03:42.00086	2016-06-02 20:03:42.00086
617	1004	1105	2016-06-02 20:03:42.016753	2016-06-02 20:03:42.016753
618	1004	1106	2016-06-02 20:03:42.024333	2016-06-02 20:03:42.024333
619	1004	1107	2016-06-02 20:03:42.029692	2016-06-02 20:03:42.029692
620	1004	1108	2016-06-02 20:03:42.035052	2016-06-02 20:03:42.035052
621	1004	1109	2016-06-02 20:03:42.039933	2016-06-02 20:03:42.039933
622	1004	1110	2016-06-02 20:03:42.046257	2016-06-02 20:03:42.046257
623	1004	1111	2016-06-02 20:03:42.051713	2016-06-02 20:03:42.051713
624	1004	1112	2016-06-02 20:03:42.057696	2016-06-02 20:03:42.057696
625	1004	1113	2016-06-02 20:03:42.063664	2016-06-02 20:03:42.063664
626	1004	1114	2016-06-02 20:03:42.070028	2016-06-02 20:03:42.070028
627	1004	1115	2016-06-02 20:03:42.076212	2016-06-02 20:03:42.076212
628	1004	1116	2016-06-02 20:03:42.082669	2016-06-02 20:03:42.082669
629	1004	1117	2016-06-02 20:03:42.0896	2016-06-02 20:03:42.0896
630	1004	1118	2016-06-02 20:03:42.098563	2016-06-02 20:03:42.098563
631	1004	1119	2016-06-02 20:03:42.108578	2016-06-02 20:03:42.108578
632	1004	1120	2016-06-02 20:03:42.116575	2016-06-02 20:03:42.116575
633	1004	1121	2016-06-02 20:03:42.122896	2016-06-02 20:03:42.122896
634	1004	1122	2016-06-02 20:03:42.128418	2016-06-02 20:03:42.128418
635	1004	1123	2016-06-02 20:03:42.133965	2016-06-02 20:03:42.133965
636	1004	1124	2016-06-02 20:03:42.140484	2016-06-02 20:03:42.140484
637	1004	1125	2016-06-02 20:03:42.145998	2016-06-02 20:03:42.145998
638	1004	1126	2016-06-02 20:03:42.151974	2016-06-02 20:03:42.151974
639	1004	1127	2016-06-02 20:03:42.157364	2016-06-02 20:03:42.157364
640	1004	1128	2016-06-02 20:03:42.164107	2016-06-02 20:03:42.164107
641	1004	1129	2016-06-02 20:03:42.170483	2016-06-02 20:03:42.170483
642	1005	1102	2016-06-02 20:03:42.177833	2016-06-02 20:03:42.177833
643	1005	1106	2016-06-02 20:03:42.18382	2016-06-02 20:03:42.18382
644	1005	1107	2016-06-02 20:03:42.189928	2016-06-02 20:03:42.189928
645	1005	1109	2016-06-02 20:03:42.197338	2016-06-02 20:03:42.197338
646	1005	1110	2016-06-02 20:03:42.204272	2016-06-02 20:03:42.204272
647	1005	1112	2016-06-02 20:03:42.211515	2016-06-02 20:03:42.211515
648	1005	1114	2016-06-02 20:03:42.219018	2016-06-02 20:03:42.219018
649	1005	1115	2016-06-02 20:03:42.235504	2016-06-02 20:03:42.235504
650	1005	1117	2016-06-02 20:03:42.240288	2016-06-02 20:03:42.240288
651	1005	1118	2016-06-02 20:03:42.244769	2016-06-02 20:03:42.244769
652	1005	1119	2016-06-02 20:03:42.249779	2016-06-02 20:03:42.249779
653	1005	1120	2016-06-02 20:03:42.254357	2016-06-02 20:03:42.254357
654	1005	1121	2016-06-02 20:03:42.258477	2016-06-02 20:03:42.258477
655	1005	1122	2016-06-02 20:03:42.263121	2016-06-02 20:03:42.263121
656	1005	1123	2016-06-02 20:03:42.267144	2016-06-02 20:03:42.267144
657	1005	1126	2016-06-02 20:03:42.271962	2016-06-02 20:03:42.271962
658	1005	1129	2016-06-02 20:03:42.278703	2016-06-02 20:03:42.278703
659	1006	1101	2016-06-02 20:03:42.28354	2016-06-02 20:03:42.28354
660	1006	1102	2016-06-02 20:03:42.288025	2016-06-02 20:03:42.288025
661	1006	1103	2016-06-02 20:03:42.293218	2016-06-02 20:03:42.293218
662	1006	1104	2016-06-02 20:03:42.297725	2016-06-02 20:03:42.297725
663	1006	1105	2016-06-02 20:03:42.302564	2016-06-02 20:03:42.302564
664	1006	1106	2016-06-02 20:03:42.307265	2016-06-02 20:03:42.307265
665	1006	1107	2016-06-02 20:03:42.312469	2016-06-02 20:03:42.312469
666	1006	1108	2016-06-02 20:03:42.317301	2016-06-02 20:03:42.317301
667	1006	1109	2016-06-02 20:03:42.321804	2016-06-02 20:03:42.321804
668	1006	1110	2016-06-02 20:03:42.334466	2016-06-02 20:03:42.334466
669	1006	1111	2016-06-02 20:03:42.341679	2016-06-02 20:03:42.341679
670	1006	1112	2016-06-02 20:03:42.346805	2016-06-02 20:03:42.346805
671	1006	1113	2016-06-02 20:03:42.351836	2016-06-02 20:03:42.351836
672	1006	1114	2016-06-02 20:03:42.356091	2016-06-02 20:03:42.356091
673	1006	1115	2016-06-02 20:03:42.364435	2016-06-02 20:03:42.364435
674	1006	1116	2016-06-02 20:03:42.371709	2016-06-02 20:03:42.371709
675	1006	1117	2016-06-02 20:03:42.379368	2016-06-02 20:03:42.379368
676	1006	1118	2016-06-02 20:03:42.385621	2016-06-02 20:03:42.385621
677	1006	1119	2016-06-02 20:03:42.391275	2016-06-02 20:03:42.391275
678	1006	1120	2016-06-02 20:03:42.398354	2016-06-02 20:03:42.398354
679	1006	1121	2016-06-02 20:03:42.403417	2016-06-02 20:03:42.403417
680	1006	1122	2016-06-02 20:03:42.410868	2016-06-02 20:03:42.410868
681	1006	1123	2016-06-02 20:03:42.415863	2016-06-02 20:03:42.415863
682	1006	1124	2016-06-02 20:03:42.419855	2016-06-02 20:03:42.419855
683	1006	1125	2016-06-02 20:03:42.42528	2016-06-02 20:03:42.42528
684	1006	1126	2016-06-02 20:03:42.429482	2016-06-02 20:03:42.429482
685	1006	1127	2016-06-02 20:03:42.433822	2016-06-02 20:03:42.433822
686	1006	1128	2016-06-02 20:03:42.439863	2016-06-02 20:03:42.439863
687	1006	1129	2016-06-02 20:03:42.451433	2016-06-02 20:03:42.451433
688	1007	1101	2016-06-02 20:03:42.460786	2016-06-02 20:03:42.460786
689	1007	1102	2016-06-02 20:03:42.468687	2016-06-02 20:03:42.468687
690	1007	1103	2016-06-02 20:03:42.473021	2016-06-02 20:03:42.473021
691	1007	1104	2016-06-02 20:03:42.478105	2016-06-02 20:03:42.478105
692	1007	1105	2016-06-02 20:03:42.482912	2016-06-02 20:03:42.482912
693	1007	1106	2016-06-02 20:03:42.489131	2016-06-02 20:03:42.489131
694	1007	1107	2016-06-02 20:03:42.493857	2016-06-02 20:03:42.493857
695	1007	1108	2016-06-02 20:03:42.498524	2016-06-02 20:03:42.498524
696	1007	1109	2016-06-02 20:03:42.503055	2016-06-02 20:03:42.503055
697	1007	1110	2016-06-02 20:03:42.50792	2016-06-02 20:03:42.50792
698	1007	1111	2016-06-02 20:03:42.512674	2016-06-02 20:03:42.512674
699	1007	1112	2016-06-02 20:03:42.517057	2016-06-02 20:03:42.517057
700	1007	1113	2016-06-02 20:03:42.521666	2016-06-02 20:03:42.521666
701	1007	1114	2016-06-02 20:03:42.526057	2016-06-02 20:03:42.526057
702	1007	1115	2016-06-02 20:03:42.530593	2016-06-02 20:03:42.530593
703	1007	1116	2016-06-02 20:03:42.535631	2016-06-02 20:03:42.535631
704	1007	1117	2016-06-02 20:03:42.540514	2016-06-02 20:03:42.540514
705	1007	1118	2016-06-02 20:03:42.545665	2016-06-02 20:03:42.545665
706	1007	1119	2016-06-02 20:03:42.549977	2016-06-02 20:03:42.549977
707	1007	1120	2016-06-02 20:03:42.55408	2016-06-02 20:03:42.55408
708	1007	1121	2016-06-02 20:03:42.558092	2016-06-02 20:03:42.558092
709	1007	1122	2016-06-02 20:03:42.563126	2016-06-02 20:03:42.563126
710	1007	1123	2016-06-02 20:03:42.567947	2016-06-02 20:03:42.567947
711	1007	1124	2016-06-02 20:03:42.571966	2016-06-02 20:03:42.571966
712	1007	1125	2016-06-02 20:03:42.577096	2016-06-02 20:03:42.577096
713	1007	1126	2016-06-02 20:03:42.581877	2016-06-02 20:03:42.581877
714	1007	1127	2016-06-02 20:03:42.586367	2016-06-02 20:03:42.586367
715	1007	1128	2016-06-02 20:03:42.590648	2016-06-02 20:03:42.590648
716	1007	1129	2016-06-02 20:03:42.594967	2016-06-02 20:03:42.594967
717	1008	1102	2016-06-02 20:03:42.600131	2016-06-02 20:03:42.600131
718	1008	1106	2016-06-02 20:03:42.604239	2016-06-02 20:03:42.604239
719	1008	1107	2016-06-02 20:03:42.608546	2016-06-02 20:03:42.608546
720	1008	1109	2016-06-02 20:03:42.614276	2016-06-02 20:03:42.614276
721	1008	1110	2016-06-02 20:03:42.619203	2016-06-02 20:03:42.619203
722	1008	1112	2016-06-02 20:03:42.623578	2016-06-02 20:03:42.623578
723	1008	1114	2016-06-02 20:03:42.627616	2016-06-02 20:03:42.627616
724	1008	1115	2016-06-02 20:03:42.633781	2016-06-02 20:03:42.633781
725	1008	1117	2016-06-02 20:03:42.639018	2016-06-02 20:03:42.639018
726	1008	1118	2016-06-02 20:03:42.643395	2016-06-02 20:03:42.643395
727	1008	1119	2016-06-02 20:03:42.648757	2016-06-02 20:03:42.648757
728	1008	1120	2016-06-02 20:03:42.653708	2016-06-02 20:03:42.653708
729	1008	1121	2016-06-02 20:03:42.658735	2016-06-02 20:03:42.658735
730	1008	1122	2016-06-02 20:03:42.663314	2016-06-02 20:03:42.663314
731	1008	1123	2016-06-02 20:03:42.672574	2016-06-02 20:03:42.672574
732	1008	1126	2016-06-02 20:03:42.682636	2016-06-02 20:03:42.682636
733	1008	1129	2016-06-02 20:03:42.692685	2016-06-02 20:03:42.692685
734	1009	1105	2016-06-02 20:03:42.699325	2016-06-02 20:03:42.699325
735	1009	1107	2016-06-02 20:03:42.70393	2016-06-02 20:03:42.70393
736	1009	1108	2016-06-02 20:03:42.709228	2016-06-02 20:03:42.709228
737	1009	1109	2016-06-02 20:03:42.71376	2016-06-02 20:03:42.71376
738	1009	1110	2016-06-02 20:03:42.71878	2016-06-02 20:03:42.71878
739	1009	1112	2016-06-02 20:03:42.724201	2016-06-02 20:03:42.724201
740	1009	1114	2016-06-02 20:03:42.729545	2016-06-02 20:03:42.729545
741	1009	1117	2016-06-02 20:03:42.734318	2016-06-02 20:03:42.734318
742	1009	1118	2016-06-02 20:03:42.740056	2016-06-02 20:03:42.740056
743	1009	1122	2016-06-02 20:03:42.745621	2016-06-02 20:03:42.745621
744	1009	1124	2016-06-02 20:03:42.750778	2016-06-02 20:03:42.750778
745	1009	1126	2016-06-02 20:03:42.755535	2016-06-02 20:03:42.755535
746	1009	1127	2016-06-02 20:03:42.76124	2016-06-02 20:03:42.76124
747	1009	1128	2016-06-02 20:03:42.765794	2016-06-02 20:03:42.765794
748	1010	1130	2016-06-02 20:03:42.770185	2016-06-02 20:03:42.770185
749	1010	1131	2016-06-02 20:03:42.775305	2016-06-02 20:03:42.775305
750	1010	1132	2016-06-02 20:03:42.779618	2016-06-02 20:03:42.779618
751	1011	1103	2016-06-02 20:03:42.785119	2016-06-02 20:03:42.785119
752	1011	1107	2016-06-02 20:03:42.789983	2016-06-02 20:03:42.789983
753	1011	1109	2016-06-02 20:03:42.794259	2016-06-02 20:03:42.794259
754	1011	1112	2016-06-02 20:03:42.799019	2016-06-02 20:03:42.799019
755	1011	1114	2016-06-02 20:03:42.803307	2016-06-02 20:03:42.803307
756	1011	1115	2016-06-02 20:03:42.808545	2016-06-02 20:03:42.808545
757	1011	1116	2016-06-02 20:03:42.813185	2016-06-02 20:03:42.813185
758	1011	1118	2016-06-02 20:03:42.818673	2016-06-02 20:03:42.818673
759	1011	1120	2016-06-02 20:03:42.823904	2016-06-02 20:03:42.823904
760	1011	1121	2016-06-02 20:03:42.828178	2016-06-02 20:03:42.828178
761	1011	1122	2016-06-02 20:03:42.833721	2016-06-02 20:03:42.833721
762	1011	1123	2016-06-02 20:03:42.838115	2016-06-02 20:03:42.838115
763	1011	1125	2016-06-02 20:03:42.843722	2016-06-02 20:03:42.843722
764	1011	1127	2016-06-02 20:03:42.848156	2016-06-02 20:03:42.848156
765	1011	1128	2016-06-02 20:03:42.852529	2016-06-02 20:03:42.852529
766	1011	1129	2016-06-02 20:03:42.857606	2016-06-02 20:03:42.857606
767	1012	1133	2016-07-18 12:58:24.294838	2016-07-18 12:58:24.294838
768	1012	1134	2016-07-18 12:58:24.39824	2016-07-18 12:58:24.39824
769	1012	1135	2016-07-18 12:58:24.462783	2016-07-18 12:58:24.462783
770	1012	1136	2016-07-18 12:58:24.54736	2016-07-18 12:58:24.54736
771	1012	1137	2016-07-18 12:58:24.629688	2016-07-18 12:58:24.629688
772	1012	1138	2016-07-18 12:58:24.711289	2016-07-18 12:58:24.711289
773	1012	1139	2016-07-18 12:58:24.798171	2016-07-18 12:58:24.798171
774	1012	1140	2016-07-18 12:58:24.869086	2016-07-18 12:58:24.869086
775	1012	1141	2016-07-18 12:58:24.92507	2016-07-18 12:58:24.92507
776	1012	1142	2016-07-18 12:58:26.619236	2016-07-18 12:58:26.619236
777	1013	1143	2016-07-18 13:02:58.427491	2016-07-18 13:02:58.427491
778	1013	1144	2016-07-18 13:02:58.488071	2016-07-18 13:02:58.488071
779	1013	1145	2016-07-18 13:02:58.540063	2016-07-18 13:02:58.540063
780	1013	1146	2016-07-18 13:02:58.612562	2016-07-18 13:02:58.612562
781	1013	1147	2016-07-18 13:02:58.691867	2016-07-18 13:02:58.691867
782	1013	1148	2016-07-18 13:02:58.771211	2016-07-18 13:02:58.771211
783	1013	1149	2016-07-18 13:02:58.85047	2016-07-18 13:02:58.85047
784	1013	1150	2016-07-18 13:02:58.924373	2016-07-18 13:02:58.924373
785	1013	1151	2016-07-18 13:02:59.004042	2016-07-18 13:02:59.004042
786	1013	1152	2016-07-18 13:03:01.380848	2016-07-18 13:03:01.380848
787	1013	1153	2016-07-18 13:06:58.941907	2016-07-18 13:06:58.941907
788	1013	1154	2016-07-18 13:06:59.016511	2016-07-18 13:06:59.016511
789	1014	1155	2016-07-18 13:06:59.082653	2016-07-18 13:06:59.082653
790	1014	1156	2016-07-18 13:06:59.137968	2016-07-18 13:06:59.137968
791	1014	1157	2016-07-18 13:06:59.195533	2016-07-18 13:06:59.195533
792	1014	1158	2016-07-18 13:06:59.272071	2016-07-18 13:06:59.272071
793	1014	1159	2016-07-18 13:06:59.352091	2016-07-18 13:06:59.352091
794	1015	1160	2016-07-18 13:06:59.427022	2016-07-18 13:06:59.427022
795	1015	1161	2016-07-18 13:06:59.507242	2016-07-18 13:06:59.507242
796	1015	1162	2016-07-18 13:07:00.675616	2016-07-18 13:07:00.675616
797	1015	1163	2016-07-18 13:09:43.284933	2016-07-18 13:09:43.284933
798	1015	1164	2016-07-18 13:09:43.352636	2016-07-18 13:09:43.352636
799	1015	1165	2016-07-18 13:09:43.415676	2016-07-18 13:09:43.415676
800	1015	1166	2016-07-18 13:09:43.495603	2016-07-18 13:09:43.495603
801	1015	1167	2016-07-18 13:09:43.574896	2016-07-18 13:09:43.574896
802	1015	1168	2016-07-18 13:09:43.65401	2016-07-18 13:09:43.65401
803	1016	1169	2016-07-18 13:09:43.736618	2016-07-18 13:09:43.736618
804	1016	1170	2016-07-18 13:09:43.808493	2016-07-18 13:09:43.808493
805	1016	1171	2016-07-18 13:09:43.887667	2016-07-18 13:09:43.887667
806	1017	1172	2016-07-18 13:09:45.036336	2016-07-18 13:09:45.036336
807	1017	1173	2016-07-18 13:11:58.805058	2016-07-18 13:11:58.805058
808	1017	1174	2016-07-18 13:11:58.868942	2016-07-18 13:11:58.868942
809	1017	1175	2016-07-18 13:11:58.931946	2016-07-18 13:11:58.931946
810	1017	1176	2016-07-18 13:11:59.005587	2016-07-18 13:11:59.005587
811	1017	1177	2016-07-18 13:11:59.083894	2016-07-18 13:11:59.083894
812	1017	1178	2016-07-18 13:11:59.163776	2016-07-18 13:11:59.163776
813	1017	1179	2016-07-18 13:11:59.243757	2016-07-18 13:11:59.243757
814	1018	1180	2016-07-18 13:11:59.318119	2016-07-18 13:11:59.318119
815	1018	1181	2016-07-18 13:11:59.397037	2016-07-18 13:11:59.397037
816	1018	1182	2016-07-18 13:12:00.325703	2016-07-18 13:12:00.325703
817	1020	1183	2016-07-18 13:14:45.311859	2016-07-18 13:14:45.311859
818	1020	1184	2016-07-18 13:14:46.557861	2016-07-18 13:14:46.557861
819	1021	1185	2016-07-18 13:22:52.732294	2016-07-18 13:22:52.732294
820	1021	1186	2016-07-18 13:22:52.793337	2016-07-18 13:22:52.793337
821	1021	1187	2016-07-18 13:22:52.860366	2016-07-18 13:22:52.860366
822	1021	1188	2016-07-18 13:22:52.977622	2016-07-18 13:22:52.977622
823	1021	1189	2016-07-18 13:22:53.033394	2016-07-18 13:22:53.033394
824	1021	1190	2016-07-18 13:22:53.097967	2016-07-18 13:22:53.097967
825	1021	1191	2016-07-18 13:22:53.17779	2016-07-18 13:22:53.17779
826	1021	1192	2016-07-18 13:22:53.254694	2016-07-18 13:22:53.254694
827	1021	1193	2016-07-18 13:22:53.333595	2016-07-18 13:22:53.333595
828	1021	1194	2016-07-18 13:22:54.514708	2016-07-18 13:22:54.514708
829	1021	1195	2016-07-18 13:23:02.709712	2016-07-18 13:23:02.709712
830	1021	1196	2016-07-18 13:23:02.768799	2016-07-18 13:23:02.768799
831	1021	1197	2016-07-18 13:23:02.827546	2016-07-18 13:23:02.827546
832	1021	1198	2016-07-18 13:23:02.898584	2016-07-18 13:23:02.898584
833	1021	1199	2016-07-18 13:23:02.97691	2016-07-18 13:23:02.97691
834	1021	1200	2016-07-18 13:23:03.056544	2016-07-18 13:23:03.056544
835	1021	1201	2016-07-18 13:23:03.13616	2016-07-18 13:23:03.13616
836	1021	1202	2016-07-18 13:23:03.893212	2016-07-18 13:23:03.893212
837	1022	1203	2016-07-18 13:25:59.810499	2016-07-18 13:25:59.810499
838	1022	1204	2016-07-18 13:25:59.875421	2016-07-18 13:25:59.875421
839	1022	1205	2016-07-18 13:25:59.94607	2016-07-18 13:25:59.94607
840	1022	1206	2016-07-18 13:26:00.025067	2016-07-18 13:26:00.025067
841	1022	1207	2016-07-18 13:26:00.104535	2016-07-18 13:26:00.104535
842	1022	1208	2016-07-18 13:26:01.333572	2016-07-18 13:26:01.333572
843	1023	1209	2016-07-18 13:28:24.923151	2016-07-18 13:28:24.923151
844	1023	1210	2016-07-18 13:28:24.984648	2016-07-18 13:28:24.984648
845	1023	1211	2016-07-18 13:28:25.051742	2016-07-18 13:28:25.051742
846	1023	1212	2016-07-18 13:28:25.130737	2016-07-18 13:28:25.130737
847	1023	1213	2016-07-18 13:28:25.210616	2016-07-18 13:28:25.210616
848	1023	1214	2016-07-18 13:28:25.288726	2016-07-18 13:28:25.288726
849	1023	1215	2016-07-18 13:28:26.198241	2016-07-18 13:28:26.198241
850	1024	1216	2016-07-18 13:30:08.290366	2016-07-18 13:30:08.290366
851	1024	1217	2016-07-18 13:30:08.369284	2016-07-18 13:30:08.369284
852	1024	1218	2016-07-18 13:30:09.554262	2016-07-18 13:30:09.554262
853	1025	1219	2016-07-18 13:33:53.412935	2016-07-18 13:33:53.412935
854	1025	1220	2016-07-18 13:33:53.488834	2016-07-18 13:33:53.488834
855	1025	1221	2016-07-18 13:33:53.545643	2016-07-18 13:33:53.545643
856	1025	1222	2016-07-18 13:33:53.601329	2016-07-18 13:33:53.601329
857	1025	1223	2016-07-18 13:33:53.683344	2016-07-18 13:33:53.683344
858	1025	1224	2016-07-18 13:33:53.749907	2016-07-18 13:33:53.749907
859	1025	1225	2016-07-18 13:33:53.828048	2016-07-18 13:33:53.828048
860	1025	1226	2016-07-18 13:33:53.903868	2016-07-18 13:33:53.903868
861	1025	1227	2016-07-18 13:33:54.857243	2016-07-18 13:33:54.857243
862	1026	1219	2016-07-18 13:34:57.427878	2016-07-18 13:34:57.427878
863	1026	1220	2016-07-18 13:34:57.491583	2016-07-18 13:34:57.491583
864	1026	1221	2016-07-18 13:34:57.549401	2016-07-18 13:34:57.549401
865	1026	1222	2016-07-18 13:34:57.614032	2016-07-18 13:34:57.614032
867	1026	1223	2016-07-18 13:34:57.692477	2016-07-18 13:34:57.692477
868	1026	1224	2016-07-18 13:34:57.771934	2016-07-18 13:34:57.771934
869	1026	1225	2016-07-18 13:34:57.852542	2016-07-18 13:34:57.852542
870	1026	1226	2016-07-18 13:34:57.925124	2016-07-18 13:34:57.925124
871	1026	1227	2016-07-18 13:34:58.005073	2016-07-18 13:34:58.005073
872	1019	1199	2016-07-20 07:34:06.637479	2016-07-20 07:34:06.637479
873	1027	1320	2016-07-23 02:56:10.571191	2016-07-23 02:56:10.571191
910	1027	1321	2016-07-23 03:00:45.36261	2016-07-23 03:00:45.36261
911	1027	1322	2016-07-23 03:00:45.431463	2016-07-23 03:00:45.431463
912	1027	1323	2016-07-23 03:00:45.510464	2016-07-23 03:00:45.510464
913	1027	1324	2016-07-23 03:00:45.592997	2016-07-23 03:00:45.592997
914	1027	1325	2016-07-23 03:00:45.669954	2016-07-23 03:00:45.669954
909	1027	1326	2016-07-23 03:00:45.748725	2016-07-23 03:00:45.748725
874	1027	1327	2016-07-23 03:00:45.827761	2016-07-23 03:00:45.827761
875	1027	1328	2016-07-23 03:00:45.902786	2016-07-23 03:00:45.902786
876	1027	1329	2016-07-23 03:00:45.983149	2016-07-23 03:00:45.983149
877	1027	1330	2016-07-23 03:00:46.061428	2016-07-23 03:00:46.061428
878	1027	1331	2016-07-23 03:00:46.151355	2016-07-23 03:00:46.151355
879	1027	1332	2016-07-23 03:00:46.220492	2016-07-23 03:00:46.220492
880	1027	1333	2016-07-23 03:00:46.299364	2016-07-23 03:00:46.299364
881	1027	1334	2016-07-23 03:00:46.379917	2016-07-23 03:00:46.379917
882	1027	1335	2016-07-23 03:00:46.45745	2016-07-23 03:00:46.45745
883	1027	1336	2016-07-23 03:00:46.533322	2016-07-23 03:00:46.533322
884	1027	1337	2016-07-23 03:00:46.614549	2016-07-23 03:00:46.614549
885	1027	1338	2016-07-23 03:00:46.691029	2016-07-23 03:00:46.691029
886	1027	1339	2016-07-23 03:00:46.770307	2016-07-23 03:00:46.770307
887	1027	1340	2016-07-23 03:00:46.849055	2016-07-23 03:00:46.849055
888	1027	1341	2016-07-23 03:00:46.934092	2016-07-23 03:00:46.934092
889	1027	1342	2016-07-23 03:00:47.008821	2016-07-23 03:00:47.008821
890	1027	1343	2016-07-23 03:00:47.087927	2016-07-23 03:00:47.087927
891	1027	1344	2016-07-23 03:00:47.1622	2016-07-23 03:00:47.1622
892	1027	1345	2016-07-23 03:00:47.242006	2016-07-23 03:00:47.242006
893	1027	1346	2016-07-23 03:00:47.32083	2016-07-23 03:00:47.32083
894	1027	1347	2016-07-23 03:00:47.400458	2016-07-23 03:00:47.400458
895	1027	1348	2016-07-23 03:00:47.480091	2016-07-23 03:00:47.480091
896	1027	1349	2016-07-23 03:00:47.560371	2016-07-23 03:00:47.560371
897	1027	1350	2016-07-23 03:00:47.638588	2016-07-23 03:00:47.638588
898	1027	1351	2016-07-23 03:00:47.718593	2016-07-23 03:00:47.718593
899	1027	1352	2016-07-23 03:00:47.791613	2016-07-23 03:00:47.791613
900	1027	1353	2016-07-23 03:00:47.877593	2016-07-23 03:00:47.877593
901	1027	1354	2016-07-23 03:00:47.951816	2016-07-23 03:00:47.951816
902	1027	1355	2016-07-23 03:00:48.031947	2016-07-23 03:00:48.031947
903	1027	1356	2016-07-23 03:00:48.111816	2016-07-23 03:00:48.111816
904	1027	1357	2016-07-23 03:00:48.189798	2016-07-23 03:00:48.189798
905	1027	1358	2016-07-23 03:00:48.268646	2016-07-23 03:00:48.268646
906	1027	1359	2016-07-23 03:00:48.348495	2016-07-23 03:00:48.348495
907	1027	1360	2016-07-23 03:00:48.422849	2016-07-23 03:00:48.422849
908	1027	1361	2016-07-23 03:00:49.956662	2016-07-23 03:00:49.956662
915	1028	1320	2016-07-23 02:44:55.894877	2016-07-23 02:44:55.894877
916	1028	1321	2016-07-23 02:44:55.950648	2016-07-23 02:44:55.950648
917	1028	1322	2016-07-23 02:44:56.012508	2016-07-23 02:44:56.012508
918	1028	1323	2016-07-23 02:44:56.090749	2016-07-23 02:44:56.090749
919	1028	1324	2016-07-23 02:44:56.171071	2016-07-23 02:44:56.171071
920	1028	1325	2016-07-23 02:44:56.250436	2016-07-23 02:44:56.250436
921	1028	1326	2016-07-23 02:44:56.328594	2016-07-23 02:44:56.328594
922	1028	1327	2016-07-23 02:44:56.405029	2016-07-23 02:44:56.405029
923	1028	1328	2016-07-23 02:44:56.482573	2016-07-23 02:44:56.482573
924	1028	1329	2016-07-23 02:44:56.562323	2016-07-23 02:44:56.562323
925	1028	1330	2016-07-23 02:44:56.641097	2016-07-23 02:44:56.641097
926	1028	1331	2016-07-23 02:44:56.723997	2016-07-23 02:44:56.723997
927	1028	1332	2016-07-23 02:44:56.800403	2016-07-23 02:44:56.800403
928	1028	1333	2016-07-23 02:44:56.879577	2016-07-23 02:44:56.879577
929	1028	1334	2016-07-23 02:44:56.969874	2016-07-23 02:44:56.969874
930	1028	1335	2016-07-23 02:44:57.040421	2016-07-23 02:44:57.040421
931	1028	1336	2016-07-23 02:44:57.114447	2016-07-23 02:44:57.114447
932	1028	1337	2016-07-23 02:44:57.196695	2016-07-23 02:44:57.196695
933	1028	1338	2016-07-23 02:44:57.273838	2016-07-23 02:44:57.273838
934	1028	1339	2016-07-23 02:44:57.352913	2016-07-23 02:44:57.352913
935	1028	1340	2016-07-23 02:44:57.433189	2016-07-23 02:44:57.433189
936	1028	1341	2016-07-23 02:44:57.511318	2016-07-23 02:44:57.511318
937	1028	1342	2016-07-23 02:44:57.590179	2016-07-23 02:44:57.590179
938	1028	1343	2016-07-23 02:44:57.667889	2016-07-23 02:44:57.667889
939	1028	1344	2016-07-23 02:44:57.744996	2016-07-23 02:44:57.744996
940	1028	1345	2016-07-23 02:44:57.82401	2016-07-23 02:44:57.82401
941	1028	1346	2016-07-23 02:44:57.904267	2016-07-23 02:44:57.904267
942	1028	1347	2016-07-23 02:44:57.985267	2016-07-23 02:44:57.985267
943	1028	1348	2016-07-23 02:44:58.063419	2016-07-23 02:44:58.063419
944	1028	1349	2016-07-23 02:44:58.141639	2016-07-23 02:44:58.141639
945	1028	1350	2016-07-23 02:44:58.220956	2016-07-23 02:44:58.220956
946	1028	1351	2016-07-23 02:44:58.294713	2016-07-23 02:44:58.294713
947	1028	1352	2016-07-23 02:44:58.374622	2016-07-23 02:44:58.374622
948	1028	1353	2016-07-23 02:44:58.454435	2016-07-23 02:44:58.454435
949	1028	1354	2016-07-23 02:44:58.533512	2016-07-23 02:44:58.533512
950	1028	1355	2016-07-23 02:44:58.614614	2016-07-23 02:44:58.614614
951	1028	1356	2016-07-23 02:44:58.693892	2016-07-23 02:44:58.693892
952	1028	1357	2016-07-23 02:44:58.772071	2016-07-23 02:44:58.772071
953	1028	1358	2016-07-23 02:44:58.850974	2016-07-23 02:44:58.850974
954	1028	1359	2016-07-23 02:44:58.926115	2016-07-23 02:44:58.926115
955	1028	1360	2016-07-23 02:44:59.00556	2016-07-23 02:44:59.00556
956	1028	1361	2016-07-23 02:45:00.366132	2016-07-23 02:45:00.366132
957	1029	1228	2016-07-23 02:54:09.26151	2016-07-23 02:54:09.26151
958	1029	1229	2016-07-23 02:54:09.329902	2016-07-23 02:54:09.329902
959	1029	1230	2016-07-23 02:54:09.395919	2016-07-23 02:54:09.395919
960	1029	1231	2016-07-23 02:54:09.475865	2016-07-23 02:54:09.475865
961	1029	1232	2016-07-23 02:54:09.555439	2016-07-23 02:54:09.555439
962	1029	1233	2016-07-23 02:54:09.632551	2016-07-23 02:54:09.632551
963	1029	1362	2016-07-23 02:54:10.866757	2016-07-23 02:54:10.866757
964	1030	1236	2016-07-23 02:58:28.16318	2016-07-23 02:58:28.16318
965	1030	1237	2016-07-23 02:58:28.247451	2016-07-23 02:58:28.247451
966	1030	1238	2016-07-23 02:58:28.324183	2016-07-23 02:58:28.324183
967	1030	1239	2016-07-23 02:58:28.404057	2016-07-23 02:58:28.404057
968	1030	1340	2016-07-23 02:58:28.481627	2016-07-23 02:58:28.481627
969	1030	1241	2016-07-23 02:58:28.563048	2016-07-23 02:58:28.563048
970	1030	1342	2016-07-23 02:58:28.6366	2016-07-23 02:58:28.6366
971	1030	1343	2016-07-23 02:58:34.92388	2016-07-23 02:58:34.92388
972	1030	1234	2016-07-23 02:58:59.987455	2016-07-23 02:58:59.987455
973	1030	1235	2016-07-23 02:59:07.484837	2016-07-23 02:59:07.484837
974	1031	1245	2016-07-23 03:08:23.883465	2016-07-23 03:08:23.883465
975	1031	1246	2016-07-23 03:08:23.942697	2016-07-23 03:08:23.942697
976	1031	1247	2016-07-23 03:08:24.02369	2016-07-23 03:08:24.02369
977	1031	1248	2016-07-23 03:08:24.100744	2016-07-23 03:08:24.100744
978	1031	1249	2016-07-23 03:08:24.180841	2016-07-23 03:08:24.180841
979	1031	1250	2016-07-23 03:08:24.259144	2016-07-23 03:08:24.259144
980	1031	1251	2016-07-23 03:08:24.333482	2016-07-23 03:08:24.333482
981	1031	1252	2016-07-23 03:08:24.415132	2016-07-23 03:08:24.415132
982	1031	1253	2016-07-23 03:08:24.493146	2016-07-23 03:08:24.493146
983	1031	1254	2016-07-23 03:08:24.572233	2016-07-23 03:08:24.572233
984	1031	1255	2016-07-23 03:08:24.651894	2016-07-23 03:08:24.651894
985	1031	1256	2016-07-23 03:08:24.732172	2016-07-23 03:08:24.732172
986	1031	1257	2016-07-23 03:08:26.240278	2016-07-23 03:08:26.240278
987	1031	1244	2016-07-23 03:08:41.359658	2016-07-23 03:08:41.359658
988	1032	1258	2016-07-23 03:16:30.511664	2016-07-23 03:16:30.511664
989	1032	1259	2016-07-23 03:16:30.578267	2016-07-23 03:16:30.578267
990	1032	1260	2016-07-23 03:16:30.652031	2016-07-23 03:16:30.652031
991	1032	1261	2016-07-23 03:16:30.731214	2016-07-23 03:16:30.731214
992	1032	1262	2016-07-23 03:16:30.821356	2016-07-23 03:16:30.821356
993	1032	1263	2016-07-23 03:16:30.890354	2016-07-23 03:16:30.890354
994	1032	1264	2016-07-23 03:16:30.970322	2016-07-23 03:16:30.970322
995	1032	1265	2016-07-23 03:16:31.045001	2016-07-23 03:16:31.045001
996	1032	1266	2016-07-23 03:16:31.125027	2016-07-23 03:16:31.125027
997	1032	1267	2016-07-23 03:16:31.2047	2016-07-23 03:16:31.2047
998	1032	1268	2016-07-23 03:16:31.282981	2016-07-23 03:16:31.282981
999	1032	1269	2016-07-23 03:16:31.36337	2016-07-23 03:16:31.36337
1000	1032	1270	2016-07-23 03:16:31.441667	2016-07-23 03:16:31.441667
1001	1032	1271	2016-07-23 03:16:31.524	2016-07-23 03:16:31.524
1002	1032	1272	2016-07-23 03:16:31.599913	2016-07-23 03:16:31.599913
1003	1032	1273	2016-07-23 03:16:31.679934	2016-07-23 03:16:31.679934
1004	1032	1274	2016-07-23 03:16:31.759594	2016-07-23 03:16:31.759594
1005	1032	1275	2016-07-23 03:16:31.840585	2016-07-23 03:16:31.840585
1006	1032	1276	2016-07-23 03:16:31.919366	2016-07-23 03:16:31.919366
1007	1032	1277	2016-07-23 03:16:32.008202	2016-07-23 03:16:32.008202
1008	1032	1278	2016-07-23 03:16:32.074971	2016-07-23 03:16:32.074971
1009	1032	1279	2016-07-23 03:16:32.155244	2016-07-23 03:16:32.155244
1010	1032	1280	2016-07-23 03:16:32.234984	2016-07-23 03:16:32.234984
1011	1032	1281	2016-07-23 03:16:32.314193	2016-07-23 03:16:32.314193
1012	1032	1282	2016-07-23 03:16:32.394422	2016-07-23 03:16:32.394422
1013	1032	1283	2016-07-23 03:16:32.473266	2016-07-23 03:16:32.473266
1014	1032	1284	2016-07-23 03:16:32.552802	2016-07-23 03:16:32.552802
1015	1032	1285	2016-07-23 03:16:32.651505	2016-07-23 03:16:32.651505
1016	1032	1286	2016-07-23 03:16:32.711017	2016-07-23 03:16:32.711017
1017	1032	1287	2016-07-23 03:16:32.790949	2016-07-23 03:16:32.790949
1018	1032	1288	2016-07-23 03:16:32.871124	2016-07-23 03:16:32.871124
1019	1032	1289	2016-07-23 03:16:32.950773	2016-07-23 03:16:32.950773
1020	1032	1290	2016-07-23 03:16:33.030336	2016-07-23 03:16:33.030336
1021	1032	1291	2016-07-23 03:16:34.515449	2016-07-23 03:16:34.515449
1022	1033	1292	2016-07-23 03:19:54.279297	2016-07-23 03:19:54.279297
1023	1033	1293	2016-07-23 03:19:54.376476	2016-07-23 03:19:54.376476
1024	1033	1294	2016-07-23 03:19:54.44703	2016-07-23 03:19:54.44703
1025	1033	1295	2016-07-23 03:19:54.503037	2016-07-23 03:19:54.503037
1026	1033	1296	2016-07-23 03:19:54.553295	2016-07-23 03:19:54.553295
1027	1033	1297	2016-07-23 03:19:54.612395	2016-07-23 03:19:54.612395
1028	1033	1298	2016-07-23 03:19:54.69384	2016-07-23 03:19:54.69384
1029	1033	1299	2016-07-23 03:19:54.777103	2016-07-23 03:19:54.777103
1030	1033	1300	2016-07-23 03:19:56.47559	2016-07-23 03:19:56.47559
1031	1034	1320	2016-07-23 03:27:39.672854	2016-07-23 03:27:39.672854
1032	1034	1321	2016-07-23 03:27:39.740941	2016-07-23 03:27:39.740941
1033	1034	1322	2016-07-23 03:27:39.80498	2016-07-23 03:27:39.80498
1034	1034	1323	2016-07-23 03:27:39.871925	2016-07-23 03:27:39.871925
1035	1034	1324	2016-07-23 03:27:39.944057	2016-07-23 03:27:39.944057
1036	1034	1325	2016-07-23 03:27:40.024213	2016-07-23 03:27:40.024213
1037	1034	1326	2016-07-23 03:27:40.105044	2016-07-23 03:27:40.105044
1038	1034	1327	2016-07-23 03:27:40.183362	2016-07-23 03:27:40.183362
1039	1034	1328	2016-07-23 03:27:40.26659	2016-07-23 03:27:40.26659
1040	1034	1329	2016-07-23 03:27:40.343776	2016-07-23 03:27:40.343776
1041	1034	1330	2016-07-23 03:27:40.421425	2016-07-23 03:27:40.421425
1042	1034	1331	2016-07-23 03:27:40.502594	2016-07-23 03:27:40.502594
1043	1034	1332	2016-07-23 03:27:40.582137	2016-07-23 03:27:40.582137
1044	1034	1333	2016-07-23 03:27:40.661404	2016-07-23 03:27:40.661404
1045	1034	1334	2016-07-23 03:27:40.742984	2016-07-23 03:27:40.742984
1046	1034	1335	2016-07-23 03:27:40.817065	2016-07-23 03:27:40.817065
1047	1034	1336	2016-07-23 03:27:40.89742	2016-07-23 03:27:40.89742
1048	1034	1337	2016-07-23 03:27:40.97945	2016-07-23 03:27:40.97945
1049	1034	1338	2016-07-23 03:27:41.057073	2016-07-23 03:27:41.057073
1050	1034	1339	2016-07-23 03:27:41.139102	2016-07-23 03:27:41.139102
1051	1034	1340	2016-07-23 03:27:41.21696	2016-07-23 03:27:41.21696
1052	1034	1341	2016-07-23 03:27:41.303471	2016-07-23 03:27:41.303471
1053	1034	1342	2016-07-23 03:27:41.376795	2016-07-23 03:27:41.376795
1054	1034	1343	2016-07-23 03:27:41.455504	2016-07-23 03:27:41.455504
1055	1034	1344	2016-07-23 03:27:41.536415	2016-07-23 03:27:41.536415
1056	1034	1345	2016-07-23 03:27:41.615703	2016-07-23 03:27:41.615703
1057	1034	1346	2016-07-23 03:27:41.694762	2016-07-23 03:27:41.694762
1058	1034	1347	2016-07-23 03:27:41.774877	2016-07-23 03:27:41.774877
1059	1034	1348	2016-07-23 03:27:41.853939	2016-07-23 03:27:41.853939
1060	1034	1349	2016-07-23 03:27:41.935421	2016-07-23 03:27:41.935421
1061	1034	1350	2016-07-23 03:27:42.015722	2016-07-23 03:27:42.015722
1062	1034	1351	2016-07-23 03:27:42.09292	2016-07-23 03:27:42.09292
1063	1034	1352	2016-07-23 03:27:42.170372	2016-07-23 03:27:42.170372
1064	1034	1353	2016-07-23 03:27:42.252271	2016-07-23 03:27:42.252271
1065	1034	1354	2016-07-23 03:27:42.330623	2016-07-23 03:27:42.330623
1066	1034	1355	2016-07-23 03:27:42.409972	2016-07-23 03:27:42.409972
1067	1034	1356	2016-07-23 03:27:42.49738	2016-07-23 03:27:42.49738
1068	1034	1357	2016-07-23 03:27:42.568107	2016-07-23 03:27:42.568107
1069	1034	1358	2016-07-23 03:27:42.64759	2016-07-23 03:27:42.64759
1070	1034	1359	2016-07-23 03:27:42.727764	2016-07-23 03:27:42.727764
1071	1034	1360	2016-07-23 03:27:42.807928	2016-07-23 03:27:42.807928
1072	1034	1361	2016-07-23 03:27:45.719385	2016-07-23 03:27:45.719385
1073	1035	1301	2016-07-23 03:31:31.104999	2016-07-23 03:31:31.104999
1074	1035	1302	2016-07-23 03:31:31.168524	2016-07-23 03:31:31.168524
1075	1035	1303	2016-07-23 03:31:31.245444	2016-07-23 03:31:31.245444
1076	1035	1304	2016-07-23 03:31:31.322729	2016-07-23 03:31:31.322729
1077	1035	1305	2016-07-23 03:31:31.401734	2016-07-23 03:31:31.401734
1078	1035	1306	2016-07-23 03:31:31.481551	2016-07-23 03:31:31.481551
1079	1035	1307	2016-07-23 03:31:31.559912	2016-07-23 03:31:31.559912
1080	1035	1308	2016-07-23 03:31:31.640674	2016-07-23 03:31:31.640674
1081	1035	1309	2016-07-23 03:31:33.313261	2016-07-23 03:31:33.313261
1082	1036	1310	2016-07-23 04:00:48.57644	2016-07-23 04:00:48.57644
1083	1036	1311	2016-07-23 04:00:48.663732	2016-07-23 04:00:48.663732
1084	1036	1312	2016-07-23 04:00:48.715804	2016-07-23 04:00:48.715804
1085	1036	1313	2016-07-23 04:00:48.794843	2016-07-23 04:00:48.794843
1086	1036	1314	2016-07-23 04:00:48.875247	2016-07-23 04:00:48.875247
1087	1036	1315	2016-07-23 04:00:50.046807	2016-07-23 04:00:50.046807
1088	1037	1316	2016-07-23 04:02:47.738708	2016-07-23 04:02:47.738708
1089	1037	1317	2016-07-23 04:02:49.046113	2016-07-23 04:02:49.046113
1090	1038	1320	2016-07-23 04:07:06.510087	2016-07-23 04:07:06.510087
1091	1038	1321	2016-07-23 04:07:06.584193	2016-07-23 04:07:06.584193
1092	1038	1322	2016-07-23 04:07:06.643038	2016-07-23 04:07:06.643038
1093	1038	1323	2016-07-23 04:07:06.722124	2016-07-23 04:07:06.722124
1094	1038	1324	2016-07-23 04:07:06.80988	2016-07-23 04:07:06.80988
1095	1038	1325	2016-07-23 04:07:06.881017	2016-07-23 04:07:06.881017
1096	1038	1326	2016-07-23 04:07:06.961511	2016-07-23 04:07:06.961511
1097	1038	1327	2016-07-23 04:07:07.050719	2016-07-23 04:07:07.050719
1098	1038	1328	2016-07-23 04:07:07.123611	2016-07-23 04:07:07.123611
1099	1038	1329	2016-07-23 04:07:07.202739	2016-07-23 04:07:07.202739
1100	1038	1330	2016-07-23 04:07:07.282457	2016-07-23 04:07:07.282457
1101	1038	1331	2016-07-23 04:07:07.362093	2016-07-23 04:07:07.362093
1102	1038	1332	2016-07-23 04:07:07.442352	2016-07-23 04:07:07.442352
1103	1038	1333	2016-07-23 04:07:07.521234	2016-07-23 04:07:07.521234
1104	1038	1334	2016-07-23 04:07:07.601122	2016-07-23 04:07:07.601122
1105	1038	1335	2016-07-23 04:07:07.676735	2016-07-23 04:07:07.676735
1106	1038	1336	2016-07-23 04:07:07.756973	2016-07-23 04:07:07.756973
1107	1038	1337	2016-07-23 04:07:07.836995	2016-07-23 04:07:07.836995
1108	1038	1338	2016-07-23 04:07:07.916828	2016-07-23 04:07:07.916828
1109	1038	1339	2016-07-23 04:07:07.996362	2016-07-23 04:07:07.996362
1110	1038	1340	2016-07-23 04:07:08.075375	2016-07-23 04:07:08.075375
1111	1038	1341	2016-07-23 04:07:08.155193	2016-07-23 04:07:08.155193
1112	1038	1342	2016-07-23 04:07:08.23456	2016-07-23 04:07:08.23456
1113	1038	1343	2016-07-23 04:07:08.315211	2016-07-23 04:07:08.315211
1114	1038	1344	2016-07-23 04:07:08.39399	2016-07-23 04:07:08.39399
1115	1038	1345	2016-07-23 04:07:08.474696	2016-07-23 04:07:08.474696
1116	1038	1346	2016-07-23 04:07:08.553069	2016-07-23 04:07:08.553069
1117	1038	1347	2016-07-23 04:07:08.633658	2016-07-23 04:07:08.633658
1118	1038	1348	2016-07-23 04:07:08.716042	2016-07-23 04:07:08.716042
1119	1038	1349	2016-07-23 04:07:08.79489	2016-07-23 04:07:08.79489
1120	1038	1350	2016-07-23 04:07:08.882084	2016-07-23 04:07:08.882084
1121	1038	1351	2016-07-23 04:07:08.948959	2016-07-23 04:07:08.948959
1122	1038	1352	2016-07-23 04:07:09.028883	2016-07-23 04:07:09.028883
1123	1038	1353	2016-07-23 04:07:09.10836	2016-07-23 04:07:09.10836
1124	1038	1354	2016-07-23 04:07:09.191163	2016-07-23 04:07:09.191163
1125	1038	1355	2016-07-23 04:07:09.269028	2016-07-23 04:07:09.269028
1126	1038	1356	2016-07-23 04:07:09.34694	2016-07-23 04:07:09.34694
1127	1038	1357	2016-07-23 04:07:09.42897	2016-07-23 04:07:09.42897
1128	1038	1358	2016-07-23 04:07:09.506864	2016-07-23 04:07:09.506864
1129	1038	1359	2016-07-23 04:07:09.585579	2016-07-23 04:07:09.585579
1130	1038	1360	2016-07-23 04:07:09.664473	2016-07-23 04:07:09.664473
1131	1038	1361	2016-07-23 04:07:11.120386	2016-07-23 04:07:11.120386
1132	1039	1318	2016-07-23 04:08:51.219	2016-07-23 04:08:51.219
1133	1039	1319	2016-07-23 04:08:52.384142	2016-07-23 04:08:52.384142
1286	1040	1363	2016-07-25 04:13:26.255797	2016-07-25 04:13:26.255797
1134	1040	1364	2016-07-25 04:13:26.286929	2016-07-25 04:13:26.286929
1135	1040	1365	2016-07-25 04:13:26.291354	2016-07-25 04:13:26.291354
1136	1040	1366	2016-07-25 04:13:26.310104	2016-07-25 04:13:26.310104
1137	1040	1367	2016-07-25 04:13:26.314986	2016-07-25 04:13:26.314986
1138	1040	1368	2016-07-25 04:13:26.319899	2016-07-25 04:13:26.319899
1139	1040	1369	2016-07-25 04:13:26.324348	2016-07-25 04:13:26.324348
1140	1040	1370	2016-07-25 04:13:26.329762	2016-07-25 04:13:26.329762
1141	1049	1371	2016-07-25 04:13:26.334018	2016-07-25 04:13:26.334018
1142	1049	1372	2016-07-25 04:13:26.338365	2016-07-25 04:13:26.338365
1143	1049	1373	2016-07-25 04:13:26.343976	2016-07-25 04:13:26.343976
1144	1049	1374	2016-07-25 04:13:26.348225	2016-07-25 04:13:26.348225
1145	1049	1375	2016-07-25 04:13:26.352582	2016-07-25 04:13:26.352582
1146	1049	1376	2016-07-25 04:13:26.358111	2016-07-25 04:13:26.358111
1147	1049	1377	2016-07-25 04:13:26.363121	2016-07-25 04:13:26.363121
1148	1050	1378	2016-07-25 04:13:26.368527	2016-07-25 04:13:26.368527
1149	1050	1379	2016-07-25 04:13:26.373102	2016-07-25 04:13:26.373102
1150	1050	1380	2016-07-25 04:13:26.378079	2016-07-25 04:13:26.378079
1287	1050	1381	2016-07-25 05:52:14.414777	2016-07-25 05:52:14.414777
1288	1050	1382	2016-07-25 05:52:14.508845	2016-07-25 05:52:14.508845
1289	1050	1383	2016-07-25 05:52:14.517089	2016-07-25 05:52:14.517089
1151	1050	1384	2016-07-25 05:52:14.526737	2016-07-25 05:52:14.526737
1152	1050	1385	2016-07-25 05:52:14.534412	2016-07-25 05:52:14.534412
1153	1050	1386	2016-07-25 05:52:14.542041	2016-07-25 05:52:14.542041
1154	1050	1387	2016-07-25 05:52:14.547579	2016-07-25 05:52:14.547579
1155	1050	1388	2016-07-25 05:52:14.553919	2016-07-25 05:52:14.553919
1156	1050	1389	2016-07-25 05:52:14.559759	2016-07-25 05:52:14.559759
1157	1050	1390	2016-07-25 05:52:14.566144	2016-07-25 05:52:14.566144
1158	1050	1391	2016-07-25 05:52:14.571369	2016-07-25 05:52:14.571369
1159	1050	1392	2016-07-25 05:52:14.574934	2016-07-25 05:52:14.574934
1160	1050	1393	2016-07-25 05:52:14.579091	2016-07-25 05:52:14.579091
1161	1041	1394	2016-07-25 05:52:14.582673	2016-07-25 05:52:14.582673
1162	1041	1395	2016-07-25 05:52:14.586348	2016-07-25 05:52:14.586348
1163	1041	1396	2016-07-25 05:52:14.589931	2016-07-25 05:52:14.589931
1164	1041	1397	2016-07-25 05:52:14.594084	2016-07-25 05:52:14.594084
1165	1041	1398	2016-07-25 05:52:14.597874	2016-07-25 05:52:14.597874
1166	1041	1399	2016-07-25 05:52:14.601445	2016-07-25 05:52:14.601445
1167	1041	1400	2016-07-25 05:52:14.604985	2016-07-25 05:52:14.604985
1168	1041	1401	2016-07-25 05:52:14.609021	2016-07-25 05:52:14.609021
1169	1041	1402	2016-07-25 05:52:14.613461	2016-07-25 05:52:14.613461
1170	1041	1403	2016-07-25 05:52:14.617291	2016-07-25 05:52:14.617291
1171	1041	1404	2016-07-25 05:52:14.620701	2016-07-25 05:52:14.620701
1172	1041	1405	2016-07-25 05:52:14.624978	2016-07-25 05:52:14.624978
1173	1041	1406	2016-07-25 05:52:14.628848	2016-07-25 05:52:14.628848
1174	1041	1407	2016-07-25 05:52:14.633546	2016-07-25 05:52:14.633546
1175	1041	1408	2016-07-25 05:52:14.637452	2016-07-25 05:52:14.637452
1176	1041	1409	2016-07-25 05:52:14.640818	2016-07-25 05:52:14.640818
1177	1041	1410	2016-07-25 05:52:14.64444	2016-07-25 05:52:14.64444
1178	1042	1411	2016-07-25 05:52:14.647973	2016-07-25 05:52:14.647973
1179	1042	1412	2016-07-25 05:52:14.652214	2016-07-25 05:52:14.652214
1180	1042	1413	2016-07-25 05:52:14.656551	2016-07-25 05:52:14.656551
1181	1042	1414	2016-07-25 05:52:14.669488	2016-07-25 05:52:14.669488
1182	1042	1415	2016-07-25 05:52:14.673522	2016-07-25 05:52:14.673522
1183	1042	1416	2016-07-25 05:52:14.677341	2016-07-25 05:52:14.677341
1184	1042	1417	2016-07-25 05:52:14.681013	2016-07-25 05:52:14.681013
1185	1042	1418	2016-07-25 05:52:14.68557	2016-07-25 05:52:14.68557
1186	1042	1419	2016-07-25 05:52:14.689045	2016-07-25 05:52:14.689045
1187	1042	1420	2016-07-25 05:52:14.692417	2016-07-25 05:52:14.692417
1188	1042	1421	2016-07-25 05:52:14.696079	2016-07-25 05:52:14.696079
1189	1042	1422	2016-07-25 05:52:14.700664	2016-07-25 05:52:14.700664
1190	1042	1423	2016-07-25 05:52:14.704338	2016-07-25 05:52:14.704338
1191	1042	1424	2016-07-25 05:52:14.708029	2016-07-25 05:52:14.708029
1192	1042	1425	2016-07-25 05:52:14.711823	2016-07-25 05:52:14.711823
1193	1042	1426	2016-07-25 05:52:14.716228	2016-07-25 05:52:14.716228
1194	1042	1427	2016-07-25 05:52:14.719653	2016-07-25 05:52:14.719653
1195	1042	1428	2016-07-25 05:52:14.72343	2016-07-25 05:52:14.72343
1196	1042	1429	2016-07-25 05:52:14.727053	2016-07-25 05:52:14.727053
1197	1042	1430	2016-07-25 05:52:14.730596	2016-07-25 05:52:14.730596
1198	1042	1431	2016-07-25 05:52:14.734877	2016-07-25 05:52:14.734877
1199	1042	1432	2016-07-25 05:52:14.73892	2016-07-25 05:52:14.73892
1200	1042	1433	2016-07-25 05:52:14.742571	2016-07-25 05:52:14.742571
1201	1043	1434	2016-07-25 05:52:14.746176	2016-07-25 05:52:14.746176
1202	1043	1435	2016-07-25 05:52:14.749939	2016-07-25 05:52:14.749939
1203	1043	1436	2016-07-25 05:52:14.75404	2016-07-25 05:52:14.75404
1204	1043	1437	2016-07-25 05:52:14.757979	2016-07-25 05:52:14.757979
1205	1043	1438	2016-07-25 05:52:14.761338	2016-07-25 05:52:14.761338
1206	1043	1439	2016-07-25 05:52:14.764989	2016-07-25 05:52:14.764989
1207	1044	1440	2016-07-25 05:52:14.769701	2016-07-25 05:52:14.769701
1208	1044	1441	2016-07-25 05:52:14.773416	2016-07-25 05:52:14.773416
1209	1044	1442	2016-07-25 05:52:14.777288	2016-07-25 05:52:14.777288
1210	1044	1443	2016-07-25 05:52:14.781275	2016-07-25 05:52:14.781275
1211	1044	1444	2016-07-25 05:52:14.785446	2016-07-25 05:52:14.785446
1212	1045	1445	2016-07-25 05:52:14.788738	2016-07-25 05:52:14.788738
1213	1045	1446	2016-07-25 05:52:14.792415	2016-07-25 05:52:14.792415
1214	1045	1447	2016-07-25 05:52:14.796295	2016-07-25 05:52:14.796295
1215	1045	1448	2016-07-25 05:52:14.800801	2016-07-25 05:52:14.800801
1216	1045	1449	2016-07-25 05:52:14.804534	2016-07-25 05:52:14.804534
1217	1045	1450	2016-07-25 05:52:14.808215	2016-07-25 05:52:14.808215
1218	1045	1451	2016-07-25 05:52:14.812145	2016-07-25 05:52:14.812145
1219	1045	1452	2016-07-25 05:52:14.818821	2016-07-25 05:52:14.818821
1220	1045	1453	2016-07-25 05:52:14.822549	2016-07-25 05:52:14.822549
1221	1045	1454	2016-07-25 05:52:14.827371	2016-07-25 05:52:14.827371
1222	1045	1455	2016-07-25 05:52:14.831717	2016-07-25 05:52:14.831717
1223	1045	1456	2016-07-25 05:52:14.835205	2016-07-25 05:52:14.835205
1224	1046	1457	2016-07-25 05:52:14.838889	2016-07-25 05:52:14.838889
1225	1046	1458	2016-07-25 05:52:14.842535	2016-07-25 05:52:14.842535
1226	1046	1459	2016-07-25 05:52:14.847268	2016-07-25 05:52:14.847268
1227	1046	1460	2016-07-25 05:52:14.851258	2016-07-25 05:52:14.851258
1228	1046	1461	2016-07-25 05:52:14.854952	2016-07-25 05:52:14.854952
1229	1046	1462	2016-07-25 05:52:14.859134	2016-07-25 05:52:14.859134
1230	1046	1463	2016-07-25 05:52:14.862998	2016-07-25 05:52:14.862998
1231	1046	1464	2016-07-25 05:52:14.866844	2016-07-25 05:52:14.866844
1232	1046	1465	2016-07-25 05:52:14.870644	2016-07-25 05:52:14.870644
1233	1046	1466	2016-07-25 05:52:14.874812	2016-07-25 05:52:14.874812
1234	1046	1467	2016-07-25 05:52:14.878739	2016-07-25 05:52:14.878739
1235	1046	1468	2016-07-25 05:52:14.882334	2016-07-25 05:52:14.882334
1236	1046	1469	2016-07-25 05:52:14.886752	2016-07-25 05:52:14.886752
1237	1046	1470	2016-07-25 05:52:14.890881	2016-07-25 05:52:14.890881
1238	1046	1471	2016-07-25 05:52:14.894824	2016-07-25 05:52:14.894824
1239	1046	1472	2016-07-25 05:52:14.898583	2016-07-25 05:52:14.898583
1240	1046	1473	2016-07-25 05:52:14.902028	2016-07-25 05:52:14.902028
1241	1046	1474	2016-07-25 05:52:14.906112	2016-07-25 05:52:14.906112
1242	1046	1475	2016-07-25 05:52:14.910558	2016-07-25 05:52:14.910558
1243	1046	1476	2016-07-25 05:52:14.914358	2016-07-25 05:52:14.914358
1244	1046	1477	2016-07-25 05:52:14.918078	2016-07-25 05:52:14.918078
1245	1046	1478	2016-07-25 05:52:14.922713	2016-07-25 05:52:14.922713
1246	1046	1479	2016-07-25 05:52:14.92687	2016-07-25 05:52:14.92687
1247	1046	1480	2016-07-25 05:52:14.931606	2016-07-25 05:52:14.931606
1248	1047	1481	2016-07-25 05:52:14.935698	2016-07-25 05:52:14.935698
1249	1047	1482	2016-07-25 05:52:14.939542	2016-07-25 05:52:14.939542
1250	1047	1483	2016-07-25 05:52:14.945069	2016-07-25 05:52:14.945069
1251	1047	1484	2016-07-25 05:52:14.950488	2016-07-25 05:52:14.950488
1252	1047	1485	2016-07-25 05:52:14.954828	2016-07-25 05:52:14.954828
1253	1047	1486	2016-07-25 05:52:14.960478	2016-07-25 05:52:14.960478
1254	1047	1487	2016-07-25 05:52:14.965942	2016-07-25 05:52:14.965942
1255	1047	1488	2016-07-25 05:52:14.97041	2016-07-25 05:52:14.97041
1256	1047	1489	2016-07-25 05:52:14.975921	2016-07-25 05:52:14.975921
1257	1047	1490	2016-07-25 05:52:14.981153	2016-07-25 05:52:14.981153
1258	1047	1491	2016-07-25 05:52:14.985595	2016-07-25 05:52:14.985595
1259	1047	1492	2016-07-25 05:52:14.99143	2016-07-25 05:52:14.99143
1260	1047	1493	2016-07-25 05:52:14.996372	2016-07-25 05:52:14.996372
1261	1047	1494	2016-07-25 05:52:15.002387	2016-07-25 05:52:15.002387
1262	1047	1495	2016-07-25 05:52:15.00708	2016-07-25 05:52:15.00708
1263	1047	1496	2016-07-25 05:52:15.012962	2016-07-25 05:52:15.012962
1264	1047	1497	2016-07-25 05:52:15.017681	2016-07-25 05:52:15.017681
1265	1047	1498	2016-07-25 05:52:15.022065	2016-07-25 05:52:15.022065
1266	1047	1499	2016-07-25 05:52:15.027421	2016-07-25 05:52:15.027421
1267	1047	1500	2016-07-25 05:52:15.03235	2016-07-25 05:52:15.03235
1268	1047	1501	2016-07-25 05:52:15.037734	2016-07-25 05:52:15.037734
1269	1047	1502	2016-07-25 05:52:15.043599	2016-07-25 05:52:15.043599
1270	1047	1503	2016-07-25 05:52:15.053341	2016-07-25 05:52:15.053341
1272	1047	1504	2016-07-25 05:52:15.058458	2016-07-25 05:52:15.058458
1273	1047	1505	2016-07-25 05:52:15.066257	2016-07-25 05:52:15.066257
1274	1048	1506	2016-07-25 05:52:15.071344	2016-07-25 05:52:15.071344
1275	1048	1507	2016-07-25 05:52:15.077157	2016-07-25 05:52:15.077157
1276	1048	1508	2016-07-25 05:52:15.081667	2016-07-25 05:52:15.081667
1277	1048	1509	2016-07-25 05:52:15.087072	2016-07-25 05:52:15.087072
1278	1048	1510	2016-07-25 05:52:15.091889	2016-07-25 05:52:15.091889
1279	1048	1511	2016-07-25 05:52:15.096387	2016-07-25 05:52:15.096387
1280	1048	1512	2016-07-25 05:52:15.102208	2016-07-25 05:52:15.102208
1281	1048	1513	2016-07-25 05:52:15.107024	2016-07-25 05:52:15.107024
1282	1048	1514	2016-07-25 05:52:15.111512	2016-07-25 05:52:15.111512
1283	1048	1515	2016-07-25 05:52:15.116786	2016-07-25 05:52:15.116786
1284	1048	1516	2016-07-25 05:52:15.121993	2016-07-25 05:52:15.121993
1285	1048	1517	2016-07-25 05:52:15.127257	2016-07-25 05:52:15.127257
1290	1051	1518	2016-07-26 03:14:58.609989	2016-07-26 03:14:58.609989
1291	1052	1519	2016-07-28 09:09:32.042178	2016-07-28 09:09:32.042178
1292	1052	1520	2016-07-28 09:09:32.11969	2016-07-28 09:09:32.11969
1293	1052	1521	2016-07-28 09:09:32.130244	2016-07-28 09:09:32.130244
1294	1052	1581	2016-07-28 09:09:32.140524	2016-07-28 09:09:32.140524
1295	1052	1522	2016-07-28 09:09:32.149771	2016-07-28 09:09:32.149771
1296	1052	1523	2016-07-28 09:09:32.159997	2016-07-28 09:09:32.159997
1297	1052	1524	2016-07-28 09:09:32.170709	2016-07-28 09:09:32.170709
1298	1052	1525	2016-07-28 09:09:32.181633	2016-07-28 09:09:32.181633
1299	1052	1526	2016-07-28 09:09:32.188726	2016-07-28 09:09:32.188726
1300	1052	1527	2016-07-28 09:09:32.193996	2016-07-28 09:09:32.193996
1301	1052	1528	2016-07-28 09:09:32.199996	2016-07-28 09:09:32.199996
1302	1052	1529	2016-07-28 09:09:32.20593	2016-07-28 09:09:32.20593
1303	1052	1530	2016-07-28 09:09:32.211451	2016-07-28 09:09:32.211451
1304	1052	1531	2016-07-28 09:09:32.216997	2016-07-28 09:09:32.216997
1305	1052	1532	2016-07-28 09:09:32.222151	2016-07-28 09:09:32.222151
1306	1052	1533	2016-07-28 09:09:32.22693	2016-07-28 09:09:32.22693
1307	1052	1534	2016-07-28 09:09:32.231428	2016-07-28 09:09:32.231428
1308	1052	1535	2016-07-28 09:09:32.235972	2016-07-28 09:09:32.235972
1309	1052	1536	2016-07-28 09:09:32.240675	2016-07-28 09:09:32.240675
1310	1052	1537	2016-07-28 09:09:32.245745	2016-07-28 09:09:32.245745
1311	1052	1538	2016-07-28 09:09:32.259273	2016-07-28 09:09:32.259273
1312	1052	1539	2016-07-28 09:09:32.26498	2016-07-28 09:09:32.26498
1313	1052	1540	2016-07-28 09:09:32.269685	2016-07-28 09:09:32.269685
1314	1052	1541	2016-07-28 09:09:32.273959	2016-07-28 09:09:32.273959
1315	1052	1542	2016-07-28 09:09:32.278295	2016-07-28 09:09:32.278295
1316	1052	1543	2016-07-28 09:09:32.283973	2016-07-28 09:09:32.283973
1317	1052	1544	2016-07-28 09:09:32.288753	2016-07-28 09:09:32.288753
1318	1052	1545	2016-07-28 09:09:32.293753	2016-07-28 09:09:32.293753
1319	1052	1546	2016-07-28 09:09:32.297993	2016-07-28 09:09:32.297993
1320	1052	1547	2016-07-28 09:09:32.302334	2016-07-28 09:09:32.302334
1321	1052	1548	2016-07-28 09:09:32.306975	2016-07-28 09:09:32.306975
1322	1052	1549	2016-07-28 09:09:32.310915	2016-07-28 09:09:32.310915
1323	1052	1550	2016-07-28 09:09:32.315204	2016-07-28 09:09:32.315204
1324	1052	1551	2016-07-28 09:09:32.319335	2016-07-28 09:09:32.319335
1325	1052	1552	2016-07-28 09:09:32.324225	2016-07-28 09:09:32.324225
1326	1052	1553	2016-07-28 09:09:32.329323	2016-07-28 09:09:32.329323
1327	1052	1554	2016-07-28 09:09:32.335026	2016-07-28 09:09:32.335026
1328	1052	1555	2016-07-28 09:09:32.339568	2016-07-28 09:09:32.339568
1329	1052	1556	2016-07-28 09:09:32.343754	2016-07-28 09:09:32.343754
1330	1053	1519	2016-07-28 09:09:32.348273	2016-07-28 09:09:32.348273
1331	1053	1520	2016-07-28 09:09:32.352642	2016-07-28 09:09:32.352642
1332	1053	1521	2016-07-28 09:09:32.358166	2016-07-28 09:09:32.358166
1333	1053	1581	2016-07-28 09:09:32.362259	2016-07-28 09:09:32.362259
1334	1053	1522	2016-07-28 09:09:32.366766	2016-07-28 09:09:32.366766
1335	1053	1523	2016-07-28 09:09:32.371055	2016-07-28 09:09:32.371055
1336	1053	1524	2016-07-28 09:09:32.375967	2016-07-28 09:09:32.375967
1337	1053	1525	2016-07-28 09:09:32.381258	2016-07-28 09:09:32.381258
1338	1053	1526	2016-07-28 09:09:32.386128	2016-07-28 09:09:32.386128
1339	1053	1527	2016-07-28 09:09:32.392498	2016-07-28 09:09:32.392498
1340	1053	1528	2016-07-28 09:09:32.399021	2016-07-28 09:09:32.399021
1341	1053	1529	2016-07-28 09:09:32.403829	2016-07-28 09:09:32.403829
1342	1053	1530	2016-07-28 09:09:32.409038	2016-07-28 09:09:32.409038
1343	1053	1531	2016-07-28 09:09:32.415463	2016-07-28 09:09:32.415463
1344	1053	1532	2016-07-28 09:09:32.420012	2016-07-28 09:09:32.420012
1345	1053	1533	2016-07-28 09:09:32.425426	2016-07-28 09:09:32.425426
1346	1053	1534	2016-07-28 09:09:32.431403	2016-07-28 09:09:32.431403
1347	1053	1535	2016-07-28 09:09:32.438486	2016-07-28 09:09:32.438486
1348	1053	1536	2016-07-28 09:09:32.446141	2016-07-28 09:09:32.446141
1349	1053	1537	2016-07-28 09:09:32.450772	2016-07-28 09:09:32.450772
1350	1053	1538	2016-07-28 09:09:32.455089	2016-07-28 09:09:32.455089
1351	1053	1539	2016-07-28 09:09:32.459272	2016-07-28 09:09:32.459272
1352	1053	1540	2016-07-28 09:09:32.464092	2016-07-28 09:09:32.464092
1353	1053	1541	2016-07-28 09:09:32.469397	2016-07-28 09:09:32.469397
1354	1053	1542	2016-07-28 09:09:32.473794	2016-07-28 09:09:32.473794
1355	1053	1543	2016-07-28 09:09:32.477948	2016-07-28 09:09:32.477948
1356	1053	1544	2016-07-28 09:09:32.483158	2016-07-28 09:09:32.483158
1357	1053	1545	2016-07-28 09:09:32.487198	2016-07-28 09:09:32.487198
1358	1053	1546	2016-07-28 09:09:32.491471	2016-07-28 09:09:32.491471
1359	1053	1547	2016-07-28 09:09:32.496111	2016-07-28 09:09:32.496111
1360	1053	1548	2016-07-28 09:09:32.500992	2016-07-28 09:09:32.500992
1361	1053	1549	2016-07-28 09:09:32.506372	2016-07-28 09:09:32.506372
1362	1053	1550	2016-07-28 09:09:32.511413	2016-07-28 09:09:32.511413
1363	1053	1551	2016-07-28 09:09:32.51616	2016-07-28 09:09:32.51616
1364	1053	1552	2016-07-28 09:09:32.520859	2016-07-28 09:09:32.520859
1365	1053	1553	2016-07-28 09:09:32.525603	2016-07-28 09:09:32.525603
1366	1053	1554	2016-07-28 09:09:32.53157	2016-07-28 09:09:32.53157
1367	1053	1555	2016-07-28 09:09:32.53596	2016-07-28 09:09:32.53596
1368	1053	1556	2016-07-28 09:09:32.54078	2016-07-28 09:09:32.54078
1369	1053	1557	2016-07-28 09:09:32.544851	2016-07-28 09:09:32.544851
1370	1053	1558	2016-07-28 09:09:32.550002	2016-07-28 09:09:32.550002
1371	1053	1559	2016-07-28 09:09:32.556302	2016-07-28 09:09:32.556302
1372	1053	1560	2016-07-28 09:09:32.561684	2016-07-28 09:09:32.561684
1373	1054	1519	2016-07-28 09:09:32.566918	2016-07-28 09:09:32.566918
1374	1054	1520	2016-07-28 09:09:32.572099	2016-07-28 09:09:32.572099
1375	1054	1521	2016-07-28 09:09:32.577048	2016-07-28 09:09:32.577048
1376	1054	1581	2016-07-28 09:09:32.582643	2016-07-28 09:09:32.582643
1377	1054	1522	2016-07-28 09:09:32.587221	2016-07-28 09:09:32.587221
1378	1054	1523	2016-07-28 09:09:32.592538	2016-07-28 09:09:32.592538
1379	1054	1524	2016-07-28 09:09:32.598017	2016-07-28 09:09:32.598017
1380	1054	1525	2016-07-28 09:09:32.604008	2016-07-28 09:09:32.604008
1381	1054	1526	2016-07-28 09:09:32.609257	2016-07-28 09:09:32.609257
1382	1054	1527	2016-07-28 09:09:32.615908	2016-07-28 09:09:32.615908
1383	1054	1528	2016-07-28 09:09:32.620779	2016-07-28 09:09:32.620779
1384	1054	1529	2016-07-28 09:09:32.625911	2016-07-28 09:09:32.625911
1385	1054	1530	2016-07-28 09:09:32.631646	2016-07-28 09:09:32.631646
1386	1054	1531	2016-07-28 09:09:32.636795	2016-07-28 09:09:32.636795
1387	1054	1532	2016-07-28 09:09:32.644265	2016-07-28 09:09:32.644265
1388	1054	1533	2016-07-28 09:09:32.649581	2016-07-28 09:09:32.649581
1389	1054	1534	2016-07-28 09:09:32.657382	2016-07-28 09:09:32.657382
1390	1054	1535	2016-07-28 09:09:32.663164	2016-07-28 09:09:32.663164
1391	1054	1536	2016-07-28 09:09:32.670418	2016-07-28 09:09:32.670418
1392	1054	1537	2016-07-28 09:09:32.675716	2016-07-28 09:09:32.675716
1393	1054	1538	2016-07-28 09:09:32.681369	2016-07-28 09:09:32.681369
1394	1054	1539	2016-07-28 09:09:32.687752	2016-07-28 09:09:32.687752
1395	1054	1540	2016-07-28 09:09:32.693442	2016-07-28 09:09:32.693442
1396	1054	1541	2016-07-28 09:09:32.699107	2016-07-28 09:09:32.699107
1397	1054	1542	2016-07-28 09:09:32.705385	2016-07-28 09:09:32.705385
1398	1054	1543	2016-07-28 09:09:32.711014	2016-07-28 09:09:32.711014
1399	1054	1544	2016-07-28 09:09:32.716078	2016-07-28 09:09:32.716078
1400	1054	1545	2016-07-28 09:09:32.721921	2016-07-28 09:09:32.721921
1401	1054	1546	2016-07-28 09:09:32.727238	2016-07-28 09:09:32.727238
1402	1054	1547	2016-07-28 09:09:32.732329	2016-07-28 09:09:32.732329
1403	1054	1548	2016-07-28 09:09:32.738181	2016-07-28 09:09:32.738181
1404	1054	1549	2016-07-28 09:09:32.744024	2016-07-28 09:09:32.744024
1405	1054	1550	2016-07-28 09:09:32.748921	2016-07-28 09:09:32.748921
1406	1054	1551	2016-07-28 09:09:32.754916	2016-07-28 09:09:32.754916
1407	1054	1552	2016-07-28 09:09:32.760083	2016-07-28 09:09:32.760083
1408	1054	1553	2016-07-28 09:09:32.765928	2016-07-28 09:09:32.765928
1409	1054	1554	2016-07-28 09:09:32.772118	2016-07-28 09:09:32.772118
1410	1054	1555	2016-07-28 09:09:32.777794	2016-07-28 09:09:32.777794
1411	1054	1556	2016-07-28 09:09:32.783329	2016-07-28 09:09:32.783329
1412	1054	1557	2016-07-28 09:09:32.789325	2016-07-28 09:09:32.789325
1413	1054	1558	2016-07-28 09:09:32.795211	2016-07-28 09:09:32.795211
1414	1054	1559	2016-07-28 09:09:32.799964	2016-07-28 09:09:32.799964
1415	1054	1560	2016-07-28 09:09:32.804802	2016-07-28 09:09:32.804802
1416	1054	1561	2016-07-28 09:09:32.810944	2016-07-28 09:09:32.810944
1417	1054	1562	2016-07-28 09:09:32.816918	2016-07-28 09:09:32.816918
1418	1054	1563	2016-07-28 09:09:32.822193	2016-07-28 09:09:32.822193
1419	1054	1564	2016-07-28 09:09:32.828232	2016-07-28 09:09:32.828232
1420	1054	1565	2016-07-28 09:09:32.832972	2016-07-28 09:09:32.832972
1421	1054	1566	2016-07-28 09:09:32.838825	2016-07-28 09:09:32.838825
1422	1054	1567	2016-07-28 09:09:32.844708	2016-07-28 09:09:32.844708
1423	1054	1568	2016-07-28 09:09:32.849844	2016-07-28 09:09:32.849844
1424	1054	1569	2016-07-28 09:09:32.854461	2016-07-28 09:09:32.854461
1425	1054	1570	2016-07-28 09:09:32.860198	2016-07-28 09:09:32.860198
1426	1054	1571	2016-07-28 09:09:32.866064	2016-07-28 09:09:32.866064
1427	1054	1572	2016-07-28 09:09:32.871249	2016-07-28 09:09:32.871249
1428	1054	1573	2016-07-28 09:09:32.87656	2016-07-28 09:09:32.87656
1429	1055	1519	2016-07-28 09:09:32.882203	2016-07-28 09:09:32.882203
1430	1055	1520	2016-07-28 09:09:32.887228	2016-07-28 09:09:32.887228
1431	1055	1521	2016-07-28 09:09:32.892399	2016-07-28 09:09:32.892399
1432	1055	1581	2016-07-28 09:09:32.898459	2016-07-28 09:09:32.898459
1433	1055	1522	2016-07-28 09:09:32.903647	2016-07-28 09:09:32.903647
1434	1055	1523	2016-07-28 09:09:32.908053	2016-07-28 09:09:32.908053
1435	1055	1524	2016-07-28 09:09:32.914378	2016-07-28 09:09:32.914378
1436	1055	1525	2016-07-28 09:09:32.91899	2016-07-28 09:09:32.91899
1437	1055	1526	2016-07-28 09:09:32.924207	2016-07-28 09:09:32.924207
1438	1055	1527	2016-07-28 09:09:32.928959	2016-07-28 09:09:32.928959
1439	1055	1528	2016-07-28 09:09:32.933415	2016-07-28 09:09:32.933415
1440	1055	1529	2016-07-28 09:09:32.939555	2016-07-28 09:09:32.939555
1441	1055	1530	2016-07-28 09:09:32.944412	2016-07-28 09:09:32.944412
1442	1055	1531	2016-07-28 09:09:32.949076	2016-07-28 09:09:32.949076
1443	1055	1532	2016-07-28 09:09:32.954115	2016-07-28 09:09:32.954115
1444	1055	1533	2016-07-28 09:09:32.960095	2016-07-28 09:09:32.960095
1445	1055	1534	2016-07-28 09:09:32.96633	2016-07-28 09:09:32.96633
1446	1055	1535	2016-07-28 09:09:32.985596	2016-07-28 09:09:32.985596
1447	1055	1536	2016-07-28 09:09:32.995977	2016-07-28 09:09:32.995977
1448	1055	1537	2016-07-28 09:09:33.001896	2016-07-28 09:09:33.001896
1449	1055	1538	2016-07-28 09:09:33.00687	2016-07-28 09:09:33.00687
1450	1055	1539	2016-07-28 09:09:33.01375	2016-07-28 09:09:33.01375
1451	1055	1540	2016-07-28 09:09:33.017965	2016-07-28 09:09:33.017965
1452	1055	1541	2016-07-28 09:09:33.02276	2016-07-28 09:09:33.02276
1453	1055	1542	2016-07-28 09:09:33.027081	2016-07-28 09:09:33.027081
1454	1055	1543	2016-07-28 09:09:33.033128	2016-07-28 09:09:33.033128
1455	1055	1544	2016-07-28 09:09:33.037768	2016-07-28 09:09:33.037768
1456	1055	1545	2016-07-28 09:09:33.041577	2016-07-28 09:09:33.041577
1457	1055	1546	2016-07-28 09:09:33.046457	2016-07-28 09:09:33.046457
1458	1055	1547	2016-07-28 09:09:33.050825	2016-07-28 09:09:33.050825
1459	1055	1548	2016-07-28 09:09:33.054915	2016-07-28 09:09:33.054915
1460	1055	1549	2016-07-28 09:09:33.05932	2016-07-28 09:09:33.05932
1461	1055	1550	2016-07-28 09:09:33.06366	2016-07-28 09:09:33.06366
1462	1055	1551	2016-07-28 09:09:33.067977	2016-07-28 09:09:33.067977
1463	1055	1552	2016-07-28 09:09:33.072065	2016-07-28 09:09:33.072065
1464	1055	1553	2016-07-28 09:09:33.076791	2016-07-28 09:09:33.076791
1465	1055	1554	2016-07-28 09:09:33.081107	2016-07-28 09:09:33.081107
1466	1055	1555	2016-07-28 09:09:33.084706	2016-07-28 09:09:33.084706
1467	1055	1556	2016-07-28 09:09:33.089065	2016-07-28 09:09:33.089065
1468	1055	1557	2016-07-28 09:09:33.093809	2016-07-28 09:09:33.093809
1469	1055	1558	2016-07-28 09:09:33.097749	2016-07-28 09:09:33.097749
1470	1055	1559	2016-07-28 09:09:33.101937	2016-07-28 09:09:33.101937
1471	1055	1560	2016-07-28 09:09:33.105741	2016-07-28 09:09:33.105741
1472	1055	1561	2016-07-28 09:09:33.109291	2016-07-28 09:09:33.109291
1473	1055	1562	2016-07-28 09:09:33.114103	2016-07-28 09:09:33.114103
1474	1055	1563	2016-07-28 09:09:33.11789	2016-07-28 09:09:33.11789
1475	1055	1564	2016-07-28 09:09:33.121951	2016-07-28 09:09:33.121951
1476	1055	1565	2016-07-28 09:09:33.125906	2016-07-28 09:09:33.125906
1477	1055	1566	2016-07-28 09:09:33.129952	2016-07-28 09:09:33.129952
1478	1055	1567	2016-07-28 09:09:33.135086	2016-07-28 09:09:33.135086
1479	1055	1568	2016-07-28 09:09:33.139142	2016-07-28 09:09:33.139142
1480	1055	1569	2016-07-28 09:09:33.142999	2016-07-28 09:09:33.142999
1481	1055	1570	2016-07-28 09:11:28.702502	2016-07-28 09:11:28.702502
1482	1055	1571	2016-07-28 09:11:28.721971	2016-07-28 09:11:28.721971
1483	1055	1572	2016-07-28 09:11:28.72837	2016-07-28 09:11:28.72837
1484	1055	1573	2016-07-28 09:11:28.734345	2016-07-28 09:11:28.734345
1485	1055	1574	2016-07-28 09:11:28.73957	2016-07-28 09:11:28.73957
1486	1056	1575	2016-07-28 09:11:28.745175	2016-07-28 09:11:28.745175
1487	1056	1576	2016-07-28 09:11:28.752176	2016-07-28 09:11:28.752176
1488	1056	1577	2016-07-28 09:11:28.757547	2016-07-28 09:11:28.757547
1489	1056	1578	2016-07-28 09:11:28.76338	2016-07-28 09:11:28.76338
1490	1056	1579	2016-07-28 09:11:28.769917	2016-07-28 09:11:28.769917
1491	1056	1580	2016-07-28 09:11:28.774891	2016-07-28 09:11:28.774891
1492	1072	1693	2016-08-07 05:04:43.231648	2016-08-07 05:04:43.231648
1493	1072	1582	2016-08-07 05:04:43.31655	2016-08-07 05:04:43.31655
1494	1072	1583	2016-08-07 05:04:43.326349	2016-08-07 05:04:43.326349
1495	1072	1584	2016-08-07 05:04:43.333064	2016-08-07 05:04:43.333064
1496	1072	1585	2016-08-07 05:04:43.337688	2016-08-07 05:04:43.337688
1497	1072	1586	2016-08-07 05:04:43.342978	2016-08-07 05:04:43.342978
1498	1072	1587	2016-08-07 05:04:43.348049	2016-08-07 05:04:43.348049
1499	1072	1588	2016-08-07 05:04:43.353824	2016-08-07 05:04:43.353824
1500	1072	1589	2016-08-07 05:04:43.358643	2016-08-07 05:04:43.358643
1501	1073	1590	2016-08-07 05:04:43.363301	2016-08-07 05:04:43.363301
1502	1073	1591	2016-08-07 05:04:43.367814	2016-08-07 05:04:43.367814
1503	1073	1592	2016-08-07 05:04:43.373381	2016-08-07 05:04:43.373381
1504	1073	1593	2016-08-07 05:04:43.38065	2016-08-07 05:04:43.38065
1505	1073	1594	2016-08-07 05:04:43.385919	2016-08-07 05:04:43.385919
1506	1073	1595	2016-08-07 05:04:43.3922	2016-08-07 05:04:43.3922
1507	1073	1596	2016-08-07 05:04:43.397499	2016-08-07 05:04:43.397499
1508	1073	1597	2016-08-07 05:04:43.402705	2016-08-07 05:04:43.402705
1509	1073	1598	2016-08-07 05:04:43.406689	2016-08-07 05:04:43.406689
1510	1073	1599	2016-08-07 05:04:43.410684	2016-08-07 05:04:43.410684
1511	1073	1600	2016-08-07 05:04:43.415639	2016-08-07 05:04:43.415639
1512	1073	1601	2016-08-07 05:04:43.420056	2016-08-07 05:04:43.420056
1513	1074	1602	2016-08-07 05:04:43.423992	2016-08-07 05:04:43.423992
1514	1074	1603	2016-08-07 05:04:43.428816	2016-08-07 05:04:43.428816
1515	1074	1604	2016-08-07 05:04:43.434202	2016-08-07 05:04:43.434202
1516	1074	1605	2016-08-07 05:04:43.44122	2016-08-07 05:04:43.44122
1517	1075	1606	2016-08-07 05:04:43.448342	2016-08-07 05:04:43.448342
1518	1075	1607	2016-08-07 05:04:43.459165	2016-08-07 05:04:43.459165
1519	1075	1608	2016-08-07 05:04:43.463683	2016-08-07 05:04:43.463683
1520	1075	1609	2016-08-07 05:04:43.467605	2016-08-07 05:04:43.467605
1521	1075	1610	2016-08-07 05:04:43.471648	2016-08-07 05:04:43.471648
1522	1076	1611	2016-08-07 05:04:43.475579	2016-08-07 05:04:43.475579
1523	1076	1612	2016-08-07 05:04:43.480874	2016-08-07 05:04:43.480874
1524	1076	1613	2016-08-07 05:04:43.485223	2016-08-07 05:04:43.485223
1525	1076	1614	2016-08-07 05:04:43.489522	2016-08-07 05:04:43.489522
1526	1076	1615	2016-08-07 05:04:43.494624	2016-08-07 05:04:43.494624
1527	1076	1616	2016-08-07 05:04:43.498583	2016-08-07 05:04:43.498583
1528	1076	1617	2016-08-07 05:04:43.503083	2016-08-07 05:04:43.503083
1529	1076	1618	2016-08-07 05:04:43.509077	2016-08-07 05:04:43.509077
1530	1076	1619	2016-08-07 05:04:43.514277	2016-08-07 05:04:43.514277
1531	1076	1620	2016-08-07 05:04:43.51927	2016-08-07 05:04:43.51927
1532	1076	1621	2016-08-07 05:04:43.524248	2016-08-07 05:04:43.524248
1533	1076	1622	2016-08-07 05:04:43.528688	2016-08-07 05:04:43.528688
1534	1077	1623	2016-08-07 05:04:43.536022	2016-08-07 05:04:43.536022
1535	1077	1624	2016-08-07 05:04:43.54108	2016-08-07 05:04:43.54108
1536	1077	1625	2016-08-07 05:04:43.547129	2016-08-07 05:04:43.547129
1537	1077	1626	2016-08-07 05:04:43.552899	2016-08-07 05:04:43.552899
1538	1077	1627	2016-08-07 05:04:43.558265	2016-08-07 05:04:43.558265
1539	1077	1628	2016-08-07 05:04:43.563307	2016-08-07 05:04:43.563307
1540	1077	1629	2016-08-07 05:04:43.56906	2016-08-07 05:04:43.56906
1541	1077	1630	2016-08-07 05:04:43.576199	2016-08-07 05:04:43.576199
1542	1077	1631	2016-08-07 05:04:43.581408	2016-08-07 05:04:43.581408
1543	1077	1632	2016-08-07 05:04:43.585992	2016-08-07 05:04:43.585992
1544	1077	1633	2016-08-07 05:04:43.592671	2016-08-07 05:04:43.592671
1545	1077	1634	2016-08-07 05:04:43.597638	2016-08-07 05:04:43.597638
1546	1078	1635	2016-08-07 05:04:43.602616	2016-08-07 05:04:43.602616
1547	1078	1636	2016-08-07 05:04:43.60754	2016-08-07 05:04:43.60754
1548	1078	1637	2016-08-07 05:04:43.612238	2016-08-07 05:04:43.612238
1549	1078	1638	2016-08-07 05:04:43.618273	2016-08-07 05:04:43.618273
1550	1078	1639	2016-08-07 05:04:43.622273	2016-08-07 05:04:43.622273
1551	1078	1640	2016-08-07 05:04:43.628231	2016-08-07 05:04:43.628231
1552	1078	1641	2016-08-07 05:04:43.632667	2016-08-07 05:04:43.632667
1553	1078	1642	2016-08-07 05:04:43.638421	2016-08-07 05:04:43.638421
1554	1078	1643	2016-08-07 05:04:43.643097	2016-08-07 05:04:43.643097
1555	1078	1644	2016-08-07 05:04:43.648496	2016-08-07 05:04:43.648496
1556	1078	1645	2016-08-07 05:04:43.653461	2016-08-07 05:04:43.653461
1557	1078	1646	2016-08-07 05:04:43.669426	2016-08-07 05:04:43.669426
1558	1079	1647	2016-08-07 05:04:43.674405	2016-08-07 05:04:43.674405
1559	1079	1648	2016-08-07 05:04:43.679079	2016-08-07 05:04:43.679079
1560	1079	1649	2016-08-07 05:04:43.684473	2016-08-07 05:04:43.684473
1561	1079	1650	2016-08-07 05:04:43.689739	2016-08-07 05:04:43.689739
1562	1079	1651	2016-08-07 05:04:43.694254	2016-08-07 05:04:43.694254
1563	1079	1652	2016-08-07 05:04:43.698992	2016-08-07 05:04:43.698992
1564	1079	1653	2016-08-07 05:04:43.703608	2016-08-07 05:04:43.703608
1565	1080	1654	2016-08-07 05:04:43.709415	2016-08-07 05:04:43.709415
1566	1080	1655	2016-08-07 05:04:43.715005	2016-08-07 05:04:43.715005
1567	1080	1656	2016-08-07 05:04:43.71977	2016-08-07 05:04:43.71977
1568	1080	1657	2016-08-07 05:04:43.724333	2016-08-07 05:04:43.724333
1569	1080	1658	2016-08-07 05:04:43.729737	2016-08-07 05:04:43.729737
1570	1080	1659	2016-08-07 05:04:43.735186	2016-08-07 05:04:43.735186
1571	1080	1660	2016-08-07 05:04:43.740516	2016-08-07 05:04:43.740516
1572	1080	1661	2016-08-07 05:04:43.746041	2016-08-07 05:04:43.746041
1573	1080	1662	2016-08-07 05:04:43.751802	2016-08-07 05:04:43.751802
1574	1080	1663	2016-08-07 05:04:43.757064	2016-08-07 05:04:43.757064
1575	1080	1664	2016-08-07 05:04:43.762333	2016-08-07 05:04:43.762333
1576	1081	1665	2016-08-07 05:04:43.767914	2016-08-07 05:04:43.767914
1577	1081	1666	2016-08-07 05:04:43.773609	2016-08-07 05:04:43.773609
1578	1081	1667	2016-08-07 05:04:43.778277	2016-08-07 05:04:43.778277
1579	1081	1668	2016-08-07 05:04:43.78311	2016-08-07 05:04:43.78311
1580	1081	1669	2016-08-07 05:04:43.789933	2016-08-07 05:04:43.789933
1581	1081	1670	2016-08-07 05:04:43.796219	2016-08-07 05:04:43.796219
1583	1081	1671	2016-08-07 05:04:43.802303	2016-08-07 05:04:43.802303
1584	1081	1672	2016-08-07 05:04:43.807372	2016-08-07 05:04:43.807372
1585	1081	1673	2016-08-07 05:04:43.812543	2016-08-07 05:04:43.812543
1586	1082	1674	2016-08-07 05:04:43.820592	2016-08-07 05:04:43.820592
1587	1082	1675	2016-08-07 05:04:43.827549	2016-08-07 05:04:43.827549
1588	1082	1676	2016-08-07 05:04:43.833189	2016-08-07 05:04:43.833189
1589	1082	1677	2016-08-07 05:04:43.837909	2016-08-07 05:04:43.837909
1590	1082	1678	2016-08-07 05:04:43.843852	2016-08-07 05:04:43.843852
1591	1083	1679	2016-08-07 05:04:43.849825	2016-08-07 05:04:43.849825
1592	1083	1680	2016-08-07 05:04:43.855133	2016-08-07 05:04:43.855133
1593	1083	1681	2016-08-07 05:04:43.859513	2016-08-07 05:04:43.859513
1594	1083	1682	2016-08-07 05:04:43.864674	2016-08-07 05:04:43.864674
1595	1084	1683	2016-08-07 05:04:43.870717	2016-08-07 05:04:43.870717
1596	1084	1684	2016-08-07 05:04:43.885273	2016-08-07 05:04:43.885273
1597	1084	1685	2016-08-07 05:04:43.891962	2016-08-07 05:04:43.891962
1598	1084	1686	2016-08-07 05:04:43.896705	2016-08-07 05:04:43.896705
1599	1084	1687	2016-08-07 05:04:43.919303	2016-08-07 05:04:43.919303
1600	1084	1688	2016-08-07 05:04:43.923639	2016-08-07 05:04:43.923639
1601	1084	1689	2016-08-07 05:04:43.927428	2016-08-07 05:04:43.927428
1602	1084	1690	2016-08-07 05:04:43.931227	2016-08-07 05:04:43.931227
1603	1084	1691	2016-08-07 05:04:43.934665	2016-08-07 05:04:43.934665
1604	1084	1692	2016-08-07 05:04:43.939151	2016-08-07 05:04:43.939151
\.


--
-- Name: categorydetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('categorydetails_id_seq', 1608, true);


--
-- Data for Name: code_autocompletes; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY code_autocompletes (id, term, popularity, created_at, updated_at) FROM stdin;
\.


--
-- Name: code_autocompletes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('code_autocompletes_id_seq', 1, false);


--
-- Data for Name: codes; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY codes (id, name, description, category_id, dependency_id, note, thumbnail, price, agree, slug, url_demo, user_id, created_at, updated_at, codesub_id, video_demo, price_ext, team_id, reject, average_rate, sell) FROM stdin;
14	Fluid Responsive Magento Theme	<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/1962a9f7fa08b12fcc10d854bf5f2d58dfc6c53e/687474703a2f2f756c74696d6f2e696e666f727469732d7468656d65732e636f6d2f5f656e7661746f2f637573746f6d2d64657369676e2d312e706e67" style="height:891px; width:616px" /></p>\r\n\r\n<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/cc5841810e89f5fa177b87c38e0868cd47d536b8/687474703a2f2f756c74696d6f2e696e666f727469732d7468656d65732e636f6d2f5f656e7661746f2f637573746f6d2d64657369676e2d322e706e67" /></p>\r\n\r\n<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/47110d09408ecb7c5a33fbc1ae4e7de0b4823fa9/687474703a2f2f756c74696d6f2e696e666f727469732d7468656d65732e636f6d2f5f656e7661746f2f726573706f6e736976652d312e706e67" style="height:500px; width:616px" /></p>\r\n	1012	115		08b945d895c46b01742f1a6367365914182bff75512c09ac00.png	37.0	t	fluid-responsive-magento-theme	http://preview.themeforest.net/item/ultimo-fluid-responsive-magento-theme/full_screen_preview/3231798	19	2016-09-06 16:38:05.758789	2016-09-06 16:48:51.450427	32		2464.0	1	f	\N	2
9	Media Share Plugin for phpDolphin	<img alt="" src="https://0.s3.envato.com/files/155201986/Preview/17_ProfileBanner.jpg" style="height:685px; width:616px" />	1012	118	nothing!	f4751f938e18243ce4a56360f39eba6a2888f4dbb8caf837d8.png	12.0	t	media-share-plugin-for-phpdolphin	https://codecanyon.net/item/media-share-plugin-for-phpdolphin/screenshots/17106005	18	2016-07-21 04:58:29.754464	2016-09-06 17:26:16.881958	17	https://www.youtube.com/watch?v=xI5WnpecnWs	1387.0	1	f	\N	1
13	SEO, Digital Marketing, Social Media Theme	<img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/7657caae4e1479f60d43d56d330ba96bf21542ba/687474703a2f2f6f7074696d697a652e6d696b61646f2d7468656d65732e636f6d2f70726f66696c655f696d616765732f30312e706e67" style="height:9500px; width:616px" /><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/7657caae4e1479f60d43d56d330ba96bf21542ba/687474703a2f2f6f7074696d697a652e6d696b61646f2d7468656d65732e636f6d2f70726f66696c655f696d616765732f30312e706e67" style="height:9500px; width:616px" />	1013	\N		d7b73f93ef702a6b58762b6e839a35771f54331989fd83a135.png	\N	f	seo-digital-marketing-social-media-theme	http://preview.themeforest.net/item/optimize-seo-digital-marketing-social-media-theme/full_screen_preview/14521258	19	2016-08-29 18:29:15.963785	2016-11-07 19:55:11.616668	92		\N	\N	f	\N	0
16	Resizable Multicolor Countdown	<img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/e6efc95ae4bff68f94934d7a6a0c46911a5bcdec/687474703a2f2f64656d6f2e77706672756974732e636f6d2f707265766965772f63632f646e2d627573696e6573732d686f7572732f66656174757265732e6a7067" style="height:6306px; width:616px" />	1021	151		2b01f4a4f8c7d51781727833a89d0aa9e740098bf85dd23671.png	\N	f	resizable-multicolor-countdown	https://codecanyon.net/item/day-night-business-hours-wordpress-plugin/full_screen_preview/18034739	18	2016-10-11 12:21:32.847266	2016-10-11 12:29:36.352034	\N		\N	\N	f	\N	0
\.


--
-- Name: codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('codes_id_seq', 16, true);


--
-- Data for Name: codesubs; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY codesubs (id, name, subcategory_id, created_at, updated_at) FROM stdin;
1	CakePHP 3.2.7	1133	2016-07-20 09:51:33.069514	2016-07-20 09:51:33.069514
2	CakePHP 3.2.8	1133	2016-07-20 09:51:33.084472	2016-07-20 09:51:33.084472
3	CakePHP 2.8.4	1133	2016-07-20 09:51:33.089519	2016-07-20 09:51:33.089519
4	CakePHP 3.2.9	1133	2016-07-20 09:51:33.094003	2016-07-20 09:51:33.094003
5	CakePHP 3.2.10	1133	2016-07-20 09:51:33.099485	2016-07-20 09:51:33.099485
6	CakePHP 2.8.5	1133	2016-07-20 09:51:33.103673	2016-07-20 09:51:33.103673
7	CakePHP 3.2.11	1133	2016-07-20 09:51:33.107463	2016-07-20 09:51:33.107463
8	CakePHP 3.2.12	1133	2016-07-20 09:51:33.112814	2016-07-20 09:51:33.112814
9	CakePHP 3.3.0	1133	2016-07-20 09:51:33.126138	2016-07-20 09:51:33.126138
10	CodeIgniter 2.1.0	1134	2016-07-20 09:51:33.133372	2016-07-20 09:51:33.133372
11	CodeIgniter 2.2.0	1134	2016-07-20 09:51:33.139093	2016-07-20 09:51:33.139093
12	CodeIgniter 2.2.6	1134	2016-07-20 09:51:33.144033	2016-07-20 09:51:33.144033
13	CodeIgniter 3.0.6	1134	2016-07-20 09:51:33.148709	2016-07-20 09:51:33.148709
14	Laravel 4.2	1135	2016-07-20 09:51:33.153985	2016-07-20 09:51:33.153985
15	Laravel 5.0	1135	2016-07-20 09:51:33.159219	2016-07-20 09:51:33.159219
16	Laravel 5.1	1135	2016-07-20 09:51:33.163779	2016-07-20 09:51:33.163779
17	Laravel 5.2	1135	2016-07-20 09:51:33.168622	2016-07-20 09:51:33.168622
18	Symfony 2.0	1136	2016-07-20 09:51:33.174488	2016-07-20 09:51:33.174488
19	Symfony 2.1	1136	2016-07-20 09:51:33.179384	2016-07-20 09:51:33.179384
20	Symfony 2.2	1136	2016-07-20 09:51:33.184348	2016-07-20 09:51:33.184348
21	Symfony 2.3	1136	2016-07-20 09:51:33.188981	2016-07-20 09:51:33.188981
22	Symfony 2.4	1136	2016-07-20 09:51:33.194583	2016-07-20 09:51:33.194583
23	Symfony 2.5	1136	2016-07-20 09:51:33.199331	2016-07-20 09:51:33.199331
24	Symfony 2.6	1136	2016-07-20 09:51:33.205153	2016-07-20 09:51:33.205153
25	Symfony 2.7	1136	2016-07-20 09:51:33.210039	2016-07-20 09:51:33.210039
26	Symfony 2.8	1136	2016-07-20 09:51:33.2166	2016-07-20 09:51:33.2166
27	Symfony 3.0	1136	2016-07-20 09:51:33.221267	2016-07-20 09:51:33.221267
28	Symfony 3.1	1136	2016-07-20 09:51:33.226153	2016-07-20 09:51:33.226153
29	Symfony 3.2	1136	2016-07-20 09:51:33.231876	2016-07-20 09:51:33.231876
30	YiiFramework 1.1.x	1137	2016-07-20 09:51:33.236471	2016-07-20 09:51:33.236471
31	YiiFramework 2.0	1137	2016-07-20 09:51:33.242507	2016-07-20 09:51:33.242507
32	YiiFramework 2.0.2	1137	2016-07-20 09:51:33.248289	2016-07-20 09:51:33.248289
33	YiiFramework 2.0.3	1137	2016-07-20 09:51:33.255006	2016-07-20 09:51:33.255006
34	YiiFramework 2.0.4	1137	2016-07-20 09:51:33.260359	2016-07-20 09:51:33.260359
35	YiiFramework 2.0.5	1137	2016-07-20 09:51:33.265929	2016-07-20 09:51:33.265929
36	YiiFramework 2.0.6	1137	2016-07-20 09:51:33.271441	2016-07-20 09:51:33.271441
37	YiiFramework 2.0.7	1137	2016-07-20 09:51:33.276401	2016-07-20 09:51:33.276401
38	YiiFramework 2.0.8	1137	2016-07-20 09:51:33.282143	2016-07-20 09:51:33.282143
39	YiiFramework 2.0.9	1137	2016-07-20 09:51:33.28994	2016-07-20 09:51:33.28994
40	Zend Framework 1.x.x	1138	2016-07-20 09:51:33.295418	2016-07-20 09:51:33.295418
41	Zend Framework 2.0.0	1138	2016-07-20 09:51:33.300402	2016-07-20 09:51:33.300402
42	Zend Framework 2.0.x	1138	2016-07-20 09:51:33.307187	2016-07-20 09:51:33.307187
43	Zend Framework 2.1.x	1138	2016-07-20 09:51:33.311989	2016-07-20 09:51:33.311989
44	Zend Framework 2.2.x	1138	2016-07-20 09:51:33.318329	2016-07-20 09:51:33.318329
45	Zend Framework 2.3.x	1138	2016-07-20 09:51:33.324572	2016-07-20 09:51:33.324572
46	Zend Framework 2.4.x	1138	2016-07-20 09:51:33.329864	2016-07-20 09:51:33.329864
47	Joomla 1.5.x	1139	2016-07-20 09:51:33.335418	2016-07-20 09:51:33.335418
48	Joomla 1.6.x	1139	2016-07-20 09:51:33.343801	2016-07-20 09:51:33.343801
49	Joomla 1.7.x	1139	2016-07-20 09:51:33.356392	2016-07-20 09:51:33.356392
50	Joomla 2.5.x	1139	2016-07-20 09:51:33.366861	2016-07-20 09:51:33.366861
51	Joomla 3.0.x	1139	2016-07-20 09:51:33.372813	2016-07-20 09:51:33.372813
52	Joomla 3.1.x	1139	2016-07-20 09:51:33.379805	2016-07-20 09:51:33.379805
53	Joomla 3.2.x	1139	2016-07-20 09:51:33.385046	2016-07-20 09:51:33.385046
54	Joomla 3.3.x	1139	2016-07-20 09:51:33.391738	2016-07-20 09:51:33.391738
55	Joomla 3.4.x	1139	2016-07-20 09:51:33.396964	2016-07-20 09:51:33.396964
56	Joomla 3.5.x	1139	2016-07-20 09:51:33.401776	2016-07-20 09:51:33.401776
57	Magento 1.9.2.4	1140	2016-07-20 09:51:33.407831	2016-07-20 09:51:33.407831
58	Magento 2.0.0	1140	2016-07-20 09:51:33.413143	2016-07-20 09:51:33.413143
59	Magento 2.0.1	1140	2016-07-20 09:51:33.419926	2016-07-20 09:51:33.419926
60	Magento 2.0.2	1140	2016-07-20 09:51:33.42533	2016-07-20 09:51:33.42533
61	Magento 2.0.3	1140	2016-07-20 09:51:33.431872	2016-07-20 09:51:33.431872
62	Magento 2.0.4	1140	2016-07-20 09:51:33.436062	2016-07-20 09:51:33.436062
63	Magento 2.0.5	1140	2016-07-20 09:51:33.441499	2016-07-20 09:51:33.441499
64	Magento 2.0.6	1140	2016-07-20 09:51:33.447493	2016-07-20 09:51:33.447493
65	PrestaShop 0.9	1141	2016-07-20 09:51:33.453892	2016-07-20 09:51:33.453892
66	PrestaShop 1.0	1141	2016-07-20 09:51:33.458681	2016-07-20 09:51:33.458681
67	PrestaShop 1.1	1141	2016-07-20 09:51:33.463859	2016-07-20 09:51:33.463859
68	PrestaShop 1.2	1141	2016-07-20 09:51:33.469339	2016-07-20 09:51:33.469339
69	PrestaShop 1.3	1141	2016-07-20 09:51:33.474892	2016-07-20 09:51:33.474892
70	PrestaShop 1.4	1141	2016-07-20 09:51:33.479995	2016-07-20 09:51:33.479995
71	PrestaShop 1.5	1141	2016-07-20 09:51:33.486011	2016-07-20 09:51:33.486011
72	PrestaShop 1.6	1141	2016-07-20 09:51:33.491049	2016-07-20 09:51:33.491049
73	PrestaShop 1.7	1141	2016-07-20 09:51:33.495972	2016-07-20 09:51:33.495972
74	Wordpress 4.0	1142	2016-07-20 09:51:33.500921	2016-07-20 09:51:33.500921
75	Wordpress 4.1	1142	2016-07-20 09:51:33.505282	2016-07-20 09:51:33.505282
76	Wordpress 4.2	1142	2016-07-20 09:51:33.509765	2016-07-20 09:51:33.509765
77	Wordpress 4.3	1142	2016-07-20 09:51:33.514377	2016-07-20 09:51:33.514377
78	Wordpress 4.4.0	1142	2016-07-20 09:51:33.519675	2016-07-20 09:51:33.519675
79	Wordpress 4.4.1	1142	2016-07-20 09:51:33.524319	2016-07-20 09:51:33.524319
80	Wordpress 4.4.2	1142	2016-07-20 09:51:33.528747	2016-07-20 09:51:33.528747
81	Wordpress 4.5	1142	2016-07-20 09:51:33.534193	2016-07-20 09:51:33.534193
82	Wordpress 4.5.1	1142	2016-07-20 09:51:33.540111	2016-07-20 09:51:33.540111
83	Wordpress 4.5.2	1142	2016-07-20 09:51:33.544664	2016-07-20 09:51:33.544664
84	AngularJS 1.0	1143	2016-07-20 09:51:33.553768	2016-07-20 09:51:33.553768
85	AngularJS 1.2	1143	2016-07-20 09:51:33.561287	2016-07-20 09:51:33.561287
86	AngularJS 1.3	1143	2016-07-20 09:51:33.568155	2016-07-20 09:51:33.568155
87	AngularJS 1.4	1143	2016-07-20 09:51:33.579219	2016-07-20 09:51:33.579219
88	AngularJS 1.5	1143	2016-07-20 09:51:33.587236	2016-07-20 09:51:33.587236
89	ReactJS 0.14.8	1144	2016-07-20 09:51:33.595589	2016-07-20 09:51:33.595589
90	ReactJS 15.0	1144	2016-07-20 09:51:33.600243	2016-07-20 09:51:33.600243
91	ReactJS 15.0.1	1144	2016-07-20 09:51:33.605101	2016-07-20 09:51:33.605101
92	Dojo 1.6	1145	2016-07-20 09:51:33.609784	2016-07-20 09:51:33.609784
93	Dojo 1.7	1145	2016-07-20 09:51:33.615729	2016-07-20 09:51:33.615729
94	Dojo 1.8	1145	2016-07-20 09:51:33.620617	2016-07-20 09:51:33.620617
95	Dojo 1.9	1145	2016-07-20 09:51:33.625309	2016-07-20 09:51:33.625309
96	Dojo 1.10	1145	2016-07-20 09:51:33.629891	2016-07-20 09:51:33.629891
97	jQuery 1.0	1146	2016-07-20 09:51:33.634675	2016-07-20 09:51:33.634675
98	jQuery 1.0.x	1146	2016-07-20 09:51:33.639223	2016-07-20 09:51:33.639223
99	jQuery 1.1.x	1146	2016-07-20 09:51:33.64348	2016-07-20 09:51:33.64348
100	jQuery 1.2.x	1146	2016-07-20 09:51:33.665076	2016-07-20 09:51:33.665076
101	jQuery 1.3.x	1146	2016-07-20 09:51:33.66952	2016-07-20 09:51:33.66952
102	jQuery 1.4.x	1146	2016-07-20 09:51:33.673111	2016-07-20 09:51:33.673111
103	jQuery 1.5.x	1146	2016-07-20 09:51:33.676744	2016-07-20 09:51:33.676744
104	jQuery 1.6.x	1146	2016-07-20 09:51:33.681232	2016-07-20 09:51:33.681232
105	jQuery 1.7.x	1146	2016-07-20 09:51:33.68665	2016-07-20 09:51:33.68665
106	jQuery 1.8.x	1146	2016-07-20 09:51:33.690706	2016-07-20 09:51:33.690706
107	jQuery 1.9.x	1146	2016-07-20 09:51:33.696475	2016-07-20 09:51:33.696475
108	jQuery 1.10.x	1146	2016-07-20 09:51:33.701846	2016-07-20 09:51:33.701846
109	jQuery 1.11.x	1146	2016-07-20 09:51:33.706497	2016-07-20 09:51:33.706497
110	jQuery 1.12.x	1146	2016-07-20 09:51:33.710668	2016-07-20 09:51:33.710668
111	jQuery 2.0.x	1146	2016-07-20 09:51:33.714898	2016-07-20 09:51:33.714898
112	jQuery 2.1.x	1146	2016-07-20 09:51:33.719384	2016-07-20 09:51:33.719384
113	jQuery 2.2.x	1146	2016-07-20 09:51:33.724628	2016-07-20 09:51:33.724628
114	jQuery 3.0.0	1146	2016-07-20 09:51:33.731041	2016-07-20 09:51:33.731041
115	jQuery 3.1.0	1146	2016-07-20 09:51:33.735462	2016-07-20 09:51:33.735462
116	Prototype 1.5.0	1148	2016-07-20 09:51:33.739669	2016-07-20 09:51:33.739669
117	Prototype 1.5.1	1148	2016-07-20 09:51:33.744265	2016-07-20 09:51:33.744265
118	Prototype 1.5.1.1	1148	2016-07-20 09:51:33.748247	2016-07-20 09:51:33.748247
119	Prototype 1.5.1.2	1148	2016-07-20 09:51:33.755606	2016-07-20 09:51:33.755606
120	Prototype 1.6.0	1148	2016-07-20 09:51:33.761555	2016-07-20 09:51:33.761555
121	Prototype 1.6.0.2	1148	2016-07-20 09:51:33.766922	2016-07-20 09:51:33.766922
122	Prototype 1.6.0.3	1148	2016-07-20 09:51:33.771627	2016-07-20 09:51:33.771627
123	Prototype 1.6.1	1148	2016-07-20 09:51:33.776353	2016-07-20 09:51:33.776353
124	Prototype 1.7.1	1148	2016-07-20 09:51:33.781791	2016-07-20 09:51:33.781791
125	Prototype 1.7.2	1148	2016-07-20 09:51:33.786239	2016-07-20 09:51:33.786239
126	Prototype 1.7.3	1148	2016-07-20 09:51:33.790835	2016-07-20 09:51:33.790835
127	MooTools 1.2.6	1147	2016-07-20 09:51:33.796244	2016-07-20 09:51:33.796244
128	MooTools 1.3.2	1147	2016-07-20 09:51:33.803593	2016-07-20 09:51:33.803593
129	MooTools 1.4.5	1147	2016-07-20 09:51:33.813146	2016-07-20 09:51:33.813146
130	MooTools 1.5.1	1147	2016-07-20 09:51:33.820042	2016-07-20 09:51:33.820042
131	MooTools 1.5.2	1147	2016-07-20 09:51:33.826931	2016-07-20 09:51:33.826931
132	MooTools 1.6.0	1147	2016-07-20 09:51:33.831295	2016-07-20 09:51:33.831295
133	Titanium Appcelerator	1149	2016-07-20 09:51:33.836226	2016-07-20 09:51:33.836226
134	Node.js v6.3.0  	1150	2016-07-20 09:51:33.840133	2016-07-20 09:51:33.840133
135	Node.js v6.2.2  	1150	2016-07-20 09:51:33.843724	2016-07-20 09:51:33.843724
136	Node.js v6.2.1  	1150	2016-07-20 09:51:33.848235	2016-07-20 09:51:33.848235
137	Node.js v6.2.0  	1150	2016-07-20 09:51:33.851853	2016-07-20 09:51:33.851853
138	Node.js v6.1.0  	1150	2016-07-20 09:51:33.855272	2016-07-20 09:51:33.855272
139	Node.js v6.0.0  	1150	2016-07-20 09:51:33.859248	2016-07-20 09:51:33.859248
140	Node.js v5.12.0 	1150	2016-07-20 09:51:33.863508	2016-07-20 09:51:33.863508
141	Node.js v5.11.1 	1150	2016-07-20 09:51:33.867721	2016-07-20 09:51:33.867721
142	Node.js v5.11.0 	1150	2016-07-20 09:51:33.872651	2016-07-20 09:51:33.872651
143	Node.js v5.10.1 	1150	2016-07-20 09:51:33.876863	2016-07-20 09:51:33.876863
144	Node.js v5.10.0 	1150	2016-07-20 09:51:33.880963	2016-07-20 09:51:33.880963
145	Node.js v5.9.1  	1150	2016-07-20 09:51:33.884997	2016-07-20 09:51:33.884997
146	Node.js v5.9.0  	1150	2016-07-20 09:51:33.889254	2016-07-20 09:51:33.889254
147	Node.js v5.8.0  	1150	2016-07-20 09:51:33.893762	2016-07-20 09:51:33.893762
148	Node.js v5.7.1  	1150	2016-07-20 09:51:33.897865	2016-07-20 09:51:33.897865
149	Node.js v5.7.0  	1150	2016-07-20 09:51:33.901879	2016-07-20 09:51:33.901879
150	Node.js v5.6.0  	1150	2016-07-20 09:51:33.906349	2016-07-20 09:51:33.906349
151	Node.js v5.5.0  	1150	2016-07-20 09:51:33.910453	2016-07-20 09:51:33.910453
152	Node.js v5.4.1  	1150	2016-07-20 09:51:33.91433	2016-07-20 09:51:33.91433
153	Node.js v5.4.0  	1150	2016-07-20 09:51:33.918223	2016-07-20 09:51:33.918223
154	Node.js v5.3.0  	1150	2016-07-20 09:51:33.922269	2016-07-20 09:51:33.922269
155	Node.js v5.2.0  	1150	2016-07-20 09:51:33.925987	2016-07-20 09:51:33.925987
156	Node.js v5.1.1  	1150	2016-07-20 09:51:33.930016	2016-07-20 09:51:33.930016
157	Node.js v5.1.0  	1150	2016-07-20 09:51:33.934202	2016-07-20 09:51:33.934202
158	Node.js v5.0.0  	1150	2016-07-20 09:51:33.93891	2016-07-20 09:51:33.93891
159	Node.js v4.4.7\t 	1150	2016-07-20 09:51:33.942957	2016-07-20 09:51:33.942957
160	Node.js v4.4.6\t 	1150	2016-07-20 09:51:33.946682	2016-07-20 09:51:33.946682
161	Node.js v4.4.5\t 	1150	2016-07-20 09:51:33.951672	2016-07-20 09:51:33.951672
162	Node.js v4.4.4\t 	1150	2016-07-20 09:51:33.956132	2016-07-20 09:51:33.956132
163	Node.js v4.4.3\t 	1150	2016-07-20 09:51:33.960066	2016-07-20 09:51:33.960066
164	Node.js v4.4.2\t 	1150	2016-07-20 09:51:33.965231	2016-07-20 09:51:33.965231
165	Node.js v4.4.1\t 	1150	2016-07-20 09:51:33.969872	2016-07-20 09:51:33.969872
166	Node.js v4.4.0\t 	1150	2016-07-20 09:51:33.973894	2016-07-20 09:51:33.973894
167	Node.js v4.3.2\t 	1150	2016-07-20 09:51:33.977856	2016-07-20 09:51:33.977856
168	Node.js v4.3.1\t 	1150	2016-07-20 09:51:33.981958	2016-07-20 09:51:33.981958
169	Node.js v4.3.0\t 	1150	2016-07-20 09:51:33.985994	2016-07-20 09:51:33.985994
170	Node.js v4.2.6\t 	1150	2016-07-20 09:51:33.990706	2016-07-20 09:51:33.990706
171	Node.js v4.2.5\t 	1150	2016-07-20 09:51:33.994831	2016-07-20 09:51:33.994831
172	Node.js v4.2.4\t 	1150	2016-07-20 09:51:33.998802	2016-07-20 09:51:33.998802
173	Node.js v4.2.3\t 	1150	2016-07-20 09:51:34.002619	2016-07-20 09:51:34.002619
174	Node.js v4.2.2\t 	1150	2016-07-20 09:51:34.007251	2016-07-20 09:51:34.007251
175	Node.js v4.2.1\t 	1150	2016-07-20 09:51:34.011187	2016-07-20 09:51:34.011187
176	Node.js v4.2.0\t 	1150	2016-07-20 09:51:34.015179	2016-07-20 09:51:34.015179
177	Node.js v4.1.2  	1150	2016-07-20 09:51:34.019169	2016-07-20 09:51:34.019169
178	Node.js v4.1.1  	1150	2016-07-20 09:51:34.023161	2016-07-20 09:51:34.023161
179	Node.js v4.1.0  	1150	2016-07-20 09:51:34.027295	2016-07-20 09:51:34.027295
180	Node.js v4.0.0  	1150	2016-07-20 09:51:34.039099	2016-07-20 09:51:34.039099
181	Node.js v0.12.1 	1150	2016-07-20 09:51:34.046365	2016-07-20 09:51:34.046365
182	Node.js v0.12.1 	1150	2016-07-20 09:51:34.050187	2016-07-20 09:51:34.050187
183	Node.js v0.12.1 	1150	2016-07-20 09:51:34.054235	2016-07-20 09:51:34.054235
184	Node.js v0.12.1 	1150	2016-07-20 09:51:34.058345	2016-07-20 09:51:34.058345
185	Node.js v0.12.1 	1150	2016-07-20 09:51:34.062411	2016-07-20 09:51:34.062411
186	Node.js v0.12.1 	1150	2016-07-20 09:51:34.066325	2016-07-20 09:51:34.066325
187	Node.js v0.12.9 	1150	2016-07-20 09:51:34.070343	2016-07-20 09:51:34.070343
188	Node.js v0.12.8 	1150	2016-07-20 09:51:34.074248	2016-07-20 09:51:34.074248
189	Node.js v0.12.7 	1150	2016-07-20 09:51:34.078288	2016-07-20 09:51:34.078288
190	Node.js v0.12.6 	1150	2016-07-20 09:51:34.082468	2016-07-20 09:51:34.082468
191	Node.js v0.12.5 	1150	2016-07-20 09:51:34.087198	2016-07-20 09:51:34.087198
192	Node.js v0.12.4 	1150	2016-07-20 09:51:34.094124	2016-07-20 09:51:34.094124
193	Node.js v0.12.3 	1150	2016-07-20 09:51:34.098434	2016-07-20 09:51:34.098434
194	Node.js v0.12.2 	1150	2016-07-20 09:51:34.102544	2016-07-20 09:51:34.102544
195	Node.js v0.12.1 	1150	2016-07-20 09:51:34.107093	2016-07-20 09:51:34.107093
196	Node.js v0.12.0 	1150	2016-07-20 09:51:34.111485	2016-07-20 09:51:34.111485
197	Node.js v0.11.1 	1150	2016-07-20 09:51:34.115584	2016-07-20 09:51:34.115584
198	Node.js v0.11.1 	1150	2016-07-20 09:51:34.119394	2016-07-20 09:51:34.119394
199	Node.js v0.11.1 	1150	2016-07-20 09:51:34.123479	2016-07-20 09:51:34.123479
200	Node.js v0.11.1 	1150	2016-07-20 09:51:34.127172	2016-07-20 09:51:34.127172
201	Node.js v0.11.1 	1150	2016-07-20 09:51:34.131222	2016-07-20 09:51:34.131222
202	Node.js v0.11.1 	1150	2016-07-20 09:51:34.135216	2016-07-20 09:51:34.135216
203	Node.js v0.11.1 	1150	2016-07-20 09:51:34.139122	2016-07-20 09:51:34.139122
204	Node.js v0.11.9 	1150	2016-07-20 09:51:34.143064	2016-07-20 09:51:34.143064
205	Node.js v0.11.8 	1150	2016-07-20 09:51:34.147156	2016-07-20 09:51:34.147156
206	Node.js v0.11.7 	1150	2016-07-20 09:51:34.151661	2016-07-20 09:51:34.151661
207	Node.js v0.11.6 	1150	2016-07-20 09:51:34.155727	2016-07-20 09:51:34.155727
208	Node.js v0.11.5 	1150	2016-07-20 09:51:34.16024	2016-07-20 09:51:34.16024
209	Node.js v0.11.4 	1150	2016-07-20 09:51:34.163983	2016-07-20 09:51:34.163983
210	Node.js v0.11.3 	1150	2016-07-20 09:51:34.167849	2016-07-20 09:51:34.167849
211	Node.js v0.11.2 	1150	2016-07-20 09:51:34.171976	2016-07-20 09:51:34.171976
212	Node.js v0.11.1 	1150	2016-07-20 09:51:34.177051	2016-07-20 09:51:34.177051
213	Node.js v0.11.0 	1150	2016-07-20 09:51:34.181054	2016-07-20 09:51:34.181054
214	Node.js v0.10.4 	1150	2016-07-20 09:51:34.184913	2016-07-20 09:51:34.184913
215	Node.js v0.10.4 	1150	2016-07-20 09:51:34.188859	2016-07-20 09:51:34.188859
216	Node.js v0.10.4 	1150	2016-07-20 09:51:34.192915	2016-07-20 09:51:34.192915
217	Node.js v0.10.4 	1150	2016-07-20 09:51:34.197053	2016-07-20 09:51:34.197053
218	Node.js v0.10.4 	1150	2016-07-20 09:51:34.201207	2016-07-20 09:51:34.201207
219	Node.js v0.10.4 	1150	2016-07-20 09:51:34.20602	2016-07-20 09:51:34.20602
220	Node.js v0.10.4 	1150	2016-07-20 09:51:34.210346	2016-07-20 09:51:34.210346
221	Node.js v0.10.3 	1150	2016-07-20 09:51:34.213791	2016-07-20 09:51:34.213791
222	Node.js v0.10.3 	1150	2016-07-20 09:51:34.218204	2016-07-20 09:51:34.218204
223	Node.js v0.10.3 	1150	2016-07-20 09:51:34.222186	2016-07-20 09:51:34.222186
224	Node.js v0.10.3 	1150	2016-07-20 09:51:34.225796	2016-07-20 09:51:34.225796
225	Node.js v0.10.3 	1150	2016-07-20 09:51:34.229765	2016-07-20 09:51:34.229765
226	Node.js v0.10.3 	1150	2016-07-20 09:51:34.233371	2016-07-20 09:51:34.233371
227	Node.js v0.10.3 	1150	2016-07-20 09:51:34.238123	2016-07-20 09:51:34.238123
228	Node.js v0.10.3 	1150	2016-07-20 09:51:34.242751	2016-07-20 09:51:34.242751
229	Node.js v0.10.3 	1150	2016-07-20 09:51:34.250019	2016-07-20 09:51:34.250019
230	Node.js v0.10.3 	1150	2016-07-20 09:51:34.260771	2016-07-20 09:51:34.260771
231	Node.js v0.10.2 	1150	2016-07-20 09:51:34.266812	2016-07-20 09:51:34.266812
232	Node.js v0.10.2 	1150	2016-07-20 09:51:34.270829	2016-07-20 09:51:34.270829
233	Node.js v0.10.2 	1150	2016-07-20 09:51:34.274624	2016-07-20 09:51:34.274624
234	Node.js v0.10.2 	1150	2016-07-20 09:51:34.279126	2016-07-20 09:51:34.279126
235	Node.js v0.10.2 	1150	2016-07-20 09:51:34.284225	2016-07-20 09:51:34.284225
236	Node.js v0.10.2 	1150	2016-07-20 09:51:34.287803	2016-07-20 09:51:34.287803
237	Node.js v0.10.2 	1150	2016-07-20 09:51:34.291923	2016-07-20 09:51:34.291923
238	Node.js v0.10.2 	1150	2016-07-20 09:51:34.296857	2016-07-20 09:51:34.296857
239	Node.js v0.10.2 	1150	2016-07-20 09:51:34.300696	2016-07-20 09:51:34.300696
240	Node.js v0.10.2 	1150	2016-07-20 09:51:34.304929	2016-07-20 09:51:34.304929
241	Node.js v0.10.1 	1150	2016-07-20 09:51:34.309131	2016-07-20 09:51:34.309131
242	Node.js v0.10.1 	1150	2016-07-20 09:51:34.313027	2016-07-20 09:51:34.313027
243	Node.js v0.10.1 	1150	2016-07-20 09:51:34.316687	2016-07-20 09:51:34.316687
244	Node.js v0.10.1 	1150	2016-07-20 09:51:34.320331	2016-07-20 09:51:34.320331
245	Node.js v0.10.1 	1150	2016-07-20 09:51:34.324123	2016-07-20 09:51:34.324123
246	Node.js v0.10.1 	1150	2016-07-20 09:51:34.328691	2016-07-20 09:51:34.328691
247	Node.js v0.10.1 	1150	2016-07-20 09:51:34.332479	2016-07-20 09:51:34.332479
248	Node.js v0.10.1 	1150	2016-07-20 09:51:34.336681	2016-07-20 09:51:34.336681
249	Node.js v0.10.1 	1150	2016-07-20 09:51:34.340439	2016-07-20 09:51:34.340439
250	Node.js v0.10.1 	1150	2016-07-20 09:51:34.345054	2016-07-20 09:51:34.345054
251	Node.js v0.10.9 	1150	2016-07-20 09:51:34.348908	2016-07-20 09:51:34.348908
252	Node.js v0.10.8 	1150	2016-07-20 09:51:34.354435	2016-07-20 09:51:34.354435
253	Node.js v0.10.7 	1150	2016-07-20 09:51:34.359262	2016-07-20 09:51:34.359262
254	Node.js v0.10.6 	1150	2016-07-20 09:51:34.365103	2016-07-20 09:51:34.365103
255	Node.js v0.10.5 	1150	2016-07-20 09:51:34.369446	2016-07-20 09:51:34.369446
256	Node.js v0.10.4 	1150	2016-07-20 09:51:34.37419	2016-07-20 09:51:34.37419
257	Node.js v0.10.3 	1150	2016-07-20 09:51:34.37821	2016-07-20 09:51:34.37821
258	Node.js v0.10.2 	1150	2016-07-20 09:51:34.38206	2016-07-20 09:51:34.38206
259	Node.js v0.10.1 	1150	2016-07-20 09:51:34.386465	2016-07-20 09:51:34.386465
260	Node.js v0.10.0 	1150	2016-07-20 09:51:34.391629	2016-07-20 09:51:34.391629
261	Node.js v0.9.12 	1150	2016-07-20 09:51:34.398112	2016-07-20 09:51:34.398112
262	Node.js v0.9.11 	1150	2016-07-20 09:51:34.404343	2016-07-20 09:51:34.404343
263	Node.js v0.9.10 	1150	2016-07-20 09:51:34.410355	2016-07-20 09:51:34.410355
264	Node.js v0.9.9  	1150	2016-07-20 09:51:34.418307	2016-07-20 09:51:34.418307
265	Node.js v0.9.8  	1150	2016-07-20 09:51:34.422965	2016-07-20 09:51:34.422965
266	Node.js v0.9.7  	1150	2016-07-20 09:51:34.427215	2016-07-20 09:51:34.427215
267	Node.js v0.9.6  	1150	2016-07-20 09:51:34.431548	2016-07-20 09:51:34.431548
268	Node.js v0.9.5  	1150	2016-07-20 09:51:34.435057	2016-07-20 09:51:34.435057
269	Node.js v0.9.4  	1150	2016-07-20 09:51:34.439238	2016-07-20 09:51:34.439238
270	Node.js v0.9.3  	1150	2016-07-20 09:51:34.443324	2016-07-20 09:51:34.443324
271	Node.js v0.9.2  	1150	2016-07-20 09:51:34.447198	2016-07-20 09:51:34.447198
272	Node.js v0.9.1  	1150	2016-07-20 09:51:34.450909	2016-07-20 09:51:34.450909
273	Node.js v0.9.0  	1150	2016-07-20 09:51:34.455253	2016-07-20 09:51:34.455253
274	Node.js v0.8.28 	1150	2016-07-20 09:51:34.459167	2016-07-20 09:51:34.459167
275	Node.js v0.8.27 	1150	2016-07-20 09:51:34.463297	2016-07-20 09:51:34.463297
276	Node.js v0.8.26 	1150	2016-07-20 09:51:34.467541	2016-07-20 09:51:34.467541
277	Node.js v0.8.25 	1150	2016-07-20 09:51:34.482135	2016-07-20 09:51:34.482135
278	Node.js v0.8.24 	1150	2016-07-20 09:51:34.487149	2016-07-20 09:51:34.487149
279	Node.js v0.8.23 	1150	2016-07-20 09:51:34.491032	2016-07-20 09:51:34.491032
280	Node.js v0.8.22 	1150	2016-07-20 09:51:34.495022	2016-07-20 09:51:34.495022
281	Node.js v0.8.21 	1150	2016-07-20 09:51:34.500766	2016-07-20 09:51:34.500766
282	Node.js v0.8.20 	1150	2016-07-20 09:51:34.50513	2016-07-20 09:51:34.50513
283	Node.js v0.8.19 	1150	2016-07-20 09:51:34.509303	2016-07-20 09:51:34.509303
284	Node.js v0.8.18 	1150	2016-07-20 09:51:34.515176	2016-07-20 09:51:34.515176
285	Node.js v0.8.17 	1150	2016-07-20 09:51:34.520031	2016-07-20 09:51:34.520031
286	Node.js v0.8.16 	1150	2016-07-20 09:51:34.524877	2016-07-20 09:51:34.524877
287	Node.js v0.8.15 	1150	2016-07-20 09:51:34.530156	2016-07-20 09:51:34.530156
288	Node.js v0.8.14 	1150	2016-07-20 09:51:34.535489	2016-07-20 09:51:34.535489
289	Node.js v0.8.13 	1150	2016-07-20 09:51:34.541142	2016-07-20 09:51:34.541142
290	Node.js v0.8.12 	1150	2016-07-20 09:51:34.545794	2016-07-20 09:51:34.545794
291	Node.js v0.8.11 	1150	2016-07-20 09:51:34.550283	2016-07-20 09:51:34.550283
292	Node.js v0.8.10 	1150	2016-07-20 09:51:34.556212	2016-07-20 09:51:34.556212
293	Node.js v0.8.9  	1150	2016-07-20 09:51:34.56296	2016-07-20 09:51:34.56296
294	Node.js v0.8.8  	1150	2016-07-20 09:51:34.568665	2016-07-20 09:51:34.568665
295	Node.js v0.8.7  	1150	2016-07-20 09:51:34.572479	2016-07-20 09:51:34.572479
296	Node.js v0.8.6  	1150	2016-07-20 09:51:34.577337	2016-07-20 09:51:34.577337
297	Node.js v0.8.5  	1150	2016-07-20 09:51:34.58132	2016-07-20 09:51:34.58132
298	Node.js v0.8.4  	1150	2016-07-20 09:51:34.585029	2016-07-20 09:51:34.585029
299	Node.js v0.8.3  	1150	2016-07-20 09:51:34.589019	2016-07-20 09:51:34.589019
300	Node.js v0.8.2  	1150	2016-07-20 09:51:34.593046	2016-07-20 09:51:34.593046
301	Node.js v0.8.1  	1150	2016-07-20 09:51:34.596931	2016-07-20 09:51:34.596931
302	Node.js v0.8.0  	1150	2016-07-20 09:51:34.601708	2016-07-20 09:51:34.601708
303	Node.js v0.7.12 	1150	2016-07-20 09:51:34.605418	2016-07-20 09:51:34.605418
304	Node.js v0.7.11 	1150	2016-07-20 09:51:34.609452	2016-07-20 09:51:34.609452
305	Node.js v0.7.10 	1150	2016-07-20 09:51:34.613832	2016-07-20 09:51:34.613832
306	Node.js v0.7.9  	1150	2016-07-20 09:51:34.617759	2016-07-20 09:51:34.617759
307	Node.js v0.7.8  	1150	2016-07-20 09:51:34.621782	2016-07-20 09:51:34.621782
308	Node.js v0.7.7  	1150	2016-07-20 09:51:34.625798	2016-07-20 09:51:34.625798
309	Node.js v0.7.6  	1150	2016-07-20 09:51:34.630343	2016-07-20 09:51:34.630343
310	Node.js v0.7.5  	1150	2016-07-20 09:51:34.635815	2016-07-20 09:51:34.635815
311	Node.js v0.7.4  	1150	2016-07-20 09:51:34.640863	2016-07-20 09:51:34.640863
312	Node.js v0.7.3  	1150	2016-07-20 09:51:34.645346	2016-07-20 09:51:34.645346
313	Node.js v0.7.2  	1150	2016-07-20 09:51:34.649062	2016-07-20 09:51:34.649062
314	Node.js v0.7.1  	1150	2016-07-20 09:51:34.652971	2016-07-20 09:51:34.652971
315	Node.js v0.7.0  	1150	2016-07-20 09:51:34.657049	2016-07-20 09:51:34.657049
316	Node.js v0.6.21 	1150	2016-07-20 09:51:34.661578	2016-07-20 09:51:34.661578
317	Node.js v0.6.20 	1150	2016-07-20 09:51:34.665992	2016-07-20 09:51:34.665992
318	Node.js v0.6.19 	1150	2016-07-20 09:51:34.669999	2016-07-20 09:51:34.669999
319	Node.js v0.6.18 	1150	2016-07-20 09:51:34.673835	2016-07-20 09:51:34.673835
320	Node.js v0.6.17 	1150	2016-07-20 09:51:34.677776	2016-07-20 09:51:34.677776
321	Node.js v0.6.16 	1150	2016-07-20 09:51:34.682554	2016-07-20 09:51:34.682554
322	Node.js v0.6.15 	1150	2016-07-20 09:51:34.693247	2016-07-20 09:51:34.693247
323	Node.js v0.6.14 	1150	2016-07-20 09:51:34.702551	2016-07-20 09:51:34.702551
324	Node.js v0.6.13 	1150	2016-07-20 09:51:34.706663	2016-07-20 09:51:34.706663
325	Node.js v0.6.12 	1150	2016-07-20 09:51:34.711051	2016-07-20 09:51:34.711051
326	Node.js v0.6.11 	1150	2016-07-20 09:51:34.716008	2016-07-20 09:51:34.716008
327	Node.js v0.6.10 	1150	2016-07-20 09:51:34.721696	2016-07-20 09:51:34.721696
328	Node.js v0.6.9  	1150	2016-07-20 09:51:34.726841	2016-07-20 09:51:34.726841
329	Node.js v0.6.8  	1150	2016-07-20 09:51:34.731179	2016-07-20 09:51:34.731179
330	Node.js v0.6.7  	1150	2016-07-20 09:51:34.73502	2016-07-20 09:51:34.73502
331	Node.js v0.6.6  	1150	2016-07-20 09:51:34.739345	2016-07-20 09:51:34.739345
332	Node.js v0.6.5  	1150	2016-07-20 09:51:34.74331	2016-07-20 09:51:34.74331
333	Node.js v0.6.4  	1150	2016-07-20 09:51:34.747177	2016-07-20 09:51:34.747177
334	Node.js v0.6.3  	1150	2016-07-20 09:51:34.751297	2016-07-20 09:51:34.751297
335	Node.js v0.6.2  	1150	2016-07-20 09:51:34.755377	2016-07-20 09:51:34.755377
336	Node.js v0.6.1  	1150	2016-07-20 09:51:34.759205	2016-07-20 09:51:34.759205
337	Node.js v0.6.0  	1150	2016-07-20 09:51:34.763468	2016-07-20 09:51:34.763468
338	Node.js v0.5.10 	1150	2016-07-20 09:51:34.767518	2016-07-20 09:51:34.767518
339	Node.js v0.5.9  	1150	2016-07-20 09:51:34.77106	2016-07-20 09:51:34.77106
340	Node.js v0.5.8  	1150	2016-07-20 09:51:34.775854	2016-07-20 09:51:34.775854
341	Node.js v0.5.7  	1150	2016-07-20 09:51:34.780406	2016-07-20 09:51:34.780406
342	Node.js v0.5.6  	1150	2016-07-20 09:51:34.785825	2016-07-20 09:51:34.785825
343	Node.js v0.5.5  	1150	2016-07-20 09:51:34.790793	2016-07-20 09:51:34.790793
344	Node.js v0.5.4  	1150	2016-07-20 09:51:34.795238	2016-07-20 09:51:34.795238
345	Node.js v0.5.3  	1150	2016-07-20 09:51:34.799224	2016-07-20 09:51:34.799224
346	Node.js v0.5.2  	1150	2016-07-20 09:51:34.803981	2016-07-20 09:51:34.803981
347	Node.js v0.5.1  	1150	2016-07-20 09:51:34.81023	2016-07-20 09:51:34.81023
348	Node.js v0.5.0  	1150	2016-07-20 09:51:34.81515	2016-07-20 09:51:34.81515
349	Node.js v0.4.12 	1150	2016-07-20 09:51:34.819378	2016-07-20 09:51:34.819378
350	Node.js v0.4.11 	1150	2016-07-20 09:51:34.82477	2016-07-20 09:51:34.82477
351	Node.js v0.4.10 	1150	2016-07-20 09:51:34.828502	2016-07-20 09:51:34.828502
352	Node.js v0.4.9  	1150	2016-07-20 09:51:34.832932	2016-07-20 09:51:34.832932
353	Node.js v0.4.8  	1150	2016-07-20 09:51:34.837365	2016-07-20 09:51:34.837365
354	Node.js v0.4.7  	1150	2016-07-20 09:51:34.841839	2016-07-20 09:51:34.841839
355	Node.js v0.4.6  	1150	2016-07-20 09:51:34.845866	2016-07-20 09:51:34.845866
356	Node.js v0.4.5  	1150	2016-07-20 09:51:34.850095	2016-07-20 09:51:34.850095
357	Node.js v0.4.4  	1150	2016-07-20 09:51:34.854342	2016-07-20 09:51:34.854342
358	Node.js v0.4.3  	1150	2016-07-20 09:51:34.858259	2016-07-20 09:51:34.858259
359	Node.js v0.4.2  	1150	2016-07-20 09:51:34.86216	2016-07-20 09:51:34.86216
360	Node.js v0.4.1  	1150	2016-07-20 09:51:34.866742	2016-07-20 09:51:34.866742
361	Node.js v0.4.0  	1150	2016-07-20 09:51:34.871856	2016-07-20 09:51:34.871856
362	Node.js v0.3.8  	1150	2016-07-20 09:51:34.876063	2016-07-20 09:51:34.876063
363	Node.js v0.3.7  	1150	2016-07-20 09:51:34.880471	2016-07-20 09:51:34.880471
364	Node.js v0.3.6  	1150	2016-07-20 09:51:34.885328	2016-07-20 09:51:34.885328
365	Node.js v0.3.5  	1150	2016-07-20 09:51:34.889036	2016-07-20 09:51:34.889036
366	Node.js v0.3.4  	1150	2016-07-20 09:51:34.893208	2016-07-20 09:51:34.893208
367	Node.js v0.3.3  	1150	2016-07-20 09:51:34.898168	2016-07-20 09:51:34.898168
368	Node.js v0.3.2  	1150	2016-07-20 09:51:34.903206	2016-07-20 09:51:34.903206
369	Node.js v0.3.1  	1150	2016-07-20 09:51:34.915544	2016-07-20 09:51:34.915544
370	Node.js v0.3.0  	1150	2016-07-20 09:51:34.926578	2016-07-20 09:51:34.926578
371	Node.js v0.2.6  	1150	2016-07-20 09:51:34.931837	2016-07-20 09:51:34.931837
372	Node.js v0.2.5  	1150	2016-07-20 09:51:34.935586	2016-07-20 09:51:34.935586
373	Node.js v0.2.4  	1150	2016-07-20 09:51:34.939672	2016-07-20 09:51:34.939672
374	Node.js v0.2.3  	1150	2016-07-20 09:51:34.94436	2016-07-20 09:51:34.94436
375	Node.js v0.2.2  	1150	2016-07-20 09:51:34.949026	2016-07-20 09:51:34.949026
376	Node.js v0.2.1  	1150	2016-07-20 09:51:34.952852	2016-07-20 09:51:34.952852
377	Node.js v0.2.0  	1150	2016-07-20 09:51:34.957075	2016-07-20 09:51:34.957075
378	Node.js v0.1.10 	1150	2016-07-20 09:51:34.96231	2016-07-20 09:51:34.96231
379	Node.js v0.1.10 	1150	2016-07-20 09:51:34.9665	2016-07-20 09:51:34.9665
380	Node.js v0.1.10 	1150	2016-07-20 09:51:34.971045	2016-07-20 09:51:34.971045
381	Node.js v0.1.10 	1150	2016-07-20 09:51:34.975798	2016-07-20 09:51:34.975798
382	Node.js v0.1.10 	1150	2016-07-20 09:51:34.979727	2016-07-20 09:51:34.979727
383	Node.js v0.1.99 	1150	2016-07-20 09:51:34.984178	2016-07-20 09:51:34.984178
384	Node.js v0.1.98 	1150	2016-07-20 09:51:34.988118	2016-07-20 09:51:34.988118
385	Node.js v0.1.97 	1150	2016-07-20 09:51:34.993133	2016-07-20 09:51:34.993133
386	Node.js v0.1.96\t	1150	2016-07-20 09:51:34.998171	2016-07-20 09:51:34.998171
387	Node.js v0.1.95\t	1150	2016-07-20 09:51:35.002201	2016-07-20 09:51:35.002201
388	Node.js v0.1.94 	1150	2016-07-20 09:51:35.00649	2016-07-20 09:51:35.00649
389	Node.js v0.1.93 	1150	2016-07-20 09:51:35.010563	2016-07-20 09:51:35.010563
390	Node.js v0.1.92 	1150	2016-07-20 09:51:35.014688	2016-07-20 09:51:35.014688
391	Node.js v0.1.91 	1150	2016-07-20 09:51:35.018939	2016-07-20 09:51:35.018939
392	Node.js v0.1.90 	1150	2016-07-20 09:51:35.023707	2016-07-20 09:51:35.023707
393	Node.js v0.1.33 	1150	2016-07-20 09:51:35.028766	2016-07-20 09:51:35.028766
394	Node.js v0.1.32 	1150	2016-07-20 09:51:35.032858	2016-07-20 09:51:35.032858
395	Node.js v0.1.31 	1150	2016-07-20 09:51:35.037972	2016-07-20 09:51:35.037972
396	Node.js v0.1.30 	1150	2016-07-20 09:51:35.042031	2016-07-20 09:51:35.042031
397	Node.js v0.1.29 	1150	2016-07-20 09:51:35.045964	2016-07-20 09:51:35.045964
398	Node.js v0.1.28 	1150	2016-07-20 09:51:35.050887	2016-07-20 09:51:35.050887
399	Node.js v0.1.27 	1150	2016-07-20 09:51:35.055695	2016-07-20 09:51:35.055695
400	Node.js v0.1.26 	1150	2016-07-20 09:51:35.059055	2016-07-20 09:51:35.059055
401	Node.js v0.1.25 	1150	2016-07-20 09:51:35.062809	2016-07-20 09:51:35.062809
402	Node.js v0.1.24 	1150	2016-07-20 09:51:35.067595	2016-07-20 09:51:35.067595
403	Node.js v0.1.23\t	1150	2016-07-20 09:51:35.071823	2016-07-20 09:51:35.071823
404	Node.js v0.1.22\t	1150	2016-07-20 09:51:35.075576	2016-07-20 09:51:35.075576
405	Node.js v0.1.21\t	1150	2016-07-20 09:51:35.079755	2016-07-20 09:51:35.079755
406	Node.js v0.1.20 	1150	2016-07-20 09:51:35.084497	2016-07-20 09:51:35.084497
407	Node.js v0.1.19 	1150	2016-07-20 09:51:35.088011	2016-07-20 09:51:35.088011
408	Node.js v0.1.18 	1150	2016-07-20 09:51:35.091946	2016-07-20 09:51:35.091946
409	Node.js v0.1.17 	1150	2016-07-20 09:51:35.096913	2016-07-20 09:51:35.096913
410	Node.js v0.1.16 	1150	2016-07-20 09:51:35.101859	2016-07-20 09:51:35.101859
411	Node.js v0.1.15 	1150	2016-07-20 09:51:35.105776	2016-07-20 09:51:35.105776
412	PhoneGap 1.3	1151	2016-07-20 09:51:35.109394	2016-07-20 09:51:35.109394
413	PhoneGap 1.4	1151	2016-07-20 09:51:35.114602	2016-07-20 09:51:35.114602
414	PhoneGap 1.5	1151	2016-07-20 09:51:35.11901	2016-07-20 09:51:35.11901
415	PhoneGap 1.6	1151	2016-07-20 09:51:35.123321	2016-07-20 09:51:35.123321
416	PhoneGap 1.6.x	1151	2016-07-20 09:51:35.130327	2016-07-20 09:51:35.130327
417	PhoneGap 1.7.0	1151	2016-07-20 09:51:35.137339	2016-07-20 09:51:35.137339
418	PhoneGap 1.8.x	1151	2016-07-20 09:51:35.147674	2016-07-20 09:51:35.147674
419	PhoneGap 1.9	1151	2016-07-20 09:51:35.154324	2016-07-20 09:51:35.154324
420	PhoneGap 2.0	1151	2016-07-20 09:51:35.159671	2016-07-20 09:51:35.159671
421	PhoneGap 2.1.0	1151	2016-07-20 09:51:35.166305	2016-07-20 09:51:35.166305
422	PhoneGap 2.2.0	1151	2016-07-20 09:51:35.171255	2016-07-20 09:51:35.171255
423	PhoneGap 2.3.0	1151	2016-07-20 09:51:35.175488	2016-07-20 09:51:35.175488
424	PhoneGap 2.4.0	1151	2016-07-20 09:51:35.179171	2016-07-20 09:51:35.179171
425	PhoneGap 2.5.0	1151	2016-07-20 09:51:35.187448	2016-07-20 09:51:35.187448
426	PhoneGap 2.6.0	1151	2016-07-20 09:51:35.192717	2016-07-20 09:51:35.192717
427	PhoneGap 2.7.0	1151	2016-07-20 09:51:35.196984	2016-07-20 09:51:35.196984
428	PhoneGap 2.8.0	1151	2016-07-20 09:51:35.20126	2016-07-20 09:51:35.20126
429	PhoneGap 2.9.0	1151	2016-07-20 09:51:35.206346	2016-07-20 09:51:35.206346
430	PhoneGap 3.0	1151	2016-07-20 09:51:35.21084	2016-07-20 09:51:35.21084
431	PhoneGap 3.1.0 3.5.0	1151	2016-07-20 09:51:35.215265	2016-07-20 09:51:35.215265
432	PhoneGap CLI 3.6.3	1151	2016-07-20 09:51:35.218944	2016-07-20 09:51:35.218944
433	PhoneGap CLI 4.2.0	1151	2016-07-20 09:51:35.222698	2016-07-20 09:51:35.222698
434	PhoneGap Desktop App 0.1.x	1151	2016-07-20 09:51:35.227826	2016-07-20 09:51:35.227826
435	PhoneGap CLI 5.0.0	1151	2016-07-20 09:51:35.232418	2016-07-20 09:51:35.232418
436	PhoneGap Desktop App 0.2.x	1151	2016-07-20 09:51:35.235934	2016-07-20 09:51:35.235934
437	PhoneGap CLI 6.0.0 	1151	2016-07-20 09:51:35.241054	2016-07-20 09:51:35.241054
438	PhoneGap Desktop App 0.3.x	1151	2016-07-20 09:51:35.245198	2016-07-20 09:51:35.245198
439	PhoneGap CLI 6.2.0	1151	2016-07-20 09:51:35.248961	2016-07-20 09:51:35.248961
440	TinyMCE 4.3.3	1152	2016-07-20 09:51:35.252859	2016-07-20 09:51:35.252859
441	TinyMCE 4.3.2\t	1152	2016-07-20 09:51:35.258221	2016-07-20 09:51:35.258221
442	TinyMCE 4.3.1\t	1152	2016-07-20 09:51:35.262506	2016-07-20 09:51:35.262506
443	TinyMCE 4.3.0\t	1152	2016-07-20 09:51:35.266726	2016-07-20 09:51:35.266726
444	TinyMCE 4.2.8\t	1152	2016-07-20 09:51:35.271925	2016-07-20 09:51:35.271925
445	TinyMCE 4.2.7\t	1152	2016-07-20 09:51:35.275907	2016-07-20 09:51:35.275907
446	TinyMCE 4.2.6\t	1152	2016-07-20 09:51:35.281146	2016-07-20 09:51:35.281146
447	TinyMCE 4.2.5\t	1152	2016-07-20 09:51:35.288363	2016-07-20 09:51:35.288363
448	TinyMCE 4.2.4\t	1152	2016-07-20 09:51:35.293846	2016-07-20 09:51:35.293846
449	TinyMCE 4.2.3\t	1152	2016-07-20 09:51:35.298287	2016-07-20 09:51:35.298287
450	TinyMCE 4.2.2\t	1152	2016-07-20 09:51:35.304461	2016-07-20 09:51:35.304461
451	TinyMCE 4.2.1\t	1152	2016-07-20 09:51:35.309827	2016-07-20 09:51:35.309827
452	TinyMCE 4.2.0\t	1152	2016-07-20 09:51:35.313916	2016-07-20 09:51:35.313916
453	TinyMCE 4.1.10\t	1152	2016-07-20 09:51:35.31784	2016-07-20 09:51:35.31784
454	TinyMCE 4.1.9\t	1152	2016-07-20 09:51:35.321698	2016-07-20 09:51:35.321698
455	TinyMCE 4.1.8\t	1152	2016-07-20 09:51:35.325985	2016-07-20 09:51:35.325985
456	TinyMCE 4.1.7\t	1152	2016-07-20 09:51:35.330153	2016-07-20 09:51:35.330153
457	TinyMCE 4.1.6\t	1152	2016-07-20 09:51:35.333979	2016-07-20 09:51:35.333979
458	TinyMCE 4.1.5\t	1152	2016-07-20 09:51:35.337811	2016-07-20 09:51:35.337811
459	TinyMCE 4.1.4\t	1152	2016-07-20 09:51:35.34228	2016-07-20 09:51:35.34228
460	TinyMCE 4.1.3\t	1152	2016-07-20 09:51:35.346199	2016-07-20 09:51:35.346199
461	TinyMCE 4.1.2\t	1152	2016-07-20 09:51:35.353235	2016-07-20 09:51:35.353235
462	TinyMCE 4.1.1\t	1152	2016-07-20 09:51:35.362224	2016-07-20 09:51:35.362224
463	TinyMCE 4.1.0\t	1152	2016-07-20 09:51:35.371426	2016-07-20 09:51:35.371426
464	TinyMCE 4.0.28\t	1152	2016-07-20 09:51:35.379309	2016-07-20 09:51:35.379309
465	TinyMCE 4.0.27\t	1152	2016-07-20 09:51:35.383196	2016-07-20 09:51:35.383196
466	TinyMCE 4.0.26\t	1152	2016-07-20 09:51:35.387319	2016-07-20 09:51:35.387319
467	TinyMCE 4.0.25\t	1152	2016-07-20 09:51:35.391144	2016-07-20 09:51:35.391144
468	TinyMCE 4.0.24\t	1152	2016-07-20 09:51:35.39582	2016-07-20 09:51:35.39582
469	TinyMCE 4.0.23\t	1152	2016-07-20 09:51:35.399751	2016-07-20 09:51:35.399751
470	TinyMCE 4.0.22\t	1152	2016-07-20 09:51:35.403293	2016-07-20 09:51:35.403293
471	TinyMCE 4.0.21\t	1152	2016-07-20 09:51:35.40748	2016-07-20 09:51:35.40748
472	TinyMCE 4.0.20\t	1152	2016-07-20 09:51:35.411336	2016-07-20 09:51:35.411336
473	TinyMCE 4.0.19\t	1152	2016-07-20 09:51:35.415953	2016-07-20 09:51:35.415953
474	TinyMCE 4.0.18\t	1152	2016-07-20 09:51:35.419946	2016-07-20 09:51:35.419946
475	TinyMCE 4.0.17\t	1152	2016-07-20 09:51:35.423885	2016-07-20 09:51:35.423885
476	TinyMCE 4.0.16\t	1152	2016-07-20 09:51:35.428297	2016-07-20 09:51:35.428297
477	TinyMCE 4.0.15\t	1152	2016-07-20 09:51:35.433114	2016-07-20 09:51:35.433114
478	TinyMCE 4.0.14\t	1152	2016-07-20 09:51:35.437323	2016-07-20 09:51:35.437323
479	TinyMCE 4.0.13\t	1152	2016-07-20 09:51:35.442482	2016-07-20 09:51:35.442482
480	TinyMCE 4.0.12\t	1152	2016-07-20 09:51:35.446603	2016-07-20 09:51:35.446603
481	TinyMCE 4.0.11\t	1152	2016-07-20 09:51:35.450594	2016-07-20 09:51:35.450594
482	TinyMCE 4.0.10\t	1152	2016-07-20 09:51:35.455803	2016-07-20 09:51:35.455803
483	TinyMCE 4.0.9\t	1152	2016-07-20 09:51:35.459857	2016-07-20 09:51:35.459857
484	TinyMCE 4.0.8\t	1152	2016-07-20 09:51:35.464993	2016-07-20 09:51:35.464993
485	TinyMCE 4.0.7\t	1152	2016-07-20 09:51:35.469022	2016-07-20 09:51:35.469022
486	TinyMCE 4.0.6\t	1152	2016-07-20 09:51:35.473204	2016-07-20 09:51:35.473204
487	TinyMCE 4.0.5\t	1152	2016-07-20 09:51:35.477896	2016-07-20 09:51:35.477896
488	TinyMCE 4.0.4\t	1152	2016-07-20 09:51:35.482317	2016-07-20 09:51:35.482317
489	TinyMCE 4.0.3\t	1152	2016-07-20 09:51:35.486202	2016-07-20 09:51:35.486202
490	TinyMCE 4.0.2\t	1152	2016-07-20 09:51:35.490501	2016-07-20 09:51:35.490501
491	TinyMCE 4.0.1\t	1152	2016-07-20 09:51:35.494658	2016-07-20 09:51:35.494658
492	TinyMCE 3.5.11\t	1152	2016-07-20 09:51:35.499303	2016-07-20 09:51:35.499303
493	TinyMCE 3.5.10\t	1152	2016-07-20 09:51:35.503332	2016-07-20 09:51:35.503332
494	TinyMCE 3.5.9\t	1152	2016-07-20 09:51:35.50838	2016-07-20 09:51:35.50838
495	TinyMCE 3.5.8 	1152	2016-07-20 09:51:35.512523	2016-07-20 09:51:35.512523
496	Ionic	1153	2016-07-20 09:51:35.516885	2016-07-20 09:51:35.516885
497	Emberjs 1.10.x	1154	2016-07-20 09:51:35.520251	2016-07-20 09:51:35.520251
498	Emberjs 1.11.x	1154	2016-07-20 09:51:35.524833	2016-07-20 09:51:35.524833
499	Emberjs 1.12.x	1154	2016-07-20 09:51:35.528174	2016-07-20 09:51:35.528174
500	Emberjs 1.13.x	1154	2016-07-20 09:51:35.532601	2016-07-20 09:51:35.532601
501	Emberjs 2.0	1154	2016-07-20 09:51:35.535956	2016-07-20 09:51:35.535956
502	Emberjs 2.1	1154	2016-07-20 09:51:35.540216	2016-07-20 09:51:35.540216
503	Emberjs 2.2	1154	2016-07-20 09:51:35.544416	2016-07-20 09:51:35.544416
504	Emberjs 2.3	1154	2016-07-20 09:51:35.547947	2016-07-20 09:51:35.547947
505	Emberjs 2.4	1154	2016-07-20 09:51:35.552306	2016-07-20 09:51:35.552306
506	Emberjs 2.5	1154	2016-07-20 09:51:35.55592	2016-07-20 09:51:35.55592
507	Emberjs 2.6	1154	2016-07-20 09:51:35.559597	2016-07-20 09:51:35.559597
508	Emberjs 2.7	1154	2016-07-20 09:51:35.563838	2016-07-20 09:51:35.563838
509	Django 1.0	1155	2016-07-20 09:51:35.567432	2016-07-20 09:51:35.567432
510	Django 1.1.x	1155	2016-07-20 09:51:35.571474	2016-07-20 09:51:35.571474
511	Django 1.2.x	1155	2016-07-20 09:51:35.576216	2016-07-20 09:51:35.576216
512	Django 1.3.x	1155	2016-07-20 09:51:35.584187	2016-07-20 09:51:35.584187
513	Django 1.4.x	1155	2016-07-20 09:51:35.59262	2016-07-20 09:51:35.59262
514	Django 1.5.x	1155	2016-07-20 09:51:35.604591	2016-07-20 09:51:35.604591
515	Django 1.6.x	1155	2016-07-20 09:51:35.609239	2016-07-20 09:51:35.609239
516	Django 1.7.x	1155	2016-07-20 09:51:35.614345	2016-07-20 09:51:35.614345
517	Django 1.8.x	1155	2016-07-20 09:51:35.62	2016-07-20 09:51:35.62
518	Django 1.9.x	1155	2016-07-20 09:51:35.625317	2016-07-20 09:51:35.625317
519	Pylons	1156	2016-07-20 09:51:35.629985	2016-07-20 09:51:35.629985
520	Blender3D 1.0	1157	2016-07-20 09:51:35.634224	2016-07-20 09:51:35.634224
521	Blender3D 1.6	1157	2016-07-20 09:51:35.640777	2016-07-20 09:51:35.640777
522	Blender3D 1.7	1157	2016-07-20 09:51:35.644856	2016-07-20 09:51:35.644856
523	Blender3D 1.8	1157	2016-07-20 09:51:35.649381	2016-07-20 09:51:35.649381
524	Blender3D 2.0	1157	2016-07-20 09:51:35.653816	2016-07-20 09:51:35.653816
525	Blender3D 2.2	1157	2016-07-20 09:51:35.657288	2016-07-20 09:51:35.657288
526	Blender3D 2.3	1157	2016-07-20 09:51:35.661759	2016-07-20 09:51:35.661759
527	Blender3D 2.4	1157	2016-07-20 09:51:35.665696	2016-07-20 09:51:35.665696
528	Blender3D 2.5	1157	2016-07-20 09:51:35.669877	2016-07-20 09:51:35.669877
529	Blender3D 2.6	1157	2016-07-20 09:51:35.673988	2016-07-20 09:51:35.673988
530	Blender3D 2.7	1157	2016-07-20 09:51:35.677766	2016-07-20 09:51:35.677766
531	Artificial Intelligence	1158	2016-07-20 09:51:35.681377	2016-07-20 09:51:35.681377
532	Data Analysis	1159	2016-07-20 09:51:35.685959	2016-07-20 09:51:35.685959
533	Apache CFX 2.7.18	1160	2016-07-20 09:51:35.690428	2016-07-20 09:51:35.690428
534	Apache CFX 3.0.9	1160	2016-07-20 09:51:35.694041	2016-07-20 09:51:35.694041
535	Apache CFX 3.1.6	1160	2016-07-20 09:51:35.697772	2016-07-20 09:51:35.697772
536	Grails 1.2.x	1161	2016-07-20 09:51:35.702908	2016-07-20 09:51:35.702908
537	Grails 1.3.x	1161	2016-07-20 09:51:35.706819	2016-07-20 09:51:35.706819
538	Grails 2.0.x	1161	2016-07-20 09:51:35.71102	2016-07-20 09:51:35.71102
539	Grails 2.1.x	1161	2016-07-20 09:51:35.715199	2016-07-20 09:51:35.715199
540	Grails 2.2.x	1161	2016-07-20 09:51:35.720281	2016-07-20 09:51:35.720281
541	Grails 2.3.x	1161	2016-07-20 09:51:35.72425	2016-07-20 09:51:35.72425
542	Grails 2.4.x	1161	2016-07-20 09:51:35.731439	2016-07-20 09:51:35.731439
543	Grails 2.5.x	1161	2016-07-20 09:51:35.736533	2016-07-20 09:51:35.736533
544	Grails 3.0.x	1161	2016-07-20 09:51:35.740981	2016-07-20 09:51:35.740981
545	Grails 3.1.x	1161	2016-07-20 09:51:35.744954	2016-07-20 09:51:35.744954
546	Grails 3.2.x	1161	2016-07-20 09:51:35.749425	2016-07-20 09:51:35.749425
547	JBoss seam 1.2.1 GA	1162	2016-07-20 09:51:35.754835	2016-07-20 09:51:35.754835
548	JBoss seam 2.0.2.SP1	1162	2016-07-20 09:51:35.758941	2016-07-20 09:51:35.758941
549	JBoss seam 2.0.3.CR1	1162	2016-07-20 09:51:35.763524	2016-07-20 09:51:35.763524
550	JBoss seam 2.1.2.GA	1162	2016-07-20 09:51:35.768018	2016-07-20 09:51:35.768018
551	JBoss seam 2.2.0.GA	1162	2016-07-20 09:51:35.77182	2016-07-20 09:51:35.77182
552	JBoss seam 2.2.1.Final	1162	2016-07-20 09:51:35.776427	2016-07-20 09:51:35.776427
553	JBoss seam 2.2.2.FInal	1162	2016-07-20 09:51:35.780471	2016-07-20 09:51:35.780471
554	JBoss seam 2.3.1.FInal	1162	2016-07-20 09:51:35.784936	2016-07-20 09:51:35.784936
555	JavaServer Faces	1163	2016-07-20 09:51:35.789811	2016-07-20 09:51:35.789811
556	Spring 3.2.14	1164	2016-07-20 09:51:35.793798	2016-07-20 09:51:35.793798
557	Spring 4.2.0	1164	2016-07-20 09:51:35.798232	2016-07-20 09:51:35.798232
558	Spring 4.2.1	1164	2016-07-20 09:51:35.802695	2016-07-20 09:51:35.802695
559	Spring 4.2.2	1164	2016-07-20 09:51:35.806919	2016-07-20 09:51:35.806919
560	Spring 4.2.3	1164	2016-07-20 09:51:35.818787	2016-07-20 09:51:35.818787
561	Spring 4.2.4	1164	2016-07-20 09:51:35.828196	2016-07-20 09:51:35.828196
562	Spring 4.2.5	1164	2016-07-20 09:51:35.838326	2016-07-20 09:51:35.838326
563	Spring 4.2.6	1164	2016-07-20 09:51:35.843893	2016-07-20 09:51:35.843893
564	Spring 4.2.7	1164	2016-07-20 09:51:35.847415	2016-07-20 09:51:35.847415
565	Spring 4.1.9	1164	2016-07-20 09:51:35.851264	2016-07-20 09:51:35.851264
566	Spring 3.2.16	1164	2016-07-20 09:51:35.855361	2016-07-20 09:51:35.855361
567	Spring 3.2.17	1164	2016-07-20 09:51:35.859794	2016-07-20 09:51:35.859794
568	Spring 4.3.0	1164	2016-07-20 09:51:35.863686	2016-07-20 09:51:35.863686
569	Spring 4.3.1	1164	2016-07-20 09:51:35.868999	2016-07-20 09:51:35.868999
570	JavaFX 1.0	1165	2016-07-20 09:51:35.873047	2016-07-20 09:51:35.873047
571	JavaFX 1.1.1	1165	2016-07-20 09:51:35.876865	2016-07-20 09:51:35.876865
572	JavaFX 1.2	1165	2016-07-20 09:51:35.880702	2016-07-20 09:51:35.880702
573	JavaFX 1.2.3	1165	2016-07-20 09:51:35.886625	2016-07-20 09:51:35.886625
574	JavaFX 1.3	1165	2016-07-20 09:51:35.890687	2016-07-20 09:51:35.890687
575	JavaFX 1.3.1	1165	2016-07-20 09:51:35.894755	2016-07-20 09:51:35.894755
576	JavaFX 2.0.2	1165	2016-07-20 09:51:35.899753	2016-07-20 09:51:35.899753
577	Struts 2 1.3.10	1166	2016-07-20 09:51:35.905012	2016-07-20 09:51:35.905012
578	Struts 2 2.3.30	1166	2016-07-20 09:51:35.909707	2016-07-20 09:51:35.909707
579	Struts 2 2.5.2	1166	2016-07-20 09:51:35.91387	2016-07-20 09:51:35.91387
580	Android 1.6	1167	2016-07-20 09:51:35.917667	2016-07-20 09:51:35.917667
581	Android 2.1	1167	2016-07-20 09:51:35.923366	2016-07-20 09:51:35.923366
582	Android 2.2	1167	2016-07-20 09:51:35.927629	2016-07-20 09:51:35.927629
583	Android 2.3	1167	2016-07-20 09:51:35.932106	2016-07-20 09:51:35.932106
584	Android 3.0	1167	2016-07-20 09:51:35.937219	2016-07-20 09:51:35.937219
585	Android 4.0	1167	2016-07-20 09:51:35.941051	2016-07-20 09:51:35.941051
586	Android 4.1	1167	2016-07-20 09:51:35.944984	2016-07-20 09:51:35.944984
587	Android 4.4	1167	2016-07-20 09:51:35.94867	2016-07-20 09:51:35.94867
588	Android 5.0	1167	2016-07-20 09:51:35.953903	2016-07-20 09:51:35.953903
589	Android 6.0	1167	2016-07-20 09:51:35.95979	2016-07-20 09:51:35.95979
590	Google AppEngine	1168	2016-07-20 09:51:35.965662	2016-07-20 09:51:35.965662
591	Ruby on Rails 1.0	1169	2016-07-20 09:51:35.969928	2016-07-20 09:51:35.969928
592	Ruby on Rails 1.2	1169	2016-07-20 09:51:35.974485	2016-07-20 09:51:35.974485
593	Ruby on Rails 2.0	1169	2016-07-20 09:51:35.978425	2016-07-20 09:51:35.978425
594	Ruby on Rails 2.1	1169	2016-07-20 09:51:35.982221	2016-07-20 09:51:35.982221
595	Ruby on Rails 2.2	1169	2016-07-20 09:51:35.987529	2016-07-20 09:51:35.987529
596	Ruby on Rails 2.3	1169	2016-07-20 09:51:35.992418	2016-07-20 09:51:35.992418
597	Ruby on Rails 3.0	1169	2016-07-20 09:51:35.996258	2016-07-20 09:51:35.996258
598	Ruby on Rails 3.1	1169	2016-07-20 09:51:36.00022	2016-07-20 09:51:36.00022
599	Ruby on Rails 3.2	1169	2016-07-20 09:51:36.00448	2016-07-20 09:51:36.00448
600	Ruby on Rails 4.0	1169	2016-07-20 09:51:36.00834	2016-07-20 09:51:36.00834
601	Ruby on Rails 4.1	1169	2016-07-20 09:51:36.013069	2016-07-20 09:51:36.013069
602	Ruby on Rails 4.2	1169	2016-07-20 09:51:36.017155	2016-07-20 09:51:36.017155
603	Ruby on Rails 5.0	1169	2016-07-20 09:51:36.02098	2016-07-20 09:51:36.02098
604	Sinatra 0.1.x	1170	2016-07-20 09:51:36.025334	2016-07-20 09:51:36.025334
605	Sinatra 0.2.x	1170	2016-07-20 09:51:36.038805	2016-07-20 09:51:36.038805
606	Sinatra 0.3.x	1170	2016-07-20 09:51:36.043932	2016-07-20 09:51:36.043932
607	Sinatra 0.9.x	1170	2016-07-20 09:51:36.047595	2016-07-20 09:51:36.047595
608	Sinatra 1.2.x	1170	2016-07-20 09:51:36.052174	2016-07-20 09:51:36.052174
609	Sinatra 1.3.x	1170	2016-07-20 09:51:36.055796	2016-07-20 09:51:36.055796
610	Sinatra 1.4.x	1170	2016-07-20 09:51:36.059871	2016-07-20 09:51:36.059871
611	Gems	1171	2016-07-20 09:51:36.064696	2016-07-20 09:51:36.064696
612	Qt 4.0	1172	2016-07-20 09:51:36.068476	2016-07-20 09:51:36.068476
613	Qt 4.1	1172	2016-07-20 09:51:36.072678	2016-07-20 09:51:36.072678
614	Qt 4.2	1172	2016-07-20 09:51:36.076976	2016-07-20 09:51:36.076976
615	Qt 4.3	1172	2016-07-20 09:51:36.081027	2016-07-20 09:51:36.081027
616	Qt 4.4	1172	2016-07-20 09:51:36.084872	2016-07-20 09:51:36.084872
617	Qt 4.5	1172	2016-07-20 09:51:36.089106	2016-07-20 09:51:36.089106
618	Qt 4.6	1172	2016-07-20 09:51:36.094187	2016-07-20 09:51:36.094187
619	Qt 4.7	1172	2016-07-20 09:51:36.098127	2016-07-20 09:51:36.098127
620	Qt 4.8	1172	2016-07-20 09:51:36.102028	2016-07-20 09:51:36.102028
621	Qt 5.0	1172	2016-07-20 09:51:36.106548	2016-07-20 09:51:36.106548
622	Qt 5.1	1172	2016-07-20 09:51:36.110611	2016-07-20 09:51:36.110611
623	Qt 5.2	1172	2016-07-20 09:51:36.114429	2016-07-20 09:51:36.114429
624	Qt 5.3	1172	2016-07-20 09:51:36.118445	2016-07-20 09:51:36.118445
625	Qt 5.4	1172	2016-07-20 09:51:36.123414	2016-07-20 09:51:36.123414
626	Qt 5.5	1172	2016-07-20 09:51:36.127298	2016-07-20 09:51:36.127298
627	Qt 5.6	1172	2016-07-20 09:51:36.131839	2016-07-20 09:51:36.131839
628	Qt 5.7	1172	2016-07-20 09:51:36.135958	2016-07-20 09:51:36.135958
629	Games	1173	2016-07-20 09:51:36.14098	2016-07-20 09:51:36.14098
630	Database Engines	1174	2016-07-20 09:51:36.144953	2016-07-20 09:51:36.144953
631	TreeFrog Framework 0.5x	1175	2016-07-20 09:51:36.14866	2016-07-20 09:51:36.14866
632	TreeFrog Framework 0.7x	1175	2016-07-20 09:51:36.154416	2016-07-20 09:51:36.154416
633	TreeFrog Framework 0.8x	1175	2016-07-20 09:51:36.159512	2016-07-20 09:51:36.159512
634	TreeFrog Framework 1.0.x	1175	2016-07-20 09:51:36.165916	2016-07-20 09:51:36.165916
635	TreeFrog Framework 1.x	1175	2016-07-20 09:51:36.170506	2016-07-20 09:51:36.170506
636	TreeFrog Framework 1.7.1	1175	2016-07-20 09:51:36.175335	2016-07-20 09:51:36.175335
637	TreeFrog Framework 1.7.2	1175	2016-07-20 09:51:36.179318	2016-07-20 09:51:36.179318
638	TreeFrog Framework 1.7.3	1175	2016-07-20 09:51:36.183207	2016-07-20 09:51:36.183207
639	TreeFrog Framework 1.7.4	1175	2016-07-20 09:51:36.187405	2016-07-20 09:51:36.187405
640	TreeFrog Framework 1.7.5	1175	2016-07-20 09:51:36.191262	2016-07-20 09:51:36.191262
641	TreeFrog Framework 1.7.6	1175	2016-07-20 09:51:36.195058	2016-07-20 09:51:36.195058
642	Embedded Systems	1176	2016-07-20 09:51:36.199444	2016-07-20 09:51:36.199444
643	Scientific Computing	1177	2016-07-20 09:51:36.203536	2016-07-20 09:51:36.203536
644	Arduino	1178	2016-07-20 09:51:36.207889	2016-07-20 09:51:36.207889
645	ATMega	1178	2016-07-20 09:51:36.211514	2016-07-20 09:51:36.211514
646	Raspberry Pi	1178	2016-07-20 09:51:36.216085	2016-07-20 09:51:36.216085
647	Artificial Intelligence	1179	2016-07-20 09:51:36.220135	2016-07-20 09:51:36.220135
648	ASP.NET MVC 1	1180	2016-07-20 09:51:36.223701	2016-07-20 09:51:36.223701
649	ASP.NET MVC 2	1180	2016-07-20 09:51:36.227374	2016-07-20 09:51:36.227374
650	ASP.NET MVC 3	1180	2016-07-20 09:51:36.231657	2016-07-20 09:51:36.231657
651	ASP.NET MVC 4	1180	2016-07-20 09:51:36.236331	2016-07-20 09:51:36.236331
652	ASP.NET MVC 5	1180	2016-07-20 09:51:36.240035	2016-07-20 09:51:36.240035
653	Mobile Games	1181	2016-07-20 09:51:36.248318	2016-07-20 09:51:36.248318
654	Mobile App	1182	2016-07-20 09:51:36.260511	2016-07-20 09:51:36.260511
655	Cocoa	1183	2016-07-20 09:51:36.26604	2016-07-20 09:51:36.26604
656	iOS 3.1.3	1184	2016-07-20 09:51:36.271559	2016-07-20 09:51:36.271559
657	iOS 4.2.1	1184	2016-07-20 09:51:36.277699	2016-07-20 09:51:36.277699
658	iOS 5.1.1	1184	2016-07-20 09:51:36.281842	2016-07-20 09:51:36.281842
659	iOS 6.1.6	1184	2016-07-20 09:51:36.285802	2016-07-20 09:51:36.285802
660	iOS 7.1.2	1184	2016-07-20 09:51:36.29687	2016-07-20 09:51:36.29687
661	iOS 8.4.1	1184	2016-07-20 09:51:36.300525	2016-07-20 09:51:36.300525
662	iOS 9.3.3	1184	2016-07-20 09:51:36.305649	2016-07-20 09:51:36.305649
663	iOS 1.0	1184	2016-07-20 09:51:36.310583	2016-07-20 09:51:36.310583
664	Android 1.6	1216	2016-07-20 09:51:36.314593	2016-07-20 09:51:36.314593
665	Android 2.1	1216	2016-07-20 09:51:36.320014	2016-07-20 09:51:36.320014
666	Android 2.2	1216	2016-07-20 09:51:36.324566	2016-07-20 09:51:36.324566
667	Android 2.3	1216	2016-07-20 09:51:36.328297	2016-07-20 09:51:36.328297
668	Android 3.0	1216	2016-07-20 09:51:36.333007	2016-07-20 09:51:36.333007
669	Android 4.0	1216	2016-07-20 09:51:36.337588	2016-07-20 09:51:36.337588
670	Android 4.1	1216	2016-07-20 09:51:36.341305	2016-07-20 09:51:36.341305
671	Android 4.4	1216	2016-07-20 09:51:36.345912	2016-07-20 09:51:36.345912
672	Android 5.0	1216	2016-07-20 09:51:36.350597	2016-07-20 09:51:36.350597
673	Android 6.0	1216	2016-07-20 09:51:36.355308	2016-07-20 09:51:36.355308
674	iOS 3.1.3	1217	2016-07-20 09:51:36.359538	2016-07-20 09:51:36.359538
675	iOS 4.2.1	1217	2016-07-20 09:51:36.364251	2016-07-20 09:51:36.364251
676	iOS 5.1.1	1217	2016-07-20 09:51:36.369471	2016-07-20 09:51:36.369471
677	iOS 6.1.6	1217	2016-07-20 09:51:36.373299	2016-07-20 09:51:36.373299
678	iOS 7.1.2	1217	2016-07-20 09:51:36.377795	2016-07-20 09:51:36.377795
679	iOS 8.4.1	1217	2016-07-20 09:51:36.382588	2016-07-20 09:51:36.382588
680	iOS 9.3.3	1217	2016-07-20 09:51:36.386598	2016-07-20 09:51:36.386598
681	iOS 1.0	1217	2016-07-20 09:51:36.390494	2016-07-20 09:51:36.390494
682	Ionic	1218	2016-07-20 09:51:36.395381	2016-07-20 09:51:36.395381
683	Drupal 4.0.x	1219	2016-07-20 09:51:36.399825	2016-07-20 09:51:36.399825
684	Drupal 4.1.x	1219	2016-07-20 09:51:36.404706	2016-07-20 09:51:36.404706
685	Drupal 4.2.x	1219	2016-07-20 09:51:36.409014	2016-07-20 09:51:36.409014
686	Drupal 4.3.x	1219	2016-07-20 09:51:37.668629	2016-07-20 09:51:37.668629
687	Drupal 4.4.x	1219	2016-07-20 09:51:37.695507	2016-07-20 09:51:37.695507
688	Drupal 4.5.x	1219	2016-07-20 09:51:37.715979	2016-07-20 09:51:37.715979
689	Drupal 4.6.x	1219	2016-07-20 09:51:37.722962	2016-07-20 09:51:37.722962
690	Drupal 4.7.x	1219	2016-07-20 09:51:37.729877	2016-07-20 09:51:37.729877
691	Drupal 5.x\t	1219	2016-07-20 09:51:37.736309	2016-07-20 09:51:37.736309
692	Drupal 6.x\t	1219	2016-07-20 09:51:37.742083	2016-07-20 09:51:37.742083
693	Drupal 7.x\t	1219	2016-07-20 09:51:37.747426	2016-07-20 09:51:37.747426
694	Drupal 8.x\t	1219	2016-07-20 09:51:37.753395	2016-07-20 09:51:37.753395
695	Drupal 9.x\t	1219	2016-07-20 09:51:37.759834	2016-07-20 09:51:37.759834
696	Ghost 0.7.2	1220	2016-07-20 09:51:37.767126	2016-07-20 09:51:37.767126
697	Ghost 0.7.3	1220	2016-07-20 09:51:37.772103	2016-07-20 09:51:37.772103
698	Ghost 0.7.4	1220	2016-07-20 09:51:37.778153	2016-07-20 09:51:37.778153
699	Ghost 0.7.5	1220	2016-07-20 09:51:37.78286	2016-07-20 09:51:37.78286
700	Ghost 0.7.6	1220	2016-07-20 09:51:37.787347	2016-07-20 09:51:37.787347
701	Ghost 0.7.7	1220	2016-07-20 09:51:37.793456	2016-07-20 09:51:37.793456
702	Ghost 0.7.8	1220	2016-07-20 09:51:37.798315	2016-07-20 09:51:37.798315
703	Ghost 0.7.9	1220	2016-07-20 09:51:37.802831	2016-07-20 09:51:37.802831
704	Ghost 0.8.0	1220	2016-07-20 09:51:37.808403	2016-07-20 09:51:37.808403
705	Ghost 0.9.0	1220	2016-07-20 09:51:37.813039	2016-07-20 09:51:37.813039
706	HTML/CSS	1221	2016-07-20 09:51:37.817051	2016-07-20 09:51:37.817051
707	Joomla 1.5.x	1222	2016-07-20 09:51:37.82206	2016-07-20 09:51:37.82206
708	Joomla 1.6.x	1222	2016-07-20 09:51:37.827067	2016-07-20 09:51:37.827067
709	Joomla 1.7.x	1222	2016-07-20 09:51:37.831763	2016-07-20 09:51:37.831763
710	Joomla 2.5.x	1222	2016-07-20 09:51:37.835945	2016-07-20 09:51:37.835945
711	Joomla 3.0.x	1222	2016-07-20 09:51:37.840921	2016-07-20 09:51:37.840921
712	Joomla 3.1.x	1222	2016-07-20 09:51:37.84509	2016-07-20 09:51:37.84509
713	Joomla 3.2.x	1222	2016-07-20 09:51:37.850153	2016-07-20 09:51:37.850153
714	Joomla 3.3.x	1222	2016-07-20 09:51:37.853749	2016-07-20 09:51:37.853749
715	Joomla 3.4.x	1222	2016-07-20 09:51:37.857969	2016-07-20 09:51:37.857969
716	Joomla 3.5.x	1222	2016-07-20 09:51:37.861789	2016-07-20 09:51:37.861789
717	Magento 1.9.2.4	1223	2016-07-20 09:51:37.870209	2016-07-20 09:51:37.870209
718	Magento 2.0.0\t	1223	2016-07-20 09:51:37.876639	2016-07-20 09:51:37.876639
719	Magento 2.0.1\t	1223	2016-07-20 09:51:37.882675	2016-07-20 09:51:37.882675
720	Magento 2.0.2\t	1223	2016-07-20 09:51:37.887416	2016-07-20 09:51:37.887416
721	Magento 2.0.3\t	1223	2016-07-20 09:51:37.891655	2016-07-20 09:51:37.891655
722	Magento 2.0.4\t	1223	2016-07-20 09:51:37.895498	2016-07-20 09:51:37.895498
723	Magento 2.0.5\t	1223	2016-07-20 09:51:37.900186	2016-07-20 09:51:37.900186
724	Magento 2.0.6\t	1223	2016-07-20 09:51:37.90441	2016-07-20 09:51:37.90441
725	OpenCart 1.5.6\t	1224	2016-07-20 09:51:37.90871	2016-07-20 09:51:37.90871
726	OpenCart 1.5.6.1	1224	2016-07-20 09:51:37.917903	2016-07-20 09:51:37.917903
727	OpenCart 1.5.6.2	1224	2016-07-20 09:51:37.929631	2016-07-20 09:51:37.929631
728	OpenCart 1.5.6.3	1224	2016-07-20 09:51:37.936806	2016-07-20 09:51:37.936806
729	OpenCart 1.5.6.4	1224	2016-07-20 09:51:37.943428	2016-07-20 09:51:37.943428
730	OpenCart 2.0.0.0	1224	2016-07-20 09:51:37.947417	2016-07-20 09:51:37.947417
731	OpenCart 2.0.1.0	1224	2016-07-20 09:51:37.951514	2016-07-20 09:51:37.951514
732	OpenCart 2.0.1.1	1224	2016-07-20 09:51:37.956301	2016-07-20 09:51:37.956301
733	OpenCart 2.0.2.0	1224	2016-07-20 09:51:37.961039	2016-07-20 09:51:37.961039
734	OpenCart 2.0.3.1	1224	2016-07-20 09:51:37.965408	2016-07-20 09:51:37.965408
735	OpenCart 2.1.0.1	1224	2016-07-20 09:51:37.970581	2016-07-20 09:51:37.970581
736	OpenCart 2.1.0.2	1224	2016-07-20 09:51:37.975599	2016-07-20 09:51:37.975599
737	OpenCart 2.2.0.0	1224	2016-07-20 09:51:37.979676	2016-07-20 09:51:37.979676
738	Tumblr 3.1.x	1225	2016-07-20 09:51:37.985105	2016-07-20 09:51:37.985105
739	Tumblr 3.2.x	1225	2016-07-20 09:51:37.989265	2016-07-20 09:51:37.989265
740	Tumblr 3.3.x	1225	2016-07-20 09:51:37.993889	2016-07-20 09:51:37.993889
741	Tumblr 3.4.x	1225	2016-07-20 09:51:37.998047	2016-07-20 09:51:37.998047
742	Tumblr 3.5.x	1225	2016-07-20 09:51:38.003118	2016-07-20 09:51:38.003118
743	Tumblr 3.6.x	1225	2016-07-20 09:51:38.007317	2016-07-20 09:51:38.007317
744	Tumblr 3.7.x	1225	2016-07-20 09:51:38.011545	2016-07-20 09:51:38.011545
745	Tumblr 3.8.x	1225	2016-07-20 09:51:38.016017	2016-07-20 09:51:38.016017
746	WordPress 4.0\t	1226	2016-07-20 09:51:38.021667	2016-07-20 09:51:38.021667
747	WordPress 4.1\t	1226	2016-07-20 09:51:38.026143	2016-07-20 09:51:38.026143
748	WordPress 4.2\t	1226	2016-07-20 09:51:38.030639	2016-07-20 09:51:38.030639
749	WordPress 4.3\t	1226	2016-07-20 09:51:38.035051	2016-07-20 09:51:38.035051
750	WordPress 4.4\t	1226	2016-07-20 09:51:38.039961	2016-07-20 09:51:38.039961
751	WordPress 4.4.1\t	1226	2016-07-20 09:51:38.044042	2016-07-20 09:51:38.044042
752	WordPress 4.4.2\t	1226	2016-07-20 09:51:38.049206	2016-07-20 09:51:38.049206
753	WordPress 4.5\t	1226	2016-07-20 09:51:38.053761	2016-07-20 09:51:38.053761
754	WordPress 4.5.1\t	1226	2016-07-20 09:51:38.057853	2016-07-20 09:51:38.057853
755	WordPress 4.5.2\t	1226	2016-07-20 09:51:38.061897	2016-07-20 09:51:38.061897
756	PrestaShop 0.9	1227	2016-07-20 09:51:38.066398	2016-07-20 09:51:38.066398
757	PrestaShop 1.0	1227	2016-07-20 09:51:38.071127	2016-07-20 09:51:38.071127
758	PrestaShop 1.1	1227	2016-07-20 09:51:38.075125	2016-07-20 09:51:38.075125
759	PrestaShop 1.2	1227	2016-07-20 09:51:38.07948	2016-07-20 09:51:38.07948
760	PrestaShop 1.3	1227	2016-07-20 09:51:38.083712	2016-07-20 09:51:38.083712
761	PrestaShop 1.4	1227	2016-07-20 09:51:38.087576	2016-07-20 09:51:38.087576
762	PrestaShop 1.5	1227	2016-07-20 09:51:38.092925	2016-07-20 09:51:38.092925
763	PrestaShop 1.6	1227	2016-07-20 09:51:38.096777	2016-07-20 09:51:38.096777
764	PrestaShop 1.7	1227	2016-07-20 09:51:38.101482	2016-07-20 09:51:38.101482
\.


--
-- Name: codesubs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('codesubs_id_seq', 806, true);


--
-- Data for Name: cofiles; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY cofiles (id, coke, course_id, created_at, updated_at) FROM stdin;
7	bd77ef659fb58852858a.zip	1	2016-08-28 18:33:33.267173	2016-08-28 18:33:33.267173
8	9304fda1f047544c54f7.zip	3	2016-09-07 09:30:56.144868	2016-09-07 09:30:56.144868
\.


--
-- Name: cofiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('cofiles_id_seq', 9, true);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY comments (id, content, user_id, theme_id, created_at, updated_at, code_id, graphic_id, t3d_id, videofx_id, font_id, course_id) FROM stdin;
1	great item!!!	18	15	2016-07-08 00:54:01.446994	2016-07-08 00:54:01.459607	\N	\N	\N	\N	\N	\N
3	bangke!	18	11	2016-07-08 01:14:48.030169	2016-07-08 01:14:48.038665	\N	\N	\N	\N	\N	\N
5	good job bro! 	19	11	2016-07-08 05:14:22.464524	2016-07-08 05:14:22.486073	\N	\N	\N	\N	\N	\N
6	iki piye to ?	19	14	2016-07-08 05:15:05.281755	2016-07-08 05:15:05.292002	\N	\N	\N	\N	\N	\N
7	One Ok Rock!!	20	10	2016-07-08 05:25:19.058432	2016-07-08 05:25:19.069459	\N	\N	\N	\N	\N	\N
9	Agree!	18	14	2016-07-15 05:33:26.601131	2016-07-15 05:33:26.630287	\N	\N	\N	\N	\N	\N
19	please	\N	\N	2016-07-21 08:23:02.724686	2016-07-21 08:23:02.724686	\N	\N	\N	\N	\N	\N
20	ayolah	18	\N	2016-07-21 08:24:40.912751	2016-07-21 08:24:40.923682	\N	\N	\N	\N	\N	\N
21	bisa!!!!	18	\N	2016-07-21 08:25:33.819597	2016-07-21 08:25:33.830296	\N	\N	\N	\N	\N	\N
22	njir	18	\N	2016-07-21 08:26:08.10737	2016-07-21 08:26:08.11929	\N	\N	\N	\N	\N	\N
23	bh	18	\N	2016-07-21 08:28:57.131673	2016-07-21 08:28:57.142772	\N	\N	\N	\N	\N	\N
24	cd	\N	\N	2016-07-21 08:32:41.547596	2016-07-21 08:32:41.547596	\N	\N	\N	\N	\N	\N
25	hj	18	\N	2016-07-21 08:33:57.972769	2016-07-21 08:33:57.993807	\N	\N	\N	\N	\N	\N
26	pppp	18	\N	2016-07-21 08:38:09.151172	2016-07-21 08:38:09.16428	9	\N	\N	\N	\N	\N
27	cc	\N	\N	2016-07-21 08:55:17.121069	2016-07-21 08:55:17.121069	\N	\N	\N	\N	\N	\N
28	lklk	\N	\N	2016-07-21 08:56:45.849	2016-07-21 08:56:45.849	\N	\N	\N	\N	\N	\N
29	lklk	\N	\N	2016-07-21 08:56:48.116741	2016-07-21 08:56:48.116741	\N	\N	\N	\N	\N	\N
30	ss	18	\N	2016-07-21 08:59:32.885073	2016-07-21 08:59:32.897166	\N	\N	\N	\N	\N	\N
31	----	18	\N	2016-07-21 09:00:53.471065	2016-07-21 09:00:53.483835	\N	\N	\N	\N	\N	\N
32	ppp	18	\N	2016-07-21 09:11:10.027663	2016-07-21 09:11:10.037592	9	\N	\N	\N	\N	\N
33	oi	18	18	2016-07-21 09:11:39.43229	2016-07-21 09:11:39.441763	\N	\N	\N	\N	\N	\N
34	ooi	20	\N	2016-07-21 09:15:11.709986	2016-07-21 09:15:11.719199	9	\N	\N	\N	\N	\N
35	gret	20	\N	2016-07-21 09:22:10.038678	2016-07-21 09:22:10.052059	9	\N	\N	\N	\N	\N
36	lll	20	\N	2016-07-21 09:29:07.200157	2016-07-21 09:29:07.212462	9	\N	\N	\N	\N	\N
37	bankh	18	18	2016-07-21 09:34:01.664168	2016-07-21 09:34:01.674329	\N	\N	\N	\N	\N	\N
40	let's move...	19	\N	2016-07-27 06:22:54.50964	2016-07-27 06:22:54.541121	\N	\N	3	\N	\N	\N
41	hey, hey, hey....	20	\N	2016-08-02 16:43:30.085965	2016-08-02 16:43:30.112542	\N	\N	\N	3	\N	\N
42	suriname	18	\N	2016-08-03 06:38:43.833527	2016-08-03 06:38:43.86958	\N	\N	\N	4	\N	\N
43	sing me to sleep	20	\N	2016-08-06 12:35:24.601086	2016-08-06 12:35:24.672307	\N	\N	\N	\N	1	\N
46	Sementara?	18	\N	2016-08-09 18:18:06.8614	2016-08-09 18:18:06.872527	\N	\N	\N	\N	\N	1
47	Bazeng!	18	\N	2016-08-09 18:23:42.883001	2016-08-09 18:23:42.893777	\N	\N	\N	\N	\N	1
48	Nice stuff	19	10	2016-11-07 19:32:16.130703	2016-11-07 19:32:16.182498	\N	\N	\N	\N	\N	\N
49	yooo	18	\N	2016-11-09 15:37:20.561324	2016-11-09 15:37:20.642568	\N	2	\N	\N	\N	\N
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('comments_id_seq', 49, true);


--
-- Data for Name: compatibles; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY compatibles (id, name, created_at, updated_at) FROM stdin;
1	Ecwid	2016-06-04 08:10:35.954051	2016-06-04 08:10:35.954051
2	Bootstrap 3.xx	2016-06-04 08:11:05.786735	2016-06-04 08:11:05.786735
3	Bootstrap 2.3.x	2016-06-04 08:11:25.012822	2016-06-04 08:11:25.012822
4	Bootstrap 2.2.x	2016-06-04 08:11:41.515348	2016-06-04 08:11:41.515348
5	Foundation 6	2016-06-04 08:12:10.702241	2016-06-04 08:12:10.702241
6	Foundation 5	2016-06-04 08:13:17.718305	2016-06-04 08:13:17.718305
7	Foundation 4	2016-06-04 08:13:28.546145	2016-06-04 08:13:28.546145
9	Bootstrap 4.Xx	2016-10-18 11:04:01.650031	2016-10-18 11:04:01.650031
\.


--
-- Name: compatibles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('compatibles_id_seq', 9, true);


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY countries (id, name, created_at, updated_at, abbreviation) FROM stdin;
1001	Afghanistan	2016-07-03 13:31:14.159305	2016-07-03 13:31:14.159305	\N
1002	Albania	2016-07-03 13:31:14.18503	2016-07-03 13:31:14.18503	\N
1003	Algeria	2016-07-03 13:31:14.189283	2016-07-03 13:31:14.189283	\N
1004	American Samoa	2016-07-03 13:31:14.194716	2016-07-03 13:31:14.194716	\N
1005	Andorra	2016-07-03 13:31:14.198564	2016-07-03 13:31:14.198564	\N
1006	Angola	2016-07-03 13:31:14.20225	2016-07-03 13:31:14.20225	\N
1007	Anguilla	2016-07-03 13:31:14.208582	2016-07-03 13:31:14.208582	\N
1008	Antarctica	2016-07-03 13:31:14.212692	2016-07-03 13:31:14.212692	\N
1009	Antigua and Barbuda	2016-07-03 13:31:14.216285	2016-07-03 13:31:14.216285	\N
1010	Argentina	2016-07-03 13:31:14.219528	2016-07-03 13:31:14.219528	\N
1011	Armenia	2016-07-03 13:31:14.223523	2016-07-03 13:31:14.223523	\N
1012	Aruba	2016-07-03 13:31:14.227438	2016-07-03 13:31:14.227438	\N
1013	Australia	2016-07-03 13:31:14.231321	2016-07-03 13:31:14.231321	\N
1014	Austria	2016-07-03 13:31:14.239876	2016-07-03 13:31:14.239876	\N
1015	Azerbaijan	2016-07-03 13:31:14.245163	2016-07-03 13:31:14.245163	\N
1016	Bahrain	2016-07-03 13:31:14.252587	2016-07-03 13:31:14.252587	\N
1017	Bangladesh	2016-07-03 13:31:14.26745	2016-07-03 13:31:14.26745	\N
1018	Barbados	2016-07-03 13:31:14.271384	2016-07-03 13:31:14.271384	\N
1019	Belarus	2016-07-03 13:31:14.275177	2016-07-03 13:31:14.275177	\N
1020	Belgium	2016-07-03 13:31:14.278664	2016-07-03 13:31:14.278664	\N
1021	Belize	2016-07-03 13:31:14.284141	2016-07-03 13:31:14.284141	\N
1022	Benin	2016-07-03 13:31:14.289203	2016-07-03 13:31:14.289203	\N
1023	Bermuda	2016-07-03 13:31:14.293145	2016-07-03 13:31:14.293145	\N
1024	Bhutan	2016-07-03 13:31:14.297113	2016-07-03 13:31:14.297113	\N
1025	Bolivia	2016-07-03 13:31:14.30184	2016-07-03 13:31:14.30184	\N
1026	Bosnia and Herzegovina	2016-07-03 13:31:14.305579	2016-07-03 13:31:14.305579	\N
1027	Botswana	2016-07-03 13:31:14.309996	2016-07-03 13:31:14.309996	\N
1028	Bouvet Island	2016-07-03 13:31:14.314938	2016-07-03 13:31:14.314938	\N
1029	Brazil	2016-07-03 13:31:14.318923	2016-07-03 13:31:14.318923	\N
1030	British Indian Ocean Territory	2016-07-03 13:31:14.323542	2016-07-03 13:31:14.323542	\N
1031	Virgin Islands, British	2016-07-03 13:31:14.328711	2016-07-03 13:31:14.328711	\N
1032	Brunei Darussalam	2016-07-03 13:31:14.332562	2016-07-03 13:31:14.332562	\N
1033	Bulgaria	2016-07-03 13:31:14.336886	2016-07-03 13:31:14.336886	\N
1034	Burkina Faso	2016-07-03 13:31:14.342937	2016-07-03 13:31:14.342937	\N
1035	Myanmar	2016-07-03 13:31:14.346805	2016-07-03 13:31:14.346805	\N
1036	Burundi	2016-07-03 13:31:14.351648	2016-07-03 13:31:14.351648	\N
1037	Cambodia	2016-07-03 13:31:14.356146	2016-07-03 13:31:14.356146	\N
1038	Cameroon	2016-07-03 13:31:14.360226	2016-07-03 13:31:14.360226	\N
1039	Canada	2016-07-03 13:31:14.364682	2016-07-03 13:31:14.364682	\N
1040	Cape Verde	2016-07-03 13:31:14.370291	2016-07-03 13:31:14.370291	\N
1041	Cayman Islands	2016-07-03 13:31:14.374554	2016-07-03 13:31:14.374554	\N
1042	Central African Republic	2016-07-03 13:31:14.379029	2016-07-03 13:31:14.379029	\N
1043	Chad	2016-07-03 13:31:14.384005	2016-07-03 13:31:14.384005	\N
1044	Chile	2016-07-03 13:31:14.38857	2016-07-03 13:31:14.38857	\N
1045	China	2016-07-03 13:31:14.392977	2016-07-03 13:31:14.392977	\N
1046	Christmas Island	2016-07-03 13:31:14.397654	2016-07-03 13:31:14.397654	\N
1047	Cocos (Keeling) Islands	2016-07-03 13:31:14.401766	2016-07-03 13:31:14.401766	\N
1048	Colombia	2016-07-03 13:31:14.406198	2016-07-03 13:31:14.406198	\N
1049	Comoros	2016-07-03 13:31:14.411322	2016-07-03 13:31:14.411322	\N
1050	Congo, The Democratic Republic of the	2016-07-03 13:31:14.415273	2016-07-03 13:31:14.415273	\N
1051	Congo	2016-07-03 13:31:14.422278	2016-07-03 13:31:14.422278	\N
1052	Cook Islands	2016-07-03 13:31:14.427434	2016-07-03 13:31:14.427434	\N
1053	Costa Rica	2016-07-03 13:31:14.433315	2016-07-03 13:31:14.433315	\N
1054	Côte d'Ivoire	2016-07-03 13:31:14.438229	2016-07-03 13:31:14.438229	\N
1055	Croatia	2016-07-03 13:31:14.444933	2016-07-03 13:31:14.444933	\N
1056	Cuba	2016-07-03 13:31:14.449649	2016-07-03 13:31:14.449649	\N
1057	Cyprus	2016-07-03 13:31:14.454043	2016-07-03 13:31:14.454043	\N
1058	Czech Republic	2016-07-03 13:31:14.458248	2016-07-03 13:31:14.458248	\N
1059	Denmark	2016-07-03 13:31:14.463544	2016-07-03 13:31:14.463544	\N
1060	Djibouti	2016-07-03 13:31:14.470437	2016-07-03 13:31:14.470437	\N
1061	Dominica	2016-07-03 13:31:14.480196	2016-07-03 13:31:14.480196	\N
1062	Dominican Republic	2016-07-03 13:31:14.493958	2016-07-03 13:31:14.493958	\N
1063	Timor-Leste	2016-07-03 13:31:14.49808	2016-07-03 13:31:14.49808	\N
1064	Ecuador	2016-07-03 13:31:14.501976	2016-07-03 13:31:14.501976	\N
1065	Egypt	2016-07-03 13:31:14.506687	2016-07-03 13:31:14.506687	\N
1066	El Salvador	2016-07-03 13:31:14.511335	2016-07-03 13:31:14.511335	\N
1067	Equatorial Guinea	2016-07-03 13:31:14.51543	2016-07-03 13:31:14.51543	\N
1068	Eritrea	2016-07-03 13:31:14.519161	2016-07-03 13:31:14.519161	\N
1069	Estonia	2016-07-03 13:31:14.523814	2016-07-03 13:31:14.523814	\N
1070	Ethiopia	2016-07-03 13:31:14.527801	2016-07-03 13:31:14.527801	\N
1072	Falkland Islands (Malvinas)	2016-07-03 13:31:14.531391	2016-07-03 13:31:14.531391	\N
1073	Faroe Islands	2016-07-03 13:31:14.535317	2016-07-03 13:31:14.535317	\N
1074	Fiji	2016-07-03 13:31:14.539395	2016-07-03 13:31:14.539395	\N
1075	Finland	2016-07-03 13:31:14.543018	2016-07-03 13:31:14.543018	\N
1076	France	2016-07-03 13:31:14.546473	2016-07-03 13:31:14.546473	\N
1077	French Guiana	2016-07-03 13:31:14.55085	2016-07-03 13:31:14.55085	\N
1078	French Polynesia	2016-07-03 13:31:14.555398	2016-07-03 13:31:14.555398	\N
1079	French Southern Territories	2016-07-03 13:31:14.55935	2016-07-03 13:31:14.55935	\N
1080	Gabon	2016-07-03 13:31:14.562858	2016-07-03 13:31:14.562858	\N
1081	Georgia	2016-07-03 13:31:14.567569	2016-07-03 13:31:14.567569	\N
1082	Germany	2016-07-03 13:31:14.571453	2016-07-03 13:31:14.571453	\N
1083	Ghana	2016-07-03 13:31:14.575463	2016-07-03 13:31:14.575463	\N
1084	Gibraltar	2016-07-03 13:31:14.57941	2016-07-03 13:31:14.57941	\N
1085	Greece	2016-07-03 13:31:14.584919	2016-07-03 13:31:14.584919	\N
1086	Greenland	2016-07-03 13:31:14.588754	2016-07-03 13:31:14.588754	\N
1087	Grenada	2016-07-03 13:31:14.592249	2016-07-03 13:31:14.592249	\N
1088	Guadeloupe	2016-07-03 13:31:14.595796	2016-07-03 13:31:14.595796	\N
1089	Guam	2016-07-03 13:31:14.600724	2016-07-03 13:31:14.600724	\N
1090	Guatemala	2016-07-03 13:31:14.604874	2016-07-03 13:31:14.604874	\N
1091	Guinea	2016-07-03 13:31:14.608749	2016-07-03 13:31:14.608749	\N
1092	Guinea-Bissau	2016-07-03 13:31:14.613029	2016-07-03 13:31:14.613029	\N
1093	Guyana	2016-07-03 13:31:14.616317	2016-07-03 13:31:14.616317	\N
1094	Haiti	2016-07-03 13:31:14.620173	2016-07-03 13:31:14.620173	\N
1095	Heard Island and McDonald Islands	2016-07-03 13:31:14.624061	2016-07-03 13:31:14.624061	\N
1096	Holy See (Vatican City State)	2016-07-03 13:31:14.62874	2016-07-03 13:31:14.62874	\N
1097	Honduras	2016-07-03 13:31:14.632531	2016-07-03 13:31:14.632531	\N
1098	Hong Kong	2016-07-03 13:31:14.636234	2016-07-03 13:31:14.636234	\N
1099	Hungary	2016-07-03 13:31:14.640305	2016-07-03 13:31:14.640305	\N
1100	Iceland	2016-07-03 13:31:14.644555	2016-07-03 13:31:14.644555	\N
1101	India	2016-07-03 13:31:14.664623	2016-07-03 13:31:14.664623	\N
1102	Indonesia	2016-07-03 13:31:14.669545	2016-07-03 13:31:14.669545	\N
1103	Iran, Islamic Republic of	2016-07-03 13:31:14.672952	2016-07-03 13:31:14.672952	\N
1104	Iraq	2016-07-03 13:31:14.677003	2016-07-03 13:31:14.677003	\N
1105	Ireland	2016-07-03 13:31:14.680275	2016-07-03 13:31:14.680275	\N
1106	Israel	2016-07-03 13:31:14.683528	2016-07-03 13:31:14.683528	\N
1107	Italy	2016-07-03 13:31:14.687037	2016-07-03 13:31:14.687037	\N
1108	Jamaica	2016-07-03 13:31:14.690929	2016-07-03 13:31:14.690929	\N
1109	Japan	2016-07-03 13:31:14.695997	2016-07-03 13:31:14.695997	\N
1110	Jordan	2016-07-03 13:31:14.702636	2016-07-03 13:31:14.702636	\N
1111	Kazakhstan	2016-07-03 13:31:14.707637	2016-07-03 13:31:14.707637	\N
1112	Kenya	2016-07-03 13:31:14.713292	2016-07-03 13:31:14.713292	\N
1113	Kiribati	2016-07-03 13:31:14.719964	2016-07-03 13:31:14.719964	\N
1114	Korea, Democratic People's Republic of	2016-07-03 13:31:14.725781	2016-07-03 13:31:14.725781	\N
1115	Korea, Republic of	2016-07-03 13:31:14.729726	2016-07-03 13:31:14.729726	\N
1116	Kuwait	2016-07-03 13:31:14.734042	2016-07-03 13:31:14.734042	\N
1117	Kyrgyzstan	2016-07-03 13:31:14.73726	2016-07-03 13:31:14.73726	\N
1118	Lao People's Democratic Republic	2016-07-03 13:31:14.740551	2016-07-03 13:31:14.740551	\N
1119	Latvia	2016-07-03 13:31:14.744481	2016-07-03 13:31:14.744481	\N
1120	Lebanon	2016-07-03 13:31:14.747597	2016-07-03 13:31:14.747597	\N
1121	Lesotho	2016-07-03 13:31:14.750809	2016-07-03 13:31:14.750809	\N
1122	Liberia	2016-07-03 13:31:14.756061	2016-07-03 13:31:14.756061	\N
1123	Libyan Arab Jamahiriya	2016-07-03 13:31:14.76161	2016-07-03 13:31:14.76161	\N
1124	Liechtenstein	2016-07-03 13:31:14.765035	2016-07-03 13:31:14.765035	\N
1125	Lithuania	2016-07-03 13:31:14.768049	2016-07-03 13:31:14.768049	\N
1126	Luxembourg	2016-07-03 13:31:14.772259	2016-07-03 13:31:14.772259	\N
1127	Macao	2016-07-03 13:31:14.775843	2016-07-03 13:31:14.775843	\N
1128	Macedonia, Republic of	2016-07-03 13:31:14.779213	2016-07-03 13:31:14.779213	\N
1129	Madagascar	2016-07-03 13:31:14.783146	2016-07-03 13:31:14.783146	\N
1130	Malawi	2016-07-03 13:31:14.786272	2016-07-03 13:31:14.786272	\N
1131	Malaysia	2016-07-03 13:31:14.790048	2016-07-03 13:31:14.790048	\N
1132	Maldives	2016-07-03 13:31:14.793647	2016-07-03 13:31:14.793647	\N
1133	Mali	2016-07-03 13:31:14.7975	2016-07-03 13:31:14.7975	\N
1134	Malta	2016-07-03 13:31:14.800433	2016-07-03 13:31:14.800433	\N
1135	Marshall Islands	2016-07-03 13:31:14.804587	2016-07-03 13:31:14.804587	\N
1136	Martinique	2016-07-03 13:31:14.81363	2016-07-03 13:31:14.81363	\N
1137	Mauritania	2016-07-03 13:31:14.817055	2016-07-03 13:31:14.817055	\N
1138	Mauritius	2016-07-03 13:31:14.820537	2016-07-03 13:31:14.820537	\N
1139	Mayotte	2016-07-03 13:31:14.827471	2016-07-03 13:31:14.827471	\N
1140	Mexico	2016-07-03 13:31:14.831266	2016-07-03 13:31:14.831266	\N
1141	Micronesia, Federated States of	2016-07-03 13:31:14.83469	2016-07-03 13:31:14.83469	\N
1142	Moldova	2016-07-03 13:31:14.837538	2016-07-03 13:31:14.837538	\N
1143	Monaco	2016-07-03 13:31:14.840815	2016-07-03 13:31:14.840815	\N
1144	Mongolia	2016-07-03 13:31:14.844004	2016-07-03 13:31:14.844004	\N
1145	Montserrat	2016-07-03 13:31:14.846922	2016-07-03 13:31:14.846922	\N
1146	Morocco	2016-07-03 13:31:14.850415	2016-07-03 13:31:14.850415	\N
1147	Mozambique	2016-07-03 13:31:14.853767	2016-07-03 13:31:14.853767	\N
1148	Namibia	2016-07-03 13:31:14.858593	2016-07-03 13:31:14.858593	\N
1149	Nauru	2016-07-03 13:31:14.86236	2016-07-03 13:31:14.86236	\N
1150	Nepal	2016-07-03 13:31:14.865663	2016-07-03 13:31:14.865663	\N
1151	Netherlands Antilles	2016-07-03 13:31:14.869913	2016-07-03 13:31:14.869913	\N
1152	Netherlands	2016-07-03 13:31:14.87382	2016-07-03 13:31:14.87382	\N
1153	New Caledonia	2016-07-03 13:31:14.878369	2016-07-03 13:31:14.878369	\N
1154	New Zealand	2016-07-03 13:31:14.8822	2016-07-03 13:31:14.8822	\N
1155	Nicaragua	2016-07-03 13:31:14.886006	2016-07-03 13:31:14.886006	\N
1156	Niger	2016-07-03 13:31:14.889029	2016-07-03 13:31:14.889029	\N
1157	Nigeria	2016-07-03 13:31:14.892644	2016-07-03 13:31:14.892644	\N
1158	Niue	2016-07-03 13:31:14.895697	2016-07-03 13:31:14.895697	\N
1159	Norfolk Island	2016-07-03 13:31:14.898716	2016-07-03 13:31:14.898716	\N
1160	Northern Mariana Islands	2016-07-03 13:31:14.901529	2016-07-03 13:31:14.901529	\N
1161	Norway	2016-07-03 13:31:14.905517	2016-07-03 13:31:14.905517	\N
1162	Oman	2016-07-03 13:31:14.909264	2016-07-03 13:31:14.909264	\N
1163	Pakistan	2016-07-03 13:31:14.912061	2016-07-03 13:31:14.912061	\N
1164	Palau	2016-07-03 13:31:14.915288	2016-07-03 13:31:14.915288	\N
1165	Palestinian Territory, Occupied	2016-07-03 13:31:14.918838	2016-07-03 13:31:14.918838	\N
1166	Panama	2016-07-03 13:31:14.922892	2016-07-03 13:31:14.922892	\N
1167	Papua New Guinea	2016-07-03 13:31:14.926875	2016-07-03 13:31:14.926875	\N
1168	Paraguay	2016-07-03 13:31:14.933537	2016-07-03 13:31:14.933537	\N
1169	Peru	2016-07-03 13:31:14.941762	2016-07-03 13:31:14.941762	\N
1170	Philippines	2016-07-03 13:31:14.950051	2016-07-03 13:31:14.950051	\N
1171	Pitcairn	2016-07-03 13:31:14.954297	2016-07-03 13:31:14.954297	\N
1172	Poland	2016-07-03 13:31:14.957701	2016-07-03 13:31:14.957701	\N
1173	Portugal	2016-07-03 13:31:14.960545	2016-07-03 13:31:14.960545	\N
1174	Puerto Rico	2016-07-03 13:31:14.964402	2016-07-03 13:31:14.964402	\N
1175	Qatar	2016-07-03 13:31:14.967741	2016-07-03 13:31:14.967741	\N
1176	Romania	2016-07-03 13:31:14.97119	2016-07-03 13:31:14.97119	\N
1177	Russian Federation	2016-07-03 13:31:14.974216	2016-07-03 13:31:14.974216	\N
1178	Rwanda	2016-07-03 13:31:14.978161	2016-07-03 13:31:14.978161	\N
1179	Reunion	2016-07-03 13:31:14.981729	2016-07-03 13:31:14.981729	\N
1180	Saint Helena	2016-07-03 13:31:14.985194	2016-07-03 13:31:14.985194	\N
1181	Saint Kitts and Nevis	2016-07-03 13:31:14.988127	2016-07-03 13:31:14.988127	\N
1182	Saint Lucia	2016-07-03 13:31:14.991457	2016-07-03 13:31:14.991457	\N
1183	Saint Pierre and Miquelon	2016-07-03 13:31:14.995237	2016-07-03 13:31:14.995237	\N
1184	Saint Vincent and the Grenadines	2016-07-03 13:31:14.999678	2016-07-03 13:31:14.999678	\N
1185	Samoa	2016-07-03 13:31:15.003107	2016-07-03 13:31:15.003107	\N
1186	San Marino	2016-07-03 13:31:15.0064	2016-07-03 13:31:15.0064	\N
1187	Saudi Arabia	2016-07-03 13:31:15.010651	2016-07-03 13:31:15.010651	\N
1188	Senegal	2016-07-03 13:31:15.013869	2016-07-03 13:31:15.013869	\N
1189	Seychelles	2016-07-03 13:31:15.017336	2016-07-03 13:31:15.017336	\N
1190	Sierra Leone	2016-07-03 13:31:15.020733	2016-07-03 13:31:15.020733	\N
1191	Singapore	2016-07-03 13:31:15.024628	2016-07-03 13:31:15.024628	\N
1192	Slovakia	2016-07-03 13:31:15.027833	2016-07-03 13:31:15.027833	\N
1193	Slovenia	2016-07-03 13:31:15.031213	2016-07-03 13:31:15.031213	\N
1194	Solomon Islands	2016-07-03 13:31:15.035696	2016-07-03 13:31:15.035696	\N
1195	Somalia	2016-07-03 13:31:15.039408	2016-07-03 13:31:15.039408	\N
1196	South Africa	2016-07-03 13:31:15.042736	2016-07-03 13:31:15.042736	\N
1197	South Georgia and the South Sandwich Islands	2016-07-03 13:31:15.046453	2016-07-03 13:31:15.046453	\N
1198	Spain	2016-07-03 13:31:15.050004	2016-07-03 13:31:15.050004	\N
1199	Sri Lanka	2016-07-03 13:31:15.053691	2016-07-03 13:31:15.053691	\N
1200	Sudan	2016-07-03 13:31:15.056981	2016-07-03 13:31:15.056981	\N
1201	Suriname	2016-07-03 13:31:15.060202	2016-07-03 13:31:15.060202	\N
1202	Svalbard and Jan Mayen	2016-07-03 13:31:15.064215	2016-07-03 13:31:15.064215	\N
1203	Swaziland	2016-07-03 13:31:15.067419	2016-07-03 13:31:15.067419	\N
1204	Sweden	2016-07-03 13:31:15.070853	2016-07-03 13:31:15.070853	\N
1205	Switzerland	2016-07-03 13:31:15.074477	2016-07-03 13:31:15.074477	\N
1206	Syrian Arab Republic	2016-07-03 13:31:15.078184	2016-07-03 13:31:15.078184	\N
1207	Sao Tome and Principe	2016-07-03 13:31:15.081387	2016-07-03 13:31:15.081387	\N
1208	Taiwan	2016-07-03 13:31:15.08469	2016-07-03 13:31:15.08469	\N
1209	Tajikistan	2016-07-03 13:31:15.088327	2016-07-03 13:31:15.088327	\N
1210	Tanzania, United Republic of	2016-07-03 13:31:15.091826	2016-07-03 13:31:15.091826	\N
1211	Thailand	2016-07-03 13:31:15.094871	2016-07-03 13:31:15.094871	\N
1212	Bahamas	2016-07-03 13:31:15.099003	2016-07-03 13:31:15.099003	\N
1213	Gambia	2016-07-03 13:31:15.102403	2016-07-03 13:31:15.102403	\N
1214	Togo	2016-07-03 13:31:15.105954	2016-07-03 13:31:15.105954	\N
1215	Tokelau	2016-07-03 13:31:15.109273	2016-07-03 13:31:15.109273	\N
1216	Tonga	2016-07-03 13:31:15.113159	2016-07-03 13:31:15.113159	\N
1217	Trinidad and Tobago	2016-07-03 13:31:15.116571	2016-07-03 13:31:15.116571	\N
1218	Tunisia	2016-07-03 13:31:15.119794	2016-07-03 13:31:15.119794	\N
1219	Turkey	2016-07-03 13:31:15.122714	2016-07-03 13:31:15.122714	\N
1220	Turkmenistan	2016-07-03 13:31:15.125599	2016-07-03 13:31:15.125599	\N
1221	Turks and Caicos Islands	2016-07-03 13:31:15.128827	2016-07-03 13:31:15.128827	\N
1222	Tuvalu	2016-07-03 13:31:15.133271	2016-07-03 13:31:15.133271	\N
1223	Uganda	2016-07-03 13:31:15.136609	2016-07-03 13:31:15.136609	\N
1224	Ukraine	2016-07-03 13:31:15.139957	2016-07-03 13:31:15.139957	\N
1225	United Arab Emirates	2016-07-03 13:31:15.143224	2016-07-03 13:31:15.143224	\N
1226	United Kingdom	2016-07-03 13:31:15.146716	2016-07-03 13:31:15.146716	\N
1227	United States Minor Outlying Islands	2016-07-03 13:31:15.151033	2016-07-03 13:31:15.151033	\N
1228	United States	2016-07-03 13:31:15.158291	2016-07-03 13:31:15.158291	\N
1229	Uruguay	2016-07-03 13:31:15.165332	2016-07-03 13:31:15.165332	\N
1230	Uzbekistan	2016-07-03 13:31:15.175897	2016-07-03 13:31:15.175897	\N
1231	Vanuatu	2016-07-03 13:31:15.183625	2016-07-03 13:31:15.183625	\N
1232	Venezuela	2016-07-03 13:31:15.187738	2016-07-03 13:31:15.187738	\N
1233	Viet Nam	2016-07-03 13:31:15.191215	2016-07-03 13:31:15.191215	\N
1234	Virgin Islands, U.S.	2016-07-03 13:31:15.195225	2016-07-03 13:31:15.195225	\N
1235	Wallis and Futuna	2016-07-03 13:31:15.198472	2016-07-03 13:31:15.198472	\N
1236	Western Sahara	2016-07-03 13:31:15.201663	2016-07-03 13:31:15.201663	\N
1237	Yemen	2016-07-03 13:31:15.205709	2016-07-03 13:31:15.205709	\N
1238	Serbia and Montenegro	2016-07-03 13:31:15.209195	2016-07-03 13:31:15.209195	\N
1239	Zambia	2016-07-03 13:31:15.212523	2016-07-03 13:31:15.212523	\N
1240	Zimbabwe	2016-07-03 13:31:15.21557	2016-07-03 13:31:15.21557	\N
1241	Åland Islands	2016-07-03 13:31:15.219496	2016-07-03 13:31:15.219496	\N
1242	Serbia	2016-07-03 13:31:15.222588	2016-07-03 13:31:15.222588	\N
1243	Montenegro	2016-07-03 13:31:15.226312	2016-07-03 13:31:15.226312	\N
1244	Jersey	2016-07-03 13:31:15.229123	2016-07-03 13:31:15.229123	\N
1245	Guernsey	2016-07-03 13:31:15.232713	2016-07-03 13:31:15.232713	\N
1246	Isle of Man	2016-07-03 13:31:15.236888	2016-07-03 13:31:15.236888	\N
\.


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('countries_id_seq', 1, false);


--
-- Data for Name: course_autocompletes; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY course_autocompletes (id, term, popularity, created_at, updated_at) FROM stdin;
\.


--
-- Name: course_autocompletes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('course_autocompletes_id_seq', 1, false);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY courses (id, name, description, category_id, note, thumbnail, price, agree, slug, vi_length, skill_level, user_id, created_at, updated_at, language_id, price_ext, team_id, reject, average_rate, sell) FROM stdin;
1	Build Your Business Website	<h3>What are the requirements?</h3>\r\n\r\n<ul>\r\n\t<li>Following the step-by-step instructions of this training</li>\r\n\t<li>Being determined to create a high quality training that sells</li>\r\n</ul>\r\n\r\n<h3>What am I going to get from this course?</h3>\r\n\r\n<ul>\r\n\t<li>10 proven &amp; tested hacks that helped us attract more than 70,000 students on Udemy</li>\r\n\t<li>How to find a hot topic for your next course</li>\r\n\t<li>How to project whether the demand for your topic is shrinking or rapidly growing</li>\r\n\t<li>How to outperform bestselling products and spot weaknesses in the products of your competitors</li>\r\n\t<li>The only right way to structure your course</li>\r\n\t<li>Why you must combat buyer&rsquo;s remorse</li>\r\n\t<li>How to become a passionate teacher that students can relate to</li>\r\n\t<li>How to write high quality video scripts</li>\r\n\t<li>The No. 1 resource to increase the perceived value of your course</li>\r\n\t<li>Why you must be authentic to sustain an online teaching career</li>\r\n\t<li>&hellip; and much more!</li>\r\n</ul>\r\n\r\n<p><a href="javascript:void(0)">Full details</a></p>\r\n\r\n<h3>What is the target audience?</h3>\r\n\r\n<ul>\r\n\t<li>Instructors on Udemy who want to improve their course creation skills and outperform their competitors</li>\r\n\t<li>Course instructors in the process of creating their first online training</li>\r\n\t<li>Instructors who want to create high quality courses that sell and rank high on the marketplace</li>\r\n</ul>\r\n	1072		914c93c83225b8f1cb38330b8db1ec04ba09a607ce2f536992.jpg	28.0	t	build-your-business-website	2 hours	Beginner	20	2016-08-07 11:29:06.863673	2016-09-07 16:33:24.493984	1	\N	1	f	\N	0
3	One-Stop Shopify Grocery Shop	<p><img alt="" src="https://gozha.net/tf/foodlyshopify/foodly_shopify_update-1_2.jpg" /></p>\r\n\r\n<p><img alt="" src="https://gozha.net/tf/foodlyshopify/foodly_first_ever_shopify_theme_with_visual_constructor.jpg" style="height:896px; width:614px" /></p>\r\n	1072		d8b3a2f98be255cdab7905c0f5629d31a5841fe9dfc9bc744f.png	125.0	t	one-stop-shopify-grocery-shop	3 hours	Intermediate	19	2016-09-07 09:28:14.334399	2016-09-07 09:45:05.346116	1	\N	1	f	\N	1
\.


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('courses_id_seq', 4, true);


--
-- Data for Name: databrowsers; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY databrowsers (id, browser_id, theme_id, created_at, updated_at, code_id) FROM stdin;
36	2	\N	2016-07-21 05:03:40.731158	2016-07-21 05:03:40.731158	9
37	3	\N	2016-07-21 05:03:40.763388	2016-07-21 05:03:40.763388	9
38	5	\N	2016-07-21 05:03:40.768043	2016-07-21 05:03:40.768043	9
39	7	\N	2016-07-21 05:03:40.772972	2016-07-21 05:03:40.772972	9
45	2	11	2016-07-22 07:38:13.120949	2016-07-22 07:38:13.120949	\N
46	4	11	2016-07-22 07:38:13.130617	2016-07-22 07:38:13.130617	\N
47	9	11	2016-07-22 07:38:13.141292	2016-07-22 07:38:13.141292	\N
48	3	18	2016-07-22 07:39:22.774207	2016-07-22 07:39:22.774207	\N
49	2	20	2016-08-23 19:02:41.125732	2016-08-23 19:02:41.125732	\N
50	3	20	2016-08-23 19:02:41.168058	2016-08-23 19:02:41.168058	\N
51	4	20	2016-08-23 19:02:41.173479	2016-08-23 19:02:41.173479	\N
52	5	20	2016-08-23 19:02:41.178502	2016-08-23 19:02:41.178502	\N
53	8	20	2016-08-23 19:02:41.18299	2016-08-23 19:02:41.18299	\N
54	9	20	2016-08-23 19:02:41.187095	2016-08-23 19:02:41.187095	\N
58	2	10	2016-08-25 02:31:09.989934	2016-08-25 02:31:09.989934	\N
59	3	10	2016-08-25 02:31:10.018417	2016-08-25 02:31:10.018417	\N
60	5	10	2016-08-25 02:31:10.024872	2016-08-25 02:31:10.024872	\N
61	2	\N	2016-08-29 18:31:45.594567	2016-08-29 18:31:45.594567	13
62	5	\N	2016-08-29 18:31:45.600201	2016-08-29 18:31:45.600201	13
67	2	\N	2016-09-06 16:42:01.921868	2016-09-06 16:42:01.921868	14
68	3	\N	2016-09-06 16:42:01.935088	2016-09-06 16:42:01.935088	14
69	6	\N	2016-09-06 16:42:01.942103	2016-09-06 16:42:01.942103	14
73	2	23	2016-10-11 12:00:46.092978	2016-10-11 12:00:46.092978	\N
74	7	23	2016-10-11 12:00:46.10303	2016-10-11 12:00:46.10303	\N
75	2	\N	2016-10-11 12:29:36.260775	2016-10-11 12:29:36.260775	16
76	5	\N	2016-10-11 12:29:36.267211	2016-10-11 12:29:36.267211	16
77	6	\N	2016-10-11 12:29:36.272346	2016-10-11 12:29:36.272346	16
78	8	\N	2016-10-11 12:29:36.277177	2016-10-11 12:29:36.277177	16
\.


--
-- Name: databrowsers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('databrowsers_id_seq', 78, true);


--
-- Data for Name: datacompatibles; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY datacompatibles (id, theme_id, compatible_id, created_at, updated_at, code_id) FROM stdin;
17	\N	2	2016-07-21 05:03:40.865122	2016-07-21 05:03:40.865122	9
18	\N	4	2016-07-21 05:03:40.873091	2016-07-21 05:03:40.873091	9
21	11	3	2016-07-22 07:38:13.184641	2016-07-22 07:38:13.184641	\N
22	18	3	2016-07-22 07:39:22.844188	2016-07-22 07:39:22.844188	\N
23	15	3	2016-08-20 07:07:07.943552	2016-08-20 07:07:07.943552	\N
24	15	5	2016-08-20 07:07:07.952099	2016-08-20 07:07:07.952099	\N
25	20	2	2016-08-23 19:02:41.292295	2016-08-23 19:02:41.292295	\N
26	20	3	2016-08-23 19:02:41.299368	2016-08-23 19:02:41.299368	\N
28	10	2	2016-08-25 02:31:10.100228	2016-08-25 02:31:10.100228	\N
29	\N	2	2016-08-29 18:31:45.687261	2016-08-29 18:31:45.687261	13
31	\N	2	2016-09-06 16:42:02.029571	2016-09-06 16:42:02.029571	14
32	\N	3	2016-09-06 16:42:02.041435	2016-09-06 16:42:02.041435	14
34	23	2	2016-10-11 12:00:46.193883	2016-10-11 12:00:46.193883	\N
35	\N	2	2016-10-11 12:29:36.343953	2016-10-11 12:29:36.343953	16
\.


--
-- Name: datacompatibles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('datacompatibles_id_seq', 35, true);


--
-- Data for Name: dataincludes; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY dataincludes (id, include_id, theme_id, created_at, updated_at, code_id, graphic_id, t3d_id, videofx_id, font_id) FROM stdin;
56	1	\N	2016-07-21 05:03:40.814613	2016-07-21 05:03:40.814613	9	\N	\N	\N	\N
57	2	\N	2016-07-21 05:03:40.821575	2016-07-21 05:03:40.821575	9	\N	\N	\N	\N
58	5	\N	2016-07-21 05:03:40.825806	2016-07-21 05:03:40.825806	9	\N	\N	\N	\N
59	6	\N	2016-07-21 05:03:40.83075	2016-07-21 05:03:40.83075	9	\N	\N	\N	\N
60	9	\N	2016-07-21 05:03:40.836511	2016-07-21 05:03:40.836511	9	\N	\N	\N	\N
67	2	11	2016-07-22 07:38:13.159878	2016-07-22 07:38:13.159878	\N	\N	\N	\N	\N
68	3	11	2016-07-22 07:38:13.166163	2016-07-22 07:38:13.166163	\N	\N	\N	\N	\N
69	5	11	2016-07-22 07:38:13.17167	2016-07-22 07:38:13.17167	\N	\N	\N	\N	\N
70	2	18	2016-07-22 07:39:22.795001	2016-07-22 07:39:22.795001	\N	\N	\N	\N	\N
71	3	18	2016-07-22 07:39:22.802705	2016-07-22 07:39:22.802705	\N	\N	\N	\N	\N
72	4	18	2016-07-22 07:39:22.810159	2016-07-22 07:39:22.810159	\N	\N	\N	\N	\N
73	5	18	2016-07-22 07:39:22.818901	2016-07-22 07:39:22.818901	\N	\N	\N	\N	\N
74	8	18	2016-07-22 07:39:22.828344	2016-07-22 07:39:22.828344	\N	\N	\N	\N	\N
79	4	\N	2016-07-27 02:59:21.181887	2016-07-27 02:59:21.181887	\N	\N	3	\N	\N
80	62	\N	2016-07-27 02:59:21.194329	2016-07-27 02:59:21.194329	\N	\N	3	\N	\N
81	64	\N	2016-07-27 02:59:21.206767	2016-07-27 02:59:21.206767	\N	\N	3	\N	\N
82	57	\N	2016-07-27 03:23:01.75948	2016-07-27 03:23:01.75948	\N	\N	4	\N	\N
83	58	\N	2016-07-27 03:23:01.768565	2016-07-27 03:23:01.768565	\N	\N	4	\N	\N
84	60	\N	2016-07-27 03:23:01.775765	2016-07-27 03:23:01.775765	\N	\N	4	\N	\N
85	38	\N	2016-07-27 04:34:34.849809	2016-07-27 04:34:34.849809	\N	\N	2	\N	\N
86	42	\N	2016-07-27 04:34:34.854926	2016-07-27 04:34:34.854926	\N	\N	2	\N	\N
87	44	\N	2016-07-27 04:34:34.860286	2016-07-27 04:34:34.860286	\N	\N	2	\N	\N
91	66	\N	2016-08-02 03:57:48.343434	2016-08-02 03:57:48.343434	\N	\N	\N	1	\N
92	67	\N	2016-08-02 03:57:48.371698	2016-08-02 03:57:48.371698	\N	\N	\N	1	\N
95	73	\N	2016-08-06 11:23:27.605576	2016-08-06 11:23:27.605576	\N	\N	\N	\N	1
96	72	\N	2016-08-06 11:23:27.698636	2016-08-06 11:23:27.698636	\N	\N	\N	\N	1
99	1	20	2016-08-23 19:02:41.218586	2016-08-23 19:02:41.218586	\N	\N	\N	\N	\N
100	2	20	2016-08-23 19:02:41.25434	2016-08-23 19:02:41.25434	\N	\N	\N	\N	\N
101	3	20	2016-08-23 19:02:41.260203	2016-08-23 19:02:41.260203	\N	\N	\N	\N	\N
102	5	20	2016-08-23 19:02:41.265139	2016-08-23 19:02:41.265139	\N	\N	\N	\N	\N
103	6	20	2016-08-23 19:02:41.269557	2016-08-23 19:02:41.269557	\N	\N	\N	\N	\N
109	1	14	2016-08-25 02:28:58.198044	2016-08-25 02:28:58.198044	\N	\N	\N	\N	\N
110	2	14	2016-08-25 02:28:58.210983	2016-08-25 02:28:58.210983	\N	\N	\N	\N	\N
111	5	14	2016-08-25 02:28:58.217274	2016-08-25 02:28:58.217274	\N	\N	\N	\N	\N
112	6	14	2016-08-25 02:28:58.225191	2016-08-25 02:28:58.225191	\N	\N	\N	\N	\N
113	1	10	2016-08-25 02:31:10.040182	2016-08-25 02:31:10.040182	\N	\N	\N	\N	\N
114	2	10	2016-08-25 02:31:10.047705	2016-08-25 02:31:10.047705	\N	\N	\N	\N	\N
115	4	10	2016-08-25 02:31:10.055369	2016-08-25 02:31:10.055369	\N	\N	\N	\N	\N
116	5	10	2016-08-25 02:31:10.062566	2016-08-25 02:31:10.062566	\N	\N	\N	\N	\N
117	6	10	2016-08-25 02:31:10.070037	2016-08-25 02:31:10.070037	\N	\N	\N	\N	\N
118	27	\N	2016-08-27 05:21:19.420835	2016-08-27 05:21:19.420835	\N	2	\N	\N	\N
119	29	\N	2016-08-27 05:21:19.440592	2016-08-27 05:21:19.440592	\N	2	\N	\N	\N
120	2	\N	2016-08-29 18:31:45.633684	2016-08-29 18:31:45.633684	13	\N	\N	\N	\N
121	5	\N	2016-08-29 18:31:45.647091	2016-08-29 18:31:45.647091	13	\N	\N	\N	\N
122	12	\N	2016-08-29 18:31:45.653332	2016-08-29 18:31:45.653332	13	\N	\N	\N	\N
123	13	\N	2016-08-29 18:31:45.659656	2016-08-29 18:31:45.659656	13	\N	\N	\N	\N
129	2	\N	2016-09-06 16:42:01.97535	2016-09-06 16:42:01.97535	14	\N	\N	\N	\N
130	5	\N	2016-09-06 16:42:01.986859	2016-09-06 16:42:01.986859	14	\N	\N	\N	\N
131	10	\N	2016-09-06 16:42:01.993134	2016-09-06 16:42:01.993134	14	\N	\N	\N	\N
132	12	\N	2016-09-06 16:42:01.998524	2016-09-06 16:42:01.998524	14	\N	\N	\N	\N
138	78	\N	2016-09-07 17:49:18.283108	2016-09-07 17:49:18.283108	\N	\N	\N	\N	4
139	79	\N	2016-09-07 17:49:18.337526	2016-09-07 17:49:18.337526	\N	\N	\N	\N	4
140	72	\N	2016-09-07 17:49:18.340672	2016-09-07 17:49:18.340672	\N	\N	\N	\N	4
143	28	\N	2016-09-07 19:44:58.297781	2016-09-07 19:44:58.297781	\N	3	\N	\N	\N
144	29	\N	2016-09-07 19:44:58.306105	2016-09-07 19:44:58.306105	\N	3	\N	\N	\N
145	31	\N	2016-09-07 19:44:58.31206	2016-09-07 19:44:58.31206	\N	3	\N	\N	\N
149	37	\N	2016-09-08 03:14:36.037331	2016-09-08 03:14:36.037331	\N	\N	5	\N	\N
150	40	\N	2016-09-08 03:14:36.053687	2016-09-08 03:14:36.053687	\N	\N	5	\N	\N
151	37	\N	2016-09-08 03:18:26.139364	2016-09-08 03:18:26.139364	\N	\N	6	\N	\N
152	40	\N	2016-09-08 03:18:26.145204	2016-09-08 03:18:26.145204	\N	\N	6	\N	\N
155	1	23	2016-10-11 12:00:46.138138	2016-10-11 12:00:46.138138	\N	\N	\N	\N	\N
156	2	23	2016-10-11 12:00:46.155672	2016-10-11 12:00:46.155672	\N	\N	\N	\N	\N
157	6	23	2016-10-11 12:00:46.162632	2016-10-11 12:00:46.162632	\N	\N	\N	\N	\N
158	7	23	2016-10-11 12:00:46.168385	2016-10-11 12:00:46.168385	\N	\N	\N	\N	\N
159	2	\N	2016-10-11 12:29:36.307547	2016-10-11 12:29:36.307547	16	\N	\N	\N	\N
160	10	\N	2016-10-11 12:29:36.314518	2016-10-11 12:29:36.314518	16	\N	\N	\N	\N
161	12	\N	2016-10-11 12:29:36.31962	2016-10-11 12:29:36.31962	16	\N	\N	\N	\N
\.


--
-- Name: dataincludes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('dataincludes_id_seq', 161, true);


--
-- Data for Name: dataositems; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY dataositems (id, t3d_id, ositem_id, created_at, updated_at) FROM stdin;
1	4	2	2016-07-27 03:23:01.808901	2016-07-27 03:23:01.808901
2	4	3	2016-07-27 03:23:01.838766	2016-07-27 03:23:01.838766
\.


--
-- Name: dataositems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('dataositems_id_seq', 2, true);


--
-- Data for Name: datasubcategories; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY datasubcategories (id, subcategory_id, theme_id, created_at, updated_at, code_id, graphic_id, t3d_id, videofx_id, course_id) FROM stdin;
38	1135	\N	2016-07-21 05:03:40.698313	2016-07-21 05:03:40.698313	9	\N	\N	\N	\N
44	1102	11	2016-07-22 07:38:13.094685	2016-07-22 07:38:13.094685	\N	\N	\N	\N	\N
45	1122	11	2016-07-22 07:38:13.102315	2016-07-22 07:38:13.102315	\N	\N	\N	\N	\N
46	1104	18	2016-07-22 07:39:22.75166	2016-07-22 07:39:22.75166	\N	\N	\N	\N	\N
47	1128	18	2016-07-22 07:39:22.757344	2016-07-22 07:39:22.757344	\N	\N	\N	\N	\N
49	1481	\N	2016-07-27 02:59:21.130578	2016-07-27 02:59:21.130578	\N	\N	3	\N	\N
50	1518	\N	2016-07-27 03:23:01.742293	2016-07-27 03:23:01.742293	\N	\N	4	\N	\N
51	1508	\N	2016-07-27 04:34:34.830983	2016-07-27 04:34:34.830983	\N	\N	2	\N	\N
53	1560	\N	2016-08-02 02:32:11.408104	2016-08-02 02:32:11.408104	\N	\N	\N	4	\N
54	1549	\N	2016-08-02 03:57:48.274486	2016-08-02 03:57:48.274486	\N	\N	\N	1	\N
56	1568	\N	2016-08-02 04:13:18.58981	2016-08-02 04:13:18.58981	\N	\N	\N	3	\N
62	1102	20	2016-08-23 19:02:41.063813	2016-08-23 19:02:41.063813	\N	\N	\N	\N	\N
63	1104	20	2016-08-23 19:02:41.094454	2016-08-23 19:02:41.094454	\N	\N	\N	\N	\N
64	1105	20	2016-08-23 19:02:41.10111	2016-08-23 19:02:41.10111	\N	\N	\N	\N	\N
67	1131	14	2016-08-25 02:28:58.158815	2016-08-25 02:28:58.158815	\N	\N	\N	\N	\N
68	1103	10	2016-08-25 02:31:09.946162	2016-08-25 02:31:09.946162	\N	\N	\N	\N	\N
69	1106	10	2016-08-25 02:31:09.953553	2016-08-25 02:31:09.953553	\N	\N	\N	\N	\N
70	1107	10	2016-08-25 02:31:09.959526	2016-08-25 02:31:09.959526	\N	\N	\N	\N	\N
71	1132	14	2016-08-25 19:53:05.683377	2016-08-25 19:53:05.683377	\N	\N	\N	\N	\N
72	1230	\N	2016-08-27 05:21:19.363991	2016-08-27 05:21:19.363991	\N	2	\N	\N	\N
73	1145	\N	2016-08-29 18:31:45.569829	2016-08-29 18:31:45.569829	13	\N	\N	\N	\N
77	1137	\N	2016-09-06 16:42:01.891046	2016-09-06 16:42:01.891046	14	\N	\N	\N	\N
81	1693	\N	2016-09-07 12:57:34.249081	2016-09-07 12:57:34.249081	\N	\N	\N	\N	3
83	1588	\N	2016-09-07 12:59:01.796776	2016-09-07 12:59:01.796776	\N	\N	\N	\N	1
84	1231	\N	2016-09-07 19:44:58.259881	2016-09-07 19:44:58.259881	\N	3	\N	\N	\N
86	1363	\N	2016-09-08 03:14:36.002119	2016-09-08 03:14:36.002119	\N	\N	5	\N	\N
87	1520	\N	2016-09-08 09:39:51.622051	2016-09-08 09:39:51.622051	\N	\N	\N	5	\N
89	1106	23	2016-10-11 12:00:46.057767	2016-10-11 12:00:46.057767	\N	\N	\N	\N	\N
90	1110	23	2016-10-11 12:00:46.06697	2016-10-11 12:00:46.06697	\N	\N	\N	\N	\N
91	1190	\N	2016-10-11 12:29:36.232537	2016-10-11 12:29:36.232537	16	\N	\N	\N	\N
\.


--
-- Name: datasubcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('datasubcategories_id_seq', 91, true);


--
-- Data for Name: dependencies; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY dependencies (id, name, created_at, updated_at, category_id) FROM stdin;
91	Swift 1.0	2016-07-20 06:52:36.123461	2016-07-20 06:52:36.123461	1020
92	Swift 1.1	2016-07-20 06:55:48.724907	2016-07-20 06:55:48.724907	1020
93	Swift 1.2	2016-07-20 06:56:03.708888	2016-07-20 06:56:03.708888	1020
94	Swift 2.0	2016-07-20 06:57:06.843871	2016-07-20 06:57:06.843871	1020
95	Swift 2.1	2016-07-20 06:57:20.477551	2016-07-20 06:57:20.477551	1020
96	Swift 2.2	2016-07-20 06:57:33.046181	2016-07-20 06:57:33.046181	1020
148	Wordpress 4.0	2016-07-20 07:03:53.278572	2016-07-20 07:03:53.278572	1021
149	Wordpress 4.1	2016-07-20 07:04:11.486449	2016-07-20 07:04:11.486449	1021
150	Wordpress 4.2	2016-07-20 07:04:20.062898	2016-07-20 07:04:20.062898	1021
151	Wordpress 4.3	2016-07-20 07:04:31.910905	2016-07-20 07:04:31.910905	1021
152	Wordpress 4.4.0	2016-07-20 07:05:56.927175	2016-07-20 07:05:56.927175	1021
153	Wordpress 4.4.1	2016-07-20 07:06:04.319765	2016-07-20 07:06:04.319765	1021
154	Wordpress 4.4.2	2016-07-20 07:06:19.263124	2016-07-20 07:06:19.263124	1021
155	Wordpress 4.5	2016-07-20 07:06:38.295903	2016-07-20 07:06:38.295903	1021
156	Wordpress 4.5.1	2016-07-20 07:06:47.959598	2016-07-20 07:06:47.959598	1021
1	WordPress 4.0	2016-06-04 08:27:05.402047	2016-06-05 14:25:34.014007	1007
2	WordPress 4.1	2016-06-04 08:27:28.434322	2016-06-05 14:26:11.67499	1007
3	WordPress 4.2	2016-06-04 08:27:43.210664	2016-06-05 14:27:41.28082	1007
4	WordPress 4.3	2016-06-04 08:28:17.364692	2016-06-05 14:28:34.063284	1007
5	WordPress 4.4	2016-06-04 08:28:30.431433	2016-06-05 14:28:43.446574	1007
6	WordPress 4.4.1	2016-06-04 08:28:47.61209	2016-06-05 14:28:51.17052	1007
7	WordPress 4.4.2	2016-06-04 08:28:58.644742	2016-06-05 14:28:59.956454	1007
8	WordPress 4.5	2016-06-04 08:29:09.106554	2016-06-05 14:29:15.938815	1007
9	WordPress 4.5.1	2016-06-04 08:29:21.589343	2016-06-05 14:29:27.109377	1007
10	WordPress 4.5.2	2016-06-04 08:29:29.625489	2016-06-05 14:29:36.638944	1007
11	Drupal 4.0.x	2016-06-04 08:34:52.153353	2016-06-05 14:30:36.279382	1000
12	Drupal 4.1.x	2016-06-04 08:35:15.479954	2016-06-05 14:30:47.342553	1000
13	Drupal 4.2.x	2016-06-04 08:35:25.490925	2016-06-05 14:30:56.985827	1000
14	Drupal 4.3.x	2016-06-04 08:35:33.413068	2016-06-05 14:31:05.838582	1000
15	Drupal 4.4.x	2016-06-04 08:35:39.815988	2016-06-05 14:31:16.309871	1000
16	Drupal 4.5.x	2016-06-04 08:35:48.710218	2016-06-05 14:31:24.941899	1000
17	Drupal 4.6.x	2016-06-04 08:35:57.112321	2016-06-05 14:31:48.136559	1000
18	Drupal 4.7.x	2016-06-04 08:36:06.944939	2016-06-05 14:32:15.54958	1000
19	Drupal 5.x	2016-06-04 08:36:19.695636	2016-06-05 14:32:23.67491	1000
20	Drupal 6.x	2016-06-04 08:36:29.292611	2016-06-05 14:32:32.644115	1000
21	Drupal 7.x	2016-06-04 08:36:36.993289	2016-06-05 14:32:41.595802	1000
22	Drupal 8.x	2016-06-04 08:36:49.922664	2016-06-05 14:32:49.811236	1000
23	Drupal 9.x	2016-06-04 08:36:58.664186	2016-06-05 14:33:02.042001	1000
24	Joomla 1.5.x	2016-06-04 08:39:29.473367	2016-06-05 14:33:47.937965	1003
25	Joomla 1.6.x	2016-06-04 08:39:45.461627	2016-06-05 14:34:04.751618	1003
26	Joomla 1.7.x	2016-06-04 08:39:53.808514	2016-06-05 14:34:13.673394	1003
27	Joomla 2.5.x	2016-06-04 08:40:03.369476	2016-06-05 14:34:23.128281	1003
28	Joomla 3.0.x	2016-06-04 08:40:15.351017	2016-06-05 14:34:33.090808	1003
29	Joomla 3.1.x	2016-06-04 08:40:38.243838	2016-06-05 14:34:46.509543	1003
30	Joomla 3.2.x	2016-06-04 08:40:46.503415	2016-06-05 14:34:57.553477	1003
31	Joomla 3.3.x	2016-06-04 08:40:53.535065	2016-06-05 14:35:07.745293	1003
32	Joomla 3.4.x	2016-06-04 08:41:00.309814	2016-06-05 14:35:46.020019	1003
33	Joomla 3.5.x	2016-06-04 08:41:07.304058	2016-06-05 14:35:53.865517	1003
34	Magento 1.9.2.4	2016-06-04 08:48:46.341049	2016-06-05 14:36:41.050829	1004
35	Magento 2.0.0	2016-06-04 08:49:15.637216	2016-06-05 14:36:48.664912	1004
36	Magento 2.0.1	2016-06-04 08:49:24.218504	2016-06-05 14:36:58.832256	1004
37	Magento 2.0.2	2016-06-04 08:49:31.279525	2016-06-05 14:37:06.827602	1004
38	Magento 2.0.3	2016-06-04 08:49:38.475313	2016-06-05 14:37:14.726315	1004
39	Magento 2.0.4	2016-06-04 08:49:57.727384	2016-06-05 14:37:21.994806	1004
40	Magento 2.0.5	2016-06-04 08:50:09.481069	2016-06-05 14:37:30.662016	1004
41	Magento 2.0.6	2016-06-04 08:50:27.283822	2016-06-05 14:37:37.959369	1004
42	Ghost 0.7.2	2016-06-09 15:27:52.200979	2016-06-09 15:27:52.200979	1001
43	Ghost 0.7.3	2016-06-09 15:28:24.199191	2016-06-09 15:28:24.199191	1001
44	Ghost 0.7.4	2016-06-09 15:28:36.58472	2016-06-09 15:28:36.58472	1001
45	Ghost 0.7.5	2016-06-09 15:28:49.282181	2016-06-09 15:28:49.282181	1001
46	Ghost 0.7.6	2016-06-09 15:29:09.301626	2016-06-09 15:29:09.301626	1001
47	Ghost 0.7.7	2016-06-09 15:29:22.312951	2016-06-09 15:29:22.312951	1001
48	Ghost 0.7.8	2016-06-09 15:29:30.348777	2016-06-09 15:29:30.348777	1001
49	Ghost 0.7.9	2016-06-09 15:29:37.854796	2016-06-09 15:29:37.854796	1001
50	Ghost 0.8.0	2016-06-09 15:29:48.897644	2016-06-09 15:29:48.897644	1001
51	Ghost 0.9.0	2016-06-09 15:30:05.445067	2016-06-09 15:30:05.445067	1001
52	OpenCart 1.5.4	2016-06-09 15:32:12.320809	2016-06-09 15:32:12.320809	1005
53	OpenCart 1.5.4.1	2016-06-09 15:32:43.53161	2016-06-09 15:32:43.53161	1005
54	OpenCart 1.5.5.2	2016-06-09 15:32:55.256186	2016-06-09 15:32:55.256186	1005
55	OpenCart 1.5.6	2016-06-09 15:33:05.155402	2016-06-09 15:33:05.155402	1005
56	OpenCart 1.5.6.1	2016-06-09 15:33:21.140596	2016-06-09 15:33:21.140596	1005
57	OpenCart 1.5.6.2	2016-06-09 15:33:27.68631	2016-06-09 15:33:27.68631	1005
58	OpenCart 1.5.6.3	2016-06-09 15:33:33.687899	2016-06-09 15:33:33.687899	1005
59	OpenCart 1.5.6.4	2016-06-09 15:33:40.940703	2016-06-09 15:33:40.940703	1005
60	OpenCart 2.0.0.0	2016-06-09 15:33:53.711304	2016-06-09 15:33:53.711304	1005
61	OpenCart 2.0.1.0	2016-06-09 15:34:05.2454	2016-06-09 15:34:05.2454	1005
62	OpenCart 2.0.1.1	2016-06-09 15:34:18.274298	2016-06-09 15:34:18.274298	1005
63	OpenCart 2.0.2.0	2016-06-09 15:34:29.27842	2016-06-09 15:34:29.27842	1005
64	OpenCart 2.0.3.1	2016-06-09 15:34:43.073911	2016-06-09 15:34:43.073911	1005
65	OpenCart 2.1.0.1	2016-06-09 15:35:02.123135	2016-06-09 15:35:02.123135	1005
66	OpenCart 2.1.0.2	2016-06-09 15:35:11.782974	2016-06-09 15:35:11.782974	1005
67	OpenCart 2.2.0.0	2016-06-09 15:35:22.824996	2016-06-09 15:35:22.824996	1005
68	Tumblr 3.1.x	2016-06-09 15:42:23.553255	2016-06-09 15:42:23.553255	1006
69	Tumblr 3.2.x	2016-06-09 15:42:31.203711	2016-06-09 15:42:31.203711	1006
70	Tumblr 3.3.x	2016-06-09 15:42:40.213088	2016-06-09 15:42:40.213088	1006
71	Tumblr 3.4.x	2016-06-09 15:42:53.255178	2016-06-09 15:42:53.255178	1006
72	Tumblr 3.5.x	2016-06-09 15:42:59.066772	2016-06-09 15:42:59.066772	1006
73	Tumblr 3.6.x	2016-06-09 15:43:05.766405	2016-06-09 15:43:05.766405	1006
74	Tumblr 3.7.x	2016-06-09 15:43:12.997079	2016-06-09 15:43:12.997079	1006
75	Tumblr 3.8.x	2016-06-09 15:43:20.911547	2016-06-09 15:43:20.911547	1006
76	PrestaShop 0.9	2016-06-09 15:45:22.856246	2016-06-09 15:45:22.856246	1008
77	PrestaShop 1.0	2016-06-09 15:45:32.607177	2016-06-09 15:45:32.607177	1008
78	PrestaShop 1.1	2016-06-09 15:45:43.488524	2016-06-09 15:45:43.488524	1008
79	PrestaShop 1.2	2016-06-09 15:45:57.20053	2016-06-09 15:45:57.20053	1008
80	PrestaShop 1.3	2016-06-09 15:46:03.793544	2016-06-09 15:46:03.793544	1008
81	PrestaShop 1.4	2016-06-09 15:46:09.302751	2016-06-09 15:46:09.302751	1008
82	PrestaShop 1.5	2016-06-09 15:46:15.898917	2016-06-09 15:46:15.898917	1008
83	PrestaShop 1.6	2016-06-09 15:46:25.568546	2016-06-09 15:46:25.568546	1008
84	PrestaShop 1.7	2016-06-09 15:46:32.155729	2016-06-09 15:46:32.155729	1008
85	Ionic	2016-06-09 16:07:07.133519	2016-06-09 16:07:07.133519	1009
86	Shopify	2016-06-09 16:07:40.263761	2016-06-09 16:07:40.263761	1011
87	Photoshop CS4	2016-06-09 16:08:36.92925	2016-06-09 16:08:36.92925	1010
88	Photoshop CS5	2016-06-09 16:08:44.076368	2016-06-09 16:08:44.076368	1010
89	Photoshop CS6	2016-06-09 16:08:52.738364	2016-06-09 16:08:52.738364	1010
90	Photoshop CC	2016-06-09 16:09:04.603809	2016-06-09 16:09:04.603809	1010
122	CSS2	2016-07-19 10:22:28.354189	2016-07-20 06:44:09.983036	1022
123	CSS3	2016-07-19 10:22:35.221343	2016-07-20 06:44:19.455928	1022
124	HTML5	2016-07-19 10:22:59.470473	2016-07-20 06:45:38.069835	1023
125	Google Web Designer	2016-07-19 10:23:29.289456	2016-07-20 06:46:01.905301	1023
126	Stencyl	2016-07-19 10:23:47.337802	2016-07-20 06:46:13.167898	1023
127	Construct 2	2016-07-19 10:24:06.231799	2016-07-20 06:46:22.421916	1023
128	GameMaker	2016-07-19 10:24:22.995759	2016-07-20 06:46:31.685563	1023
157	Wordpress 4.5.2	2016-07-20 07:07:01.463269	2016-07-20 07:07:01.463269	1021
129	Python 2.0	2016-07-19 15:36:36.411704	2016-07-19 15:36:36.411704	1014
130	Python 2.1	2016-07-19 15:36:53.34664	2016-07-19 15:36:53.34664	1014
131	Python 2.2	2016-07-19 15:36:59.578254	2016-07-19 15:36:59.578254	1014
132	Python 2.3	2016-07-19 15:37:06.4652	2016-07-19 15:37:06.4652	1014
133	Python 2.4	2016-07-19 15:37:13.577438	2016-07-19 15:37:13.577438	1014
134	Python 2.5	2016-07-19 15:37:21.07347	2016-07-19 15:37:21.07347	1014
135	Python 2.6	2016-07-19 15:37:27.5168	2016-07-19 15:37:27.5168	1014
136	Python 2.7	2016-07-19 15:37:35.272645	2016-07-19 15:37:35.272645	1014
137	Python 2.8	2016-07-19 15:37:43.799166	2016-07-19 15:37:43.799166	1014
138	Python 2.9	2016-07-19 15:37:52.271931	2016-07-19 15:37:52.271931	1014
139	Python 3.1	2016-07-19 15:38:25.803918	2016-07-19 15:38:25.803918	1014
140	Python 3.2	2016-07-19 15:38:33.855897	2016-07-19 15:38:33.855897	1014
141	Python 3.3	2016-07-19 15:38:41.648421	2016-07-19 15:38:41.648421	1014
142	Python 3.4	2016-07-19 15:38:48.575632	2016-07-19 15:38:48.575632	1014
143	Python 3.5	2016-07-19 15:38:58.372735	2016-07-19 15:38:58.372735	1014
144	Ruby 2.0.0	2016-07-19 15:39:36.562929	2016-07-19 15:39:36.562929	1016
145	Ruby 2.1.9	2016-07-19 15:39:46.396418	2016-07-19 15:39:46.396418	1016
146	Ruby 2.2.5	2016-07-19 15:40:00.854436	2016-07-19 15:40:00.854436	1016
147	Ruby 2.3.1	2016-07-19 15:40:09.981618	2016-07-19 15:40:09.981618	1016
114	php 5.6	2016-07-19 10:12:31.931211	2016-07-20 06:40:39.033968	1012
115	php 5.5	2016-07-19 10:12:43.450428	2016-07-20 06:41:37.841717	1012
116	php 5.4	2016-07-19 10:12:51.357359	2016-07-20 06:41:59.681056	1012
117	php 5.3	2016-07-19 10:12:59.309358	2016-07-20 06:42:10.152055	1012
118	php 5.0	2016-07-19 10:13:08.065376	2016-07-20 06:42:18.463329	1012
119	php 5.x	2016-07-19 10:13:15.673495	2016-07-20 06:42:26.990833	1012
120	php 4.x	2016-07-19 10:21:28.522502	2016-07-20 06:42:36.288251	1012
121	php 7.x	2016-07-19 10:21:42.031917	2016-07-20 06:42:50.522872	1012
\.


--
-- Name: dependencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('dependencies_id_seq', 159, true);


--
-- Data for Name: diasukas; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY diasukas (id, akusuka_id, theme_id, created_at, updated_at, code_id, graphic_id, videofx_id, font_id, course_id, t3d_id) FROM stdin;
12	8	11	2016-08-11 10:30:20.622252	2016-08-11 10:30:20.622252	\N	\N	\N	\N	\N	\N
14	8	18	2016-08-10 18:08:25.465745	2016-08-10 18:08:25.465745	\N	\N	\N	\N	\N	\N
19	11	\N	2016-08-12 10:06:01.334551	2016-08-12 10:06:01.334551	\N	\N	4	\N	\N	\N
21	11	\N	2016-08-12 11:00:13.710195	2016-08-12 11:00:13.710195	\N	\N	\N	\N	\N	4
23	11	11	2016-08-12 12:17:42.856136	2016-08-12 12:17:42.856136	\N	\N	\N	\N	\N	\N
24	11	\N	2016-08-12 12:40:59.815298	2016-08-12 12:40:59.815298	9	\N	\N	\N	\N	\N
26	11	\N	2016-08-12 12:49:36.587473	2016-08-12 12:49:36.587473	\N	\N	\N	\N	\N	2
\.


--
-- Name: diasukas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('diasukas_id_seq', 41, true);


--
-- Data for Name: encodes; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY encodes (id, name, created_at, updated_at) FROM stdin;
1	Photo JPEG	2016-07-28 13:12:37.073181	2016-07-28 13:12:37.073181
3	Photo PNG & Alpha	2016-07-28 13:13:31.499104	2016-07-28 13:13:31.499104
4	Apple ProRes 442	2016-07-28 13:13:54.620194	2016-07-28 13:13:54.620194
5	Apple ProRes 442 HQ	2016-07-28 13:14:03.103882	2016-07-28 13:14:03.103882
6	Apple ProRes 4444	2016-07-28 13:14:11.872501	2016-07-28 13:14:11.872501
7	H.264	2016-07-28 13:14:25.913921	2016-07-28 13:14:25.913921
\.


--
-- Name: encodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('encodes_id_seq', 8, true);


--
-- Data for Name: follows; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY follows (id, following_id, follower_id, created_at, updated_at) FROM stdin;
59	19	20	2016-07-16 03:42:46.005625	2016-07-16 03:42:46.005625
60	19	18	2016-07-22 04:13:59.564216	2016-07-22 04:13:59.564216
15	20	19	2016-07-09 02:54:57.994931	2016-07-09 02:54:57.994931
18	18	20	2016-07-09 03:08:22.3367	2016-07-09 03:08:22.3367
53	20	18	2016-07-15 06:40:04.289794	2016-07-15 06:40:04.289794
\.


--
-- Name: follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('follows_id_seq', 60, true);


--
-- Data for Name: font_autocompletes; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY font_autocompletes (id, term, popularity, created_at, updated_at) FROM stdin;
\.


--
-- Name: font_autocompletes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('font_autocompletes_id_seq', 1, false);


--
-- Data for Name: fontindustries; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY fontindustries (id, industry_id, font_id, created_at, updated_at) FROM stdin;
3	101	1	2016-08-26 17:45:17.199946	2016-08-26 17:45:17.199946
4	103	1	2016-08-26 17:45:17.216137	2016-08-26 17:45:17.216137
5	101	4	2016-09-07 17:49:18.420117	2016-09-07 17:49:18.420117
6	105	4	2016-09-07 17:49:18.433681	2016-09-07 17:49:18.433681
7	108	4	2016-09-07 17:49:18.435912	2016-09-07 17:49:18.435912
\.


--
-- Name: fontindustries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('fontindustries_id_seq', 10, true);


--
-- Data for Name: fonts; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY fonts (id, name, description, category_id, note, thumbnail, price, agree, slug, file_size, vector, user_id, created_at, updated_at, price_ext, team_id, reject, average_rate, sell) FROM stdin;
4	AngularJS And HTML Web App	<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/ae457cfb5e3b75b26b54821cde6bda5f5ca4d32e/687474703a2f2f7777772e636c69707468656d652e636f6d2f6d6973632f7061636b65742d73656374696f6e312e706e67" /></p>\r\n\r\n<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/f59298da38dca942d0e2a415cffa762fe3f9f1a9/687474703a2f2f7777772e636c69707468656d652e636f6d2f6d6973632f7061636b65742d73656374696f6e322e706e67" /><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/4033663956b1c073c828eadafd052beb337d05d4/687474703a2f2f7777772e636c69707468656d652e636f6d2f6d6973632f7061636b65742d73656374696f6e332e706e67" /></p>\r\n	1059		04099a527bb1c291520b8cfe3e05e0d7cd95429b516a16c8ee.png	28.0	t	angularjs-and-html-web-app	40mb	Yes	20	2016-09-07 17:49:18.276741	2016-09-07 17:54:21.683722	456.0	1	f	\N	0
1	Hello Sunshine Font Duo	<p>Introducing&nbsp;<strong>Hello Sunshine!</strong>&nbsp;A delightfully playful font duo with oodles of character!</p>\r\n\r\n<p><strong>Hello Sunshine</strong>&nbsp;is a hand brushed typeface, with authentic tell-tale dry brush imperfections, and a very bouncy baseline :) It has a perfectly paired&nbsp;<strong>complimentary marker font</strong>&nbsp;, and&nbsp;<strong>a super handy set of 52 bonus ornaments.</strong></p>\r\n\r\n<p>Hello Sunshine Script has a large variety of&nbsp;<strong>alternate characters</strong>&nbsp;,allowing you to make each word look completely unique to the next!&nbsp;<strong>Ligatures</strong>&nbsp;are also included also - to bring true authenticity to your design. It has multilingual support with accented characters for international users.</p>\r\n\r\n<p>Hello Sunshine is coded with&nbsp;<strong>PUA Unicode</strong>, which allows full access to all the extra characters&nbsp;<strong>without having special designing software</strong>. Mac users can use&nbsp;<strong>Font Book</strong>&nbsp;, and Windows users can use<strong>Character Map</strong>&nbsp;to view and copy any of the extra characters to paste into your favourite text editor/app.</p>\r\n\r\n<p><strong>For folks who have opentype capable software</strong>&nbsp;:&nbsp;<em>The alternates are accessible by turning on &#39;Stylistic Alternates&#39; and &#39;Ligatures&#39; buttons on in Photoshop&#39;s Character panel, or via any software with a glyphs panel, e.g. Adobe Illustrator, Photoshop CC, Inkscape.</em></p>\r\n\r\n<p>For those folk who would prefer,I&#39;ve included a set of corresponding&nbsp;<strong>TTF files</strong>.</p>\r\n\r\n<p><strong>A Happy Duo</strong>&nbsp;: Hello Sunshine Marker is a complimentary dry marker font, that works in harmony with Hello Sunshine Script to create awesome typographical creations in a jiffy - get some inspiration for the previews above.</p>\r\n\r\n<p><strong>WHATS INCLUDED :</strong></p>\r\n\r\n<ul>\r\n\t<li>HelloSunshine.otf - Includes opentype features with stylistic alternates and ligatures.</li>\r\n\t<li>HelloSunshineMarker.otf - The complimentary brush font.</li>\r\n\t<li>HelloSunshine_ornaments.otf - with 52 bonus decorative ornaments that will come in handy in your designs.</li>\r\n\t<li>HelloSunshineItalic.otf - A slanted , more sophisticated version of the Script for when a more romantic natured design is required :)</li>\r\n\t<li>TTF Files for the above-mentioned OTF files.</li>\r\n</ul>\r\n\r\n<p>I hope you have a blast using Hello Sunshine!</p>\r\n\r\n<p>Happy creating!</p>\r\n\r\n<p>Nicky xx</p>\r\n\r\n<p><strong>FAQ&#39;s :</strong></p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p>Which international languages does Hello Sunshine support? Hello Sunshine has accented and special characters that support the following languages : Basque, Bosnian, Catalan Cornish, Croatian, Czech, Danish, Dutch, Embu, English, Esperanto, Estonian, Faroese, Filipino, Finnish, French, Galician, German, Hungarian, Icelandic, Indonesian, Irish, Italian, Malay, Maltese, Manx, Maori, Meru, Morisyen, North Ndebele, Norwegian Bokm&aring;l, Norwegian Nynorsk, Nyankole, Oromo, Polish, Portuguese, Romansh, Serbian (Latin), Slovak, Slovenian, Spanish,Swedish, Swiss German.</p>\r\n\t</li>\r\n\t<li>Where are the TTF&#39;s? They are included in a download link( in a text file) in your main download file.</li>\r\n</ul>\r\n	1059		7aef1775335863a07f985114f4accf3fdf49d52180b49636fd.png	45.0	t	hello-sunshine-font-duo	2mb	No	19	2016-08-06 11:23:27.582463	2016-09-02 05:17:01.602581	4534.0	1	f	\N	1
\.


--
-- Name: fonts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('fonts_id_seq', 5, true);


--
-- Data for Name: framerates; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY framerates (id, name, created_at, updated_at) FROM stdin;
1	24	2016-07-28 13:16:42.048081	2016-07-28 13:16:42.048081
2	25	2016-07-28 13:16:46.888941	2016-07-28 13:16:46.888941
3	29.97	2016-07-28 13:16:57.866698	2016-07-28 13:16:57.866698
4	30	2016-07-28 13:17:04.727388	2016-07-28 13:17:04.727388
5	48	2016-07-28 13:17:11.306192	2016-07-28 13:17:11.306192
6	50	2016-07-28 13:17:18.786726	2016-07-28 13:17:18.786726
7	59.94	2016-07-28 13:17:27.539805	2016-07-28 13:17:27.539805
8	60	2016-07-28 13:17:33.815501	2016-07-28 13:17:33.815501
9	more than 60	2016-07-28 13:18:12.203169	2016-07-28 13:18:12.203169
\.


--
-- Name: framerates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('framerates_id_seq', 10, true);


--
-- Data for Name: freeitems; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY freeitems (id, theme_id, code_id, t3d_id, graphic_id, videofx_id, font_id, course_id, created_at, updated_at) FROM stdin;
4	20	\N	\N	\N	\N	\N	\N	2016-11-05 17:18:53.559891	2016-11-05 17:18:53.559891
5	\N	14	\N	\N	\N	\N	\N	2016-11-05 18:18:16.099791	2016-11-05 18:18:16.099791
6	\N	\N	\N	3	\N	\N	\N	2016-11-05 18:36:28.563875	2016-11-05 18:36:28.563875
7	\N	\N	6	\N	\N	\N	\N	2016-11-05 19:04:26.281059	2016-11-05 19:04:26.281059
8	\N	\N	\N	\N	5	\N	\N	2016-11-05 19:10:51.982877	2016-11-05 19:10:51.982877
9	\N	\N	\N	\N	\N	4	\N	2016-11-05 19:15:52.0571	2016-11-05 19:15:52.0571
11	\N	\N	\N	\N	\N	\N	3	2016-11-06 07:20:10.330815	2016-11-06 07:20:10.330815
\.


--
-- Name: freeitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('freeitems_id_seq', 11, true);


--
-- Data for Name: freepis; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY freepis (id, cacaca, course_id, created_at, updated_at) FROM stdin;
42	bfbba6905af5410e227902c1bd270b45250e6bf064fcc2ad2f.mp4	1	2016-08-28 18:00:28.39243	2016-08-28 18:00:28.39243
43	0ed22d23260fc978dad1a53ad33150115c0b36ed9298d9c84c.mp4	3	2016-09-07 09:30:29.737358	2016-09-07 09:30:29.737358
\.


--
-- Name: freepis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('freepis_id_seq', 44, true);


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY genres (id, name, created_at, updated_at) FROM stdin;
2	contemporary	2016-07-26 02:39:57.78426	2016-07-26 02:39:57.78426
3	fantasy	2016-07-26 02:40:24.032506	2016-07-26 02:40:24.032506
4	sci-fi	2016-07-26 02:40:35.241457	2016-07-26 02:40:35.241457
5	historical	2016-07-26 02:40:45.752109	2016-07-26 02:40:45.752109
6	cartoon	2016-07-26 02:41:03.112904	2016-07-26 02:41:03.112904
7	horror	2016-07-26 02:41:12.408066	2016-07-26 02:41:12.408066
8	anime	2016-07-26 02:41:34.377095	2016-07-26 02:41:34.377095
9	eastern	2016-07-26 02:41:49.592702	2016-07-26 02:41:49.592702
10	gothic	2016-07-26 02:42:00.128111	2016-07-26 02:42:00.128111
11	steampunk	2016-07-26 02:42:08.967832	2016-07-26 02:42:08.967832
12	high seas	2016-07-26 02:42:18.472213	2016-07-26 02:42:18.472213
13	super heroes	2016-07-26 02:42:29.304526	2016-07-26 02:42:29.304526
14	egyptian	2016-07-26 02:42:40.072699	2016-07-26 02:42:40.072699
\.


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('genres_id_seq', 15, true);


--
-- Data for Name: geometries; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY geometries (id, name, created_at, updated_at) FROM stdin;
1	Polygons	2016-07-26 03:34:50.451014	2016-07-26 03:34:50.451014
2	Nurbs	2016-07-26 03:35:00.71567	2016-07-26 03:35:00.71567
3	Voxels	2016-07-26 03:35:08.179487	2016-07-26 03:35:08.179487
4	Subdivision	2016-07-26 03:35:17.627918	2016-07-26 03:35:17.627918
5	Other	2016-07-26 03:35:27.915868	2016-07-26 03:35:27.915868
\.


--
-- Name: geometries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('geometries_id_seq', 5, true);


--
-- Data for Name: graphic_autocompletes; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY graphic_autocompletes (id, term, popularity, created_at, updated_at) FROM stdin;
\.


--
-- Name: graphic_autocompletes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('graphic_autocompletes_id_seq', 1, false);


--
-- Data for Name: graphics; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY graphics (id, name, description, category_id, softopen_id, note, thumbnail, price, agree, slug, url_demo, video_demo, user_id, created_at, updated_at, price_ext, team_id, reject, average_rate, sell) FROM stdin;
3	Responsive Fashion Prestashop Theme	<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/a4ba8eddcb5538e6fda14cc56ecab2c7315b44e7/687474703a2f2f706f737468656d65732e636f6d2f64656d6f2f74662f67616c6172646f2f6465735f30312e6a7067" /></p>\r\n\r\n<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/cfc1e2be90522ce2de683201a9a6310618183d3c/687474703a2f2f706f737468656d65732e636f6d2f64656d6f2f74662f67616c6172646f2f6465735f30322e6a7067" /></p>\r\n	1029	6		1db0ad82c8800748ddd5925d44f63e01bd859c6677a707b32b.png	45.0	t	responsive-fashion-prestashop-theme	https://themeforest.net/item/galardo-responsive-fashion-prestashop-theme/full_screen_preview/17803972		20	2016-09-07 19:42:17.850732	2016-09-07 19:49:08.191025	4565.0	5	f	\N	0
2	Storming Portfolio & Blog template	<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/5242bbf415c347f88687c4f3d5594195acbd18b0/687474703a2f2f7777772e737061622d726963652e636f6d2f7468656d65666f726573742f64616e692f656e7661746f2f696e74726f2e6a7067" /></p>\r\n\r\n<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/5c81e3909a80ebffccdab69578a591ff0ec3a914/687474703a2f2f7777772e737061622d726963652e636f6d2f7468656d65666f726573742f64616e692f656e7661746f2f666561747572652d64656d6f732e6a7067" /></p>\r\n	1029	5		adc6a84f03ba9f295e7ebeeca673f175e02773d2da2d992f18.png	3.0	t	storming-portfolio-blog-template	https://themeforest.net/item/dani-a-storming-portfolio-blog-template/16385251		19	2016-08-27 05:18:02.315236	2016-09-02 05:49:00.205881	4500.0	5	f	\N	1
\.


--
-- Name: graphics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('graphics_id_seq', 4, true);


--
-- Data for Name: graphindustries; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY graphindustries (id, graphic_id, industry_id, created_at, updated_at) FROM stdin;
3	2	101	2016-08-27 05:21:19.489892	2016-08-27 05:21:19.489892
4	2	105	2016-08-27 05:21:19.512127	2016-08-27 05:21:19.512127
5	3	102	2016-09-07 19:44:58.346053	2016-09-07 19:44:58.346053
6	3	103	2016-09-07 19:44:58.371378	2016-09-07 19:44:58.371378
7	3	106	2016-09-07 19:44:58.379794	2016-09-07 19:44:58.379794
\.


--
-- Name: graphindustries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('graphindustries_id_seq', 10, true);


--
-- Data for Name: headsecs; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY headsecs (id, name, course_id, created_at, updated_at) FROM stdin;
14	Trisnia	1	2016-08-31 15:44:24.083155	2016-08-31 15:44:24.156506
4	Building Your Website	1	2016-08-08 03:55:37.451631	2016-08-31 18:42:15.956637
5	Bonus	1	2016-08-08 03:56:16.335451	2016-08-31 18:53:40.719914
3	Getting Started	1	2016-08-08 03:52:31.085808	2016-09-02 04:50:43.302508
15	Getting Started	3	2016-09-07 09:32:22.564595	2016-09-07 09:32:22.610507
16	HTML 5	3	2016-09-07 09:32:33.961992	2016-09-07 09:32:33.989814
17	CSS 3	3	2016-09-07 09:32:44.5481	2016-09-07 09:32:44.579719
\.


--
-- Name: headsecs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('headsecs_id_seq', 20, true);


--
-- Data for Name: includes; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY includes (id, name, created_at, updated_at) FROM stdin;
1	CSS	2016-06-04 07:58:43.288686	2016-06-04 07:58:43.288686
2	HTML	2016-06-04 08:01:13.266745	2016-06-04 08:01:13.266745
3	Layered PNG	2016-06-04 08:01:45.035115	2016-06-04 08:01:45.035115
4	PSD	2016-06-04 08:02:00.582074	2016-06-04 08:02:00.582074
5	Javascript	2016-06-04 08:02:24.454022	2016-06-04 08:02:24.454022
6	PHP	2016-06-04 08:02:40.146527	2016-06-04 08:02:40.146527
7	AI	2016-06-04 08:02:55.9035	2016-06-04 08:02:55.9035
8	SVG	2016-06-04 08:03:08.867624	2016-06-04 08:03:08.867624
9	JSON	2016-07-19 07:35:07.895804	2016-07-19 07:35:07.895804
10	XML	2016-07-19 07:35:21.388291	2016-07-19 07:35:21.388291
12	SQL	2016-07-19 07:35:42.41926	2016-07-19 07:35:42.41926
13	LESS	2016-07-19 07:35:49.975485	2016-07-19 07:35:49.975485
14	Active Server Control ASCX	2016-07-19 07:36:25.58518	2016-07-19 07:36:25.58518
15	Active Server Page ASPX	2016-07-19 07:36:49.005095	2016-07-19 07:36:49.005095
16	Visual Basic	2016-07-19 07:37:11.304263	2016-07-19 07:37:11.304263
17	C#	2016-07-19 07:37:26.757935	2016-07-19 07:37:26.757935
18	APK	2016-07-19 07:38:08.481781	2016-07-19 07:38:08.481781
19	.dex	2016-07-19 07:38:33.964765	2016-07-19 07:38:33.964765
20	.so	2016-07-19 07:38:44.021845	2016-07-19 07:38:44.021845
21	.java	2016-07-19 07:39:07.841122	2016-07-19 07:39:07.841122
22	.db	2016-07-19 07:39:13.272124	2016-07-19 07:39:13.272124
23	.h	2016-07-19 07:39:27.276723	2016-07-19 07:39:27.276723
24	.m	2016-07-19 07:39:34.293386	2016-07-19 07:39:34.293386
25	.pch	2016-07-19 07:39:43.675136	2016-07-19 07:39:43.675136
26	.xib/nib	2016-07-19 07:40:01.20939	2016-07-19 07:40:01.20939
27	Transparent PNG	2016-07-23 07:36:46.075986	2016-07-23 07:36:46.075986
28	JPG Image	2016-07-23 07:37:17.787723	2016-07-23 07:37:17.787723
29	Vector EPS	2016-07-23 07:37:36.333512	2016-07-23 07:37:36.333512
30	InDesign INDD	2016-07-23 07:38:01.938245	2016-07-23 07:38:01.938245
31	Quark QXP	2016-07-23 07:38:27.250527	2016-07-23 07:38:27.250527
32	AI	2016-07-23 07:39:01.816333	2016-07-23 07:39:01.816333
33	TIFF Image	2016-07-23 07:39:19.91315	2016-07-23 07:39:19.91315
34	font	2016-07-23 07:39:34.273551	2016-07-23 07:39:34.273551
35	Corel Draw	2016-07-23 07:39:56.163207	2016-07-23 07:39:56.163207
36	Sketch	2016-07-23 07:40:11.483714	2016-07-23 07:40:11.483714
37	.max	2016-07-25 08:36:43.363153	2016-07-25 08:36:43.363153
38	.ma/mb	2016-07-25 08:36:59.90764	2016-07-25 08:36:59.90764
39	.obj	2016-07-25 08:37:09.721596	2016-07-25 08:37:09.721596
40	.3ds	2016-07-25 08:37:21.223107	2016-07-25 08:37:21.223107
41	.c4d	2016-07-25 08:37:33.580816	2016-07-25 08:37:33.580816
42	.lwo	2016-07-25 08:37:43.409873	2016-07-25 08:37:43.409873
43	.xsi	2016-07-25 08:37:54.903578	2016-07-25 08:37:54.903578
44	.fbx	2016-07-25 08:38:04.700775	2016-07-25 08:38:04.700775
45	.3b	2016-07-25 13:45:18.496744	2016-07-25 13:45:18.496744
46	.blend	2016-07-25 13:45:31.105559	2016-07-25 13:45:31.105559
47	.dwg	2016-07-25 13:45:41.167842	2016-07-25 13:45:41.167842
48	.dxf	2016-07-25 13:45:59.321929	2016-07-25 13:45:59.321929
49	.e3d	2016-07-25 13:46:11.522246	2016-07-25 13:46:11.522246
50	.hrc	2016-07-25 13:46:25.523995	2016-07-25 13:46:25.523995
51	.lw	2016-07-25 13:46:33.66425	2016-07-25 13:46:33.66425
52	.lws	2016-07-25 13:46:41.430515	2016-07-25 13:46:41.430515
53	.lxo	2016-07-25 13:46:49.65635	2016-07-25 13:46:49.65635
54	.vbo	2016-07-25 13:47:02.804082	2016-07-25 13:47:02.804082
55	.vue	2016-07-25 13:47:17.522237	2016-07-25 13:47:17.522237
56	.ztl	2016-07-25 13:47:35.759783	2016-07-25 13:47:35.759783
57	.mel	2016-07-26 03:26:38.121843	2016-07-26 03:26:38.121843
58	.exe	2016-07-26 03:26:50.681605	2016-07-26 03:26:50.681605
59	.mse	2016-07-26 03:27:01.40293	2016-07-26 03:27:01.40293
60	.mcr	2016-07-26 03:27:13.282982	2016-07-26 03:27:13.282982
61	.ms	2016-07-26 03:27:22.907324	2016-07-26 03:27:22.907324
62	High Dynamic Range HDR	2016-07-27 02:46:27.76576	2016-07-27 02:46:27.76576
63	TGA Image	2016-07-27 02:46:46.077666	2016-07-27 02:46:46.077666
64	OpenEXR Image	2016-07-27 02:47:04.157815	2016-07-27 02:47:04.157815
65	.mov	2016-07-28 13:22:27.468592	2016-07-28 13:22:27.468592
66	.mxf	2016-07-28 13:23:02.425198	2016-07-28 13:23:02.425198
67	.mp4	2016-07-28 13:23:20.674243	2016-07-28 13:23:20.674243
68	.mts	2016-07-28 13:23:38.250381	2016-07-28 13:23:38.250381
69	.motn	2016-07-28 13:23:56.029937	2016-07-28 13:23:56.029937
70	eot	2016-08-06 06:43:06.082074	2016-08-06 06:43:06.082074
71	svg	2016-08-06 06:43:06.096315	2016-08-06 06:43:06.096315
72	ttf	2016-08-06 06:43:06.101961	2016-08-06 06:43:06.101961
73	otf	2016-08-06 06:43:06.105747	2016-08-06 06:43:06.105747
74	woff	2016-08-06 06:43:06.110407	2016-08-06 06:43:06.110407
75	fnt	2016-08-06 06:43:06.114617	2016-08-06 06:43:06.114617
76	abf	2016-08-06 06:43:06.11912	2016-08-06 06:43:06.11912
77	acfm	2016-08-06 06:43:06.123806	2016-08-06 06:43:06.123806
78	afm	2016-08-06 06:43:06.128261	2016-08-06 06:43:06.128261
79	amfm	2016-08-06 06:43:06.132794	2016-08-06 06:43:06.132794
80	bdf	2016-08-06 06:43:06.13702	2016-08-06 06:43:06.13702
81	cha	2016-08-06 06:43:06.141384	2016-08-06 06:43:06.141384
82	chr	2016-08-06 06:43:06.146254	2016-08-06 06:43:06.146254
83	compositefont	2016-08-06 06:43:06.150002	2016-08-06 06:43:06.150002
84	dfont	2016-08-06 06:43:06.154111	2016-08-06 06:43:06.154111
85	etx	2016-08-06 06:43:06.158845	2016-08-06 06:43:06.158845
86	euf	2016-08-06 06:43:06.163389	2016-08-06 06:43:06.163389
87	f3f	2016-08-06 06:43:06.167452	2016-08-06 06:43:06.167452
88	ffil	2016-08-06 06:43:06.171972	2016-08-06 06:43:06.171972
89	fnt	2016-08-06 06:43:06.176102	2016-08-06 06:43:06.176102
90	fon	2016-08-06 06:43:06.180056	2016-08-06 06:43:06.180056
91	fot	2016-08-06 06:43:06.184892	2016-08-06 06:43:06.184892
92	gdr	2016-08-06 06:43:06.188859	2016-08-06 06:43:06.188859
93	gf	2016-08-06 06:43:06.192866	2016-08-06 06:43:06.192866
94	gxf	2016-08-06 06:43:06.196827	2016-08-06 06:43:06.196827
95	lwfn	2016-08-06 06:43:06.200973	2016-08-06 06:43:06.200973
96	mcf	2016-08-06 06:43:06.205093	2016-08-06 06:43:06.205093
97	mf	2016-08-06 06:43:06.20951	2016-08-06 06:43:06.20951
98	mxf	2016-08-06 06:43:06.21438	2016-08-06 06:43:06.21438
99	nftr	2016-08-06 06:43:06.217907	2016-08-06 06:43:06.217907
100	odttf	2016-08-06 06:43:06.222281	2016-08-06 06:43:06.222281
101	pcf	2016-08-06 06:43:06.226347	2016-08-06 06:43:06.226347
102	pfa	2016-08-06 06:43:06.230528	2016-08-06 06:43:06.230528
103	pfb	2016-08-06 06:43:06.234661	2016-08-06 06:43:06.234661
104	pfb	2016-08-06 06:43:06.238941	2016-08-06 06:43:06.238941
105	pfm	2016-08-06 06:43:06.243437	2016-08-06 06:43:06.243437
106	pfr	2016-08-06 06:43:06.247416	2016-08-06 06:43:06.247416
107	pk	2016-08-06 06:43:06.251473	2016-08-06 06:43:06.251473
108	pmt	2016-08-06 06:43:06.256994	2016-08-06 06:43:06.256994
109	sfd	2016-08-06 06:43:06.268532	2016-08-06 06:43:06.268532
110	sfp	2016-08-06 06:43:06.275905	2016-08-06 06:43:06.275905
111	suit	2016-08-06 06:43:06.280176	2016-08-06 06:43:06.280176
112	t65	2016-08-06 06:43:06.284079	2016-08-06 06:43:06.284079
113	tfm	2016-08-06 06:43:06.288313	2016-08-06 06:43:06.288313
114	ttc	2016-08-06 06:43:06.293386	2016-08-06 06:43:06.293386
115	tte	2016-08-06 06:43:06.297401	2016-08-06 06:43:06.297401
116	txf	2016-08-06 06:43:06.30132	2016-08-06 06:43:06.30132
117	vfb	2016-08-06 06:43:06.306525	2016-08-06 06:43:06.306525
118	vlw	2016-08-06 06:43:06.310612	2016-08-06 06:43:06.310612
119	vnf	2016-08-06 06:43:06.314892	2016-08-06 06:43:06.314892
120	xfn	2016-08-06 06:43:06.31939	2016-08-06 06:43:06.31939
121	xft	2016-08-06 06:43:06.326354	2016-08-06 06:43:06.326354
122	ytf	2016-08-06 06:43:06.33142	2016-08-06 06:43:06.33142
\.


--
-- Name: includes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('includes_id_seq', 124, true);


--
-- Data for Name: industries; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY industries (id, name, created_at, updated_at, slug) FROM stdin;
100	 Accounting & Financial	2016-07-23 04:56:56.382641	2016-09-07 17:09:27.32721	accounting-financial
101	 Agriculture	2016-07-23 04:56:56.404296	2016-09-07 17:09:27.351718	agriculture
102	 Animal & Pet	2016-07-23 04:56:56.41013	2016-09-07 17:09:27.361477	animal-pet
103	 Architectural	2016-07-23 04:56:56.414548	2016-09-07 17:09:27.372728	architectural
104	 Art & Design	2016-07-23 04:56:56.419134	2016-09-07 17:09:27.385662	art-design
105	 Attorney & Law	2016-07-23 04:56:56.422991	2016-09-07 17:09:27.406045	attorney-law
106	 Bar & Night Club	2016-07-23 04:56:56.42698	2016-09-07 17:09:27.41689	bar-night-club
107	 Automotive	2016-07-23 04:56:56.4305	2016-09-07 17:09:27.427644	automotive
108	 Childcare	2016-07-23 04:56:56.434726	2016-09-07 17:09:27.439368	childcare
109	 Cleaning & Maintenance	2016-07-23 04:56:56.438598	2016-09-07 17:09:27.450251	cleaning-maintenance
110	 Communications	2016-07-23 04:56:56.442249	2016-09-07 17:09:27.46162	communications
111	 Community & Non-profit	2016-07-23 04:56:56.44586	2016-09-07 17:09:27.473327	community-non-profit
112	 Computer	2016-07-23 04:56:56.450237	2016-09-07 17:09:27.482938	computer
113	 Construction	2016-07-23 04:56:56.45378	2016-09-07 17:09:27.494256	construction
114	 Cosmetic & Beauty	2016-07-23 04:56:56.457334	2016-09-07 17:09:27.506065	cosmetic-beauty
115	 Dating	2016-07-23 04:56:56.460736	2016-09-07 17:09:27.516871	dating
116	 Education	2016-07-23 04:56:56.465105	2016-09-07 17:09:27.528003	education
117	 Entertaiment	2016-07-23 04:56:56.468139	2016-09-07 17:09:27.539443	entertaiment
118	 Environmental	2016-07-23 04:56:56.471515	2016-09-07 17:09:27.551572	environmental
119	 Fashion	2016-07-23 04:56:56.47495	2016-09-07 17:09:27.562241	fashion
120	 Floral	2016-07-23 04:56:56.47846	2016-09-07 17:09:27.572361	floral
121	 Food & Drink	2016-07-23 04:56:56.48393	2016-09-07 17:09:27.583618	food-drink
122	 Games & Recreation	2016-07-23 04:56:56.488003	2016-09-07 17:09:27.594903	games-recreation
123	 Home Furnishing	2016-07-23 04:56:56.491603	2016-09-07 17:09:27.606166	home-furnishing
124	 Industrial	2016-07-23 04:56:56.496088	2016-09-07 17:09:27.616582	industrial
125	 Internet	2016-07-23 04:56:56.499505	2016-09-07 17:09:27.62818	internet
126	 Landscaping	2016-07-23 04:56:56.503692	2016-09-07 17:09:27.640126	landscaping
127	 Medical & Pharmaceutical	2016-07-23 04:56:56.50688	2016-09-07 17:09:27.65049	medical-pharmaceutical
128	 Photography	2016-07-23 04:56:56.51003	2016-09-07 17:09:27.661385	photography
129	 Physical Fitness	2016-07-23 04:56:56.514304	2016-09-07 17:09:27.672942	physical-fitness
130	 Political	2016-07-23 04:56:56.517513	2016-09-07 17:09:27.683765	political
131	 Real Estate & Mortage	2016-07-23 04:56:56.520734	2016-09-07 17:09:27.695261	real-estate-mortage
132	 Religious	2016-07-23 04:56:56.525074	2016-09-07 17:09:27.705393	religious
133	 Restaurant	2016-07-23 04:56:56.529773	2016-09-07 17:09:27.716818	restaurant
134	 Retail	2016-07-23 04:56:56.534762	2016-09-07 17:09:27.72897	retail
135	 Security	2016-07-23 04:56:56.538969	2016-09-07 17:09:27.739278	security
136	 Spa & Esthetics	2016-07-23 04:56:56.542383	2016-09-07 17:09:27.750463	spa-esthetics
137	 Thecnology	2016-07-23 04:56:56.546584	2016-09-07 17:09:27.762542	thecnology
138	 Sport	2016-07-23 04:56:56.551085	2016-09-07 17:09:27.773826	sport
139	 Travel & Hotel	2016-07-23 04:56:56.554853	2016-09-07 17:09:27.784241	travel-hotel
140	 Wedding Service	2016-07-23 04:56:56.558909	2016-09-07 17:09:27.794878	wedding-service
\.


--
-- Name: industries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('industries_id_seq', 1, true);


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY languages (id, name, created_at, updated_at) FROM stdin;
1	English	2016-08-07 07:14:51.284193	2016-08-07 07:14:51.284193
2	Spanish	2016-08-07 07:15:13.914099	2016-08-07 07:15:13.914099
3	German	2016-08-07 07:15:22.451665	2016-08-07 07:15:22.451665
4	French	2016-08-07 07:15:30.796095	2016-08-07 07:15:30.796095
5	Japanese	2016-08-07 07:15:38.346591	2016-08-07 07:15:38.346591
6	Chinese	2016-08-07 07:15:46.119656	2016-08-07 07:15:46.119656
8	Latin	2016-08-07 07:16:01.13517	2016-08-07 07:16:01.13517
9	Italian	2016-08-07 07:16:08.527572	2016-08-07 07:16:08.527572
10	Indonesian	2016-08-07 07:16:17.27043	2016-08-07 07:16:17.27043
7	Russian	2016-08-07 07:15:53.299273	2016-08-07 07:17:49.349258
\.


--
-- Name: languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('languages_id_seq', 11, true);


--
-- Data for Name: latars; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY latars (id, name, created_at, updated_at) FROM stdin;
1	Indoor	2016-07-28 13:10:06.498985	2016-07-28 13:10:06.498985
2	Outdoor	2016-07-28 13:10:14.247226	2016-07-28 13:10:14.247226
3	Studio	2016-07-28 13:10:21.559846	2016-07-28 13:10:21.559846
4	Underwater	2016-07-28 13:10:33.765032	2016-07-28 13:10:33.765032
5	Skies	2016-07-28 13:10:43.506046	2016-07-28 13:10:43.506046
\.


--
-- Name: latars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('latars_id_seq', 6, true);


--
-- Data for Name: lectures; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY lectures (id, name, description, headsec_id, created_at, updated_at) FROM stdin;
6	Where to find everything		4	2016-08-09 15:22:48.993622	2016-08-09 15:22:49.000869
7	Choose a theme & make it your own		4	2016-08-09 15:47:10.045627	2016-08-09 15:47:10.053791
8	Customise your website fonts		4	2016-08-09 16:20:31.653258	2016-08-09 16:20:31.659807
9	Setting up your website pages		4	2016-08-09 16:20:43.17644	2016-08-09 16:20:43.182865
10	Setting up your website blog		4	2016-08-09 16:20:54.064976	2016-08-09 16:20:54.074019
11	Adjusting your settings to suit your business		4	2016-08-09 16:21:03.174344	2016-08-09 16:21:03.180947
12	Adding your content		4	2016-08-09 16:21:42.003113	2016-08-09 16:21:42.013419
13	Adding links to your social media accounts		4	2016-08-09 16:21:54.684525	2016-08-09 16:21:54.694212
14	Building a contact form		4	2016-08-09 16:22:20.262959	2016-08-09 16:22:20.281881
15	Adding a document that visitors can download		4	2016-08-09 16:22:31.172645	2016-08-09 16:22:31.179809
17	Where to find royalty-free photos for your website		5	2016-08-09 16:33:27.843323	2016-08-09 16:33:27.850448
18	How to build an intro video		5	2016-08-09 16:34:00.508457	2016-08-09 16:34:00.515973
19	How to create an email sign-up form		5	2016-08-09 16:34:29.965418	2016-08-09 16:34:29.974466
20	Need one-on-one business help?		5	2016-08-09 16:34:49.382429	2016-08-09 16:34:49.389627
48	Completed Projects - Github Links		3	2016-09-01 00:41:42.304064	2016-09-01 00:41:42.338865
49	The Purpose of Boilerplate Projects		3	2016-09-01 00:42:45.753698	2016-09-01 00:42:45.790428
50	Differences Between Component Instances and Component Classes		3	2016-09-01 00:44:12.296446	2016-09-01 00:44:12.332426
51	Setting Up Front-End Developer Environment		3	2016-09-01 00:47:31.245477	2016-09-01 00:47:31.285568
52	Introduction to the Web		3	2016-09-01 00:50:40.094932	2016-09-01 00:50:40.149335
53	HTML Lists Assignment: SOLUTION		3	2016-09-01 00:51:19.373213	2016-09-01 00:51:19.419344
62	Your First Webpage - Files & Coding Challenge		16	2016-09-07 09:34:07.369081	2016-09-07 09:34:07.398834
1	Introduction	\N	3	2016-08-08 16:36:24.534103	2016-09-01 02:18:02.650465
63	Introduction To CSS 3 Section		17	2016-09-07 09:34:21.847788	2016-09-07 09:34:21.87845
54	Recreate Webpage Assignments		3	2016-09-01 00:53:09.774443	2016-09-02 04:51:46.783516
57	Introduction To Getting Started Section		15	2016-09-07 09:33:05.087285	2016-09-07 09:33:05.175013
58	How to Get All the Free Stuff		15	2016-09-07 09:33:18.670985	2016-09-07 09:33:18.694258
59	Getting Started On Windows		15	2016-09-07 09:33:27.989444	2016-09-07 09:33:28.017482
60	Introduction To HTML 5 Section		16	2016-09-07 09:33:47.555995	2016-09-07 09:33:47.595598
61	Your First Webpage Preview		16	2016-09-07 09:33:58.859632	2016-09-07 09:33:58.886764
64	What Is CSS?		17	2016-09-07 09:34:28.330685	2016-09-07 09:34:28.356851
65	Inline CSS		17	2016-09-07 09:34:35.566061	2016-09-07 09:34:35.590339
66	CSS Project BBC News Website		17	2016-09-07 09:34:44.899867	2016-09-07 09:34:44.924674
\.


--
-- Name: lectures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('lectures_id_seq', 75, true);


--
-- Data for Name: line_items; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY line_items (id, cart_id, theme_id, unit_price, created_at, updated_at, license, support, code_id, font_id, course_id, t3d_id, graphic_id, videofx_id, who_have) FROM stdin;
243	174	\N	37.0	2016-09-26 15:07:03.709908	2016-09-26 15:07:03.709908	regular	f	14	\N	\N	\N	\N	\N	19
244	174	\N	12.0	2016-09-26 15:07:05.434653	2016-09-26 15:07:05.434653	regular	f	9	\N	\N	\N	\N	\N	18
245	176	\N	28.0	2016-09-26 15:20:56.334057	2016-09-26 15:20:56.334057	regular	f	\N	4	\N	\N	\N	\N	20
246	176	\N	45.0	2016-09-26 15:20:58.104891	2016-09-26 15:20:58.104891	regular	f	\N	1	\N	\N	\N	\N	19
247	177	\N	45.0	2016-09-26 15:36:12.000494	2016-09-26 15:36:12.000494	regular	f	\N	\N	\N	\N	3	\N	20
248	177	\N	3.0	2016-09-26 15:36:13.405253	2016-09-26 15:36:13.405253	regular	f	\N	\N	\N	\N	2	\N	19
249	179	\N	23.0	2016-09-26 15:41:15.74135	2016-09-26 15:41:15.74135	regular	f	\N	\N	\N	\N	\N	4	18
250	179	\N	25.0	2016-09-26 15:41:17.424091	2016-09-26 15:41:17.424091	regular	f	\N	\N	\N	\N	\N	3	18
251	181	\N	24.0	2016-09-26 15:45:47.377423	2016-09-26 15:45:47.377423	regular	f	\N	\N	\N	5	\N	\N	19
252	181	\N	12.0	2016-09-26 15:45:49.041119	2016-09-26 15:45:49.041119	regular	f	\N	\N	\N	3	\N	\N	18
253	183	\N	125.0	2016-09-26 15:48:46.318857	2016-09-26 15:48:46.318857	regular	f	\N	\N	3	\N	\N	\N	19
254	183	\N	28.0	2016-09-26 15:48:48.280002	2016-09-26 15:48:48.280002	regular	f	\N	\N	1	\N	\N	\N	20
256	197	18	8.0	2016-10-09 17:37:52.933459	2016-10-09 17:37:52.933459	regular	f	\N	\N	\N	\N	\N	\N	20
257	198	\N	37.0	2016-10-09 18:05:01.608152	2016-10-09 18:05:01.608152	regular	f	14	\N	\N	\N	\N	\N	19
258	200	11	23.0	2016-10-10 02:51:40.528702	2016-10-10 02:51:40.528702	regular	f	\N	\N	\N	\N	\N	\N	20
259	202	11	23.0	2016-10-10 02:59:00.04492	2016-10-10 02:59:00.04492	regular	f	\N	\N	\N	\N	\N	\N	20
260	202	10	30.0	2016-10-10 02:59:02.245541	2016-10-10 02:59:02.245541	regular	f	\N	\N	\N	\N	\N	\N	18
\.


--
-- Name: line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('line_items_id_seq', 289, true);


--
-- Data for Name: mailboxer_conversation_opt_outs; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY mailboxer_conversation_opt_outs (id, unsubscriber_type, unsubscriber_id, conversation_id) FROM stdin;
\.


--
-- Name: mailboxer_conversation_opt_outs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('mailboxer_conversation_opt_outs_id_seq', 1, false);


--
-- Data for Name: mailboxer_conversations; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY mailboxer_conversations (id, subject, created_at, updated_at) FROM stdin;
9	I wanted to give you	2016-09-21 18:25:13.658147	2016-09-21 18:25:13.658147
8	Typewriter affogato	2016-09-21 18:07:12.589265	2016-09-21 19:23:24.680079
\.


--
-- Name: mailboxer_conversations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('mailboxer_conversations_id_seq', 9, true);


--
-- Data for Name: mailboxer_notifications; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY mailboxer_notifications (id, type, body, subject, sender_type, sender_id, conversation_id, draft, notification_code, notified_object_type, notified_object_id, attachment, updated_at, created_at, global, expires) FROM stdin;
10	Mailboxer::Message	Cred taxidermy\r\n\r\nCred taxidermy tumeric gochujang, distillery schlitz VHS. Deep v leggings kombucha chillwave snackwave, artisan PBR&amp;B. Viral williamsburg crucifix mlkshk XOXO twee. \r\n\r\nJean shorts vegan banh mi, put a bird on it banjo letterpress chambray cardigan marfa poke etsy. Squid twee fashion axe hoodie banh mi letterpress direct trade.\r\n\r\nBlue bottle you probably haven't heard of them beard gluten-free	Typewriter affogato	User	24	8	f	\N	\N	\N	\N	2016-09-21 18:07:12.589265	2016-09-21 18:07:12.589265	f	\N
11	Mailboxer::Message	Hi Pramayu, an announcement has been made from Laurence, instructor of Beginners Guide to JavaScript Dynamic HTML interaction.\r\n\r\nI wanted to give you a special surprise coupon for some of my newest courses.\r\n\r\nWeb Design Make a Single Page Website Carousel controls Was $75 now $10\r\nCreate your own custom website HTML CSS and jQuery together step by step learning website creation https://www.udemy.com/web-design-make-a-single-page-website-carousel-controls/?couponCode=BESTDAY\r\n\r\nHow to Create a Website HTML CSS Bootstrap Was $75 now $10\r\nComplete guide to learning how to build an HTML CSS website that is fully Responsive and ready for mobile devices https://www.udemy.com/how-to-create-a-website-html-css-bootstrap/?couponCode=BESTDAY\r\n\r\nMore Courses @ https://www.udemy.com/u/lars51/	I wanted to give you	User	25	9	f	\N	\N	\N	\N	2016-09-21 18:25:13.658147	2016-09-21 18:25:13.658147	f	\N
12	Mailboxer::Message	affogato vice gochujang bushwick disrupt. Stumptown deep v you probably haven't heard of 	Typewriter affogato	User	23	8	f	\N	\N	\N	\N	2016-09-21 19:23:19.676048	2016-09-21 19:23:19.676048	f	\N
\.


--
-- Name: mailboxer_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('mailboxer_notifications_id_seq', 12, true);


--
-- Data for Name: mailboxer_receipts; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY mailboxer_receipts (id, receiver_type, receiver_id, notification_id, is_read, trashed, deleted, mailbox_type, created_at, updated_at, is_delivered, delivery_method, message_id) FROM stdin;
15	User	25	11	t	f	f	sentbox	2016-09-21 18:25:13.681895	2016-09-21 18:25:13.681895	f	\N	\N
14	User	23	11	t	f	f	inbox	2016-09-21 18:25:13.678779	2016-09-21 18:25:13.678779	f	\N	\N
12	User	23	10	t	f	f	inbox	2016-09-21 18:07:12.858872	2016-09-21 18:07:12.858872	f	\N	\N
17	User	23	12	t	f	f	sentbox	2016-09-21 19:23:19.684736	2016-09-21 19:23:19.684736	f	\N	\N
13	User	24	10	t	f	f	sentbox	2016-09-21 18:07:12.86369	2016-09-21 18:07:12.86369	f	\N	\N
16	User	24	12	t	f	f	inbox	2016-09-21 19:23:19.680681	2016-09-21 19:23:19.680681	f	\N	\N
\.


--
-- Name: mailboxer_receipts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('mailboxer_receipts_id_seq', 17, true);


--
-- Data for Name: maintoitems; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY maintoitems (id, include_id, toitem_id, created_at, updated_at) FROM stdin;
1	1	1	2016-10-16 17:39:02.946791	2016-10-16 17:39:02.946791
2	2	1	2016-10-16 17:45:57.27424	2016-10-16 17:45:57.27424
3	3	1	2016-10-16 17:46:03.066079	2016-10-16 17:46:03.066079
4	4	1	2016-10-16 17:46:07.81785	2016-10-16 17:46:07.81785
5	5	1	2016-10-16 17:46:11.085154	2016-10-16 17:46:11.085154
6	6	1	2016-10-16 17:46:14.707804	2016-10-16 17:46:14.707804
7	7	1	2016-10-16 17:46:18.066435	2016-10-16 17:46:18.066435
8	8	1	2016-10-16 17:46:23.538785	2016-10-16 17:46:23.538785
9	1	2	2016-10-16 18:07:45.758822	2016-10-16 18:07:45.758822
10	2	2	2016-10-16 18:08:27.424637	2016-10-16 18:08:27.424637
11	5	2	2016-10-16 18:08:43.198999	2016-10-16 18:08:43.198999
12	6	2	2016-10-16 18:08:47.173632	2016-10-16 18:08:47.173632
13	9	2	2016-10-16 18:09:04.669177	2016-10-16 18:09:04.669177
14	10	2	2016-10-16 18:09:12.59766	2016-10-16 18:09:12.59766
16	12	2	2016-10-16 18:09:53.573824	2016-10-16 18:09:53.573824
17	13	2	2016-10-16 18:09:58.359425	2016-10-16 18:09:58.359425
18	1	3	2016-10-16 18:10:53.481017	2016-10-16 18:10:53.481017
19	2	3	2016-10-16 18:11:15.645809	2016-10-16 18:11:15.645809
20	5	3	2016-10-16 18:11:19.012662	2016-10-16 18:11:19.012662
21	6	3	2016-10-16 18:11:22.191535	2016-10-16 18:11:22.191535
22	18	3	2016-10-16 18:11:54.157167	2016-10-16 18:11:54.157167
23	19	3	2016-10-16 18:11:57.775049	2016-10-16 18:11:57.775049
24	20	3	2016-10-16 18:12:01.695015	2016-10-16 18:12:01.695015
25	21	3	2016-10-16 18:12:05.22108	2016-10-16 18:12:05.22108
26	22	3	2016-10-16 18:12:09.24422	2016-10-16 18:12:09.24422
27	1	4	2016-10-16 18:12:50.950166	2016-10-16 18:12:50.950166
28	2	4	2016-10-16 18:12:54.225664	2016-10-16 18:12:54.225664
29	5	4	2016-10-16 18:12:57.925902	2016-10-16 18:12:57.925902
30	6	4	2016-10-16 18:13:02.156886	2016-10-16 18:13:02.156886
31	23	4	2016-10-16 18:13:17.430475	2016-10-16 18:13:17.430475
32	24	4	2016-10-16 18:13:21.497226	2016-10-16 18:13:21.497226
33	25	4	2016-10-16 18:13:25.258872	2016-10-16 18:13:25.258872
34	26	4	2016-10-16 18:13:28.715085	2016-10-16 18:13:28.715085
35	3	5	2016-10-16 18:45:08.101268	2016-10-16 18:45:08.101268
36	4	5	2016-10-16 18:45:12.592381	2016-10-16 18:45:12.592381
37	27	5	2016-10-16 18:45:25.956304	2016-10-16 18:45:25.956304
38	28	5	2016-10-16 18:45:30.185896	2016-10-16 18:45:30.185896
39	29	5	2016-10-16 18:45:34.085387	2016-10-16 18:45:34.085387
40	30	5	2016-10-16 18:45:38.715031	2016-10-16 18:45:38.715031
41	31	5	2016-10-16 18:45:41.928489	2016-10-16 18:45:41.928489
42	32	5	2016-10-16 18:45:47.504052	2016-10-16 18:45:47.504052
43	33	5	2016-10-16 18:45:50.804038	2016-10-16 18:45:50.804038
44	34	5	2016-10-16 18:45:54.022591	2016-10-16 18:45:54.022591
45	35	5	2016-10-16 18:45:58.707839	2016-10-16 18:45:58.707839
46	36	5	2016-10-16 18:46:03.654602	2016-10-16 18:46:03.654602
47	37	6	2016-10-16 18:47:11.960721	2016-10-16 18:47:11.960721
48	38	6	2016-10-16 18:47:15.500135	2016-10-16 18:47:15.500135
49	39	6	2016-10-16 18:47:19.078234	2016-10-16 18:47:19.078234
50	40	6	2016-10-16 18:47:23.774468	2016-10-16 18:47:23.774468
51	41	6	2016-10-16 18:47:26.751259	2016-10-16 18:47:26.751259
52	42	6	2016-10-16 18:47:29.717903	2016-10-16 18:47:29.717903
53	43	6	2016-10-16 18:47:33.283499	2016-10-16 18:47:33.283499
54	44	6	2016-10-16 18:47:37.498514	2016-10-16 18:47:37.498514
55	45	6	2016-10-16 18:47:40.400455	2016-10-16 18:47:40.400455
56	46	6	2016-10-16 18:47:45.125999	2016-10-16 18:47:45.125999
57	47	6	2016-10-16 18:47:48.746051	2016-10-16 18:47:48.746051
58	48	6	2016-10-16 18:47:52.459118	2016-10-16 18:47:52.459118
59	49	6	2016-10-16 18:47:55.681488	2016-10-16 18:47:55.681488
60	50	6	2016-10-16 18:48:00.393124	2016-10-16 18:48:00.393124
61	51	6	2016-10-16 18:48:03.366181	2016-10-16 18:48:03.366181
62	52	6	2016-10-16 18:48:09.399953	2016-10-16 18:48:09.399953
63	53	6	2016-10-16 18:48:12.625604	2016-10-16 18:48:12.625604
64	54	6	2016-10-16 18:48:15.777798	2016-10-16 18:48:15.777798
65	55	6	2016-10-16 18:48:19.476641	2016-10-16 18:48:19.476641
66	56	6	2016-10-16 18:48:23.600022	2016-10-16 18:48:23.600022
67	57	7	2016-10-16 18:48:42.620937	2016-10-16 18:48:42.620937
68	58	7	2016-10-16 18:48:45.881006	2016-10-16 18:48:45.881006
69	59	7	2016-10-16 18:48:49.606827	2016-10-16 18:48:49.606827
70	60	7	2016-10-16 18:48:54.158493	2016-10-16 18:48:54.158493
71	61	7	2016-10-16 18:48:56.973356	2016-10-16 18:48:56.973356
72	3	8	2016-10-16 18:50:32.254481	2016-10-16 18:50:32.254481
73	4	8	2016-10-16 18:50:36.964951	2016-10-16 18:50:36.964951
74	27	8	2016-10-16 18:50:48.20561	2016-10-16 18:50:48.20561
75	28	8	2016-10-16 18:50:51.995348	2016-10-16 18:50:51.995348
76	29	8	2016-10-16 18:50:56.526984	2016-10-16 18:50:56.526984
77	62	8	2016-10-16 18:51:18.587295	2016-10-16 18:51:18.587295
78	63	8	2016-10-16 18:51:22.2715	2016-10-16 18:51:22.2715
79	64	8	2016-10-16 18:51:26.2385	2016-10-16 18:51:26.2385
80	65	9	2016-10-16 18:51:46.735126	2016-10-16 18:51:46.735126
81	66	9	2016-10-16 18:51:50.60153	2016-10-16 18:51:50.60153
82	67	9	2016-10-16 18:51:54.843378	2016-10-16 18:51:54.843378
83	68	9	2016-10-16 18:51:58.865239	2016-10-16 18:51:58.865239
84	69	9	2016-10-16 18:52:02.024094	2016-10-16 18:52:02.024094
85	70	10	2016-10-16 18:52:27.634208	2016-10-16 18:52:27.634208
86	71	10	2016-10-16 18:52:31.776252	2016-10-16 18:52:31.776252
87	72	10	2016-10-16 18:52:35.222525	2016-10-16 18:52:35.222525
88	73	10	2016-10-16 18:52:39.36707	2016-10-16 18:52:39.36707
89	74	10	2016-10-16 18:52:42.902213	2016-10-16 18:52:42.902213
90	75	10	2016-10-16 18:52:46.874662	2016-10-16 18:52:46.874662
91	76	10	2016-10-16 18:52:50.538515	2016-10-16 18:52:50.538515
92	77	10	2016-10-16 18:52:53.877778	2016-10-16 18:52:53.877778
93	78	10	2016-10-16 18:52:58.065398	2016-10-16 18:52:58.065398
94	79	10	2016-10-16 18:53:01.326311	2016-10-16 18:53:01.326311
95	80	10	2016-10-16 18:53:05.558256	2016-10-16 18:53:05.558256
96	81	10	2016-10-16 18:53:16.899774	2016-10-16 18:53:16.899774
97	82	10	2016-10-16 18:53:20.441041	2016-10-16 18:53:20.441041
98	83	10	2016-10-16 18:53:24.114164	2016-10-16 18:53:24.114164
99	84	10	2016-10-16 18:53:27.709574	2016-10-16 18:53:27.709574
100	85	10	2016-10-16 18:53:31.702479	2016-10-16 18:53:31.702479
101	86	10	2016-10-16 18:53:38.087125	2016-10-16 18:53:38.087125
102	87	10	2016-10-16 18:53:41.713285	2016-10-16 18:53:41.713285
103	88	10	2016-10-16 18:53:44.816629	2016-10-16 18:53:44.816629
104	89	10	2016-10-16 18:53:48.252308	2016-10-16 18:53:48.252308
105	90	10	2016-10-16 18:53:52.739262	2016-10-16 18:53:52.739262
106	91	10	2016-10-16 18:53:56.274215	2016-10-16 18:53:56.274215
107	92	10	2016-10-16 18:54:00.541074	2016-10-16 18:54:00.541074
108	93	10	2016-10-16 18:54:04.738189	2016-10-16 18:54:04.738189
109	94	10	2016-10-16 18:54:08.194094	2016-10-16 18:54:08.194094
110	95	10	2016-10-16 18:54:12.764869	2016-10-16 18:54:12.764869
111	96	10	2016-10-16 18:54:16.430764	2016-10-16 18:54:16.430764
112	97	10	2016-10-16 18:54:19.886066	2016-10-16 18:54:19.886066
113	98	10	2016-10-16 18:54:23.423234	2016-10-16 18:54:23.423234
114	99	10	2016-10-16 18:54:27.324108	2016-10-16 18:54:27.324108
115	100	10	2016-10-16 18:54:32.69916	2016-10-16 18:54:32.69916
116	101	10	2016-10-16 18:54:36.066437	2016-10-16 18:54:36.066437
117	102	10	2016-10-16 18:54:39.887176	2016-10-16 18:54:39.887176
118	103	10	2016-10-16 18:54:43.229094	2016-10-16 18:54:43.229094
119	104	10	2016-10-16 18:54:46.56473	2016-10-16 18:54:46.56473
120	105	10	2016-10-16 18:54:49.791528	2016-10-16 18:54:49.791528
121	106	10	2016-10-16 18:54:52.947304	2016-10-16 18:54:52.947304
122	107	10	2016-10-16 18:54:56.307585	2016-10-16 18:54:56.307585
123	108	10	2016-10-16 18:54:59.691589	2016-10-16 18:54:59.691589
124	109	10	2016-10-16 18:55:03.433215	2016-10-16 18:55:03.433215
125	110	10	2016-10-16 18:55:08.119083	2016-10-16 18:55:08.119083
126	111	10	2016-10-16 18:55:12.167964	2016-10-16 18:55:12.167964
127	112	10	2016-10-16 18:55:15.785029	2016-10-16 18:55:15.785029
128	113	10	2016-10-16 18:55:19.326721	2016-10-16 18:55:19.326721
129	114	10	2016-10-16 18:55:22.856677	2016-10-16 18:55:22.856677
130	115	10	2016-10-16 18:55:26.855588	2016-10-16 18:55:26.855588
131	116	10	2016-10-16 18:55:30.224938	2016-10-16 18:55:30.224938
132	117	10	2016-10-16 18:55:33.445468	2016-10-16 18:55:33.445468
133	118	10	2016-10-16 18:55:36.627835	2016-10-16 18:55:36.627835
134	119	10	2016-10-16 18:55:39.826908	2016-10-16 18:55:39.826908
135	120	10	2016-10-16 18:55:45.412898	2016-10-16 18:55:45.412898
136	121	10	2016-10-16 18:55:48.974506	2016-10-16 18:55:48.974506
137	122	10	2016-10-16 18:55:52.430721	2016-10-16 18:55:52.430721
\.


--
-- Name: maintoitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('maintoitems_id_seq', 139, true);


--
-- Data for Name: memos; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY memos (id, content, note_id, created_at, updated_at) FROM stdin;
4	Isticle before they sold out XOXO	2	2016-11-05 03:08:50.871313	2016-11-05 03:08:50.871313
5	Swag echo park bespoke edison	2	2016-11-05 03:08:50.874306	2016-11-05 03:08:50.874306
6	Tacos echo park knausgaard flexitarian	2	2016-11-05 03:08:50.877446	2016-11-05 03:08:50.877446
9	Vaporware dreamcatcher vegan	3	2016-11-05 03:12:30.174012	2016-11-05 03:12:30.174012
10	Scenester shabby chic beard squis	3	2016-11-05 03:12:30.175815	2016-11-05 05:42:27.190856
11	Cardigan hoodie literally vape	3	2016-11-05 05:45:52.835641	2016-11-05 05:45:52.835641
15	Phone pickled you probably	2	2016-11-05 09:33:59.048692	2016-11-05 09:33:59.048692
16	Raw denim gluten-free everyday carry aesthetic	3	2016-11-05 09:34:16.825119	2016-11-05 09:34:16.825119
17	occupy plaid mumblecore aesthetic 	5	2016-11-05 10:37:09.381568	2016-11-05 10:37:09.381568
18	Raw denim gluten-free everyday	5	2016-11-05 10:37:09.384517	2016-11-05 10:37:09.384517
19	Blog neutra pabst vinyl	5	2016-11-05 10:37:09.387018	2016-11-05 10:37:09.387018
20	Cardigan hoodie literally vape	5	2016-11-05 10:37:09.389761	2016-11-05 10:37:09.389761
21	Normcore church-key craft beer venmo	6	2016-11-10 09:23:17.342889	2016-11-10 09:23:17.342889
22	Activated charcoal kinfolk godard	6	2016-11-10 09:23:17.364821	2016-11-10 09:23:17.364821
23	Beard shoreditch master cleanse	6	2016-11-10 09:23:17.368342	2016-11-10 09:23:17.368342
24	Brunch bespoke fingerstache vegan wayfarers four loko. Knausgaard meditation raw denim whatever glossier gluten-free	6	2016-11-10 09:23:17.371944	2016-11-10 09:23:17.371944
25	Cardigan banh mi beard, echo park intelligentsia	7	2016-11-10 09:34:45.832469	2016-11-10 09:34:45.832469
26	Pitchfork cronut stumptown, jean shorts	7	2016-11-10 09:34:45.835057	2016-11-10 09:34:45.835057
27	cray truffaut authentic meditation activated charcoal franzen	7	2016-11-10 09:34:45.837523	2016-11-10 09:34:45.837523
28	Small batch kickstarter woke tumeric	7	2016-11-10 09:34:45.839477	2016-11-10 09:34:45.839477
\.


--
-- Name: memos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('memos_id_seq', 28, true);


--
-- Data for Name: messagereviewers; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY messagereviewers (id, team_id, user_id, content, created_at, updated_at) FROM stdin;
131	5	23	Oh. You need a little dummy text for your mockup? How quaint.	2016-09-10 10:58:24.530642	2016-09-10 10:58:24.530642
132	1	25	I bet you’re still using Bootstrap too…	2016-09-10 10:59:09.078603	2016-09-10 10:59:09.078603
133	5	23	What'up dude...	2016-09-26 18:36:13.411647	2016-09-26 18:36:13.411647
134	5	23	yes	2016-11-02 18:44:47.28287	2016-11-02 18:44:47.28287
135	5	23	dude	2016-11-10 00:38:26.352916	2016-11-10 00:38:26.352916
136	5	23	yee	2016-11-10 01:17:36.639343	2016-11-10 01:17:36.639343
137	5	25	what	2016-11-10 01:23:55.791836	2016-11-10 01:23:55.791836
138	5	25	dd	2016-11-10 01:27:26.738405	2016-11-10 01:27:26.738405
139	5	23	dd	2016-11-10 01:35:04.961517	2016-11-10 01:35:04.961517
140	5	23	d	2016-11-10 01:35:07.062166	2016-11-10 01:35:07.062166
141	5	25	df	2016-11-10 01:36:17.10584	2016-11-10 01:36:17.10584
142	5	25	asasas	2016-11-10 01:37:35.362259	2016-11-10 01:37:35.362259
143	5	23	sdsd	2016-11-10 01:42:13.480351	2016-11-10 01:42:13.480351
\.


--
-- Name: messagereviewers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('messagereviewers_id_seq', 143, true);


--
-- Data for Name: modelsubs; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY modelsubs (id, name, subcategory_id, created_at, updated_at) FROM stdin;
1	farm animals	1363	2016-07-25 14:07:18.833398	2016-07-25 14:07:18.833398
2	canine	1363	2016-07-25 14:07:18.861148	2016-07-25 14:07:18.861148
3	big cats	1363	2016-07-25 14:07:18.865526	2016-07-25 14:07:18.865526
4	rodent	1363	2016-07-25 14:07:18.869327	2016-07-25 14:07:18.869327
5	cat	1363	2016-07-25 14:07:18.873796	2016-07-25 14:07:18.873796
6	bear	1363	2016-07-25 14:07:18.877765	2016-07-25 14:07:18.877765
7	deer	1363	2016-07-25 14:07:18.882964	2016-07-25 14:07:18.882964
8	primates	1363	2016-07-25 14:07:18.887093	2016-07-25 14:07:18.887093
9	elephant	1363	2016-07-25 14:07:18.891696	2016-07-25 14:07:18.891696
10	rat	1363	2016-07-25 14:07:18.89595	2016-07-25 14:07:18.89595
11	rhinoceros	1363	2016-07-25 14:07:18.899605	2016-07-25 14:07:18.899605
12	sheep	1363	2016-07-25 14:07:18.907507	2016-07-25 14:07:18.907507
13	girafe	1363	2016-07-25 14:07:18.914889	2016-07-25 14:07:18.914889
14	fox	1363	2016-07-25 14:07:18.918771	2016-07-25 14:07:18.918771
15	hippopotamus	1363	2016-07-25 14:07:18.929658	2016-07-25 14:07:18.929658
16	goat	1363	2016-07-25 14:07:18.93403	2016-07-25 14:07:18.93403
17	marsupials	1363	2016-07-25 14:07:18.939174	2016-07-25 14:07:18.939174
18	bat	1363	2016-07-25 14:07:18.943254	2016-07-25 14:07:18.943254
19	zebra	1363	2016-07-25 14:07:18.947005	2016-07-25 14:07:18.947005
20	boar	1363	2016-07-25 14:07:18.95182	2016-07-25 14:07:18.95182
21	hyena	1363	2016-07-25 14:07:18.955628	2016-07-25 14:07:18.955628
22	buffalo	1363	2016-07-25 14:07:18.959363	2016-07-25 14:07:18.959363
23	antelope	1363	2016-07-25 14:07:18.962938	2016-07-25 14:07:18.962938
24	raccoon	1363	2016-07-25 14:07:18.967382	2016-07-25 14:07:18.967382
25	hedgehog	1363	2016-07-25 14:07:18.970976	2016-07-25 14:07:18.970976
26	skunk	1363	2016-07-25 14:07:18.975175	2016-07-25 14:07:18.975175
27	weasel	1363	2016-07-25 14:07:18.97891	2016-07-25 14:07:18.97891
28	ferret	1363	2016-07-25 14:07:18.983157	2016-07-25 14:07:18.983157
29	kinkajou	1363	2016-07-25 14:07:18.987086	2016-07-25 14:07:18.987086
30	armadillo	1363	2016-07-25 14:07:18.99098	2016-07-25 14:07:18.99098
31	platypus	1363	2016-07-25 14:07:18.995989	2016-07-25 14:07:18.995989
32	llama	1363	2016-07-25 14:07:18.999905	2016-07-25 14:07:18.999905
33	otter	1363	2016-07-25 14:07:19.003532	2016-07-25 14:07:19.003532
34	warthog	1363	2016-07-25 14:07:19.008478	2016-07-25 14:07:19.008478
35	mole	1363	2016-07-25 14:07:19.012405	2016-07-25 14:07:19.012405
36	impala	1363	2016-07-25 14:07:19.025608	2016-07-25 14:07:19.025608
37	tapir	1363	2016-07-25 14:07:19.03001	2016-07-25 14:07:19.03001
38	wildebeest	1363	2016-07-25 14:07:19.033885	2016-07-25 14:07:19.033885
39	whale	1363	2016-07-25 14:07:19.046153	2016-07-25 14:07:19.046153
40	dolphin	1363	2016-07-25 14:07:19.051902	2016-07-25 14:07:19.051902
41	seal	1363	2016-07-25 14:07:19.062448	2016-07-25 14:07:19.062448
42	walrus	1363	2016-07-25 14:07:19.066557	2016-07-25 14:07:19.066557
43	sea lion	1363	2016-07-25 14:07:19.070807	2016-07-25 14:07:19.070807
44	manatee	1363	2016-07-25 14:07:19.074747	2016-07-25 14:07:19.074747
45	dugong	1363	2016-07-25 14:07:19.078596	2016-07-25 14:07:19.078596
47	fish	1364	2016-07-25 14:07:19.087511	2016-07-25 14:07:19.087511
48	crustaceans	1364	2016-07-25 14:07:19.091434	2016-07-25 14:07:19.091434
49	cephalopods	1364	2016-07-25 14:07:19.09618	2016-07-25 14:07:19.09618
50	sea star	1364	2016-07-25 14:07:19.100206	2016-07-25 14:07:19.100206
51	jellyfish	1364	2016-07-25 14:07:19.104629	2016-07-25 14:07:19.104629
52	anemone 	1364	2016-07-25 14:07:19.108309	2016-07-25 14:07:19.108309
53	sea urchin	1364	2016-07-25 14:07:19.112402	2016-07-25 14:07:19.112402
54	oyster animal	1364	2016-07-25 14:07:19.117207	2016-07-25 14:07:19.117207
55	sand dollar	1364	2016-07-25 14:07:19.121178	2016-07-25 14:07:19.121178
56	limulus	1364	2016-07-25 14:07:19.125183	2016-07-25 14:07:19.125183
57	mollusca	1364	2016-07-25 14:07:19.129055	2016-07-25 14:07:19.129055
58	sea sponge	1364	2016-07-25 14:07:19.132976	2016-07-25 14:07:19.132976
59	pikaia	1364	2016-07-25 14:07:19.137281	2016-07-25 14:07:19.137281
61	insect	1365	2016-07-25 14:07:19.144789	2016-07-25 14:07:19.144789
62	snail	1365	2016-07-25 14:07:19.148844	2016-07-25 14:07:19.148844
63	worm	1365	2016-07-25 14:07:19.152886	2016-07-25 14:07:19.152886
64	slug	1365	2016-07-25 14:07:19.156725	2016-07-25 14:07:19.156725
65	tapeworm	1365	2016-07-25 14:07:19.160944	2016-07-25 14:07:19.160944
66	leanchoilia	1365	2016-07-25 14:07:19.165899	2016-07-25 14:07:19.165899
67	sanctacaris	1365	2016-07-25 14:07:19.170322	2016-07-25 14:07:19.170322
69	aquatic bird	1366	2016-07-25 14:07:19.177977	2016-07-25 14:07:19.177977
70	chicken	1366	2016-07-25 14:07:19.181954	2016-07-25 14:07:19.181954
71	eagle	1366	2016-07-25 14:07:19.186645	2016-07-25 14:07:19.186645
72	parrot	1366	2016-07-25 14:07:19.190627	2016-07-25 14:07:19.190627
73	cartoon bird	1366	2016-07-25 14:07:19.194517	2016-07-25 14:07:19.194517
74	pigeon	1366	2016-07-25 14:07:19.198092	2016-07-25 14:07:19.198092
75	crow	1366	2016-07-25 14:07:19.202046	2016-07-25 14:07:19.202046
76	owl	1366	2016-07-25 14:07:19.206786	2016-07-25 14:07:19.206786
77	hummingbird	1366	2016-07-25 14:07:19.210611	2016-07-25 14:07:19.210611
78	flamingo	1366	2016-07-25 14:07:19.214472	2016-07-25 14:07:19.214472
79	sparrow	1366	2016-07-25 14:07:19.218322	2016-07-25 14:07:19.218322
80	turkey	1366	2016-07-25 14:07:19.222245	2016-07-25 14:07:19.222245
81	finch	1366	2016-07-25 14:07:19.226152	2016-07-25 14:07:19.226152
82	hawk	1366	2016-07-25 14:07:19.230033	2016-07-25 14:07:19.230033
83	ostrich	1366	2016-07-25 14:07:19.234707	2016-07-25 14:07:19.234707
84	toucan 	1366	2016-07-25 14:07:19.23839	2016-07-25 14:07:19.23839
85	woodpecker	1366	2016-07-25 14:07:19.242262	2016-07-25 14:07:19.242262
86	crane	1366	2016-07-25 14:07:19.246391	2016-07-25 14:07:19.246391
87	cardinal	1366	2016-07-25 14:07:19.250152	2016-07-25 14:07:19.250152
88	swallow	1366	2016-07-25 14:07:19.255464	2016-07-25 14:07:19.255464
90	dinosaur	1367	2016-07-25 14:07:19.276528	2016-07-25 14:07:19.276528
91	mammoth	1367	2016-07-25 14:07:19.28071	2016-07-25 14:07:19.28071
92	trilobite	1367	2016-07-25 14:07:19.284941	2016-07-25 14:07:19.284941
93	saber tooth tiger	1367	2016-07-25 14:07:19.289225	2016-07-25 14:07:19.289225
94	ammonite	1367	2016-07-25 14:07:19.293419	2016-07-25 14:07:19.293419
95	diprotodon	1367	2016-07-25 14:07:19.297633	2016-07-25 14:07:19.297633
96	smilodon	1367	2016-07-25 14:07:19.301819	2016-07-25 14:07:19.301819
97	dodo	1367	2016-07-25 14:07:19.30566	2016-07-25 14:07:19.30566
99	animal skeleton	1368	2016-07-25 14:07:19.314559	2016-07-25 14:07:19.314559
100	shell	1368	2016-07-25 14:07:19.31832	2016-07-25 14:07:19.31832
101	fossil	1368	2016-07-25 14:07:19.323287	2016-07-25 14:07:19.323287
102	wing	1368	2016-07-25 14:07:19.32706	2016-07-25 14:07:19.32706
103	bird egg	1368	2016-07-25 14:07:19.331639	2016-07-25 14:07:19.331639
104	feather	1368	2016-07-25 14:07:19.335664	2016-07-25 14:07:19.335664
105	animal teeth	1368	2016-07-25 14:07:19.340166	2016-07-25 14:07:19.340166
107	lizard	1369	2016-07-25 14:07:19.3478	2016-07-25 14:07:19.3478
108	turtle	1369	2016-07-25 14:07:19.353316	2016-07-25 14:07:19.353316
109	snake	1369	2016-07-25 14:07:19.359902	2016-07-25 14:07:19.359902
110	crocodile	1369	2016-07-25 14:07:19.364913	2016-07-25 14:07:19.364913
111	alligator	1369	2016-07-25 14:07:19.370201	2016-07-25 14:07:19.370201
113	frog	1370	2016-07-25 14:07:19.382119	2016-07-25 14:07:19.382119
114	toad	1370	2016-07-25 14:07:19.388138	2016-07-25 14:07:19.388138
115	salamander	1370	2016-07-25 14:07:19.393821	2016-07-25 14:07:19.393821
116	newt	1370	2016-07-25 14:07:19.399068	2016-07-25 14:07:19.399068
117	ichthyostega	1370	2016-07-25 14:07:19.403974	2016-07-25 14:07:19.403974
119	maple tree	1371	2016-07-25 14:07:19.415441	2016-07-25 14:07:19.415441
120	oak tree	1371	2016-07-25 14:07:19.420162	2016-07-25 14:07:19.420162
121	birch	1371	2016-07-25 14:07:19.425062	2016-07-25 14:07:19.425062
122	willow tree	1371	2016-07-25 14:07:19.431698	2016-07-25 14:07:19.431698
123	chestnut	1371	2016-07-25 14:07:19.436172	2016-07-25 14:07:19.436172
124	ash	1371	2016-07-25 14:07:19.440939	2016-07-25 14:07:19.440939
125	poplar	1371	2016-07-25 14:07:19.446365	2016-07-25 14:07:19.446365
126	decorative	1371	2016-07-25 14:07:19.451734	2016-07-25 14:07:19.451734
127	acacia	1371	2016-07-25 14:07:19.456997	2016-07-25 14:07:19.456997
128	plane	1371	2016-07-25 14:07:19.462002	2016-07-25 14:07:19.462002
129	beech	1371	2016-07-25 14:07:19.466672	2016-07-25 14:07:19.466672
130	magnolia	1371	2016-07-25 14:07:19.472601	2016-07-25 14:07:19.472601
131	elm	1371	2016-07-25 14:07:19.482656	2016-07-25 14:07:19.482656
132	hornbeam	1371	2016-07-25 14:07:19.492121	2016-07-25 14:07:19.492121
133	honey locust	1371	2016-07-25 14:07:19.499524	2016-07-25 14:07:19.499524
134	tilia	1371	2016-07-25 14:07:19.510833	2016-07-25 14:07:19.510833
135	juniper	1371	2016-07-25 14:07:19.516948	2016-07-25 14:07:19.516948
136	alder	1371	2016-07-25 14:07:19.524007	2016-07-25 14:07:19.524007
137	hazel	1371	2016-07-25 14:07:19.532184	2016-07-25 14:07:19.532184
138	ginkgo	1371	2016-07-25 14:07:19.537338	2016-07-25 14:07:19.537338
139	staghorn	1371	2016-07-25 14:07:19.543024	2016-07-25 14:07:19.543024
140	yew	1371	2016-07-25 14:07:19.548174	2016-07-25 14:07:19.548174
141	southern	1371	2016-07-25 14:07:19.554335	2016-07-25 14:07:19.554335
142	mangrove	1371	2016-07-25 14:07:19.560094	2016-07-25 14:07:19.560094
143	euonymus	1371	2016-07-25 14:07:19.5662	2016-07-25 14:07:19.5662
144	cockspur hawthorn	1371	2016-07-25 14:07:19.570893	2016-07-25 14:07:19.570893
145	umbrella 	1371	2016-07-25 14:07:19.575442	2016-07-25 14:07:19.575442
146	sassafras	1371	2016-07-25 14:07:19.580289	2016-07-25 14:07:19.580289
147	norway spruce	1371	2016-07-25 14:07:19.585134	2016-07-25 14:07:19.585134
148	katsura	1371	2016-07-25 14:07:19.591305	2016-07-25 14:07:19.591305
149	box elder	1371	2016-07-25 14:07:19.596069	2016-07-25 14:07:19.596069
150	littleleaf	1371	2016-07-25 14:07:19.600881	2016-07-25 14:07:19.600881
151	beauty leaf	1371	2016-07-25 14:07:19.606341	2016-07-25 14:07:19.606341
152	baobab	1371	2016-07-25 14:07:19.612188	2016-07-25 14:07:19.612188
153	columnar tulip	1371	2016-07-25 14:07:19.616931	2016-07-25 14:07:19.616931
154	black locust	1371	2016-07-25 14:07:19.621834	2016-07-25 14:07:19.621834
155	buttonwood	1371	2016-07-25 14:07:19.626465	2016-07-25 14:07:19.626465
156	cottonwood	1371	2016-07-25 14:07:19.631728	2016-07-25 14:07:19.631728
157	black tupelo	1371	2016-07-25 14:07:19.636693	2016-07-25 14:07:19.636693
158	acokanthera	1371	2016-07-25 14:07:19.641525	2016-07-25 14:07:19.641525
159	golden rain	1371	2016-07-25 14:07:19.646224	2016-07-25 14:07:19.646224
160	pigeon plum	1371	2016-07-25 14:07:19.651072	2016-07-25 14:07:19.651072
162	pine tree	1372	2016-07-25 14:07:19.661813	2016-07-25 14:07:19.661813
163	spruce	1372	2016-07-25 14:07:19.666635	2016-07-25 14:07:19.666635
164	bonsai conifer	1372	2016-07-25 14:07:19.671196	2016-07-25 14:07:19.671196
165	fir tree	1372	2016-07-25 14:07:19.675667	2016-07-25 14:07:19.675667
166	arborvitae	1372	2016-07-25 14:07:19.681236	2016-07-25 14:07:19.681236
167	cypress	1372	2016-07-25 14:07:19.685901	2016-07-25 14:07:19.685901
168	eucalyptus 	1372	2016-07-25 14:07:19.690434	2016-07-25 14:07:19.690434
169	cedar	1372	2016-07-25 14:07:19.694749	2016-07-25 14:07:19.694749
170	western red cedar	1372	2016-07-25 14:07:19.711338	2016-07-25 14:07:19.711338
171	redwood	1372	2016-07-25 14:07:19.716391	2016-07-25 14:07:19.716391
172	juniper	1372	2016-07-25 14:07:19.721216	2016-07-25 14:07:19.721216
173	giant sequoia	1372	2016-07-25 14:07:19.725476	2016-07-25 14:07:19.725476
174	western hemlock	1372	2016-07-25 14:07:19.731367	2016-07-25 14:07:19.731367
176	coconut palm	1373	2016-07-25 14:07:19.74016	2016-07-25 14:07:19.74016
177	silver date	1373	2016-07-25 14:07:19.744836	2016-07-25 14:07:19.744836
178	mexican fan palm	1373	2016-07-25 14:07:19.749162	2016-07-25 14:07:19.749162
179	roystonea	1373	2016-07-25 14:07:19.755689	2016-07-25 14:07:19.755689
180	cycas	1373	2016-07-25 14:07:19.774377	2016-07-25 14:07:19.774377
181	date palm	1373	2016-07-25 14:07:19.778585	2016-07-25 14:07:19.778585
182	archontophoenix	1373	2016-07-25 14:07:19.782425	2016-07-25 14:07:19.782425
183	windmill palm	1373	2016-07-25 14:07:19.786524	2016-07-25 14:07:19.786524
184	ponytail palm	1373	2016-07-25 14:07:19.790666	2016-07-25 14:07:19.790666
185	butterfly palm	1373	2016-07-25 14:07:19.794189	2016-07-25 14:07:19.794189
186	white bird of paradise	1373	2016-07-25 14:07:19.799984	2016-07-25 14:07:19.799984
188	prunus 	1375	2016-07-25 14:07:19.808051	2016-07-25 14:07:19.808051
189	citrus tree	1375	2016-07-25 14:07:19.812165	2016-07-25 14:07:19.812165
190	olive tree	1375	2016-07-25 14:07:19.815895	2016-07-25 14:07:19.815895
191	banana tree	1375	2016-07-25 14:07:19.820317	2016-07-25 14:07:19.820317
192	apple tree	1375	2016-07-25 14:07:19.824114	2016-07-25 14:07:19.824114
193	pear tree	1375	2016-07-25 14:07:19.827992	2016-07-25 14:07:19.827992
194	mango tree	1375	2016-07-25 14:07:19.832407	2016-07-25 14:07:19.832407
196	dogwood	1377	2016-07-25 14:07:19.840152	2016-07-25 14:07:19.840152
197	frangipani	1377	2016-07-25 14:07:19.844164	2016-07-25 14:07:19.844164
198	jacaranda	1377	2016-07-25 14:07:19.848253	2016-07-25 14:07:19.848253
199	wisteria	1377	2016-07-25 14:07:19.852132	2016-07-25 14:07:19.852132
200	cercis	1377	2016-07-25 14:07:19.856944	2016-07-25 14:07:19.856944
201	royal poinciana	1377	2016-07-25 14:07:19.860874	2016-07-25 14:07:19.860874
202	aristocrat	1377	2016-07-25 14:07:19.864533	2016-07-25 14:07:19.864533
203	plumeria obtusa	1377	2016-07-25 14:07:19.86859	2016-07-25 14:07:19.86859
204	ivory silk japanesse lilac	1377	2016-07-25 14:07:19.872916	2016-07-25 14:07:19.872916
205	madagascar periwinkle	1377	2016-07-25 14:07:19.876585	2016-07-25 14:07:19.876585
206	starburst	1377	2016-07-25 14:07:19.880569	2016-07-25 14:07:19.880569
207	tulip poplar	1377	2016-07-25 14:07:19.884253	2016-07-25 14:07:19.884253
209	rock	1378	2016-07-25 14:07:19.89205	2016-07-25 14:07:19.89205
210	gems	1378	2016-07-25 14:07:19.896024	2016-07-25 14:07:19.896024
211	crystal	1378	2016-07-25 14:07:19.900237	2016-07-25 14:07:19.900237
212	quartz	1378	2016-07-25 14:07:19.904085	2016-07-25 14:07:19.904085
213	geode	1378	2016-07-25 14:07:19.907924	2016-07-25 14:07:19.907924
214	coal	1378	2016-07-25 14:07:19.917464	2016-07-25 14:07:19.917464
215	akvamarin beryl	1378	2016-07-25 14:07:19.92959	2016-07-25 14:07:19.92959
216	dioptase	1378	2016-07-25 14:07:19.935422	2016-07-25 14:07:19.935422
218	mountain	1379	2016-07-25 14:07:19.944223	2016-07-25 14:07:19.944223
219	desert	1379	2016-07-25 14:07:19.948795	2016-07-25 14:07:19.948795
220	cliff	1379	2016-07-25 14:07:19.953	2016-07-25 14:07:19.953
221	cave	1379	2016-07-25 14:07:19.956818	2016-07-25 14:07:19.956818
222	hill	1379	2016-07-25 14:07:19.960411	2016-07-25 14:07:19.960411
223	valley	1379	2016-07-25 14:07:19.964244	2016-07-25 14:07:19.964244
224	canyon	1379	2016-07-25 14:07:19.968221	2016-07-25 14:07:19.968221
225	sand 	1379	2016-07-25 14:07:19.972135	2016-07-25 14:07:19.972135
226	snow ground	1379	2016-07-25 14:07:19.976126	2016-07-25 14:07:19.976126
227	crater	1379	2016-07-25 14:07:19.980095	2016-07-25 14:07:19.980095
228	ocean	1379	2016-07-25 14:07:19.984158	2016-07-25 14:07:19.984158
229	lava 	1379	2016-07-25 14:07:19.988186	2016-07-25 14:07:19.988186
230	tundra	1379	2016-07-25 14:07:19.992757	2016-07-25 14:07:19.992757
231	earthquake	1379	2016-07-25 14:07:19.996115	2016-07-25 14:07:19.996115
233	splash	1380	2016-07-25 14:07:20.004927	2016-07-25 14:07:20.004927
234	ice	1380	2016-07-25 14:07:20.008555	2016-07-25 14:07:20.008555
235	water drop	1380	2016-07-25 14:07:20.012748	2016-07-25 14:07:20.012748
236	bubble	1380	2016-07-25 14:07:20.016899	2016-07-25 14:07:20.016899
237	bow wake	1380	2016-07-25 14:07:20.021181	2016-07-25 14:07:20.021181
239	sea fan coral	1382	2016-07-25 14:07:20.028808	2016-07-25 14:07:20.028808
240	mushroom coral	1382	2016-07-25 14:07:20.03283	2016-07-25 14:07:20.03283
241	brain coral	1382	2016-07-25 14:07:20.036533	2016-07-25 14:07:20.036533
242	acropora coral	1382	2016-07-25 14:07:20.04044	2016-07-25 14:07:20.04044
243	honeycomb	1382	2016-07-25 14:07:20.044545	2016-07-25 14:07:20.044545
244	ice cream cone	1382	2016-07-25 14:07:20.048189	2016-07-25 14:07:20.048189
245	green xenia	1382	2016-07-25 14:07:20.052128	2016-07-25 14:07:20.052128
246	gorgonian soft	1382	2016-07-25 14:07:20.056164	2016-07-25 14:07:20.056164
247	fox coral	1382	2016-07-25 14:07:20.061221	2016-07-25 14:07:20.061221
248	finger coral	1382	2016-07-25 14:07:20.065514	2016-07-25 14:07:20.065514
250	cellphone	1394	2016-07-25 14:07:20.073735	2016-07-25 14:07:20.073735
251	rotary phone	1394	2016-07-25 14:07:20.077674	2016-07-25 14:07:20.077674
252	office phone	1394	2016-07-25 14:07:20.081665	2016-07-25 14:07:20.081665
253	cordless phone	1394	2016-07-25 14:07:20.085535	2016-07-25 14:07:20.085535
254	candlestick phone	1394	2016-07-25 14:07:20.089664	2016-07-25 14:07:20.089664
256	speaker	1395	2016-07-25 14:07:20.097247	2016-07-25 14:07:20.097247
257	headphones	1395	2016-07-25 14:07:20.102191	2016-07-25 14:07:20.102191
258	radio	1395	2016-07-25 14:07:20.10854	2016-07-25 14:07:20.10854
259	stereo	1395	2016-07-25 14:07:20.114862	2016-07-25 14:07:20.114862
260	mp3 player	1395	2016-07-25 14:07:20.119116	2016-07-25 14:07:20.119116
261	amplifier	1395	2016-07-25 14:07:20.123173	2016-07-25 14:07:20.123173
262	phonograph	1395	2016-07-25 14:07:20.128162	2016-07-25 14:07:20.128162
263	bullhom	1395	2016-07-25 14:07:20.132151	2016-07-25 14:07:20.132151
264	sound recorder	1395	2016-07-25 14:07:20.13674	2016-07-25 14:07:20.13674
266	tablet computer	1396	2016-07-25 14:07:20.155368	2016-07-25 14:07:20.155368
267	laptop	1396	2016-07-25 14:07:20.160151	2016-07-25 14:07:20.160151
268	pc 	1396	2016-07-25 14:07:20.164134	2016-07-25 14:07:20.164134
269	mainframe computer	1396	2016-07-25 14:07:20.168037	2016-07-25 14:07:20.168037
271	television	1397	2016-07-25 14:07:20.175808	2016-07-25 14:07:20.175808
272	video games	1397	2016-07-25 14:07:20.179547	2016-07-25 14:07:20.179547
273	video player	1397	2016-07-25 14:07:20.183583	2016-07-25 14:07:20.183583
274	projector	1397	2016-07-25 14:07:20.187889	2016-07-25 14:07:20.187889
275	vga cable	1397	2016-07-25 14:07:20.191779	2016-07-25 14:07:20.191779
276	other	1397	2016-07-25 14:07:20.196173	2016-07-25 14:07:20.196173
278	computer component	1398	2016-07-25 14:07:20.203826	2016-07-25 14:07:20.203826
279	computer monitor	1398	2016-07-25 14:07:20.207529	2016-07-25 14:07:20.207529
280	keyboard	1398	2016-07-25 14:07:20.21206	2016-07-25 14:07:20.21206
281	mouse	1398	2016-07-25 14:07:20.216142	2016-07-25 14:07:20.216142
282	usb flash drive	1398	2016-07-25 14:07:20.220128	2016-07-25 14:07:20.220128
283	computer tower	1398	2016-07-25 14:07:20.224094	2016-07-25 14:07:20.224094
284	accessories	1398	2016-07-25 14:07:20.227994	2016-07-25 14:07:20.227994
285	web camera	1398	2016-07-25 14:07:20.231893	2016-07-25 14:07:20.231893
286	cpmuter speaker	1398	2016-07-25 14:07:20.239453	2016-07-25 14:07:20.239453
287	mouse pad	1398	2016-07-25 14:07:20.243654	2016-07-25 14:07:20.243654
288	tablet case	1398	2016-07-25 14:07:20.248323	2016-07-25 14:07:20.248323
290	digital camera	1399	2016-07-25 14:07:20.255814	2016-07-25 14:07:20.255814
291	video camera	1399	2016-07-25 14:07:20.260044	2016-07-25 14:07:20.260044
292	antique camera	1399	2016-07-25 14:07:20.266144	2016-07-25 14:07:20.266144
293	35mm camera	1399	2016-07-25 14:07:20.270896	2016-07-25 14:07:20.270896
294	instant camera	1399	2016-07-25 14:07:20.274607	2016-07-25 14:07:20.274607
295	dual lens camera	1399	2016-07-25 14:07:20.278049	2016-07-25 14:07:20.278049
297	camera lens	1400	2016-07-25 14:07:20.286144	2016-07-25 14:07:20.286144
298	camera tripod	1400	2016-07-25 14:07:20.289912	2016-07-25 14:07:20.289912
299	clapperboard	1400	2016-07-25 14:07:20.294561	2016-07-25 14:07:20.294561
300	movie screen	1400	2016-07-25 14:07:20.298411	2016-07-25 14:07:20.298411
301	camera flash	1400	2016-07-25 14:07:20.302488	2016-07-25 14:07:20.302488
302	camera monopod	1400	2016-07-25 14:07:20.306594	2016-07-25 14:07:20.306594
304	cable	1401	2016-07-25 14:07:20.314365	2016-07-25 14:07:20.314365
305	battrey	1401	2016-07-25 14:07:20.31826	2016-07-25 14:07:20.31826
306	cell phone case	1401	2016-07-25 14:07:20.322005	2016-07-25 14:07:20.322005
307	connector	1401	2016-07-25 14:07:20.325814	2016-07-25 14:07:20.325814
308	capacitor	1401	2016-07-25 14:07:20.330602	2016-07-25 14:07:20.330602
309	electrical transformer	1401	2016-07-25 14:07:20.334645	2016-07-25 14:07:20.334645
310	power strip	1401	2016-07-25 14:07:20.338679	2016-07-25 14:07:20.338679
311	cathode	1401	2016-07-25 14:07:20.342438	2016-07-25 14:07:20.342438
312	resistor	1401	2016-07-25 14:07:20.3463	2016-07-25 14:07:20.3463
313	electronic button	1401	2016-07-25 14:07:20.350249	2016-07-25 14:07:20.350249
314	diode	1401	2016-07-25 14:07:20.361541	2016-07-25 14:07:20.361541
315	transistor	1401	2016-07-25 14:07:20.3678	2016-07-25 14:07:20.3678
316	power adapter	1401	2016-07-25 14:07:20.374083	2016-07-25 14:07:20.374083
317	sim card	1401	2016-07-25 14:07:20.379259	2016-07-25 14:07:20.379259
319	coupe	1411	2016-07-25 14:07:20.387872	2016-07-25 14:07:20.387872
320	sedan	1411	2016-07-25 14:07:20.3938	2016-07-25 14:07:20.3938
321	suv	1411	2016-07-25 14:07:20.398315	2016-07-25 14:07:20.398315
322	hatchback	1411	2016-07-25 14:07:20.402538	2016-07-25 14:07:20.402538
323	race car	1411	2016-07-25 14:07:20.406264	2016-07-25 14:07:20.406264
324	van	1411	2016-07-25 14:07:20.410395	2016-07-25 14:07:20.410395
325	fictional automobile	1411	2016-07-25 14:07:20.414552	2016-07-25 14:07:20.414552
326	cartoon	1411	2016-07-25 14:07:20.418389	2016-07-25 14:07:20.418389
327	pick-up truck	1411	2016-07-25 14:07:20.422388	2016-07-25 14:07:20.422388
328	police	1411	2016-07-25 14:07:20.426318	2016-07-25 14:07:20.426318
329	antique car	1411	2016-07-25 14:07:20.430055	2016-07-25 14:07:20.430055
330	wrecked car	1411	2016-07-25 14:07:20.434114	2016-07-25 14:07:20.434114
331	dune buggy	1411	2016-07-25 14:07:20.438127	2016-07-25 14:07:20.438127
332	recreational	1411	2016-07-25 14:07:20.442378	2016-07-25 14:07:20.442378
333	limousine	1411	2016-07-25 14:07:20.446385	2016-07-25 14:07:20.446385
334	three-wheeler	1411	2016-07-25 14:07:20.450328	2016-07-25 14:07:20.450328
335	micro car	1411	2016-07-25 14:07:20.45428	2016-07-25 14:07:20.45428
336	sci-fi	1411	2016-07-25 14:07:20.458181	2016-07-25 14:07:20.458181
338	coupe	1412	2016-07-25 14:07:20.465651	2016-07-25 14:07:20.465651
339	sedan	1412	2016-07-25 14:07:20.46962	2016-07-25 14:07:20.46962
340	suv	1412	2016-07-25 14:07:20.476508	2016-07-25 14:07:20.476508
341	hatchback	1412	2016-07-25 14:07:20.480896	2016-07-25 14:07:20.480896
342	race car	1412	2016-07-25 14:07:20.484823	2016-07-25 14:07:20.484823
343	van	1412	2016-07-25 14:07:20.488452	2016-07-25 14:07:20.488452
344	fictional automobile	1412	2016-07-25 14:07:20.492192	2016-07-25 14:07:20.492192
345	cartoon	1412	2016-07-25 14:07:20.496155	2016-07-25 14:07:20.496155
346	pick-up truck	1412	2016-07-25 14:07:20.499839	2016-07-25 14:07:20.499839
347	police	1412	2016-07-25 14:07:20.504841	2016-07-25 14:07:20.504841
348	antique car	1412	2016-07-25 14:07:20.509006	2016-07-25 14:07:20.509006
349	wrecked car	1412	2016-07-25 14:07:20.512968	2016-07-25 14:07:20.512968
350	dune buggy	1412	2016-07-25 14:07:20.516779	2016-07-25 14:07:20.516779
351	recreational	1412	2016-07-25 14:07:20.520286	2016-07-25 14:07:20.520286
352	limousine	1412	2016-07-25 14:07:20.524497	2016-07-25 14:07:20.524497
353	three-wheeler	1412	2016-07-25 14:07:20.528603	2016-07-25 14:07:20.528603
354	micro car	1412	2016-07-25 14:07:20.53293	2016-07-25 14:07:20.53293
355	sci-fi	1412	2016-07-25 14:07:20.539431	2016-07-25 14:07:20.539431
357	wheel	1413	2016-07-25 14:07:20.54703	2016-07-25 14:07:20.54703
358	vehicle accessories	1413	2016-07-25 14:07:20.552029	2016-07-25 14:07:20.552029
359	automobile parts	1413	2016-07-25 14:07:20.556068	2016-07-25 14:07:20.556068
360	engine	1413	2016-07-25 14:07:20.560192	2016-07-25 14:07:20.560192
361	vessel parts	1413	2016-07-25 14:07:20.56416	2016-07-25 14:07:20.56416
362	craft parts	1413	2016-07-25 14:07:20.569358	2016-07-25 14:07:20.569358
363	bicycle	1413	2016-07-25 14:07:20.573367	2016-07-25 14:07:20.573367
364	chassis	1413	2016-07-25 14:07:20.57822	2016-07-25 14:07:20.57822
365	spacecraft	1413	2016-07-25 14:07:20.587591	2016-07-25 14:07:20.587591
366	brake	1413	2016-07-25 14:07:20.597912	2016-07-25 14:07:20.597912
367	passenger chair	1413	2016-07-25 14:07:20.602609	2016-07-25 14:07:20.602609
368	piston	1413	2016-07-25 14:07:20.606385	2016-07-25 14:07:20.606385
369	propeller	1413	2016-07-25 14:07:20.610521	2016-07-25 14:07:20.610521
370	bearings	1413	2016-07-25 14:07:20.614437	2016-07-25 14:07:20.614437
371	spacecraft drive	1413	2016-07-25 14:07:20.61828	2016-07-25 14:07:20.61828
372	spark plug	1413	2016-07-25 14:07:20.622719	2016-07-25 14:07:20.622719
373	transmission	1413	2016-07-25 14:07:20.626839	2016-07-25 14:07:20.626839
374	gauge	1413	2016-07-25 14:07:20.630419	2016-07-25 14:07:20.630419
375	vehicle battrey	1413	2016-07-25 14:07:20.634189	2016-07-25 14:07:20.634189
376	locomotive parts	1413	2016-07-25 14:07:20.638439	2016-07-25 14:07:20.638439
377	continuous track	1413	2016-07-25 14:07:20.641978	2016-07-25 14:07:20.641978
378	air filter	1413	2016-07-25 14:07:20.645933	2016-07-25 14:07:20.645933
379	rocket engine	1413	2016-07-25 14:07:20.650088	2016-07-25 14:07:20.650088
380	headlight	1413	2016-07-25 14:07:20.653959	2016-07-25 14:07:20.653959
381	license plate	1413	2016-07-25 14:07:20.658173	2016-07-25 14:07:20.658173
382	radioator	1413	2016-07-25 14:07:20.661989	2016-07-25 14:07:20.661989
383	axle	1413	2016-07-25 14:07:20.665654	2016-07-25 14:07:20.665654
385	military vessel	1414	2016-07-25 14:07:20.672553	2016-07-25 14:07:20.672553
386	sailing ship	1414	2016-07-25 14:07:20.676741	2016-07-25 14:07:20.676741
387	yacht	1414	2016-07-25 14:07:20.681044	2016-07-25 14:07:20.681044
388	motorboat	1414	2016-07-25 14:07:20.684804	2016-07-25 14:07:20.684804
389	cargo liner	1414	2016-07-25 14:07:20.688897	2016-07-25 14:07:20.688897
390	rowboat	1414	2016-07-25 14:07:20.692264	2016-07-25 14:07:20.692264
391	submersible	1414	2016-07-25 14:07:20.696001	2016-07-25 14:07:20.696001
392	inflatable boat	1414	2016-07-25 14:07:20.700292	2016-07-25 14:07:20.700292
393	tanker ship	1414	2016-07-25 14:07:20.710295	2016-07-25 14:07:20.710295
394	tugboat	1414	2016-07-25 14:07:20.716184	2016-07-25 14:07:20.716184
395	cruise ship	1414	2016-07-25 14:07:20.720538	2016-07-25 14:07:20.720538
396	kayak	1414	2016-07-25 14:07:20.727926	2016-07-25 14:07:20.727926
397	personal water craft	1414	2016-07-25 14:07:20.731674	2016-07-25 14:07:20.731674
398	lifeboat	1414	2016-07-25 14:07:20.736186	2016-07-25 14:07:20.736186
399	hovercraft	1414	2016-07-25 14:07:20.740358	2016-07-25 14:07:20.740358
400	ferry	1414	2016-07-25 14:07:20.744293	2016-07-25 14:07:20.744293
401	catamaran	1414	2016-07-25 14:07:20.7482	2016-07-25 14:07:20.7482
402	raft	1414	2016-07-25 14:07:20.752139	2016-07-25 14:07:20.752139
403	barge	1414	2016-07-25 14:07:20.756	2016-07-25 14:07:20.756
404	steamboat	1414	2016-07-25 14:07:20.760485	2016-07-25 14:07:20.760485
405	platform supply vessel	1414	2016-07-25 14:07:20.764828	2016-07-25 14:07:20.764828
406	floating production storage 	1414	2016-07-25 14:07:20.769433	2016-07-25 14:07:20.769433
407	shipwreck	1414	2016-07-25 14:07:20.773317	2016-07-25 14:07:20.773317
408	cartoon boat	1414	2016-07-25 14:07:20.777102	2016-07-25 14:07:20.777102
409	icebreaker	1414	2016-07-25 14:07:20.781457	2016-07-25 14:07:20.781457
410	tourist boat	1414	2016-07-25 14:07:20.786011	2016-07-25 14:07:20.786011
411	galley	1414	2016-07-25 14:07:20.7896	2016-07-25 14:07:20.7896
412	gondola	1414	2016-07-25 14:07:20.793641	2016-07-25 14:07:20.793641
413	airboat	1414	2016-07-25 14:07:20.79861	2016-07-25 14:07:20.79861
414	research vessel	1414	2016-07-25 14:07:20.806502	2016-07-25 14:07:20.806502
416	sci-fi	1415	2016-07-25 14:07:20.82251	2016-07-25 14:07:20.82251
417	satelite	1415	2016-07-25 14:07:20.826939	2016-07-25 14:07:20.826939
418	space station	1415	2016-07-25 14:07:20.830619	2016-07-25 14:07:20.830619
419	rocket	1415	2016-07-25 14:07:20.834514	2016-07-25 14:07:20.834514
420	flying car 	1415	2016-07-25 14:07:20.839271	2016-07-25 14:07:20.839271
421	space shuttle	1415	2016-07-25 14:07:20.846169	2016-07-25 14:07:20.846169
422	probe	1415	2016-07-25 14:07:20.850474	2016-07-25 14:07:20.850474
423	space capsule	1415	2016-07-25 14:07:20.854483	2016-07-25 14:07:20.854483
424	planetary rover	1415	2016-07-25 14:07:20.858458	2016-07-25 14:07:20.858458
425	lender	1415	2016-07-25 14:07:20.863158	2016-07-25 14:07:20.863158
426	soyuz	1415	2016-07-25 14:07:20.866699	2016-07-25 14:07:20.866699
427	jetpack	1415	2016-07-25 14:07:20.870617	2016-07-25 14:07:20.870617
428	xprize	1415	2016-07-25 14:07:20.874649	2016-07-25 14:07:20.874649
429	x-15	1415	2016-07-25 14:07:20.878726	2016-07-25 14:07:20.878726
430	boeing x-3	1415	2016-07-25 14:07:20.882881	2016-07-25 14:07:20.882881
432	military truck	1416	2016-07-25 14:07:20.890802	2016-07-25 14:07:20.890802
433	semi-trailer truck	1416	2016-07-25 14:07:20.894662	2016-07-25 14:07:20.894662
434	transporter truck	1416	2016-07-25 14:07:20.899581	2016-07-25 14:07:20.899581
435	ground support equipment	1416	2016-07-25 14:07:20.903531	2016-07-25 14:07:20.903531
436	fire engine	1416	2016-07-25 14:07:20.907245	2016-07-25 14:07:20.907245
437	garbage truck	1416	2016-07-25 14:07:20.911701	2016-07-25 14:07:20.911701
438	logging truck	1416	2016-07-25 14:07:20.915171	2016-07-25 14:07:20.915171
439	tow truck	1416	2016-07-25 14:07:20.919187	2016-07-25 14:07:20.919187
440	food truck	1416	2016-07-25 14:07:20.923623	2016-07-25 14:07:20.923623
441	snowplow	1416	2016-07-25 14:07:20.927382	2016-07-25 14:07:20.927382
442	street sweeper	1416	2016-07-25 14:07:20.93186	2016-07-25 14:07:20.93186
443	news truck	1416	2016-07-25 14:07:20.935049	2016-07-25 14:07:20.935049
444	mail truck	1416	2016-07-25 14:07:20.939276	2016-07-25 14:07:20.939276
445	sewer cleaner	1416	2016-07-25 14:07:20.944518	2016-07-25 14:07:20.944518
446	post truck	1416	2016-07-25 14:07:20.948289	2016-07-25 14:07:20.948289
448	main battle tank	1417	2016-07-25 14:07:20.955982	2016-07-25 14:07:20.955982
449	sci-fi tank	1417	2016-07-25 14:07:20.960611	2016-07-25 14:07:20.960611
450	medium tank	1417	2016-07-25 14:07:20.964279	2016-07-25 14:07:20.964279
451	heavy tank	1417	2016-07-25 14:07:20.968249	2016-07-25 14:07:20.968249
452	armored personal carrier	1417	2016-07-25 14:07:20.972112	2016-07-25 14:07:20.972112
453	panzer	1417	2016-07-25 14:07:20.976409	2016-07-25 14:07:20.976409
454	armored security vehicle	1417	2016-07-25 14:07:20.9801	2016-07-25 14:07:20.9801
455	infantry fighting	1417	2016-07-25 14:07:20.984026	2016-07-25 14:07:20.984026
456	light armored vehicle	1417	2016-07-25 14:07:20.988871	2016-07-25 14:07:20.988871
457	self-propelled howitzer	1417	2016-07-25 14:07:20.99248	2016-07-25 14:07:20.99248
458	unmanned ground vehicle	1417	2016-07-25 14:07:20.99633	2016-07-25 14:07:20.99633
459	tank destroyer	1417	2016-07-25 14:07:21.000913	2016-07-25 14:07:21.000913
460	stuG	1417	2016-07-25 14:07:21.004924	2016-07-25 14:07:21.004924
462	locomotive	1418	2016-07-25 14:07:21.012403	2016-07-25 14:07:21.012403
463	railcar	1418	2016-07-25 14:07:21.017407	2016-07-25 14:07:21.017407
464	tram	1418	2016-07-25 14:07:21.033085	2016-07-25 14:07:21.033085
465	passenger train	1418	2016-07-25 14:07:21.038264	2016-07-25 14:07:21.038264
466	subway car	1418	2016-07-25 14:07:21.042371	2016-07-25 14:07:21.042371
467	monorail	1418	2016-07-25 14:07:21.04641	2016-07-25 14:07:21.04641
468	handcar	1418	2016-07-25 14:07:21.050261	2016-07-25 14:07:21.050261
469	sinkansen	1418	2016-07-25 14:07:21.054436	2016-07-25 14:07:21.054436
471	racing motorcycle	1419	2016-07-25 14:07:21.06154	2016-07-25 14:07:21.06154
472	sport motorcycle	1419	2016-07-25 14:07:21.065551	2016-07-25 14:07:21.065551
473	chopper	1419	2016-07-25 14:07:21.069239	2016-07-25 14:07:21.069239
474	standard	1419	2016-07-25 14:07:21.072817	2016-07-25 14:07:21.072817
475	motor scooter	1419	2016-07-25 14:07:21.076833	2016-07-25 14:07:21.076833
476	cruiser motorcycle	1419	2016-07-25 14:07:21.081404	2016-07-25 14:07:21.081404
477	mini bike	1419	2016-07-25 14:07:21.085096	2016-07-25 14:07:21.085096
478	moped	1419	2016-07-25 14:07:21.089321	2016-07-25 14:07:21.089321
479	touring	1419	2016-07-25 14:07:21.093302	2016-07-25 14:07:21.093302
480	dual sport	1419	2016-07-25 14:07:21.097463	2016-07-25 14:07:21.097463
481	monocycle	1419	2016-07-25 14:07:21.101292	2016-07-25 14:07:21.101292
483	bicycle	1420	2016-07-25 14:07:21.108672	2016-07-25 14:07:21.108672
484	tricycle	1420	2016-07-25 14:07:21.112816	2016-07-25 14:07:21.112816
485	unicycle	1420	2016-07-25 14:07:21.116723	2016-07-25 14:07:21.116723
486	pedicab	1420	2016-07-25 14:07:21.121329	2016-07-25 14:07:21.121329
487	becak	1420	2016-07-25 14:07:21.125052	2016-07-25 14:07:21.125052
489	city bus	1421	2016-07-25 14:07:21.132119	2016-07-25 14:07:21.132119
490	coach	1421	2016-07-25 14:07:21.135853	2016-07-25 14:07:21.135853
491	school bus	1421	2016-07-25 14:07:21.140347	2016-07-25 14:07:21.140347
492	mini bus	1421	2016-07-25 14:07:21.144182	2016-07-25 14:07:21.144182
493	shuttle bus	1421	2016-07-25 14:07:21.147912	2016-07-25 14:07:21.147912
494	trolleybus	1421	2016-07-25 14:07:21.151323	2016-07-25 14:07:21.151323
495	tour bus	1421	2016-07-25 14:07:21.157921	2016-07-25 14:07:21.157921
496	jeepney	1421	2016-07-25 14:07:21.16236	2016-07-25 14:07:21.16236
498	residential building	1440	2016-07-25 14:07:21.170039	2016-07-25 14:07:21.170039
499	commercial building	1440	2016-07-25 14:07:21.173781	2016-07-25 14:07:21.173781
500	skyscraper	1440	2016-07-25 14:07:21.177571	2016-07-25 14:07:21.177571
501	industrial building	1440	2016-07-25 14:07:21.181757	2016-07-25 14:07:21.181757
502	religious building	1440	2016-07-25 14:07:21.185607	2016-07-25 14:07:21.185607
503	civic building	1440	2016-07-25 14:07:21.189663	2016-07-25 14:07:21.189663
504	stadium	1440	2016-07-25 14:07:21.193367	2016-07-25 14:07:21.193367
505	transportation building	1440	2016-07-25 14:07:21.197357	2016-07-25 14:07:21.197357
506	futuristic building	1440	2016-07-25 14:07:21.201381	2016-07-25 14:07:21.201381
507	ruins	1440	2016-07-25 14:07:21.205151	2016-07-25 14:07:21.205151
508	cartoon building	1440	2016-07-25 14:07:21.208989	2016-07-25 14:07:21.208989
509	memorial	1440	2016-07-25 14:07:21.212894	2016-07-25 14:07:21.212894
510	pavilion	1440	2016-07-25 14:07:21.216821	2016-07-25 14:07:21.216821
511	mausoleum	1440	2016-07-25 14:07:21.220918	2016-07-25 14:07:21.220918
512	pagoda	1440	2016-07-25 14:07:21.224823	2016-07-25 14:07:21.224823
513	outpost	1440	2016-07-25 14:07:21.228535	2016-07-25 14:07:21.228535
514	gatehouse	1440	2016-07-25 14:07:21.232639	2016-07-25 14:07:21.232639
515	geodesic dome	1440	2016-07-25 14:07:21.242234	2016-07-25 14:07:21.242234
516	bath house	1440	2016-07-25 14:07:21.251758	2016-07-25 14:07:21.251758
517	shooting range	1440	2016-07-25 14:07:21.255656	2016-07-25 14:07:21.255656
518	pura	1440	2016-07-25 14:07:21.260049	2016-07-25 14:07:21.260049
520	street elements	1441	2016-07-25 14:07:21.267133	2016-07-25 14:07:21.267133
521	infrastructure	1441	2016-07-25 14:07:21.271544	2016-07-25 14:07:21.271544
522	city	1441	2016-07-25 14:07:21.274853	2016-07-25 14:07:21.274853
523	attractions	1441	2016-07-25 14:07:21.278937	2016-07-25 14:07:21.278937
524	graveyard	1441	2016-07-25 14:07:21.283771	2016-07-25 14:07:21.283771
526	door	1442	2016-07-25 14:07:21.290968	2016-07-25 14:07:21.290968
527	column	1442	2016-07-25 14:07:21.294737	2016-07-25 14:07:21.294737
528	hvac equipments	1442	2016-07-25 14:07:21.298952	2016-07-25 14:07:21.298952
529	electrical equipment	1442	2016-07-25 14:07:21.303733	2016-07-25 14:07:21.303733
530	window	1442	2016-07-25 14:07:21.308706	2016-07-25 14:07:21.308706
531	wall	1442	2016-07-25 14:07:21.317724	2016-07-25 14:07:21.317724
532	stair	1442	2016-07-25 14:07:21.32587	2016-07-25 14:07:21.32587
533	plumbing equipment	1442	2016-07-25 14:07:21.330596	2016-07-25 14:07:21.330596
534	building material	1442	2016-07-25 14:07:21.334738	2016-07-25 14:07:21.334738
535	arch	1442	2016-07-25 14:07:21.338731	2016-07-25 14:07:21.338731
536	building frame	1442	2016-07-25 14:07:21.343676	2016-07-25 14:07:21.343676
537	balustrade	1442	2016-07-25 14:07:21.347707	2016-07-25 14:07:21.347707
538	exterior lighting	1442	2016-07-25 14:07:21.351068	2016-07-25 14:07:21.351068
539	railing	1442	2016-07-25 14:07:21.354878	2016-07-25 14:07:21.354878
540	building deck	1442	2016-07-25 14:07:21.360087	2016-07-25 14:07:21.360087
541	roof	1442	2016-07-25 14:07:21.364137	2016-07-25 14:07:21.364137
542	ceiling	1442	2016-07-25 14:07:21.368154	2016-07-25 14:07:21.368154
543	elevator	1442	2016-07-25 14:07:21.372165	2016-07-25 14:07:21.372165
544	facade	1442	2016-07-25 14:07:21.375864	2016-07-25 14:07:21.375864
545	escalator	1442	2016-07-25 14:07:21.380012	2016-07-25 14:07:21.380012
546	chimney	1442	2016-07-25 14:07:21.38448	2016-07-25 14:07:21.38448
547	awning	1442	2016-07-25 14:07:21.388353	2016-07-25 14:07:21.388353
548	gargoyle statue	1442	2016-07-25 14:07:21.392147	2016-07-25 14:07:21.392147
549	shutter	1442	2016-07-25 14:07:21.395866	2016-07-25 14:07:21.395866
550	dome	1442	2016-07-25 14:07:21.399659	2016-07-25 14:07:21.399659
551	altar	1442	2016-07-25 14:07:21.404084	2016-07-25 14:07:21.404084
552	fire escape	1442	2016-07-25 14:07:21.407755	2016-07-25 14:07:21.407755
553	cast bell	1442	2016-07-25 14:07:21.411242	2016-07-25 14:07:21.411242
554	frieze	1442	2016-07-25 14:07:21.415003	2016-07-25 14:07:21.415003
555	hatch	1442	2016-07-25 14:07:21.419612	2016-07-25 14:07:21.419612
556	canopy	1442	2016-07-25 14:07:21.423759	2016-07-25 14:07:21.423759
557	weather vane	1442	2016-07-25 14:07:21.427619	2016-07-25 14:07:21.427619
558	wall recess	1442	2016-07-25 14:07:21.430773	2016-07-25 14:07:21.430773
559	roof turbine	1442	2016-07-25 14:07:21.434705	2016-07-25 14:07:21.434705
560	turret	1442	2016-07-25 14:07:21.441665	2016-07-25 14:07:21.441665
562	fence	1443	2016-07-25 14:07:21.450143	2016-07-25 14:07:21.450143
563	fireplaces	1443	2016-07-25 14:07:21.464986	2016-07-25 14:07:21.464986
564	outdoor structure	1443	2016-07-25 14:07:21.469325	2016-07-25 14:07:21.469325
565	flagpole	1443	2016-07-25 14:07:21.473924	2016-07-25 14:07:21.473924
566	playground	1443	2016-07-25 14:07:21.477922	2016-07-25 14:07:21.477922
567	landscape architecture	1443	2016-07-25 14:07:21.481588	2016-07-25 14:07:21.481588
568	derbis	1443	2016-07-25 14:07:21.485393	2016-07-25 14:07:21.485393
569	gate	1443	2016-07-25 14:07:21.489548	2016-07-25 14:07:21.489548
570	pool	1443	2016-07-25 14:07:21.493321	2016-07-25 14:07:21.493321
571	water tower	1443	2016-07-25 14:07:21.497141	2016-07-25 14:07:21.497141
572	well	1443	2016-07-25 14:07:21.501544	2016-07-25 14:07:21.501544
573	tent	1443	2016-07-25 14:07:21.506096	2016-07-25 14:07:21.506096
574	bunker	1443	2016-07-25 14:07:21.510061	2016-07-25 14:07:21.510061
575	utility box	1443	2016-07-25 14:07:21.514852	2016-07-25 14:07:21.514852
576	kiosk	1443	2016-07-25 14:07:21.519109	2016-07-25 14:07:21.519109
577	pedestal	1443	2016-07-25 14:07:21.522832	2016-07-25 14:07:21.522832
578	pavement	1443	2016-07-25 14:07:21.527049	2016-07-25 14:07:21.527049
579	home garage	1443	2016-07-25 14:07:21.530469	2016-07-25 14:07:21.530469
580	portable building	1443	2016-07-25 14:07:21.534209	2016-07-25 14:07:21.534209
581	satelite dish	1443	2016-07-25 14:07:21.538606	2016-07-25 14:07:21.538606
582	sandbags	1443	2016-07-25 14:07:21.542212	2016-07-25 14:07:21.542212
583	military obstacle	1443	2016-07-25 14:07:21.546506	2016-07-25 14:07:21.546506
584	portable  toilet	1443	2016-07-25 14:07:21.551133	2016-07-25 14:07:21.551133
585	lifeguard station	1443	2016-07-25 14:07:21.556341	2016-07-25 14:07:21.556341
586	outhouse	1443	2016-07-25 14:07:21.560393	2016-07-25 14:07:21.560393
587	bird bath	1443	2016-07-25 14:07:21.567256	2016-07-25 14:07:21.567256
588	warehouse material	1443	2016-07-25 14:07:21.571653	2016-07-25 14:07:21.571653
589	sandcastle	1443	2016-07-25 14:07:21.574952	2016-07-25 14:07:21.574952
590	pole	1443	2016-07-25 14:07:21.578944	2016-07-25 14:07:21.578944
591	trough	1443	2016-07-25 14:07:21.58352	2016-07-25 14:07:21.58352
592	carport	1443	2016-07-25 14:07:21.588226	2016-07-25 14:07:21.588226
593	voting machine	1443	2016-07-25 14:07:21.592222	2016-07-25 14:07:21.592222
595	ancient ruins	1444	2016-07-25 14:07:21.603805	2016-07-25 14:07:21.603805
596	pyramids	1444	2016-07-25 14:07:21.610381	2016-07-25 14:07:21.610381
597	aztec artifact	1444	2016-07-25 14:07:21.621461	2016-07-25 14:07:21.621461
598	tribal mask	1444	2016-07-25 14:07:21.625871	2016-07-25 14:07:21.625871
599	the great sphinx	1444	2016-07-25 14:07:21.629694	2016-07-25 14:07:21.629694
600	totem pole	1444	2016-07-25 14:07:21.6334	2016-07-25 14:07:21.6334
601	ark of the covenant	1444	2016-07-25 14:07:21.637356	2016-07-25 14:07:21.637356
602	prasasti	1444	2016-07-25 14:07:21.64174	2016-07-25 14:07:21.64174
603	arca	1444	2016-07-25 14:07:21.645686	2016-07-25 14:07:21.645686
604	mayan calendar	1444	2016-07-25 14:07:21.649489	2016-07-25 14:07:21.649489
605	mask of tutankhamun	1444	2016-07-25 14:07:21.653432	2016-07-25 14:07:21.653432
607	man	1445	2016-07-25 14:07:21.661377	2016-07-25 14:07:21.661377
608	woman	1445	2016-07-25 14:07:21.667063	2016-07-25 14:07:21.667063
609	military	1445	2016-07-25 14:07:21.679766	2016-07-25 14:07:21.679766
610	occupations	1445	2016-07-25 14:07:21.683496	2016-07-25 14:07:21.683496
611	athlete	1445	2016-07-25 14:07:21.688844	2016-07-25 14:07:21.688844
612	boy	1445	2016-07-25 14:07:21.692321	2016-07-25 14:07:21.692321
613	girl	1445	2016-07-25 14:07:21.696597	2016-07-25 14:07:21.696597
614	baby	1445	2016-07-25 14:07:21.7011	2016-07-25 14:07:21.7011
615	royalty	1445	2016-07-25 14:07:21.705035	2016-07-25 14:07:21.705035
616	historical figures	1445	2016-07-25 14:07:21.709022	2016-07-25 14:07:21.709022
617	crowd	1445	2016-07-25 14:07:21.712761	2016-07-25 14:07:21.712761
618	religious people	1445	2016-07-25 14:07:21.716125	2016-07-25 14:07:21.716125
619	punk	1445	2016-07-25 14:07:21.72027	2016-07-25 14:07:21.72027
620	dead person	1445	2016-07-25 14:07:21.724124	2016-07-25 14:07:21.724124
621	goth	1445	2016-07-25 14:07:21.728038	2016-07-25 14:07:21.728038
622	rastafarian	1445	2016-07-25 14:07:21.732534	2016-07-25 14:07:21.732534
623	hobo	1445	2016-07-25 14:07:21.736433	2016-07-25 14:07:21.736433
624	hippie	1445	2016-07-25 14:07:21.740601	2016-07-25 14:07:21.740601
625	hipster	1445	2016-07-25 14:07:21.747252	2016-07-25 14:07:21.747252
627	mythical monsters	1446	2016-07-25 14:07:21.754497	2016-07-25 14:07:21.754497
628	alien	1446	2016-07-25 14:07:21.758498	2016-07-25 14:07:21.758498
629	zombie	1446	2016-07-25 14:07:21.762254	2016-07-25 14:07:21.762254
630	santa claus	1446	2016-07-25 14:07:21.766059	2016-07-25 14:07:21.766059
631	orc	1446	2016-07-25 14:07:21.769856	2016-07-25 14:07:21.769856
632	dalek	1446	2016-07-25 14:07:21.774454	2016-07-25 14:07:21.774454
633	orge	1446	2016-07-25 14:07:21.778034	2016-07-25 14:07:21.778034
634	fairy	1446	2016-07-25 14:07:21.781437	2016-07-25 14:07:21.781437
635	smurf	1446	2016-07-25 14:07:21.785406	2016-07-25 14:07:21.785406
636	unicorn	1446	2016-07-25 14:07:21.789117	2016-07-25 14:07:21.789117
637	reptilian	1446	2016-07-25 14:07:21.794008	2016-07-25 14:07:21.794008
638	pegasus 	1446	2016-07-25 14:07:21.798171	2016-07-25 14:07:21.798171
639	ent	1446	2016-07-25 14:07:21.803388	2016-07-25 14:07:21.803388
640	godzilla	1446	2016-07-25 14:07:21.807692	2016-07-25 14:07:21.807692
641	yeti	1446	2016-07-25 14:07:21.811402	2016-07-25 14:07:21.811402
642	facehugger	1446	2016-07-25 14:07:21.815775	2016-07-25 14:07:21.815775
643	balrog	1446	2016-07-25 14:07:21.81964	2016-07-25 14:07:21.81964
644	dewback	1446	2016-07-25 14:07:21.822926	2016-07-25 14:07:21.822926
645	druid	1446	2016-07-25 14:07:21.8276	2016-07-25 14:07:21.8276
646	nazgul	1446	2016-07-25 14:07:21.83166	2016-07-25 14:07:21.83166
647	phoenix	1446	2016-07-25 14:07:21.835537	2016-07-25 14:07:21.835537
648	smythlak	1446	2016-07-25 14:07:21.839317	2016-07-25 14:07:21.839317
649	candle creature	1446	2016-07-25 14:07:21.84398	2016-07-25 14:07:21.84398
650	sarlacc	1446	2016-07-25 14:07:21.847764	2016-07-25 14:07:21.847764
651	destrachan	1446	2016-07-25 14:07:21.851261	2016-07-25 14:07:21.851261
652	tauntaun	1446	2016-07-25 14:07:21.854959	2016-07-25 14:07:21.854959
653	demon	1446	2016-07-25 14:07:21.859748	2016-07-25 14:07:21.859748
654	god	1446	2016-07-25 14:07:21.863584	2016-07-25 14:07:21.863584
655	angel	1446	2016-07-25 14:07:21.867005	2016-07-25 14:07:21.867005
656	goddess	1446	2016-07-25 14:07:21.871979	2016-07-25 14:07:21.871979
657	cherub	1446	2016-07-25 14:07:21.875763	2016-07-25 14:07:21.875763
658	dryad	1446	2016-07-25 14:07:21.890318	2016-07-25 14:07:21.890318
659	venus	1446	2016-07-25 14:07:21.895129	2016-07-25 14:07:21.895129
661	mecha	1447	2016-07-25 14:07:21.910681	2016-07-25 14:07:21.910681
662	robot bug	1447	2016-07-25 14:07:21.916027	2016-07-25 14:07:21.916027
663	android	1447	2016-07-25 14:07:21.920096	2016-07-25 14:07:21.920096
664	gundam	1447	2016-07-25 14:07:21.926603	2016-07-25 14:07:21.926603
665	cyborg	1447	2016-07-25 14:07:21.931525	2016-07-25 14:07:21.931525
666	robot fighter	1447	2016-07-25 14:07:21.93542	2016-07-25 14:07:21.93542
667	transformer	1447	2016-07-25 14:07:21.939422	2016-07-25 14:07:21.939422
668	robot head	1447	2016-07-25 14:07:21.944178	2016-07-25 14:07:21.944178
669	terminator	1447	2016-07-25 14:07:21.948519	2016-07-25 14:07:21.948519
670	robot dog	1447	2016-07-25 14:07:21.952927	2016-07-25 14:07:21.952927
671	child robot	1447	2016-07-25 14:07:21.956942	2016-07-25 14:07:21.956942
672	bender	1447	2016-07-25 14:07:21.960779	2016-07-25 14:07:21.960779
673	nanomachine	1447	2016-07-25 14:07:21.964427	2016-07-25 14:07:21.964427
674	wall-e	1447	2016-07-25 14:07:21.968114	2016-07-25 14:07:21.968114
675	animal robot	1447	2016-07-25 14:07:21.972165	2016-07-25 14:07:21.972165
677	star wars	1448	2016-07-25 14:07:21.979125	2016-07-25 14:07:21.979125
678	pokemon	1448	2016-07-25 14:07:21.982993	2016-07-25 14:07:21.982993
679	minion	1448	2016-07-25 14:07:21.987563	2016-07-25 14:07:21.987563
680	spongebob	1448	2016-07-25 14:07:21.99147	2016-07-25 14:07:21.99147
681	the simpsons	1448	2016-07-25 14:07:21.994943	2016-07-25 14:07:21.994943
682	south park character	1448	2016-07-25 14:07:21.998883	2016-07-25 14:07:21.998883
683	predator	1448	2016-07-25 14:07:22.006337	2016-07-25 14:07:22.006337
684	naruto	1448	2016-07-25 14:07:22.010219	2016-07-25 14:07:22.010219
685	one piece	1448	2016-07-25 14:07:22.014518	2016-07-25 14:07:22.014518
686	robocop	1448	2016-07-25 14:07:22.018207	2016-07-25 14:07:22.018207
687	kermit frog	1448	2016-07-25 14:07:22.021988	2016-07-25 14:07:22.021988
688	woody	1448	2016-07-25 14:07:22.02641	2016-07-25 14:07:22.02641
689	stewie griffin	1448	2016-07-25 14:07:22.030121	2016-07-25 14:07:22.030121
690	gollum	1448	2016-07-25 14:07:22.034102	2016-07-25 14:07:22.034102
691	gandalf	1448	2016-07-25 14:07:22.037534	2016-07-25 14:07:22.037534
692	hobbit	1448	2016-07-25 14:07:22.041299	2016-07-25 14:07:22.041299
693	marvel character	1448	2016-07-25 14:07:22.045249	2016-07-25 14:07:22.045249
694	dc comic character	1448	2016-07-25 14:07:22.048859	2016-07-25 14:07:22.048859
695	hobbit character	1448	2016-07-25 14:07:22.053133	2016-07-25 14:07:22.053133
697	minecraft	1449	2016-07-25 14:07:22.061129	2016-07-25 14:07:22.061129
698	super mario	1449	2016-07-25 14:07:22.065069	2016-07-25 14:07:22.065069
699	sonic	1449	2016-07-25 14:07:22.069099	2016-07-25 14:07:22.069099
700	angry bird	1449	2016-07-25 14:07:22.072741	2016-07-25 14:07:22.072741
701	space invaders	1449	2016-07-25 14:07:22.076575	2016-07-25 14:07:22.076575
702	link	1449	2016-07-25 14:07:22.080177	2016-07-25 14:07:22.080177
703	kirby	1449	2016-07-25 14:07:22.083883	2016-07-25 14:07:22.083883
704	angry pig	1449	2016-07-25 14:07:22.087414	2016-07-25 14:07:22.087414
705	pokemon	1449	2016-07-25 14:07:22.091128	2016-07-25 14:07:22.091128
706	clash of clans	1449	2016-07-25 14:07:22.106984	2016-07-25 14:07:22.106984
707	clash royale	1449	2016-07-25 14:07:22.113472	2016-07-25 14:07:22.113472
709	iron man	1450	2016-07-25 14:07:22.121437	2016-07-25 14:07:22.121437
710	batman	1450	2016-07-25 14:07:22.125885	2016-07-25 14:07:22.125885
711	spiderman	1450	2016-07-25 14:07:22.129617	2016-07-25 14:07:22.129617
712	superman	1450	2016-07-25 14:07:22.13356	2016-07-25 14:07:22.13356
713	hulk	1450	2016-07-25 14:07:22.137328	2016-07-25 14:07:22.137328
714	wolverine	1450	2016-07-25 14:07:22.140985	2016-07-25 14:07:22.140985
715	wonder woman	1450	2016-07-25 14:07:22.145257	2016-07-25 14:07:22.145257
716	deadpool	1450	2016-07-25 14:07:22.148853	2016-07-25 14:07:22.148853
717	captain america	1450	2016-07-25 14:07:22.152594	2016-07-25 14:07:22.152594
718	cat woman 	1450	2016-07-25 14:07:22.157326	2016-07-25 14:07:22.157326
719	other	1450	2016-07-25 14:07:22.161158	2016-07-25 14:07:22.161158
721	chiar	1457	2016-07-25 14:07:22.168945	2016-07-25 14:07:22.168945
722	sofa	1457	2016-07-25 14:07:22.172884	2016-07-25 14:07:22.172884
723	bench	1457	2016-07-25 14:07:22.176807	2016-07-25 14:07:22.176807
724	rocking chair	1457	2016-07-25 14:07:22.180899	2016-07-25 14:07:22.180899
725	loveseat	1457	2016-07-25 14:07:22.184786	2016-07-25 14:07:22.184786
726	divan	1457	2016-07-25 14:07:22.188215	2016-07-25 14:07:22.188215
727	stadium seating	1457	2016-07-25 14:07:22.193038	2016-07-25 14:07:22.193038
728	porch swing	1457	2016-07-25 14:07:22.196944	2016-07-25 14:07:22.196944
729	recliner	1457	2016-07-25 14:07:22.201067	2016-07-25 14:07:22.201067
730	pew	1457	2016-07-25 14:07:22.205007	2016-07-25 14:07:22.205007
732	coffee table	1458	2016-07-25 14:07:22.212459	2016-07-25 14:07:22.212459
733	dining table	1458	2016-07-25 14:07:22.216506	2016-07-25 14:07:22.216506
734	end table	1458	2016-07-25 14:07:22.220834	2016-07-25 14:07:22.220834
735	cafe table	1458	2016-07-25 14:07:22.224832	2016-07-25 14:07:22.224832
736	console table	1458	2016-07-25 14:07:22.228887	2016-07-25 14:07:22.228887
737	kitchen table	1458	2016-07-25 14:07:22.232981	2016-07-25 14:07:22.232981
738	glass table	1458	2016-07-25 14:07:22.2377	2016-07-25 14:07:22.2377
739	conference	1458	2016-07-25 14:07:22.241556	2016-07-25 14:07:22.241556
740	picnic table	1458	2016-07-25 14:07:22.24584	2016-07-25 14:07:22.24584
741	children table	1458	2016-07-25 14:07:22.255729	2016-07-25 14:07:22.255729
742	wedding table	1458	2016-07-25 14:07:22.259967	2016-07-25 14:07:22.259967
743	card table	1458	2016-07-25 14:07:22.264094	2016-07-25 14:07:22.264094
744	folding table	1458	2016-07-25 14:07:22.268361	2016-07-25 14:07:22.268361
745	buffet	1458	2016-07-25 14:07:22.273643	2016-07-25 14:07:22.273643
746	library	1458	2016-07-25 14:07:22.277676	2016-07-25 14:07:22.277676
747	work table	1458	2016-07-25 14:07:22.281927	2016-07-25 14:07:22.281927
749	bedroom set	1459	2016-07-25 14:07:22.289864	2016-07-25 14:07:22.289864
750	double bed	1459	2016-07-25 14:07:22.294959	2016-07-25 14:07:22.294959
751	queen bed	1459	2016-07-25 14:07:22.299151	2016-07-25 14:07:22.299151
752	twin bed	1459	2016-07-25 14:07:22.303017	2016-07-25 14:07:22.303017
753	crib	1459	2016-07-25 14:07:22.31867	2016-07-25 14:07:22.31867
754	king bed	1459	2016-07-25 14:07:22.323118	2016-07-25 14:07:22.323118
755	bunk bed	1459	2016-07-25 14:07:22.327528	2016-07-25 14:07:22.327528
756	mattress	1459	2016-07-25 14:07:22.331112	2016-07-25 14:07:22.331112
757	canopy bed	1459	2016-07-25 14:07:22.33893	2016-07-25 14:07:22.33893
758	hammock	1459	2016-07-25 14:07:22.343261	2016-07-25 14:07:22.343261
759	headboard	1459	2016-07-25 14:07:22.347009	2016-07-25 14:07:22.347009
760	cot	1459	2016-07-25 14:07:22.351284	2016-07-25 14:07:22.351284
761	prison bed	1459	2016-07-25 14:07:22.356416	2016-07-25 14:07:22.356416
762	lethal injection bed	1459	2016-07-25 14:07:22.361027	2016-07-25 14:07:22.361027
764	office desk	1460	2016-07-25 14:07:22.36907	2016-07-25 14:07:22.36907
765	worksation	1460	2016-07-25 14:07:22.373721	2016-07-25 14:07:22.373721
766	writing desk	1460	2016-07-25 14:07:22.377623	2016-07-25 14:07:22.377623
767	reception	1460	2016-07-25 14:07:22.382057	2016-07-25 14:07:22.382057
768	scholl desk	1460	2016-07-25 14:07:22.386323	2016-07-25 14:07:22.386323
769	drafting	1460	2016-07-25 14:07:22.390932	2016-07-25 14:07:22.390932
771	bookcase	1461	2016-07-25 14:07:22.399499	2016-07-25 14:07:22.399499
772	steel shef	1461	2016-07-25 14:07:22.403708	2016-07-25 14:07:22.403708
773	magazine holder	1461	2016-07-25 14:07:22.407745	2016-07-25 14:07:22.407745
774	glass shelves	1461	2016-07-25 14:07:22.411971	2016-07-25 14:07:22.411971
775	cd shelf	1461	2016-07-25 14:07:22.417655	2016-07-25 14:07:22.417655
776	closet shelves	1461	2016-07-25 14:07:22.421785	2016-07-25 14:07:22.421785
777	bathroom shelf	1461	2016-07-25 14:07:22.426108	2016-07-25 14:07:22.426108
779	four drawer dresser	1463	2016-07-25 14:07:22.434246	2016-07-25 14:07:22.434246
780	bureau	1463	2016-07-25 14:07:22.439309	2016-07-25 14:07:22.439309
781	two drawer dresser	1463	2016-07-25 14:07:22.443684	2016-07-25 14:07:22.443684
783	patio table	1464	2016-07-25 14:07:22.451984	2016-07-25 14:07:22.451984
784	patio umbrella	1464	2016-07-25 14:07:22.456816	2016-07-25 14:07:22.456816
785	garden screen	1464	2016-07-25 14:07:22.460981	2016-07-25 14:07:22.460981
787	clothes rack	1465	2016-07-25 14:07:22.469024	2016-07-25 14:07:22.469024
788	towel rack	1465	2016-07-25 14:07:22.473033	2016-07-25 14:07:22.473033
789	wine rack	1465	2016-07-25 14:07:22.477415	2016-07-25 14:07:22.477415
790	kitchen rack	1465	2016-07-25 14:07:22.481669	2016-07-25 14:07:22.481669
791	umbrella	1465	2016-07-25 14:07:22.486399	2016-07-25 14:07:22.486399
792	drying rack	1465	2016-07-25 14:07:22.490535	2016-07-25 14:07:22.490535
793	shoe rack	1465	2016-07-25 14:07:22.494692	2016-07-25 14:07:22.494692
794	bar storage	1465	2016-07-25 14:07:22.498589	2016-07-25 14:07:22.498589
796	display cupboard	1466	2016-07-25 14:07:22.508737	2016-07-25 14:07:22.508737
\.


--
-- Name: modelsubs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('modelsubs_id_seq', 797, true);


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY notes (id, title, user_id, created_at, updated_at, team_id, shared) FROM stdin;
2	I bet you’re still using Bootstrap	24	2016-11-05 03:08:50.822928	2016-11-05 03:08:50.822928	\N	f
3	Aesthetic twee subway tile	24	2016-11-05 03:12:30.165539	2016-11-05 03:12:30.165539	\N	f
5	Glossier vaporware farm-to-table	24	2016-11-05 10:37:09.378539	2016-11-05 10:37:09.378539	\N	f
6	Fam bushwick green juice literally	23	2016-11-10 09:23:17.27513	2016-11-10 09:31:01.089247	5	f
7	Portland pug wayfarers	23	2016-11-10 09:34:45.829293	2016-11-10 09:34:45.829293	\N	f
\.


--
-- Name: notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('notes_id_seq', 7, true);


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY notifications (id, user_id, notified_by_id, theme_id, identifier, notice_type, read, created_at, updated_at, code_id, graphic_id, t3d_id, videofx_id, font_id, course_id, line_item_id) FROM stdin;
352	18	20	\N	\N	bought	f	2016-09-26 15:09:19.91564	2016-09-26 15:09:19.91564	9	\N	\N	\N	\N	\N	244
353	19	20	\N	\N	bought	f	2016-09-26 15:09:19.926846	2016-09-26 15:09:19.926846	14	\N	\N	\N	\N	\N	243
355	19	18	\N	\N	bought	f	2016-09-26 15:33:07.225622	2016-09-26 15:33:07.225622	\N	\N	\N	\N	1	\N	246
356	20	18	\N	\N	bought	f	2016-09-26 15:33:07.237973	2016-09-26 15:33:07.237973	\N	\N	\N	\N	4	\N	245
357	19	18	\N	\N	bought	f	2016-09-26 15:38:39.134682	2016-09-26 15:38:39.134682	\N	2	\N	\N	\N	\N	248
358	20	18	\N	\N	bought	f	2016-09-26 15:38:39.14466	2016-09-26 15:38:39.14466	\N	3	\N	\N	\N	\N	247
359	18	18	\N	\N	bought	f	2016-09-26 15:43:09.337493	2016-09-26 15:43:09.337493	\N	\N	\N	3	\N	\N	250
360	18	18	\N	\N	bought	f	2016-09-26 15:43:09.347473	2016-09-26 15:43:09.347473	\N	\N	\N	4	\N	\N	249
361	18	20	\N	\N	bought	f	2016-09-26 15:47:31.825359	2016-09-26 15:47:31.825359	\N	\N	3	\N	\N	\N	252
362	19	20	\N	\N	bought	f	2016-09-26 15:47:31.834788	2016-09-26 15:47:31.834788	\N	\N	5	\N	\N	\N	251
363	20	18	\N	\N	bought	f	2016-09-26 15:50:40.743082	2016-09-26 15:50:40.743082	\N	\N	\N	\N	\N	1	254
364	19	18	\N	\N	bought	f	2016-09-26 15:50:40.755309	2016-09-26 15:50:40.755309	\N	\N	\N	\N	\N	3	253
367	20	18	18	\N	bought	f	2016-10-09 17:41:31.718726	2016-10-09 17:41:31.718726	\N	\N	\N	\N	\N	\N	256
368	19	18	\N	\N	bought	f	2016-10-09 18:06:05.751859	2016-10-09 18:06:05.751859	14	\N	\N	\N	\N	\N	257
370	20	19	11	\N	bought	f	2016-10-10 02:55:36.428963	2016-10-10 02:55:36.428963	\N	\N	\N	\N	\N	\N	258
371	20	18	11	\N	bought	f	2016-10-10 03:00:18.301001	2016-10-10 03:00:18.301001	\N	\N	\N	\N	\N	\N	259
372	18	18	10	\N	bought	f	2016-10-10 03:00:18.314859	2016-10-10 03:00:18.314859	\N	\N	\N	\N	\N	\N	260
373	19	18	\N	\N	lik	f	2016-10-10 06:16:17.015503	2016-10-10 06:16:17.015503	\N	\N	6	\N	\N	\N	\N
374	18	19	20	\N	lik	f	2016-11-07 19:30:58.244647	2016-11-07 19:30:58.244647	\N	\N	\N	\N	\N	\N	\N
375	18	19	10	\N	lik	f	2016-11-07 19:31:13.878617	2016-11-07 19:31:13.878617	\N	\N	\N	\N	\N	\N	\N
376	18	19	10	48	comment	f	2016-11-07 19:32:16.20648	2016-11-07 19:32:16.20648	\N	\N	\N	\N	\N	\N	\N
377	20	18	11	\N	lik	f	2016-11-09 03:09:36.893977	2016-11-09 03:09:36.893977	\N	\N	\N	\N	\N	\N	\N
378	19	18	\N	\N	lik	f	2016-11-09 03:40:13.209823	2016-11-09 03:40:13.209823	\N	\N	\N	\N	\N	3	\N
379	19	18	\N	\N	lik	f	2016-11-09 03:40:46.334637	2016-11-09 03:40:46.334637	\N	\N	\N	\N	\N	3	\N
380	19	18	\N	\N	lik	f	2016-11-09 03:41:31.009587	2016-11-09 03:41:31.009587	\N	\N	\N	\N	\N	3	\N
381	19	18	\N	\N	lik	f	2016-11-09 03:43:28.352367	2016-11-09 03:43:28.352367	14	\N	\N	\N	\N	\N	\N
382	19	18	\N	\N	lik	f	2016-11-09 03:55:38.209445	2016-11-09 03:55:38.209445	\N	\N	\N	\N	\N	3	\N
383	19	18	\N	\N	lik	f	2016-11-09 04:03:05.669209	2016-11-09 04:03:05.669209	\N	\N	\N	\N	\N	3	\N
384	19	18	\N	\N	lik	f	2016-11-09 04:03:06.332383	2016-11-09 04:03:06.332383	\N	\N	\N	\N	\N	3	\N
385	19	18	\N	\N	lik	f	2016-11-09 04:04:01.994565	2016-11-09 04:04:01.994565	\N	\N	\N	\N	\N	3	\N
386	19	18	\N	\N	lik	f	2016-11-09 04:04:05.185152	2016-11-09 04:04:05.185152	\N	\N	\N	\N	\N	3	\N
387	19	18	\N	\N	lik	f	2016-11-09 04:07:58.916198	2016-11-09 04:07:58.916198	\N	\N	\N	\N	\N	3	\N
388	19	18	\N	\N	lik	f	2016-11-09 04:09:36.57854	2016-11-09 04:09:36.57854	\N	\N	\N	\N	\N	3	\N
389	20	18	11	\N	lik	f	2016-11-09 10:05:55.887751	2016-11-09 10:05:55.887751	\N	\N	\N	\N	\N	\N	\N
390	19	18	\N	49	comment	f	2016-11-09 15:37:20.69878	2016-11-09 15:37:20.69878	\N	2	\N	\N	\N	\N	\N
\.


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('notifications_id_seq', 390, true);


--
-- Data for Name: ositems; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY ositems (id, name, created_at, updated_at) FROM stdin;
1	Windows	2016-07-26 03:24:00.826797	2016-07-26 03:24:00.826797
2	Linux	2016-07-26 03:24:08.634771	2016-07-26 03:24:08.634771
3	Mac OS X	2016-07-26 03:24:18.79412	2016-07-26 03:24:18.79412
\.


--
-- Name: ositems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('ositems_id_seq', 3, true);


--
-- Data for Name: ourstores; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY ourstores (id, header, description, user_id, created_at, updated_at, website) FROM stdin;
1	8e5cf9709b4a95c2dbc9ac73d1ea7405f8b468d901c4cf6277.jpg	Microdosing YOLO viral sartorial kinfolk, slow-carb kitsch mustache irony man bun lumbersexual gochujang organic VHS.	18	2016-07-05 14:24:02.886455	2016-07-17 05:17:31.636657	http://localhost:3000/account/18/store_front
2	483b149e40864b04f314570d730c028d75be99b80e6dc06ebe.jpg	Aesthetic godard keffiyeh health goth, sartorial you probably haven't heard of them letterpress photo booth vice ugh.	19	2016-07-07 09:38:58.458837	2016-07-17 06:55:58.759514	http://hipsum.co/?paras=4&type=hipster-centric
3	2bc613d85d20693a546b9e196f248821df26a6aa572e798b78.jpg	Banjo messenger bag listicle sustainable microdosing. Drinking vinegar blog literally food truck ramps, marfa dreamcatcher cronut bitters messenger bag listicle.	20	2016-07-07 09:47:38.199489	2016-07-21 10:43:03.183116	http://localhost:3000/account/20/store_front
\.


--
-- Name: ourstores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('ourstores_id_seq', 3, true);


--
-- Data for Name: payment_noties; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY payment_noties (id, params, cart_id, status, transaction_id, created_at, updated_at) FROM stdin;
178	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 0F1842946K429410D\n  invoice: '174'\n  payment_status: Completed\n  custom: '20'\n  controller: payment_noties\n  action: create\npermitted: false\n	174	Completed	0F1842946K429410D	2016-09-26 15:09:19.895139	2016-09-26 15:09:19.895139
179	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 7YD89822069002131\n  invoice: '176'\n  payment_status: Completed\n  custom: '18'\n  controller: payment_noties\n  action: create\npermitted: false\n	176	Completed	7YD89822069002131	2016-09-26 15:33:07.201434	2016-09-26 15:33:07.201434
180	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 3JX28802EF557191E\n  invoice: '177'\n  payment_status: Completed\n  custom: '18'\n  controller: payment_noties\n  action: create\npermitted: false\n	177	Completed	3JX28802EF557191E	2016-09-26 15:38:39.105263	2016-09-26 15:38:39.105263
181	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 6GM45482DP263723X\n  invoice: '179'\n  payment_status: Completed\n  custom: '18'\n  controller: payment_noties\n  action: create\npermitted: false\n	179	Completed	6GM45482DP263723X	2016-09-26 15:43:09.313328	2016-09-26 15:43:09.313328
182	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 84120782TS154960K\n  invoice: '181'\n  payment_status: Completed\n  custom: '20'\n  controller: payment_noties\n  action: create\npermitted: false\n	181	Completed	84120782TS154960K	2016-09-26 15:47:31.802838	2016-09-26 15:47:31.802838
183	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 63P60401M64662537\n  invoice: '183'\n  payment_status: Completed\n  custom: '18'\n  controller: payment_noties\n  action: create\npermitted: false\n	183	Completed	63P60401M64662537	2016-09-26 15:50:40.716067	2016-09-26 15:50:40.716067
184	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 3EY27347WL924753L\n  invoice: '197'\n  payment_status: Completed\n  custom: '18'\n  controller: payment_noties\n  action: create\npermitted: false\n	197	Completed	3EY27347WL924753L	2016-10-09 17:41:31.637825	2016-10-09 17:41:31.637825
185	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 1DH55041124287005\n  invoice: '198'\n  payment_status: Completed\n  custom: '18'\n  controller: payment_noties\n  action: create\npermitted: false\n	198	Completed	1DH55041124287005	2016-10-09 18:06:05.719383	2016-10-09 18:06:05.719383
187	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 1YM88474D07045149\n  invoice: '200'\n  payment_status: Completed\n  custom: '19'\n  controller: payment_noties\n  action: create\npermitted: false\n	200	Completed	1YM88474D07045149	2016-10-10 02:55:36.07282	2016-10-10 02:55:36.07282
188	--- !ruby/object:ActionController::Parameters\nparameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  txn_id: 6JH16800883319806\n  invoice: '202'\n  payment_status: Completed\n  custom: '18'\n  controller: payment_noties\n  action: create\npermitted: false\n	202	Completed	6JH16800883319806	2016-10-10 03:00:18.269746	2016-10-10 03:00:18.269746
\.


--
-- Name: payment_noties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('payment_noties_id_seq', 188, true);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY reviews (id, rating, comment, user_id, theme_id, code_id, font_id, videofx_id, course_id, t3d_id, graphic_id, created_at, updated_at) FROM stdin;
16	4	Drinking vinegar keytar blue bottle you probably haven't heard of them street art semiotics	18	18	\N	\N	\N	\N	\N	\N	2016-09-01 19:16:28.667505	2016-09-01 19:16:28.693685
17	4	Before they sold out retro lomo fixie	20	\N	9	\N	\N	\N	\N	\N	2016-09-02 04:24:29.477768	2016-09-02 04:24:29.602144
18	3	shoreditch craft beer sriracha drinking vinegar ramps fanny pack chillwave	18	\N	\N	\N	\N	1	\N	\N	2016-09-02 04:44:53.748936	2016-09-02 04:44:53.767605
19	4	Pork belly synth kale chips cronut cray, everyday carry schlitz.	18	\N	\N	1	\N	\N	\N	\N	2016-09-02 05:17:43.836608	2016-09-02 05:17:43.868316
20	4	Tousled chicharrones selvage, hoodie	18	\N	\N	\N	\N	\N	\N	2	2016-09-02 05:50:04.653002	2016-09-02 05:50:04.927828
82	4	Nice product john...	18	\N	\N	\N	\N	3	\N	\N	2016-10-03 19:52:46.228118	2016-10-03 19:52:46.279226
21	5	IY man braid keytar kinfolk taxidermy ethical. Art party photo booth taxidermy	19	\N	\N	\N	\N	\N	2	\N	2016-09-02 06:13:06.951618	2016-09-02 06:13:06.98281
22	4	master cleanse deep v tote bag butcher beard chia VHS. Pug brooklyn celiac 8-bit gluten	19	\N	\N	\N	4	\N	\N	\N	2016-09-02 06:26:44.843653	2016-09-02 06:26:44.866162
23	5	hoodie stumptown ennui seitan banh mi flannel fashion axe flexitarian pabst bespoke bushwick	19	18	\N	\N	\N	\N	\N	\N	2016-09-02 06:28:55.448692	2016-09-02 06:28:55.468935
24	4	You need a little dummy text for your mockup? How quaint.	19	11	\N	\N	\N	\N	\N	\N	2016-09-04 00:22:13.920354	2016-09-04 00:22:13.968477
74	4	Once 7 years old	18	11	\N	\N	\N	\N	\N	\N	2016-09-18 15:57:43.599944	2016-09-18 15:57:43.642197
79	5	Yooo	18	\N	\N	\N	\N	\N	6	\N	2016-09-18 19:15:24.380043	2016-09-18 19:15:24.399801
\.


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('reviews_id_seq', 82, true);


--
-- Data for Name: revrests; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY revrests (id, content, theme_id, created_at, updated_at, code_id, graphic_id, font_id, t3d_id, course_id, videofx_id) FROM stdin;
6	Normcore crucifix tattooed skateboard. Forage waistcoat wayfarers skateboard, kinfolk helvetica 	10	2016-08-19 18:10:57.022432	2016-08-19 18:10:57.022432	\N	\N	\N	\N	\N	\N
7	Pickled kombucha leggings shoreditch squid, meggings meh tousled austin pork belly. 	14	2016-08-19 18:13:58.282235	2016-08-19 18:13:58.282235	\N	\N	\N	\N	\N	\N
8	Cronut four dollar toast brooklyn quinoa trust fund squid, normcore franzen.	18	2016-08-19 18:18:12.715597	2016-08-19 18:18:12.715597	\N	\N	\N	\N	\N	\N
11	Chia tousled waistcoat man bun sartorial butcher, aesthetic celiac pop-up chambray actually fixie yr typewriter.	11	2016-08-19 18:29:36.802516	2016-08-19 18:29:36.802516	\N	\N	\N	\N	\N	\N
19	Gastropub +1 actually quinoa hashtag, tote bag tacos cronut kombucha bitters cold-pressed chia celiac asymmetrical.	\N	2016-08-21 04:26:04.075107	2016-08-21 04:26:04.075107	\N	\N	\N	3	\N	\N
21	There are a few common things you should keep in mind regardless of which way you end up including Video.js in your project. The core codebase uses a few modern features of Javascript (ES5), so if you'd like to support IE8 you'll need to include an ES5 shim. To make things easier, we created a single file you can include for IE8 support. No matter where the core Video.js library is placed, this file needs to be located in the <head> of the document.	\N	2016-08-21 13:12:59.943943	2016-08-21 13:12:59.943943	\N	\N	\N	\N	\N	4
34	Salvia selfies crucifix vegan pop-up kickstarter. Celiac ennui lumbersexual tilde, readymade yr sustainable. 	\N	2016-08-29 19:16:54.488508	2016-08-29 19:16:54.488508	\N	\N	\N	2	\N	\N
35	Given an attributes hash, instantiate returns a new instance of the appropriate class. Accepts only keys as strings.	\N	2016-08-31 10:22:33.254708	2016-08-31 10:22:33.254708	\N	2	\N	\N	\N	\N
37	Pork belly synth kale chips cronut cray, everyday carry schlitz.	\N	2016-09-02 05:17:01.606084	2016-09-02 05:17:01.606084	\N	\N	1	\N	\N	\N
39	This little girl can speak 22 different languages, speaks good enaugh to sell post cards	20	2016-09-04 00:03:36.153769	2016-09-04 00:03:36.153769	\N	\N	\N	\N	\N	\N
41	Swag cardigan waistcoat tofu 8-bit helvetica you probably haven't heard of them	\N	2016-09-06 16:48:51.453882	2016-09-06 16:48:51.453882	14	\N	\N	\N	\N	\N
42	Swag cardigan waistcoat tofu 8-bit helvetica you probably haven't heard of them	\N	2016-09-06 17:26:16.885646	2016-09-06 17:26:16.885646	9	\N	\N	\N	\N	\N
43	Blue bottle mixtape literally food truck, synth skateboard swag shoreditch PBR&B ennui chicharrones actually normcore	\N	2016-09-07 09:45:05.349024	2016-09-07 09:45:05.349024	\N	\N	\N	\N	3	\N
45	sriracha bushwick. Selfies taxidermy godard mustache	\N	2016-09-07 10:20:01.026889	2016-09-07 10:20:01.026889	\N	\N	\N	\N	1	\N
46	sriracha bushwick. Selfies taxidermy godard mustache	\N	2016-09-07 17:54:21.687217	2016-09-07 17:54:21.687217	\N	\N	4	\N	\N	\N
48	 Kogi migas trust fund, small batch godard selfies copper mug raclette cornhole	\N	2016-09-07 19:49:08.194548	2016-09-07 19:49:08.194548	\N	3	\N	\N	\N	\N
50	Add a professional touch to your game project with this low poly, hand painted dungeon	\N	2016-09-08 03:24:48.240872	2016-09-08 03:24:48.240872	\N	\N	\N	6	\N	\N
52	To achieve the look as seen on the preview images the models need to be self illuminated (flat shaded) to some degree in what ever 3D software or engine you are using. They come in a range of formats that will easily import to all major 3D software packages or game engines out there.	\N	2016-09-08 03:28:07.216668	2016-09-08 03:28:07.216668	\N	\N	\N	5	\N	\N
53	Asymmetrical twee fingerstache kinfolk +1 microdosing. Pinterest williamsburg knausgaard yr lo-fi. 	\N	2016-09-08 09:43:49.958094	2016-09-08 09:43:49.958094	\N	\N	\N	\N	\N	3
54	 Bitters sriracha helvetica, biodiesel street art tattooed tilde butcher tumeric woke lo-fi cornhole health goth la croix mumblecore. Subway tile cronut viral yr.	\N	2016-09-08 09:44:16.022261	2016-09-08 09:44:16.022261	\N	\N	\N	\N	\N	5
\.


--
-- Name: revrests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('revrests_id_seq', 55, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY schema_migrations (version) FROM stdin;
20160531032259
20160531032359
20160531053932
20160531162022
20160602164606
20160603164201
20160603170641
20160603170927
20160603171525
20160603171742
20160603172244
20160603175817
20160603180017
20160604070227
20160604070903
20160605142125
20160605172759
20160605172951
20160606101219
20160607060740
20160607074142
20160607095107
20160608090525
20160608090857
20160608140507
20160610051345
20160610053213
20160610054219
20160611041859
20160611102002
20160613091549
20160628101324
20160628104350
20160628173413
20160628174346
20160703131203
20160703131401
20160705140047
20160705140336
20160705140938
20160705142631
20160707161220
20160708004642
20160708064907
20160709104725
20160709133518
20160710035658
20160710040020
20160710081859
20160710082530
20160715134815
20160716013316
20160716014355
20160717050139
20160719130120
20160719144133
20160720074206
20160720104258
20160721045057
20160721080751
20160721091648
20160723042831
20160723043355
20160723074307
20160723075302
20160723080245
20160723141709
20160724015739
20160724023015
20160724062700
20160725140132
20160725141402
20160726023452
20160726024414
20160726031845
20160726032234
20160726033236
20160726033348
20160726145937
20160726150541
20160726162039
20160728092624
20160728130829
20160728131127
20160728131519
20160728132803
20160728133757
20160728135731
20160728140737
20160728141640
20160728144352
20160729140344
20160803062922
20160803062923
20160804153731
20160806035012
20160806042635
20160806043650
20160806111939
20160807055130
20160807070834
20160807071154
20160807081644
20160807081737
20160807100040
20160807114030
20160807135451
20160808030303
20160808140845
20160808143216
20160811055129
20160811055943
20160811055936
20160811060455
20160811070149
20160811070150
20160811070151
20160814063221
20160814065013
20160817092748
20160817093324
20160817093642
20160817094033
20160817104759
20160819161553
20160819162248
20160820082123
20160820093246
20160820162505
20160823130521
20160901170404
20160902081344
20160902081435
20160903095750
20160904165518
20160904170756
20160906051024
20160906051928
20160906192520
20160907170750
20160909125847
20160911101423
20160911101619
20160911103150
20160911184403
20160911185334
20160913030601
20160913031127
20160913042023
20160913152021
20160913153607
20160913185152
20160914043750
20160915043931
20160916150654
20160920173443
20160920173444
20160920173445
20160920173446
20160922111703
20160922115826
20160923191928
20160925065622
20160925075337
20160925101253
20160926063516
20161003040151
20161003083153
20161016101515
20161016102719
20161104171229
20161104173614
20161105145222
20161106134752
20161106155341
20161106164423
20161106172103
20161106174249
20161106180115
20161106182315
20161110073806
\.


--
-- Data for Name: screenshots; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY screenshots (id, screenshot, theme_id, created_at, updated_at, code_id, graphic_id, t3d_id, videofx_id, font_id) FROM stdin;
66	48c56f2d32be2f615eee7aa14dac949ed8894467e3ff1f50b9.jpg	\N	2016-07-27 03:23:03.556715	2016-07-27 03:23:03.556715	\N	\N	4	\N	\N
67	1b65e90d8117c7f6642a50c4d46a7dca384d316b83d41453eb.jpg	\N	2016-07-27 03:23:03.777403	2016-07-27 03:23:03.777403	\N	\N	4	\N	\N
68	50c8bafa66fb419663c728757df30b69b1fd2f26dda40d7d70.jpg	\N	2016-07-27 03:23:03.894492	2016-07-27 03:23:03.894492	\N	\N	4	\N	\N
74	6d56f6a7e5baef8741f11ccec693cb7706c10f08fcec5e130c.jpg	\N	2016-08-02 15:46:16.85117	2016-08-02 15:46:16.85117	\N	\N	\N	4	\N
75	1ee0751098b4dd3851652f3fc1cd54e74350945770435b0b59.jpg	\N	2016-08-02 15:59:02.370435	2016-08-02 15:59:02.370435	\N	\N	\N	3	\N
78	c66a0446930834cc0eb72e65d2000771114b2e1cfe7eb9583b.png	\N	2016-08-02 16:19:51.810781	2016-08-02 16:19:51.810781	\N	\N	\N	1	\N
85	f496d07dfb982cdcf5f5ac29aa1e5efb7531ef81005e0fb778.jpg	15	2016-08-20 05:55:33.25624	2016-08-20 05:55:33.25624	\N	\N	\N	\N	\N
86	5af8b6c472aed51e79d69ee8efdb9bf65bec2f66ad372fe65e.png	15	2016-08-20 05:55:33.358278	2016-08-20 05:55:33.358278	\N	\N	\N	\N	\N
237	a6d288f013bad78799cac5e9027d9353572cc2f158eb4adca5.png	\N	2016-08-29 18:31:18.969685	2016-08-29 18:31:18.969685	13	\N	\N	\N	\N
238	cea3d1bf1a1dae1ed52472908fa6e8fec8135de370c750a3fe.png	\N	2016-08-29 18:31:19.120886	2016-08-29 18:31:19.120886	13	\N	\N	\N	\N
248	f572e0862834a8cbb8484d7d6a9d5dd3d38956e8b9cc7270f5.png	20	2016-09-04 03:30:55.218142	2016-09-04 03:30:55.218142	\N	\N	\N	\N	\N
249	9534b14b08f525f20e60e55a1215d1c866d56909449d040bed.png	10	2016-09-04 03:32:22.912059	2016-09-04 03:32:22.912059	\N	\N	\N	\N	\N
250	8f337052dc4637502a37c0bfe657c5c8460222715ef9936220.png	14	2016-09-04 03:32:46.745424	2016-09-04 03:32:46.745424	\N	\N	\N	\N	\N
251	8b34f357269592d1a723b665a9c5f7931175b8cf2b23ef4419.png	\N	2016-09-04 03:33:11.440368	2016-09-04 03:33:11.440368	9	\N	\N	\N	\N
252	bf51b21fb93d9332c14b3b12f2a504b56a81b765eb938dbc93.png	\N	2016-09-04 03:33:37.232111	2016-09-04 03:33:37.232111	\N	\N	3	\N	\N
253	0319971ac71c18df58c29cf101f2c9d6bbf4f1160b34294ffa.png	\N	2016-09-04 03:34:05.103607	2016-09-04 03:34:05.103607	\N	\N	2	\N	\N
254	3d1837bcc83cdd90eb550bfbd4aec817a91e67b855b34e89dd.png	\N	2016-09-04 03:37:46.696423	2016-09-04 03:37:46.696423	\N	2	\N	\N	\N
255	44dac47eb057e34522f6b860ff64dd70a167aa14c2a7d6250c.png	\N	2016-09-04 03:38:09.030733	2016-09-04 03:38:09.030733	\N	\N	\N	\N	1
256	e69762a67906cdad5ceb2e6ec6f642c8019a5a33574dee82a5.png	11	2016-09-04 03:38:50.295568	2016-09-04 03:38:50.295568	\N	\N	\N	\N	\N
257	91f48ba420bff687f55254bf2d8878787a03155da40a21ef07.png	18	2016-09-04 03:39:10.835493	2016-09-04 03:39:10.835493	\N	\N	\N	\N	\N
258	d0ec206c178d30463dc5cda8dac3d82e13e973f6df0e7d1a0d.png	\N	2016-09-06 16:41:13.819995	2016-09-06 16:41:13.819995	14	\N	\N	\N	\N
260	f92f3bb3d69a4ac56bacb0f7a61a569df2e5a96791b19d5c50.png	\N	2016-09-07 17:49:18.450582	2016-09-07 17:49:18.450582	\N	\N	\N	\N	4
262	cc3250db444cfce43d0530e98db6ea78c5114ae84a4f22dc31.png	\N	2016-09-07 19:44:00.213867	2016-09-07 19:44:00.213867	\N	3	\N	\N	\N
264	1562776788f460743bd66d75213b669abb64443cab59d15110.png	\N	2016-09-08 03:13:42.199629	2016-09-08 03:13:42.199629	\N	\N	5	\N	\N
265	9ee087823c84d0db4cdcfebfde3bbf3c9ac6b1534a92aecda0.png	\N	2016-09-08 03:17:51.531832	2016-09-08 03:17:51.531832	\N	\N	6	\N	\N
267	c30cf8f42c00377d31d9610040ce0af6f3f0d12a522ba8df5d.png	23	2016-10-11 11:59:03.646795	2016-10-11 11:59:03.646795	\N	\N	\N	\N	\N
268	9c9491a26d80b8fac29ac49efe499677591e94adcbef5d7834.jpg	\N	2016-10-11 12:28:03.104721	2016-10-11 12:28:03.104721	16	\N	\N	\N	\N
\.


--
-- Name: screenshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('screenshots_id_seq', 269, true);


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY skills (id, name, created_at, updated_at) FROM stdin;
1	Ruby	2016-09-02 09:04:14.284373	2016-09-02 09:04:14.284373
2	Python	2016-09-02 09:04:14.289204	2016-09-02 09:04:14.289204
3	Javascript	2016-09-02 09:04:14.293851	2016-09-02 09:04:14.293851
4	Photoshop	2016-09-02 09:04:14.298666	2016-09-02 09:04:14.298666
5	web design	2016-09-10 01:43:15.133224	2016-09-10 01:43:15.133224
6	english	2016-09-10 01:43:15.151407	2016-09-10 01:43:15.151407
7	animation	2016-09-10 01:43:15.15682	2016-09-10 01:43:15.15682
8	Machine Tools	2016-10-03 13:15:15.187105	2016-10-03 13:15:15.187105
9	semi-skilled mechanic	2016-10-03 14:56:26.551402	2016-10-03 14:56:26.551402
10	fitting equipment	2016-10-03 14:56:26.581274	2016-10-03 14:56:26.581274
11	Vehicle fitter	2016-10-03 15:03:35.030654	2016-10-03 15:03:35.030654
12	Mechanical fitter	2016-10-03 15:03:35.075571	2016-10-03 15:03:35.075571
13	Auto electrics	2016-10-03 15:03:35.117413	2016-10-03 15:03:35.117413
14	specification writing	2016-10-03 15:17:56.056436	2016-10-03 15:17:56.056436
15	database maintenance	2016-10-03 15:17:56.091845	2016-10-03 15:17:56.091845
16	spreadsheets	2016-10-03 15:17:56.120554	2016-10-03 15:17:56.120554
17	Analyst	2016-10-03 15:31:30.688613	2016-10-03 15:31:30.688613
18	Defence	2016-10-03 15:31:30.720907	2016-10-03 15:31:30.720907
19	Trials	2016-10-03 15:31:30.788129	2016-10-03 15:31:30.788129
20	Engineer	2016-10-03 15:31:30.821228	2016-10-03 15:31:30.821228
21	electrician	2016-10-03 16:37:30.967696	2016-10-03 16:37:30.967696
22	service engineer	2016-10-03 16:37:30.998927	2016-10-03 16:37:30.998927
23	electrical	2016-10-03 16:37:31.036591	2016-10-03 16:37:31.036591
24	maintenance	2016-10-03 16:37:31.056274	2016-10-03 16:37:31.056274
25	engineer engineering	2016-10-03 16:37:31.089685	2016-10-03 16:37:31.089685
26	maintenance engineer	2016-10-03 16:37:31.145973	2016-10-03 16:37:31.145973
27	Power	2016-10-03 18:44:40.425448	2016-10-03 18:44:40.425448
28	Schematic	2016-10-03 18:44:40.472251	2016-10-03 18:44:40.472251
29	Design	2016-10-03 18:44:40.516969	2016-10-03 18:44:40.516969
30	Power Electronics Engineer	2016-10-03 18:44:40.570704	2016-10-03 18:44:40.570704
31	Motor Controls	2016-10-03 18:44:40.61562	2016-10-03 18:44:40.61562
32	MOSFETs	2016-10-03 18:44:40.648795	2016-10-03 18:44:40.648795
33	permanent	2016-10-03 18:56:11.306972	2016-10-03 18:56:11.306972
34	recruitment	2016-10-03 18:56:11.344464	2016-10-03 18:56:11.344464
\.


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('skills_id_seq', 34, true);


--
-- Data for Name: social_networks; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY social_networks (id, behance, deviant, digg, facebook, dribbble, flickr, github, linkedin, youtube, twitter, tumblr, created_at, updated_at, user_id) FROM stdin;
1		dgdfg	hghh	tyury	hfghfgh	hfhghfh	https://github.com/pramayu/rubyonrails.envclone/blob/master/app/views/comments/_form.html.erb	erwererer	hkhjkjk	hjghj	uuyutyu	2016-07-05 06:51:14.214971	2016-07-06 09:08:23.999506	18
3	dadadadd		hghh									2016-07-07 09:40:51.927865	2016-07-07 09:45:21.857646	19
2												2016-07-05 07:54:38.37743	2016-07-07 09:54:46.455382	20
\.


--
-- Name: social_networks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('social_networks_id_seq', 3, true);


--
-- Data for Name: softopen3ds; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY softopen3ds (id, name, created_at, updated_at) FROM stdin;
1	3DS Max 7	2016-07-25 14:45:07.663051	2016-07-25 14:45:07.663051
2	3DS Max 8	2016-07-25 14:45:07.676286	2016-07-25 14:45:07.676286
3	3DS Max 9	2016-07-25 14:45:07.680587	2016-07-25 14:45:07.680587
4	3DS Max 2008	2016-07-25 14:45:07.683998	2016-07-25 14:45:07.683998
5	3DS Max 2009	2016-07-25 14:45:07.687601	2016-07-25 14:45:07.687601
6	3DS Max 2010	2016-07-25 14:45:07.691116	2016-07-25 14:45:07.691116
7	3DS Max 2011	2016-07-25 14:45:07.695687	2016-07-25 14:45:07.695687
8	3DS Max 2012	2016-07-25 14:45:07.699324	2016-07-25 14:45:07.699324
9	3DS Max 2013	2016-07-25 14:45:07.702667	2016-07-25 14:45:07.702667
10	3DS Max 2014	2016-07-25 14:45:07.705962	2016-07-25 14:45:07.705962
11	3DS Max 2015	2016-07-25 14:45:07.709529	2016-07-25 14:45:07.709529
12	3DS Max 2016	2016-07-25 14:45:07.713372	2016-07-25 14:45:07.713372
13	Cinema 4D r10	2016-07-25 14:45:07.716652	2016-07-25 14:45:07.716652
14	Cinema 4D r10.5	2016-07-25 14:45:07.721028	2016-07-25 14:45:07.721028
15	Cinema 4D r11	2016-07-25 14:45:07.724543	2016-07-25 14:45:07.724543
16	Cinema 4D r11.5	2016-07-25 14:45:07.727741	2016-07-25 14:45:07.727741
17	Cinema 4D r12	2016-07-25 14:45:07.731485	2016-07-25 14:45:07.731485
18	Cinema 4D r13	2016-07-25 14:45:07.735207	2016-07-25 14:45:07.735207
19	Cinema 4D r14	2016-07-25 14:45:07.738618	2016-07-25 14:45:07.738618
20	Cinema 4D r15	2016-07-25 14:45:07.742971	2016-07-25 14:45:07.742971
21	Cinema 4D r16	2016-07-25 14:45:07.746553	2016-07-25 14:45:07.746553
22	Cinema 4D r17	2016-07-25 14:45:07.749828	2016-07-25 14:45:07.749828
23	Maya 8	2016-07-25 14:45:07.753308	2016-07-25 14:45:07.753308
24	Maya 8.5	2016-07-25 14:45:07.756734	2016-07-25 14:45:07.756734
25	Maya 2008	2016-07-25 14:45:07.760097	2016-07-25 14:45:07.760097
26	Maya 2009	2016-07-25 14:45:07.763622	2016-07-25 14:45:07.763622
27	Maya 2010	2016-07-25 14:45:07.768669	2016-07-25 14:45:07.768669
28	Maya 2011	2016-07-25 14:45:07.771906	2016-07-25 14:45:07.771906
29	Maya 2012	2016-07-25 14:45:07.77622	2016-07-25 14:45:07.77622
30	Maya 2013	2016-07-25 14:45:07.779533	2016-07-25 14:45:07.779533
31	Maya 2014	2016-07-25 14:45:07.782455	2016-07-25 14:45:07.782455
32	Maya 2015	2016-07-25 14:45:07.786062	2016-07-25 14:45:07.786062
33	Maya 2016	2016-07-25 14:45:07.790182	2016-07-25 14:45:07.790182
34	Softimage 6	2016-07-25 14:45:07.793346	2016-07-25 14:45:07.793346
35	Softimage 7	2016-07-25 14:45:07.797113	2016-07-25 14:45:07.797113
36	Softimage 7.5	2016-07-25 14:45:07.80171	2016-07-25 14:45:07.80171
37	Softimage 2013	2016-07-25 14:45:07.805465	2016-07-25 14:45:07.805465
38	Softimage 2014	2016-07-25 14:45:07.809137	2016-07-25 14:45:07.809137
39	Softimage 2015	2016-07-25 14:45:07.812339	2016-07-25 14:45:07.812339
40	Lightwave 3D 8	2016-07-25 14:45:07.815683	2016-07-25 14:45:07.815683
41	Lightwave 8.5	2016-07-25 14:45:07.828409	2016-07-25 14:45:07.828409
42	Lightwave 9	2016-07-25 14:45:07.832091	2016-07-25 14:45:07.832091
43	Lightwave 11	2016-07-25 14:45:07.835803	2016-07-25 14:45:07.835803
44	Lightwave 11.5	2016-07-25 14:45:07.839914	2016-07-25 14:45:07.839914
45	Lightwave 11.6	2016-07-25 14:45:07.843485	2016-07-25 14:45:07.843485
46	Lightwave 2015	2016-07-25 14:45:07.858238	2016-07-25 14:45:07.858238
47	Photoshop	2016-07-25 14:45:07.861718	2016-07-25 14:45:07.861718
48	trueSpace	2016-07-25 14:45:07.865415	2016-07-25 14:45:07.865415
49	Blender	2016-07-25 14:45:07.868735	2016-07-25 14:45:07.868735
50	Rhino3d	2016-07-25 14:45:07.871954	2016-07-25 14:45:07.871954
51	Gmax	2016-07-25 14:45:07.875648	2016-07-25 14:45:07.875648
52	zbrush 3	2016-07-25 14:45:07.879795	2016-07-25 14:45:07.879795
53	zbrush 3.1	2016-07-25 14:45:07.883017	2016-07-25 14:45:07.883017
54	zbrush 3.5	2016-07-25 14:45:07.886729	2016-07-25 14:45:07.886729
55	zbrush 4	2016-07-25 14:45:07.889889	2016-07-25 14:45:07.889889
56	zbrush 4r2	2016-07-25 14:45:07.893701	2016-07-25 14:45:07.893701
57	zbrush 4r2b	2016-07-25 14:45:07.897464	2016-07-25 14:45:07.897464
58	zbrush 4r7	2016-07-25 14:45:07.900728	2016-07-25 14:45:07.900728
59	Modo 203	2016-07-25 14:45:07.903986	2016-07-25 14:45:07.903986
60	Modo 302	2016-07-25 14:45:07.907812	2016-07-25 14:45:07.907812
61	Modo 401	2016-07-25 14:45:07.911253	2016-07-25 14:45:07.911253
62	Modo 601	2016-07-25 14:45:07.914833	2016-07-25 14:45:07.914833
63	Modo 701	2016-07-25 14:45:07.919029	2016-07-25 14:45:07.919029
64	Modo 801	2016-07-25 14:45:07.922348	2016-07-25 14:45:07.922348
65	Modo 901	2016-07-25 14:45:07.925718	2016-07-25 14:45:07.925718
66	Mudbox	2016-07-25 14:45:07.93109	2016-07-25 14:45:07.93109
67	Poser	2016-07-25 14:45:07.939753	2016-07-25 14:45:07.939753
68	MotionBuilder	2016-07-25 14:45:07.943714	2016-07-25 14:45:07.943714
69	AutoCAD	2016-07-25 14:45:07.950544	2016-07-25 14:45:07.950544
70	Inventor	2016-07-25 14:45:07.954194	2016-07-25 14:45:07.954194
71	Revit	2016-07-25 14:45:07.960443	2016-07-25 14:45:07.960443
72	SketchUp	2016-07-25 14:45:07.965071	2016-07-25 14:45:07.965071
73	Solidworks	2016-07-25 14:45:07.968499	2016-07-25 14:45:07.968499
74	Vue 7	2016-07-25 14:45:07.97267	2016-07-25 14:45:07.97267
75	Vue 8.5	2016-07-25 14:45:07.97632	2016-07-25 14:45:07.97632
76	Vue 8.5 xStream	2016-07-25 14:45:07.980065	2016-07-25 14:45:07.980065
77	Vue 9	2016-07-25 14:45:07.98393	2016-07-25 14:45:07.98393
78	Vue 10	2016-07-25 14:45:07.98732	2016-07-25 14:45:07.98732
79	Vue 11	2016-07-25 14:45:07.991304	2016-07-25 14:45:07.991304
\.


--
-- Name: softopen3ds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('softopen3ds_id_seq', 80, true);


--
-- Data for Name: softopens; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY softopens (id, name, created_at, updated_at) FROM stdin;
1	Adobe CS	2016-07-23 07:49:08.494175	2016-07-23 07:49:08.494175
2	Adobe CS2	2016-07-23 07:49:15.151433	2016-07-23 07:49:15.151433
3	Adobe CS3	2016-07-23 07:49:22.179367	2016-07-23 07:49:22.179367
4	Adobe CS4	2016-07-23 07:49:28.941845	2016-07-23 07:49:28.941845
5	Adobe CS5	2016-07-23 07:49:34.825308	2016-07-23 07:49:34.825308
6	Adobe CS6	2016-07-23 07:49:42.93719	2016-07-23 07:49:42.93719
7	Adobe CC 2104	2016-07-23 07:50:02.055463	2016-07-23 07:50:02.055463
8	Adobe CC 2105	2016-07-23 07:50:08.787062	2016-07-23 07:50:08.787062
9	Corel Draw X3	2016-07-23 07:50:29.469607	2016-07-23 07:50:29.469607
10	Corel Draw X4	2016-07-23 07:50:36.720742	2016-07-23 07:50:36.720742
11	Corel Draw X5	2016-07-23 07:50:44.236402	2016-07-23 07:50:44.236402
12	Corel Draw X6	2016-07-23 07:50:51.1921	2016-07-23 07:50:51.1921
13	Corel Draw X7	2016-07-23 07:50:59.916287	2016-07-23 07:50:59.916287
14	Corel Draw X8	2016-07-23 07:51:07.561121	2016-07-23 07:51:07.561121
15	Corel Draw X9	2016-07-23 07:51:15.948958	2016-07-23 07:51:15.948958
16	Motion 4.0	2016-07-28 14:05:34.831015	2016-07-28 14:05:34.831015
17	Motion 5.0	2016-07-28 14:05:41.316041	2016-07-28 14:05:41.316041
\.


--
-- Name: softopens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('softopens_id_seq', 20, true);


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY states (id, name, country_id, created_at, updated_at) FROM stdin;
1	Alabama	1228	2016-07-03 13:33:08.978914	2016-07-03 13:33:08.978914
2	Alaska	1228	2016-07-03 13:33:08.995223	2016-07-03 13:33:08.995223
3	Arizona	1228	2016-07-03 13:33:08.999513	2016-07-03 13:33:08.999513
4	Arkansas	1228	2016-07-03 13:33:09.00431	2016-07-03 13:33:09.00431
5	California	1228	2016-07-03 13:33:09.008744	2016-07-03 13:33:09.008744
6	Colorado	1228	2016-07-03 13:33:09.012906	2016-07-03 13:33:09.012906
7	Connecticut	1228	2016-07-03 13:33:09.017804	2016-07-03 13:33:09.017804
8	Delaware	1228	2016-07-03 13:33:09.022778	2016-07-03 13:33:09.022778
9	Florida	1228	2016-07-03 13:33:09.026622	2016-07-03 13:33:09.026622
10	Georgia	1228	2016-07-03 13:33:09.030202	2016-07-03 13:33:09.030202
11	Hawaii	1228	2016-07-03 13:33:09.03463	2016-07-03 13:33:09.03463
12	Idaho	1228	2016-07-03 13:33:09.03806	2016-07-03 13:33:09.03806
13	Illinois	1228	2016-07-03 13:33:09.041689	2016-07-03 13:33:09.041689
14	Indiana	1228	2016-07-03 13:33:09.047072	2016-07-03 13:33:09.047072
15	Iowa	1228	2016-07-03 13:33:09.05181	2016-07-03 13:33:09.05181
16	Kansas	1228	2016-07-03 13:33:09.056298	2016-07-03 13:33:09.056298
17	Kentucky	1228	2016-07-03 13:33:09.062711	2016-07-03 13:33:09.062711
18	Louisiana	1228	2016-07-03 13:33:09.067516	2016-07-03 13:33:09.067516
19	Maine	1228	2016-07-03 13:33:09.072512	2016-07-03 13:33:09.072512
20	Maryland	1228	2016-07-03 13:33:09.078679	2016-07-03 13:33:09.078679
21	Massachusetts	1228	2016-07-03 13:33:09.084187	2016-07-03 13:33:09.084187
22	Michigan	1228	2016-07-03 13:33:09.089716	2016-07-03 13:33:09.089716
23	Minnesota	1228	2016-07-03 13:33:09.09505	2016-07-03 13:33:09.09505
24	Mississippi	1228	2016-07-03 13:33:09.10058	2016-07-03 13:33:09.10058
25	Missouri	1228	2016-07-03 13:33:09.106156	2016-07-03 13:33:09.106156
26	Montana	1228	2016-07-03 13:33:09.111017	2016-07-03 13:33:09.111017
27	Nebraska	1228	2016-07-03 13:33:09.116388	2016-07-03 13:33:09.116388
28	Nevada	1228	2016-07-03 13:33:09.122129	2016-07-03 13:33:09.122129
29	New Hampshire	1228	2016-07-03 13:33:09.127172	2016-07-03 13:33:09.127172
30	New Jersey	1228	2016-07-03 13:33:09.132603	2016-07-03 13:33:09.132603
31	New Mexico	1228	2016-07-03 13:33:09.143392	2016-07-03 13:33:09.143392
32	New York	1228	2016-07-03 13:33:09.154662	2016-07-03 13:33:09.154662
33	North Carolina	1228	2016-07-03 13:33:09.164869	2016-07-03 13:33:09.164869
34	North Dakota	1228	2016-07-03 13:33:09.16959	2016-07-03 13:33:09.16959
35	Ohio	1228	2016-07-03 13:33:09.174169	2016-07-03 13:33:09.174169
36	Oklahoma	1228	2016-07-03 13:33:09.180969	2016-07-03 13:33:09.180969
37	Oregon	1228	2016-07-03 13:33:09.185656	2016-07-03 13:33:09.185656
38	Pennsylvania	1228	2016-07-03 13:33:09.190024	2016-07-03 13:33:09.190024
39	Rhode Island	1228	2016-07-03 13:33:09.196124	2016-07-03 13:33:09.196124
40	South Carolina	1228	2016-07-03 13:33:09.201851	2016-07-03 13:33:09.201851
41	South Dakota	1228	2016-07-03 13:33:09.206862	2016-07-03 13:33:09.206862
42	Tennessee	1228	2016-07-03 13:33:09.212191	2016-07-03 13:33:09.212191
43	Texas	1228	2016-07-03 13:33:09.216733	2016-07-03 13:33:09.216733
44	Utah	1228	2016-07-03 13:33:09.221702	2016-07-03 13:33:09.221702
45	Vermont	1228	2016-07-03 13:33:09.227187	2016-07-03 13:33:09.227187
46	Virginia	1228	2016-07-03 13:33:09.231464	2016-07-03 13:33:09.231464
47	Washington	1228	2016-07-03 13:33:09.238271	2016-07-03 13:33:09.238271
48	West Virginia	1228	2016-07-03 13:33:09.242897	2016-07-03 13:33:09.242897
49	Wisconsin	1228	2016-07-03 13:33:09.248282	2016-07-03 13:33:09.248282
50	Wyoming	1228	2016-07-03 13:33:09.252825	2016-07-03 13:33:09.252825
51	District of Columbia	1228	2016-07-03 13:33:09.257799	2016-07-03 13:33:09.257799
52	American Samoa	1228	2016-07-03 13:33:09.262427	2016-07-03 13:33:09.262427
53	Guam	1228	2016-07-03 13:33:09.268393	2016-07-03 13:33:09.268393
54	Northern Mariana Islands	1228	2016-07-03 13:33:09.272955	2016-07-03 13:33:09.272955
55	Puerto Rico	1228	2016-07-03 13:33:09.27847	2016-07-03 13:33:09.27847
56	Virgin Islands	1228	2016-07-03 13:33:09.2837	2016-07-03 13:33:09.2837
57	United States Minor Outlying Islands	1228	2016-07-03 13:33:09.288624	2016-07-03 13:33:09.288624
58	Armed Forces Europe	1228	2016-07-03 13:33:09.29397	2016-07-03 13:33:09.29397
59	Armed Forces Americas	1228	2016-07-03 13:33:09.29847	2016-07-03 13:33:09.29847
60	Armed Forces Pacific	1228	2016-07-03 13:33:09.305972	2016-07-03 13:33:09.305972
61	Alberta	1039	2016-07-03 13:33:09.313057	2016-07-03 13:33:09.313057
62	British Columbia	1039	2016-07-03 13:33:09.318135	2016-07-03 13:33:09.318135
63	Manitoba	1039	2016-07-03 13:33:09.322866	2016-07-03 13:33:09.322866
64	New Brunswick	1039	2016-07-03 13:33:09.329259	2016-07-03 13:33:09.329259
65	Newfoundland and Labrador	1039	2016-07-03 13:33:09.338591	2016-07-03 13:33:09.338591
66	Northwest Territories	1039	2016-07-03 13:33:09.343333	2016-07-03 13:33:09.343333
67	Nova Scotia	1039	2016-07-03 13:33:09.350482	2016-07-03 13:33:09.350482
68	Nunavut	1039	2016-07-03 13:33:09.355505	2016-07-03 13:33:09.355505
69	Ontario	1039	2016-07-03 13:33:09.360726	2016-07-03 13:33:09.360726
70	Prince Edward Island	1039	2016-07-03 13:33:09.371189	2016-07-03 13:33:09.371189
71	Quebec	1039	2016-07-03 13:33:09.38267	2016-07-03 13:33:09.38267
72	Saskatchewan	1039	2016-07-03 13:33:09.389015	2016-07-03 13:33:09.389015
73	Yukon Territory	1039	2016-07-03 13:33:09.394287	2016-07-03 13:33:09.394287
74	Maharashtra	1101	2016-07-03 13:33:09.403201	2016-07-03 13:33:09.403201
75	Karnataka	1101	2016-07-03 13:33:09.408999	2016-07-03 13:33:09.408999
76	Andhra Pradesh	1101	2016-07-03 13:33:09.417026	2016-07-03 13:33:09.417026
77	Arunachal Pradesh	1101	2016-07-03 13:33:09.422173	2016-07-03 13:33:09.422173
78	Assam	1101	2016-07-03 13:33:09.42676	2016-07-03 13:33:09.42676
79	Bihar	1101	2016-07-03 13:33:09.432827	2016-07-03 13:33:09.432827
80	Chhattisgarh	1101	2016-07-03 13:33:09.437835	2016-07-03 13:33:09.437835
81	Goa	1101	2016-07-03 13:33:09.442747	2016-07-03 13:33:09.442747
82	Gujarat	1101	2016-07-03 13:33:09.447125	2016-07-03 13:33:09.447125
83	Haryana	1101	2016-07-03 13:33:09.452998	2016-07-03 13:33:09.452998
84	Himachal Pradesh	1101	2016-07-03 13:33:09.457317	2016-07-03 13:33:09.457317
85	Jammu and Kashmir	1101	2016-07-03 13:33:09.461753	2016-07-03 13:33:09.461753
86	Jharkhand	1101	2016-07-03 13:33:09.466616	2016-07-03 13:33:09.466616
87	Kerala	1101	2016-07-03 13:33:09.472611	2016-07-03 13:33:09.472611
88	Madhya Pradesh	1101	2016-07-03 13:33:09.477409	2016-07-03 13:33:09.477409
89	Manipur	1101	2016-07-03 13:33:09.481807	2016-07-03 13:33:09.481807
90	Meghalaya	1101	2016-07-03 13:33:09.48685	2016-07-03 13:33:09.48685
91	Mizoram	1101	2016-07-03 13:33:09.505754	2016-07-03 13:33:09.505754
92	Nagaland	1101	2016-07-03 13:33:09.50962	2016-07-03 13:33:09.50962
93	Orissa	1101	2016-07-03 13:33:09.514468	2016-07-03 13:33:09.514468
94	Punjab	1101	2016-07-03 13:33:09.51937	2016-07-03 13:33:09.51937
95	Rajasthan	1101	2016-07-03 13:33:09.523475	2016-07-03 13:33:09.523475
96	Sikkim	1101	2016-07-03 13:33:09.52841	2016-07-03 13:33:09.52841
97	Tamil Nadu	1101	2016-07-03 13:33:09.532214	2016-07-03 13:33:09.532214
98	Tripura	1101	2016-07-03 13:33:09.536075	2016-07-03 13:33:09.536075
99	Uttaranchal	1101	2016-07-03 13:33:09.540543	2016-07-03 13:33:09.540543
100	Uttar Pradesh	1101	2016-07-03 13:33:09.544745	2016-07-03 13:33:09.544745
101	West Bengal	1101	2016-07-03 13:33:09.549006	2016-07-03 13:33:09.549006
102	Andaman and Nicobar Islands	1101	2016-07-03 13:33:09.55281	2016-07-03 13:33:09.55281
103	Dadra and Nagar Haveli	1101	2016-07-03 13:33:09.5564	2016-07-03 13:33:09.5564
104	Daman and Diu	1101	2016-07-03 13:33:09.560311	2016-07-03 13:33:09.560311
105	Delhi	1101	2016-07-03 13:33:09.56394	2016-07-03 13:33:09.56394
106	Lakshadweep	1101	2016-07-03 13:33:09.568557	2016-07-03 13:33:09.568557
107	Pondicherry	1101	2016-07-03 13:33:09.572755	2016-07-03 13:33:09.572755
108	Dac Lac	1233	2016-07-03 13:33:09.576115	2016-07-03 13:33:09.576115
109	Badakhshan	1001	2016-07-03 13:33:09.579477	2016-07-03 13:33:09.579477
110	Badghis	1001	2016-07-03 13:33:09.58627	2016-07-03 13:33:09.58627
111	Baghlan	1001	2016-07-03 13:33:09.595149	2016-07-03 13:33:09.595149
112	Balkh	1001	2016-07-03 13:33:09.602471	2016-07-03 13:33:09.602471
113	Bamian	1001	2016-07-03 13:33:09.606628	2016-07-03 13:33:09.606628
114	Farah	1001	2016-07-03 13:33:09.609795	2016-07-03 13:33:09.609795
115	Faryab	1001	2016-07-03 13:33:09.613535	2016-07-03 13:33:09.613535
116	Ghazni	1001	2016-07-03 13:33:09.61759	2016-07-03 13:33:09.61759
117	Ghowr	1001	2016-07-03 13:33:09.621762	2016-07-03 13:33:09.621762
118	Helmand	1001	2016-07-03 13:33:09.626533	2016-07-03 13:33:09.626533
119	Herat	1001	2016-07-03 13:33:09.630415	2016-07-03 13:33:09.630415
120	Jowzjan	1001	2016-07-03 13:33:09.634086	2016-07-03 13:33:09.634086
121	Kabul	1001	2016-07-03 13:33:09.638996	2016-07-03 13:33:09.638996
122	Kandahar	1001	2016-07-03 13:33:09.643104	2016-07-03 13:33:09.643104
123	Kapisa	1001	2016-07-03 13:33:09.647102	2016-07-03 13:33:09.647102
124	Khowst	1001	2016-07-03 13:33:09.650804	2016-07-03 13:33:09.650804
125	Konar	1001	2016-07-03 13:33:09.655347	2016-07-03 13:33:09.655347
126	Kondoz	1001	2016-07-03 13:33:09.6593	2016-07-03 13:33:09.6593
127	Laghman	1001	2016-07-03 13:33:09.662731	2016-07-03 13:33:09.662731
128	Lowgar	1001	2016-07-03 13:33:09.666655	2016-07-03 13:33:09.666655
129	Nangrahar	1001	2016-07-03 13:33:09.670121	2016-07-03 13:33:09.670121
130	Nimruz	1001	2016-07-03 13:33:09.673482	2016-07-03 13:33:09.673482
131	Nurestan	1001	2016-07-03 13:33:09.677779	2016-07-03 13:33:09.677779
132	Oruzgan	1001	2016-07-03 13:33:09.68106	2016-07-03 13:33:09.68106
133	Paktia	1001	2016-07-03 13:33:09.684519	2016-07-03 13:33:09.684519
134	Paktika	1001	2016-07-03 13:33:09.68803	2016-07-03 13:33:09.68803
135	Parwan	1001	2016-07-03 13:33:09.691458	2016-07-03 13:33:09.691458
136	Samangan	1001	2016-07-03 13:33:09.694825	2016-07-03 13:33:09.694825
137	Sar-e Pol	1001	2016-07-03 13:33:09.699422	2016-07-03 13:33:09.699422
138	Takhar	1001	2016-07-03 13:33:09.702743	2016-07-03 13:33:09.702743
139	Wardak	1001	2016-07-03 13:33:09.706197	2016-07-03 13:33:09.706197
140	Zabol	1001	2016-07-03 13:33:09.710631	2016-07-03 13:33:09.710631
141	Capital federal	1010	2016-07-03 13:33:09.714236	2016-07-03 13:33:09.714236
142	Buenos Aires	1010	2016-07-03 13:33:09.719308	2016-07-03 13:33:09.719308
143	Catamarca	1010	2016-07-03 13:33:09.723127	2016-07-03 13:33:09.723127
144	Cordoba	1010	2016-07-03 13:33:09.726655	2016-07-03 13:33:09.726655
145	Corrientes	1010	2016-07-03 13:33:09.731123	2016-07-03 13:33:09.731123
146	Chaco	1010	2016-07-03 13:33:09.73504	2016-07-03 13:33:09.73504
147	Chubut	1010	2016-07-03 13:33:09.738575	2016-07-03 13:33:09.738575
148	Entre Rios	1010	2016-07-03 13:33:09.743018	2016-07-03 13:33:09.743018
149	Formosa	1010	2016-07-03 13:33:09.746717	2016-07-03 13:33:09.746717
150	Jujuy	1010	2016-07-03 13:33:09.75014	2016-07-03 13:33:09.75014
151	La Pampa	1010	2016-07-03 13:33:09.753528	2016-07-03 13:33:09.753528
152	Mendoza	1010	2016-07-03 13:33:09.758181	2016-07-03 13:33:09.758181
153	Misiones	1010	2016-07-03 13:33:09.761651	2016-07-03 13:33:09.761651
154	Neuquen	1010	2016-07-03 13:33:09.76587	2016-07-03 13:33:09.76587
155	Rio Negro	1010	2016-07-03 13:33:09.769306	2016-07-03 13:33:09.769306
156	Salta	1010	2016-07-03 13:33:09.773588	2016-07-03 13:33:09.773588
157	San Juan	1010	2016-07-03 13:33:09.777264	2016-07-03 13:33:09.777264
158	San Luis	1010	2016-07-03 13:33:09.78068	2016-07-03 13:33:09.78068
159	Santa Cruz	1010	2016-07-03 13:33:09.784187	2016-07-03 13:33:09.784187
160	Santa Fe	1010	2016-07-03 13:33:09.787583	2016-07-03 13:33:09.787583
161	Santiago del Estero	1010	2016-07-03 13:33:09.791167	2016-07-03 13:33:09.791167
162	Tierra del Fuego	1010	2016-07-03 13:33:09.795464	2016-07-03 13:33:09.795464
163	Tucuman	1010	2016-07-03 13:33:09.798868	2016-07-03 13:33:09.798868
164	Burgenland	1014	2016-07-03 13:33:09.802372	2016-07-03 13:33:09.802372
165	Kärnten	1014	2016-07-03 13:33:09.811736	2016-07-03 13:33:09.811736
166	Niederosterreich	1014	2016-07-03 13:33:09.827655	2016-07-03 13:33:09.827655
167	Oberosterreich	1014	2016-07-03 13:33:09.832653	2016-07-03 13:33:09.832653
168	Salzburg	1014	2016-07-03 13:33:09.836157	2016-07-03 13:33:09.836157
169	Steiermark	1014	2016-07-03 13:33:09.840205	2016-07-03 13:33:09.840205
170	Tirol	1014	2016-07-03 13:33:09.844426	2016-07-03 13:33:09.844426
171	Vorarlberg	1014	2016-07-03 13:33:09.84822	2016-07-03 13:33:09.84822
172	Wien	1014	2016-07-03 13:33:09.851789	2016-07-03 13:33:09.851789
173	Australian Capital Territory	1013	2016-07-03 13:33:09.855073	2016-07-03 13:33:09.855073
174	Northern Territory	1013	2016-07-03 13:33:09.859715	2016-07-03 13:33:09.859715
175	New South Wales	1013	2016-07-03 13:33:09.863285	2016-07-03 13:33:09.863285
176	Queensland	1013	2016-07-03 13:33:09.866533	2016-07-03 13:33:09.866533
177	South Australia	1013	2016-07-03 13:33:09.870916	2016-07-03 13:33:09.870916
178	Tasmania	1013	2016-07-03 13:33:09.875096	2016-07-03 13:33:09.875096
179	Victoria	1013	2016-07-03 13:33:09.878465	2016-07-03 13:33:09.878465
180	Western Australia	1013	2016-07-03 13:33:09.881619	2016-07-03 13:33:09.881619
181	Antwerpen	1020	2016-07-03 13:33:09.886482	2016-07-03 13:33:09.886482
182	Brabant Wallon	1020	2016-07-03 13:33:09.890602	2016-07-03 13:33:09.890602
183	Hainaut	1020	2016-07-03 13:33:09.894324	2016-07-03 13:33:09.894324
184	Liege	1020	2016-07-03 13:33:09.902944	2016-07-03 13:33:09.902944
185	Limburg	1020	2016-07-03 13:33:09.908537	2016-07-03 13:33:09.908537
186	Luxembourg	1020	2016-07-03 13:33:09.912174	2016-07-03 13:33:09.912174
187	Namur	1020	2016-07-03 13:33:09.916176	2016-07-03 13:33:09.916176
188	Oost-Vlaanderen	1020	2016-07-03 13:33:09.923536	2016-07-03 13:33:09.923536
189	Vlaams-Brabant	1020	2016-07-03 13:33:09.927472	2016-07-03 13:33:09.927472
190	West-Vlaanderen	1020	2016-07-03 13:33:09.931138	2016-07-03 13:33:09.931138
191	Cochabamba	1025	2016-07-03 13:33:09.934619	2016-07-03 13:33:09.934619
192	Chuquisaca	1025	2016-07-03 13:33:09.939129	2016-07-03 13:33:09.939129
193	El Beni	1025	2016-07-03 13:33:09.942774	2016-07-03 13:33:09.942774
194	La Paz	1025	2016-07-03 13:33:09.94611	2016-07-03 13:33:09.94611
195	Oruro	1025	2016-07-03 13:33:09.949426	2016-07-03 13:33:09.949426
196	Pando	1025	2016-07-03 13:33:09.953705	2016-07-03 13:33:09.953705
197	Potosi	1025	2016-07-03 13:33:09.957245	2016-07-03 13:33:09.957245
198	Tarija	1025	2016-07-03 13:33:09.960394	2016-07-03 13:33:09.960394
199	Acre	1029	2016-07-03 13:33:09.964409	2016-07-03 13:33:09.964409
200	Alagoas	1029	2016-07-03 13:33:09.968028	2016-07-03 13:33:09.968028
201	Amazonas	1029	2016-07-03 13:33:09.971463	2016-07-03 13:33:09.971463
202	Amapa	1029	2016-07-03 13:33:09.974788	2016-07-03 13:33:09.974788
203	Baia	1029	2016-07-03 13:33:09.979065	2016-07-03 13:33:09.979065
204	Ceara	1029	2016-07-03 13:33:09.983252	2016-07-03 13:33:09.983252
205	Distrito Federal	1029	2016-07-03 13:33:09.986555	2016-07-03 13:33:09.986555
206	Espirito Santo	1029	2016-07-03 13:33:09.990067	2016-07-03 13:33:09.990067
207	Fernando de Noronha	1029	2016-07-03 13:33:09.994538	2016-07-03 13:33:09.994538
208	Goias	1029	2016-07-03 13:33:09.998102	2016-07-03 13:33:09.998102
209	Maranhao	1029	2016-07-03 13:33:10.001216	2016-07-03 13:33:10.001216
210	Minas Gerais	1029	2016-07-03 13:33:10.005244	2016-07-03 13:33:10.005244
211	Mato Grosso do Sul	1029	2016-07-03 13:33:10.009539	2016-07-03 13:33:10.009539
212	Mato Grosso	1029	2016-07-03 13:33:10.013488	2016-07-03 13:33:10.013488
213	Para	1029	2016-07-03 13:33:10.016981	2016-07-03 13:33:10.016981
214	Paraiba	1029	2016-07-03 13:33:10.020599	2016-07-03 13:33:10.020599
215	Pernambuco	1029	2016-07-03 13:33:10.024407	2016-07-03 13:33:10.024407
216	Piaui	1029	2016-07-03 13:33:10.029388	2016-07-03 13:33:10.029388
217	Parana	1029	2016-07-03 13:33:10.043588	2016-07-03 13:33:10.043588
218	Rio de Janeiro	1029	2016-07-03 13:33:10.04726	2016-07-03 13:33:10.04726
219	Rio Grande do Norte	1029	2016-07-03 13:33:10.050888	2016-07-03 13:33:10.050888
220	Rondonia	1029	2016-07-03 13:33:10.055573	2016-07-03 13:33:10.055573
221	Roraima	1029	2016-07-03 13:33:10.059335	2016-07-03 13:33:10.059335
222	Rio Grande do Sul	1029	2016-07-03 13:33:10.063085	2016-07-03 13:33:10.063085
223	Santa Catarina	1029	2016-07-03 13:33:10.066358	2016-07-03 13:33:10.066358
224	Sergipe	1029	2016-07-03 13:33:10.070599	2016-07-03 13:33:10.070599
225	Sao Paulo	1029	2016-07-03 13:33:10.074118	2016-07-03 13:33:10.074118
226	Tocatins	1029	2016-07-03 13:33:10.077251	2016-07-03 13:33:10.077251
227	Acklins and Crooked Islands	1212	2016-07-03 13:33:10.08056	2016-07-03 13:33:10.08056
228	Bimini	1212	2016-07-03 13:33:10.084612	2016-07-03 13:33:10.084612
229	Cat Island	1212	2016-07-03 13:33:10.088061	2016-07-03 13:33:10.088061
230	Exuma	1212	2016-07-03 13:33:10.091507	2016-07-03 13:33:10.091507
231	Freeport	1212	2016-07-03 13:33:10.096083	2016-07-03 13:33:10.096083
232	Fresh Creek	1212	2016-07-03 13:33:10.100029	2016-07-03 13:33:10.100029
233	Governor's Harbour	1212	2016-07-03 13:33:10.103821	2016-07-03 13:33:10.103821
234	Green Turtle Cay	1212	2016-07-03 13:33:10.10736	2016-07-03 13:33:10.10736
235	Harbour Island	1212	2016-07-03 13:33:10.111523	2016-07-03 13:33:10.111523
236	High Rock	1212	2016-07-03 13:33:10.116063	2016-07-03 13:33:10.116063
237	Inagua	1212	2016-07-03 13:33:10.119715	2016-07-03 13:33:10.119715
238	Kemps Bay	1212	2016-07-03 13:33:10.123549	2016-07-03 13:33:10.123549
239	Long Island	1212	2016-07-03 13:33:10.127607	2016-07-03 13:33:10.127607
240	Marsh Harbour	1212	2016-07-03 13:33:10.131492	2016-07-03 13:33:10.131492
241	Mayaguana	1212	2016-07-03 13:33:10.135419	2016-07-03 13:33:10.135419
242	New Providence	1212	2016-07-03 13:33:10.14004	2016-07-03 13:33:10.14004
243	Nicholls Town and Berry Islands	1212	2016-07-03 13:33:10.144286	2016-07-03 13:33:10.144286
244	Ragged Island	1212	2016-07-03 13:33:10.148101	2016-07-03 13:33:10.148101
245	Rock Sound	1212	2016-07-03 13:33:10.151888	2016-07-03 13:33:10.151888
246	Sandy Point	1212	2016-07-03 13:33:10.156538	2016-07-03 13:33:10.156538
247	San Salvador and Rum Cay	1212	2016-07-03 13:33:10.160693	2016-07-03 13:33:10.160693
248	Aargau	1205	2016-07-03 13:33:10.16525	2016-07-03 13:33:10.16525
249	Appenzell Innerrhoden	1205	2016-07-03 13:33:10.170333	2016-07-03 13:33:10.170333
250	Appenzell Ausserrhoden	1205	2016-07-03 13:33:10.174855	2016-07-03 13:33:10.174855
251	Bern	1205	2016-07-03 13:33:10.17885	2016-07-03 13:33:10.17885
252	Basel-Landschaft	1205	2016-07-03 13:33:10.182823	2016-07-03 13:33:10.182823
253	Basel-Stadt	1205	2016-07-03 13:33:10.186447	2016-07-03 13:33:10.186447
254	Fribourg	1205	2016-07-03 13:33:10.191088	2016-07-03 13:33:10.191088
255	Geneva	1205	2016-07-03 13:33:10.194831	2016-07-03 13:33:10.194831
256	Glarus	1205	2016-07-03 13:33:10.198741	2016-07-03 13:33:10.198741
257	Graubunden	1205	2016-07-03 13:33:10.20247	2016-07-03 13:33:10.20247
258	Jura	1205	2016-07-03 13:33:10.207471	2016-07-03 13:33:10.207471
259	Luzern	1205	2016-07-03 13:33:10.210971	2016-07-03 13:33:10.210971
260	Neuchatel	1205	2016-07-03 13:33:10.214097	2016-07-03 13:33:10.214097
261	Nidwalden	1205	2016-07-03 13:33:10.218089	2016-07-03 13:33:10.218089
262	Obwalden	1205	2016-07-03 13:33:10.221831	2016-07-03 13:33:10.221831
263	Sankt Gallen	1205	2016-07-03 13:33:10.22579	2016-07-03 13:33:10.22579
264	Schaffhausen	1205	2016-07-03 13:33:10.229455	2016-07-03 13:33:10.229455
265	Solothurn	1205	2016-07-03 13:33:10.234374	2016-07-03 13:33:10.234374
266	Schwyz	1205	2016-07-03 13:33:10.237782	2016-07-03 13:33:10.237782
267	Thurgau	1205	2016-07-03 13:33:10.242663	2016-07-03 13:33:10.242663
268	Ticino	1205	2016-07-03 13:33:10.253041	2016-07-03 13:33:10.253041
269	Uri	1205	2016-07-03 13:33:10.260086	2016-07-03 13:33:10.260086
270	Vaud	1205	2016-07-03 13:33:10.26693	2016-07-03 13:33:10.26693
271	Valais	1205	2016-07-03 13:33:10.273596	2016-07-03 13:33:10.273596
272	Zug	1205	2016-07-03 13:33:10.277252	2016-07-03 13:33:10.277252
273	Zurich	1205	2016-07-03 13:33:10.281795	2016-07-03 13:33:10.281795
274	Aisen del General Carlos Ibanez del Campo	1044	2016-07-03 13:33:10.285274	2016-07-03 13:33:10.285274
275	Antofagasta	1044	2016-07-03 13:33:10.28924	2016-07-03 13:33:10.28924
276	Araucania	1044	2016-07-03 13:33:10.294129	2016-07-03 13:33:10.294129
277	Atacama	1044	2016-07-03 13:33:10.297988	2016-07-03 13:33:10.297988
278	Bio-Bio	1044	2016-07-03 13:33:10.301859	2016-07-03 13:33:10.301859
279	Coquimbo	1044	2016-07-03 13:33:10.305684	2016-07-03 13:33:10.305684
280	Libertador General Bernardo O'Higgins	1044	2016-07-03 13:33:10.310077	2016-07-03 13:33:10.310077
281	Los Lagos	1044	2016-07-03 13:33:10.31508	2016-07-03 13:33:10.31508
282	Magallanes	1044	2016-07-03 13:33:10.319159	2016-07-03 13:33:10.319159
283	Maule	1044	2016-07-03 13:33:10.323754	2016-07-03 13:33:10.323754
284	Region Metropolitana de Santiago	1044	2016-07-03 13:33:10.327416	2016-07-03 13:33:10.327416
285	Tarapaca	1044	2016-07-03 13:33:10.330892	2016-07-03 13:33:10.330892
286	Valparaiso	1044	2016-07-03 13:33:10.334443	2016-07-03 13:33:10.334443
287	Beijing	1045	2016-07-03 13:33:10.339019	2016-07-03 13:33:10.339019
288	Chongqing	1045	2016-07-03 13:33:10.347149	2016-07-03 13:33:10.347149
289	Shanghai	1045	2016-07-03 13:33:10.351735	2016-07-03 13:33:10.351735
290	Tianjin	1045	2016-07-03 13:33:10.355572	2016-07-03 13:33:10.355572
291	Anhui	1045	2016-07-03 13:33:10.359665	2016-07-03 13:33:10.359665
292	Fujian	1045	2016-07-03 13:33:10.365748	2016-07-03 13:33:10.365748
293	Gansu	1045	2016-07-03 13:33:10.36983	2016-07-03 13:33:10.36983
294	Guangdong	1045	2016-07-03 13:33:10.375175	2016-07-03 13:33:10.375175
295	Guizhou	1045	2016-07-03 13:33:10.378663	2016-07-03 13:33:10.378663
296	Hainan	1045	2016-07-03 13:33:10.382733	2016-07-03 13:33:10.382733
297	Hebei	1045	2016-07-03 13:33:10.38733	2016-07-03 13:33:10.38733
298	Heilongjiang	1045	2016-07-03 13:33:10.39391	2016-07-03 13:33:10.39391
299	Henan	1045	2016-07-03 13:33:10.397906	2016-07-03 13:33:10.397906
300	Hubei	1045	2016-07-03 13:33:10.402505	2016-07-03 13:33:10.402505
301	Hunan	1045	2016-07-03 13:33:10.406949	2016-07-03 13:33:10.406949
302	Jiangsu	1045	2016-07-03 13:33:10.41234	2016-07-03 13:33:10.41234
303	Jiangxi	1045	2016-07-03 13:33:10.41608	2016-07-03 13:33:10.41608
304	Jilin	1045	2016-07-03 13:33:10.419438	2016-07-03 13:33:10.419438
305	Liaoning	1045	2016-07-03 13:33:10.422843	2016-07-03 13:33:10.422843
306	Qinghai	1045	2016-07-03 13:33:10.430453	2016-07-03 13:33:10.430453
307	Shaanxi	1045	2016-07-03 13:33:10.436321	2016-07-03 13:33:10.436321
308	Shandong	1045	2016-07-03 13:33:10.440655	2016-07-03 13:33:10.440655
309	Shanxi	1045	2016-07-03 13:33:10.445229	2016-07-03 13:33:10.445229
310	Sichuan	1045	2016-07-03 13:33:10.449767	2016-07-03 13:33:10.449767
311	Taiwan	1045	2016-07-03 13:33:10.455037	2016-07-03 13:33:10.455037
312	Yunnan	1045	2016-07-03 13:33:10.458371	2016-07-03 13:33:10.458371
313	Zhejiang	1045	2016-07-03 13:33:10.463492	2016-07-03 13:33:10.463492
314	Guangxi	1045	2016-07-03 13:33:10.470825	2016-07-03 13:33:10.470825
315	Neia Mongol (mn)	1045	2016-07-03 13:33:10.487351	2016-07-03 13:33:10.487351
316	Xinjiang	1045	2016-07-03 13:33:10.502505	2016-07-03 13:33:10.502505
317	Xizang	1045	2016-07-03 13:33:10.50873	2016-07-03 13:33:10.50873
318	Hong Kong	1045	2016-07-03 13:33:10.512908	2016-07-03 13:33:10.512908
319	Macau	1045	2016-07-03 13:33:10.518115	2016-07-03 13:33:10.518115
320	Distrito Capital de Bogotá	1048	2016-07-03 13:33:10.522532	2016-07-03 13:33:10.522532
321	Amazonea	1048	2016-07-03 13:33:10.529113	2016-07-03 13:33:10.529113
322	Antioquia	1048	2016-07-03 13:33:10.533678	2016-07-03 13:33:10.533678
323	Arauca	1048	2016-07-03 13:33:10.543644	2016-07-03 13:33:10.543644
324	Atlántico	1048	2016-07-03 13:33:10.549365	2016-07-03 13:33:10.549365
325	Bolívar	1048	2016-07-03 13:33:10.555491	2016-07-03 13:33:10.555491
326	Boyacá	1048	2016-07-03 13:33:10.560386	2016-07-03 13:33:10.560386
327	Caldea	1048	2016-07-03 13:33:10.5644	2016-07-03 13:33:10.5644
328	Caquetá	1048	2016-07-03 13:33:10.570244	2016-07-03 13:33:10.570244
329	Casanare	1048	2016-07-03 13:33:10.574437	2016-07-03 13:33:10.574437
330	Cauca	1048	2016-07-03 13:33:10.57852	2016-07-03 13:33:10.57852
331	Cesar	1048	2016-07-03 13:33:10.583755	2016-07-03 13:33:10.583755
332	Córdoba	1048	2016-07-03 13:33:10.588658	2016-07-03 13:33:10.588658
333	Cundinamarca	1048	2016-07-03 13:33:10.593385	2016-07-03 13:33:10.593385
334	Chocó	1048	2016-07-03 13:33:10.60027	2016-07-03 13:33:10.60027
335	Guainía	1048	2016-07-03 13:33:10.604451	2016-07-03 13:33:10.604451
336	Guaviare	1048	2016-07-03 13:33:10.608088	2016-07-03 13:33:10.608088
337	La Guajira	1048	2016-07-03 13:33:10.61376	2016-07-03 13:33:10.61376
338	Magdalena	1048	2016-07-03 13:33:10.61739	2016-07-03 13:33:10.61739
339	Meta	1048	2016-07-03 13:33:10.627366	2016-07-03 13:33:10.627366
340	Nariño	1048	2016-07-03 13:33:10.635895	2016-07-03 13:33:10.635895
341	Norte de Santander	1048	2016-07-03 13:33:10.640735	2016-07-03 13:33:10.640735
342	Putumayo	1048	2016-07-03 13:33:10.647259	2016-07-03 13:33:10.647259
343	Quindio	1048	2016-07-03 13:33:10.651572	2016-07-03 13:33:10.651572
344	Risaralda	1048	2016-07-03 13:33:10.656417	2016-07-03 13:33:10.656417
345	San Andrés, Providencia y Santa Catalina	1048	2016-07-03 13:33:10.66023	2016-07-03 13:33:10.66023
346	Santander	1048	2016-07-03 13:33:10.664084	2016-07-03 13:33:10.664084
347	Sucre	1048	2016-07-03 13:33:10.668154	2016-07-03 13:33:10.668154
348	Tolima	1048	2016-07-03 13:33:10.673673	2016-07-03 13:33:10.673673
349	Valle del Cauca	1048	2016-07-03 13:33:10.677553	2016-07-03 13:33:10.677553
350	Vaupés	1048	2016-07-03 13:33:10.685431	2016-07-03 13:33:10.685431
351	Vichada	1048	2016-07-03 13:33:10.69014	2016-07-03 13:33:10.69014
352	Alajuela	1053	2016-07-03 13:33:10.694755	2016-07-03 13:33:10.694755
353	Cartago	1053	2016-07-03 13:33:10.701708	2016-07-03 13:33:10.701708
354	Guanacaste	1053	2016-07-03 13:33:10.716215	2016-07-03 13:33:10.716215
355	Heredia	1053	2016-07-03 13:33:10.720225	2016-07-03 13:33:10.720225
356	Limon	1053	2016-07-03 13:33:10.723949	2016-07-03 13:33:10.723949
357	Puntarenas	1053	2016-07-03 13:33:10.727358	2016-07-03 13:33:10.727358
358	San Jose	1053	2016-07-03 13:33:10.7308	2016-07-03 13:33:10.7308
359	Baden-Wuerttemberg	1082	2016-07-03 13:33:10.734997	2016-07-03 13:33:10.734997
360	Bayern	1082	2016-07-03 13:33:10.738354	2016-07-03 13:33:10.738354
361	Bremen	1082	2016-07-03 13:33:10.74203	2016-07-03 13:33:10.74203
362	Hamburg	1082	2016-07-03 13:33:10.745212	2016-07-03 13:33:10.745212
363	Hessen	1082	2016-07-03 13:33:10.749255	2016-07-03 13:33:10.749255
364	Niedersachsen	1082	2016-07-03 13:33:10.753062	2016-07-03 13:33:10.753062
365	Nordrhein-Westfalen	1082	2016-07-03 13:33:10.756523	2016-07-03 13:33:10.756523
366	Rheinland-Pfalz	1082	2016-07-03 13:33:10.759886	2016-07-03 13:33:10.759886
367	Saarland	1082	2016-07-03 13:33:10.763381	2016-07-03 13:33:10.763381
368	Schleswig-Holstein	1082	2016-07-03 13:33:10.766635	2016-07-03 13:33:10.766635
369	Berlin	1082	2016-07-03 13:33:10.770716	2016-07-03 13:33:10.770716
370	Brandenburg	1082	2016-07-03 13:33:10.774466	2016-07-03 13:33:10.774466
371	Mecklenburg-Vorpommern	1082	2016-07-03 13:33:10.778255	2016-07-03 13:33:10.778255
372	Sachsen	1082	2016-07-03 13:33:10.782702	2016-07-03 13:33:10.782702
373	Sachsen-Anhalt	1082	2016-07-03 13:33:10.786137	2016-07-03 13:33:10.786137
374	Thueringen	1082	2016-07-03 13:33:10.790536	2016-07-03 13:33:10.790536
375	Distrito Nacional (Santo Domingo)	1062	2016-07-03 13:33:10.794043	2016-07-03 13:33:10.794043
376	Azua	1062	2016-07-03 13:33:10.79862	2016-07-03 13:33:10.79862
377	Bahoruco	1062	2016-07-03 13:33:10.802206	2016-07-03 13:33:10.802206
378	Barahona	1062	2016-07-03 13:33:10.806213	2016-07-03 13:33:10.806213
379	Dajabón	1062	2016-07-03 13:33:10.810313	2016-07-03 13:33:10.810313
380	Duarte	1062	2016-07-03 13:33:10.813565	2016-07-03 13:33:10.813565
381	El Seybo [El Seibo]	1062	2016-07-03 13:33:10.817841	2016-07-03 13:33:10.817841
382	Espaillat	1062	2016-07-03 13:33:10.821573	2016-07-03 13:33:10.821573
383	Hato Mayor	1062	2016-07-03 13:33:10.826231	2016-07-03 13:33:10.826231
384	Independencia	1062	2016-07-03 13:33:10.829404	2016-07-03 13:33:10.829404
385	La Altagracia	1062	2016-07-03 13:33:10.833566	2016-07-03 13:33:10.833566
386	La Estrelleta [Elias Pina]	1062	2016-07-03 13:33:10.837719	2016-07-03 13:33:10.837719
387	La Romana	1062	2016-07-03 13:33:10.84118	2016-07-03 13:33:10.84118
388	La Vega	1062	2016-07-03 13:33:10.844494	2016-07-03 13:33:10.844494
389	Maroia Trinidad Sánchez	1062	2016-07-03 13:33:10.848668	2016-07-03 13:33:10.848668
390	Monseñor Nouel	1062	2016-07-03 13:33:10.852317	2016-07-03 13:33:10.852317
391	Monte Cristi	1062	2016-07-03 13:33:10.858601	2016-07-03 13:33:10.858601
392	Monte Plata	1062	2016-07-03 13:33:10.863525	2016-07-03 13:33:10.863525
393	Pedernales	1062	2016-07-03 13:33:10.867339	2016-07-03 13:33:10.867339
394	Peravia	1062	2016-07-03 13:33:10.870797	2016-07-03 13:33:10.870797
395	Puerto Plata	1062	2016-07-03 13:33:10.874643	2016-07-03 13:33:10.874643
396	Salcedo	1062	2016-07-03 13:33:10.878319	2016-07-03 13:33:10.878319
397	Samaná	1062	2016-07-03 13:33:10.882601	2016-07-03 13:33:10.882601
398	San Cristóbal	1062	2016-07-03 13:33:10.885775	2016-07-03 13:33:10.885775
399	San Pedro de Macorís	1062	2016-07-03 13:33:10.889928	2016-07-03 13:33:10.889928
400	Sánchez Ramírez	1062	2016-07-03 13:33:10.893216	2016-07-03 13:33:10.893216
401	Santiago	1062	2016-07-03 13:33:10.896644	2016-07-03 13:33:10.896644
402	Santiago Rodríguez	1062	2016-07-03 13:33:10.900598	2016-07-03 13:33:10.900598
403	Valverde	1062	2016-07-03 13:33:10.904345	2016-07-03 13:33:10.904345
404	Ad Daqahllyah	1065	2016-07-03 13:33:10.908147	2016-07-03 13:33:10.908147
405	Al Bahr al Ahmar	1065	2016-07-03 13:33:10.912422	2016-07-03 13:33:10.912422
406	Al Buhayrah	1065	2016-07-03 13:33:10.917638	2016-07-03 13:33:10.917638
407	Al Fayym	1065	2016-07-03 13:33:10.932285	2016-07-03 13:33:10.932285
408	Al Gharbiyah	1065	2016-07-03 13:33:10.935559	2016-07-03 13:33:10.935559
409	Al Iskandarlyah	1065	2016-07-03 13:33:10.940333	2016-07-03 13:33:10.940333
410	Al Isma illyah	1065	2016-07-03 13:33:10.944364	2016-07-03 13:33:10.944364
411	Al Jizah	1065	2016-07-03 13:33:10.948278	2016-07-03 13:33:10.948278
412	Al Minuflyah	1065	2016-07-03 13:33:10.95192	2016-07-03 13:33:10.95192
413	Al Minya	1065	2016-07-03 13:33:10.955777	2016-07-03 13:33:10.955777
414	Al Qahirah	1065	2016-07-03 13:33:10.959447	2016-07-03 13:33:10.959447
415	Al Qalyublyah	1065	2016-07-03 13:33:10.962978	2016-07-03 13:33:10.962978
416	Al Wadi al Jadid	1065	2016-07-03 13:33:10.96713	2016-07-03 13:33:10.96713
417	Ash Sharqiyah	1065	2016-07-03 13:33:10.970831	2016-07-03 13:33:10.970831
418	As Suways	1065	2016-07-03 13:33:10.974358	2016-07-03 13:33:10.974358
419	Aswan	1065	2016-07-03 13:33:10.978754	2016-07-03 13:33:10.978754
420	Asyut	1065	2016-07-03 13:33:10.983088	2016-07-03 13:33:10.983088
421	Bani Suwayf	1065	2016-07-03 13:33:10.986413	2016-07-03 13:33:10.986413
422	Bur Sa'id	1065	2016-07-03 13:33:10.989604	2016-07-03 13:33:10.989604
423	Dumyat	1065	2016-07-03 13:33:10.994633	2016-07-03 13:33:10.994633
424	Janub Sina'	1065	2016-07-03 13:33:10.998096	2016-07-03 13:33:10.998096
425	Kafr ash Shaykh	1065	2016-07-03 13:33:11.001597	2016-07-03 13:33:11.001597
426	Matruh	1065	2016-07-03 13:33:11.006015	2016-07-03 13:33:11.006015
427	Qina	1065	2016-07-03 13:33:11.009845	2016-07-03 13:33:11.009845
428	Shamal Sina'	1065	2016-07-03 13:33:11.013511	2016-07-03 13:33:11.013511
429	Suhaj	1065	2016-07-03 13:33:11.01728	2016-07-03 13:33:11.01728
430	Álava	1198	2016-07-03 13:33:11.021106	2016-07-03 13:33:11.021106
431	Albacete	1198	2016-07-03 13:33:11.024879	2016-07-03 13:33:11.024879
432	Alicante	1198	2016-07-03 13:33:11.028201	2016-07-03 13:33:11.028201
433	Almería	1198	2016-07-03 13:33:11.031456	2016-07-03 13:33:11.031456
434	Asturias	1198	2016-07-03 13:33:11.041705	2016-07-03 13:33:11.041705
435	Ávila	1198	2016-07-03 13:33:11.048344	2016-07-03 13:33:11.048344
436	Badajoz	1198	2016-07-03 13:33:11.051871	2016-07-03 13:33:11.051871
437	Baleares	1198	2016-07-03 13:33:11.057068	2016-07-03 13:33:11.057068
438	Barcelona	1198	2016-07-03 13:33:11.061873	2016-07-03 13:33:11.061873
439	Burgos	1198	2016-07-03 13:33:11.065593	2016-07-03 13:33:11.065593
440	Cáceres	1198	2016-07-03 13:33:11.069912	2016-07-03 13:33:11.069912
441	Cádiz	1198	2016-07-03 13:33:11.073125	2016-07-03 13:33:11.073125
442	Cantabria	1198	2016-07-03 13:33:11.076999	2016-07-03 13:33:11.076999
443	Castellón	1198	2016-07-03 13:33:11.080691	2016-07-03 13:33:11.080691
444	Ciudad Real	1198	2016-07-03 13:33:11.084129	2016-07-03 13:33:11.084129
445	Cuenca	1198	2016-07-03 13:33:11.088605	2016-07-03 13:33:11.088605
446	Girona [Gerona]	1198	2016-07-03 13:33:11.092847	2016-07-03 13:33:11.092847
447	Granada	1198	2016-07-03 13:33:11.096773	2016-07-03 13:33:11.096773
448	Guadalajara	1198	2016-07-03 13:33:11.100616	2016-07-03 13:33:11.100616
449	Guipúzcoa	1198	2016-07-03 13:33:11.104835	2016-07-03 13:33:11.104835
450	Huelva	1198	2016-07-03 13:33:11.10892	2016-07-03 13:33:11.10892
451	Huesca	1198	2016-07-03 13:33:11.112415	2016-07-03 13:33:11.112415
452	Jaén	1198	2016-07-03 13:33:11.116667	2016-07-03 13:33:11.116667
453	La Coruña	1198	2016-07-03 13:33:11.120597	2016-07-03 13:33:11.120597
454	La Rioja	1198	2016-07-03 13:33:11.124893	2016-07-03 13:33:11.124893
455	Las Palmas	1198	2016-07-03 13:33:11.128771	2016-07-03 13:33:11.128771
456	León	1198	2016-07-03 13:33:11.134874	2016-07-03 13:33:11.134874
457	Lleida [Lérida]	1198	2016-07-03 13:33:11.142474	2016-07-03 13:33:11.142474
458	Lugo	1198	2016-07-03 13:33:11.149182	2016-07-03 13:33:11.149182
459	Madrid	1198	2016-07-03 13:33:11.158096	2016-07-03 13:33:11.158096
460	Málaga	1198	2016-07-03 13:33:11.162374	2016-07-03 13:33:11.162374
461	Murcia	1198	2016-07-03 13:33:11.16935	2016-07-03 13:33:11.16935
462	Navarra	1198	2016-07-03 13:33:11.177168	2016-07-03 13:33:11.177168
463	Ourense	1198	2016-07-03 13:33:11.181071	2016-07-03 13:33:11.181071
464	Palencia	1198	2016-07-03 13:33:11.185139	2016-07-03 13:33:11.185139
465	Pontevedra	1198	2016-07-03 13:33:11.188652	2016-07-03 13:33:11.188652
466	Salamanca	1198	2016-07-03 13:33:11.193405	2016-07-03 13:33:11.193405
467	Santa Cruz de Tenerife	1198	2016-07-03 13:33:11.198202	2016-07-03 13:33:11.198202
468	Segovia	1198	2016-07-03 13:33:11.202188	2016-07-03 13:33:11.202188
469	Sevilla	1198	2016-07-03 13:33:11.205761	2016-07-03 13:33:11.205761
470	Soria	1198	2016-07-03 13:33:11.210819	2016-07-03 13:33:11.210819
471	Tarragona	1198	2016-07-03 13:33:11.214961	2016-07-03 13:33:11.214961
472	Teruel	1198	2016-07-03 13:33:11.21834	2016-07-03 13:33:11.21834
473	Valencia	1198	2016-07-03 13:33:11.222916	2016-07-03 13:33:11.222916
474	Valladolid	1198	2016-07-03 13:33:11.227142	2016-07-03 13:33:11.227142
475	Vizcaya	1198	2016-07-03 13:33:11.231357	2016-07-03 13:33:11.231357
476	Zamora	1198	2016-07-03 13:33:11.2352	2016-07-03 13:33:11.2352
477	Zaragoza	1198	2016-07-03 13:33:11.240448	2016-07-03 13:33:11.240448
478	Ceuta	1198	2016-07-03 13:33:11.244232	2016-07-03 13:33:11.244232
479	Melilla	1198	2016-07-03 13:33:11.24784	2016-07-03 13:33:11.24784
480	Eastern	1074	2016-07-03 13:33:11.252441	2016-07-03 13:33:11.252441
481	Northern	1074	2016-07-03 13:33:11.256141	2016-07-03 13:33:11.256141
482	Western	1074	2016-07-03 13:33:11.260087	2016-07-03 13:33:11.260087
483	Rotuma	1074	2016-07-03 13:33:11.263408	2016-07-03 13:33:11.263408
484	Ain	1076	2016-07-03 13:33:11.267569	2016-07-03 13:33:11.267569
485	Aisne	1076	2016-07-03 13:33:11.2715	2016-07-03 13:33:11.2715
486	Allier	1076	2016-07-03 13:33:11.274775	2016-07-03 13:33:11.274775
487	Alpes-de-Haute-Provence	1076	2016-07-03 13:33:11.278986	2016-07-03 13:33:11.278986
488	Alpes-Maritimes	1076	2016-07-03 13:33:11.283112	2016-07-03 13:33:11.283112
489	Ardèche	1076	2016-07-03 13:33:11.287032	2016-07-03 13:33:11.287032
490	Ardennes	1076	2016-07-03 13:33:11.290374	2016-07-03 13:33:11.290374
491	Ariège	1076	2016-07-03 13:33:11.294669	2016-07-03 13:33:11.294669
492	Aube	1076	2016-07-03 13:33:11.298489	2016-07-03 13:33:11.298489
493	Aude	1076	2016-07-03 13:33:11.302705	2016-07-03 13:33:11.302705
494	Aveyron	1076	2016-07-03 13:33:11.306013	2016-07-03 13:33:11.306013
495	Bas-Rhin	1076	2016-07-03 13:33:11.309876	2016-07-03 13:33:11.309876
496	Bouches-du-Rhône	1076	2016-07-03 13:33:11.314467	2016-07-03 13:33:11.314467
497	Calvados	1076	2016-07-03 13:33:11.319061	2016-07-03 13:33:11.319061
498	Cantal	1076	2016-07-03 13:33:11.324668	2016-07-03 13:33:11.324668
499	Charente	1076	2016-07-03 13:33:11.328898	2016-07-03 13:33:11.328898
500	Charente-Maritime	1076	2016-07-03 13:33:11.332551	2016-07-03 13:33:11.332551
501	Cher	1076	2016-07-03 13:33:11.336889	2016-07-03 13:33:11.336889
502	Corrèze	1076	2016-07-03 13:33:11.340776	2016-07-03 13:33:11.340776
503	Corse-du-Sud	1076	2016-07-03 13:33:11.344506	2016-07-03 13:33:11.344506
504	Côte-d'Or	1076	2016-07-03 13:33:11.348149	2016-07-03 13:33:11.348149
505	Côtes-d'Armor	1076	2016-07-03 13:33:11.353167	2016-07-03 13:33:11.353167
506	Creuse	1076	2016-07-03 13:33:11.356912	2016-07-03 13:33:11.356912
507	Deux-Sèvres	1076	2016-07-03 13:33:11.360535	2016-07-03 13:33:11.360535
508	Dordogne	1076	2016-07-03 13:33:11.371435	2016-07-03 13:33:11.371435
509	Doubs	1076	2016-07-03 13:33:11.382655	2016-07-03 13:33:11.382655
510	Drôme	1076	2016-07-03 13:33:11.386761	2016-07-03 13:33:11.386761
511	Essonne	1076	2016-07-03 13:33:11.392295	2016-07-03 13:33:11.392295
512	Eure	1076	2016-07-03 13:33:11.396393	2016-07-03 13:33:11.396393
513	Eure-et-Loir	1076	2016-07-03 13:33:11.400393	2016-07-03 13:33:11.400393
514	Finistère	1076	2016-07-03 13:33:11.404972	2016-07-03 13:33:11.404972
515	Gard	1076	2016-07-03 13:33:11.40883	2016-07-03 13:33:11.40883
516	Gers	1076	2016-07-03 13:33:11.41384	2016-07-03 13:33:11.41384
517	Gironde	1076	2016-07-03 13:33:11.417824	2016-07-03 13:33:11.417824
518	Haut-Rhin	1076	2016-07-03 13:33:11.421754	2016-07-03 13:33:11.421754
519	Haute-Corse	1076	2016-07-03 13:33:11.427136	2016-07-03 13:33:11.427136
520	Haute-Garonne	1076	2016-07-03 13:33:11.431107	2016-07-03 13:33:11.431107
521	Haute-Loire	1076	2016-07-03 13:33:11.435383	2016-07-03 13:33:11.435383
522	Haute-Saône	1076	2016-07-03 13:33:11.439854	2016-07-03 13:33:11.439854
523	Haute-Savoie	1076	2016-07-03 13:33:11.443472	2016-07-03 13:33:11.443472
524	Haute-Vienne	1076	2016-07-03 13:33:11.447333	2016-07-03 13:33:11.447333
525	Hautes-Alpes	1076	2016-07-03 13:33:11.451294	2016-07-03 13:33:11.451294
526	Hautes-Pyrénées	1076	2016-07-03 13:33:11.455797	2016-07-03 13:33:11.455797
527	Hauts-de-Seine	1076	2016-07-03 13:33:11.459801	2016-07-03 13:33:11.459801
528	Hérault	1076	2016-07-03 13:33:11.463477	2016-07-03 13:33:11.463477
529	Indre	1076	2016-07-03 13:33:11.466984	2016-07-03 13:33:11.466984
530	Ille-et-Vilaine	1076	2016-07-03 13:33:11.470343	2016-07-03 13:33:11.470343
531	Indre-et-Loire	1076	2016-07-03 13:33:11.475472	2016-07-03 13:33:11.475472
532	Isère	1076	2016-07-03 13:33:11.479012	2016-07-03 13:33:11.479012
533	Landes	1076	2016-07-03 13:33:11.482246	2016-07-03 13:33:11.482246
534	Loir-et-Cher	1076	2016-07-03 13:33:11.486916	2016-07-03 13:33:11.486916
535	Loire	1076	2016-07-03 13:33:11.491094	2016-07-03 13:33:11.491094
536	Loire-Atlantique	1076	2016-07-03 13:33:11.494583	2016-07-03 13:33:11.494583
537	Loiret	1076	2016-07-03 13:33:11.497687	2016-07-03 13:33:11.497687
538	Lot	1076	2016-07-03 13:33:11.5016	2016-07-03 13:33:11.5016
539	Lot-et-Garonne	1076	2016-07-03 13:33:11.505962	2016-07-03 13:33:11.505962
540	Lozère	1076	2016-07-03 13:33:11.50922	2016-07-03 13:33:11.50922
541	Maine-et-Loire	1076	2016-07-03 13:33:11.512608	2016-07-03 13:33:11.512608
542	Manche	1076	2016-07-03 13:33:11.516401	2016-07-03 13:33:11.516401
543	Marne	1076	2016-07-03 13:33:11.520106	2016-07-03 13:33:11.520106
544	Mayenne	1076	2016-07-03 13:33:11.523483	2016-07-03 13:33:11.523483
545	Meurthe-et-Moselle	1076	2016-07-03 13:33:11.526806	2016-07-03 13:33:11.526806
546	Meuse	1076	2016-07-03 13:33:11.531526	2016-07-03 13:33:11.531526
547	Morbihan	1076	2016-07-03 13:33:11.535612	2016-07-03 13:33:11.535612
548	Moselle	1076	2016-07-03 13:33:11.539137	2016-07-03 13:33:11.539137
549	Nièvre	1076	2016-07-03 13:33:11.542675	2016-07-03 13:33:11.542675
550	Nord	1076	2016-07-03 13:33:11.547607	2016-07-03 13:33:11.547607
551	Oise	1076	2016-07-03 13:33:11.551529	2016-07-03 13:33:11.551529
552	Orne	1076	2016-07-03 13:33:11.555522	2016-07-03 13:33:11.555522
553	Paris	1076	2016-07-03 13:33:11.559471	2016-07-03 13:33:11.559471
554	Pas-de-Calais	1076	2016-07-03 13:33:11.563625	2016-07-03 13:33:11.563625
555	Puy-de-Dôme	1076	2016-07-03 13:33:11.568784	2016-07-03 13:33:11.568784
556	Pyrénées-Atlantiques	1076	2016-07-03 13:33:11.573534	2016-07-03 13:33:11.573534
557	Pyrénées-Orientales	1076	2016-07-03 13:33:11.579348	2016-07-03 13:33:11.579348
558	Rhône	1076	2016-07-03 13:33:11.593938	2016-07-03 13:33:11.593938
559	Saône-et-Loire	1076	2016-07-03 13:33:11.598428	2016-07-03 13:33:11.598428
560	Sarthe	1076	2016-07-03 13:33:11.601774	2016-07-03 13:33:11.601774
561	Savoie	1076	2016-07-03 13:33:11.607989	2016-07-03 13:33:11.607989
562	Seine-et-Marne	1076	2016-07-03 13:33:11.616373	2016-07-03 13:33:11.616373
563	Seine-Maritime	1076	2016-07-03 13:33:11.620699	2016-07-03 13:33:11.620699
564	Seine-Saint-Denis	1076	2016-07-03 13:33:11.625163	2016-07-03 13:33:11.625163
565	Somme	1076	2016-07-03 13:33:11.628867	2016-07-03 13:33:11.628867
566	Tarn	1076	2016-07-03 13:33:11.632369	2016-07-03 13:33:11.632369
567	Tarn-et-Garonne	1076	2016-07-03 13:33:11.635577	2016-07-03 13:33:11.635577
568	Val d'Oise	1076	2016-07-03 13:33:11.639149	2016-07-03 13:33:11.639149
569	Territoire de Belfort	1076	2016-07-03 13:33:11.643345	2016-07-03 13:33:11.643345
570	Val-de-Marne	1076	2016-07-03 13:33:11.64669	2016-07-03 13:33:11.64669
571	Var	1076	2016-07-03 13:33:11.650182	2016-07-03 13:33:11.650182
572	Vaucluse	1076	2016-07-03 13:33:11.654277	2016-07-03 13:33:11.654277
573	Vendée	1076	2016-07-03 13:33:11.65809	2016-07-03 13:33:11.65809
574	Vienne	1076	2016-07-03 13:33:11.661799	2016-07-03 13:33:11.661799
575	Vosges	1076	2016-07-03 13:33:11.666046	2016-07-03 13:33:11.666046
576	Yonne	1076	2016-07-03 13:33:11.66931	2016-07-03 13:33:11.66931
577	Yvelines	1076	2016-07-03 13:33:11.672936	2016-07-03 13:33:11.672936
578	Aberdeen City	1226	2016-07-03 13:33:11.677044	2016-07-03 13:33:11.677044
579	Aberdeenshire	1226	2016-07-03 13:33:11.681006	2016-07-03 13:33:11.681006
580	Angus	1226	2016-07-03 13:33:11.684701	2016-07-03 13:33:11.684701
581	Co Antrim	1226	2016-07-03 13:33:11.688108	2016-07-03 13:33:11.688108
582	Argyll and Bute	1226	2016-07-03 13:33:11.691925	2016-07-03 13:33:11.691925
583	Co Armagh	1226	2016-07-03 13:33:11.695492	2016-07-03 13:33:11.695492
584	Bedfordshire	1226	2016-07-03 13:33:11.698831	2016-07-03 13:33:11.698831
585	Gwent	1226	2016-07-03 13:33:11.702167	2016-07-03 13:33:11.702167
586	Bristol, City of	1226	2016-07-03 13:33:11.706309	2016-07-03 13:33:11.706309
587	Buckinghamshire	1226	2016-07-03 13:33:11.709567	2016-07-03 13:33:11.709567
588	Cambridgeshire	1226	2016-07-03 13:33:11.713284	2016-07-03 13:33:11.713284
589	Cheshire	1226	2016-07-03 13:33:11.717271	2016-07-03 13:33:11.717271
590	Clackmannanshire	1226	2016-07-03 13:33:11.720699	2016-07-03 13:33:11.720699
591	Cornwall	1226	2016-07-03 13:33:11.724227	2016-07-03 13:33:11.724227
592	Cumbria	1226	2016-07-03 13:33:11.727524	2016-07-03 13:33:11.727524
593	Derbyshire	1226	2016-07-03 13:33:11.731112	2016-07-03 13:33:11.731112
594	Co Londonderry	1226	2016-07-03 13:33:11.73497	2016-07-03 13:33:11.73497
595	Devon	1226	2016-07-03 13:33:11.739167	2016-07-03 13:33:11.739167
596	Dorset	1226	2016-07-03 13:33:11.74278	2016-07-03 13:33:11.74278
597	Co Down	1226	2016-07-03 13:33:11.746556	2016-07-03 13:33:11.746556
598	Dumfries and Galloway	1226	2016-07-03 13:33:11.750144	2016-07-03 13:33:11.750144
599	Dundee City	1226	2016-07-03 13:33:11.754821	2016-07-03 13:33:11.754821
600	County Durham	1226	2016-07-03 13:33:11.758178	2016-07-03 13:33:11.758178
601	East Ayrshire	1226	2016-07-03 13:33:11.76141	2016-07-03 13:33:11.76141
602	East Dunbartonshire	1226	2016-07-03 13:33:11.766056	2016-07-03 13:33:11.766056
603	East Lothian	1226	2016-07-03 13:33:11.769661	2016-07-03 13:33:11.769661
604	East Renfrewshire	1226	2016-07-03 13:33:11.773204	2016-07-03 13:33:11.773204
605	East Riding of Yorkshire	1226	2016-07-03 13:33:11.776729	2016-07-03 13:33:11.776729
606	East Sussex	1226	2016-07-03 13:33:11.780417	2016-07-03 13:33:11.780417
607	Edinburgh, City of	1226	2016-07-03 13:33:11.784059	2016-07-03 13:33:11.784059
608	Na h-Eileanan Siar	1226	2016-07-03 13:33:11.788693	2016-07-03 13:33:11.788693
609	Essex	1226	2016-07-03 13:33:11.792232	2016-07-03 13:33:11.792232
610	Falkirk	1226	2016-07-03 13:33:11.797647	2016-07-03 13:33:11.797647
611	Co Fermanagh	1226	2016-07-03 13:33:11.805087	2016-07-03 13:33:11.805087
612	Fife	1226	2016-07-03 13:33:11.815659	2016-07-03 13:33:11.815659
613	Glasgow City	1226	2016-07-03 13:33:11.822062	2016-07-03 13:33:11.822062
614	Gloucestershire	1226	2016-07-03 13:33:11.826557	2016-07-03 13:33:11.826557
615	Gwynedd	1226	2016-07-03 13:33:11.830396	2016-07-03 13:33:11.830396
616	Hampshire	1226	2016-07-03 13:33:11.834546	2016-07-03 13:33:11.834546
617	Herefordshire	1226	2016-07-03 13:33:11.837893	2016-07-03 13:33:11.837893
618	Hertfordshire	1226	2016-07-03 13:33:11.8416	2016-07-03 13:33:11.8416
619	Highland	1226	2016-07-03 13:33:11.845874	2016-07-03 13:33:11.845874
620	Inverclyde	1226	2016-07-03 13:33:11.850203	2016-07-03 13:33:11.850203
621	Isle of Wight	1226	2016-07-03 13:33:11.854244	2016-07-03 13:33:11.854244
622	Kent	1226	2016-07-03 13:33:11.857599	2016-07-03 13:33:11.857599
623	Lancashire	1226	2016-07-03 13:33:11.860826	2016-07-03 13:33:11.860826
624	Leicestershire	1226	2016-07-03 13:33:11.865595	2016-07-03 13:33:11.865595
625	Midlothian	1226	2016-07-03 13:33:11.869504	2016-07-03 13:33:11.869504
626	Moray	1226	2016-07-03 13:33:11.872966	2016-07-03 13:33:11.872966
627	Norfolk	1226	2016-07-03 13:33:11.87658	2016-07-03 13:33:11.87658
628	North Ayrshire	1226	2016-07-03 13:33:11.880912	2016-07-03 13:33:11.880912
629	North Lanarkshire	1226	2016-07-03 13:33:11.885796	2016-07-03 13:33:11.885796
630	North Yorkshire	1226	2016-07-03 13:33:11.889394	2016-07-03 13:33:11.889394
631	Northamptonshire	1226	2016-07-03 13:33:11.896066	2016-07-03 13:33:11.896066
632	Northumberland	1226	2016-07-03 13:33:11.900805	2016-07-03 13:33:11.900805
633	Nottinghamshire	1226	2016-07-03 13:33:11.904767	2016-07-03 13:33:11.904767
634	Oldham	1226	2016-07-03 13:33:11.908797	2016-07-03 13:33:11.908797
635	Omagh	1226	2016-07-03 13:33:11.913003	2016-07-03 13:33:11.913003
636	Orkney Islands	1226	2016-07-03 13:33:11.916946	2016-07-03 13:33:11.916946
637	Oxfordshire	1226	2016-07-03 13:33:11.920842	2016-07-03 13:33:11.920842
638	Perth and Kinross	1226	2016-07-03 13:33:11.924954	2016-07-03 13:33:11.924954
639	Powys	1226	2016-07-03 13:33:11.929577	2016-07-03 13:33:11.929577
640	Renfrewshire	1226	2016-07-03 13:33:11.93295	2016-07-03 13:33:11.93295
641	Rutland	1226	2016-07-03 13:33:11.937677	2016-07-03 13:33:11.937677
642	Scottish Borders	1226	2016-07-03 13:33:11.942104	2016-07-03 13:33:11.942104
643	Shetland Islands	1226	2016-07-03 13:33:11.945944	2016-07-03 13:33:11.945944
644	Shropshire	1226	2016-07-03 13:33:11.949672	2016-07-03 13:33:11.949672
645	Somerset	1226	2016-07-03 13:33:11.953677	2016-07-03 13:33:11.953677
646	South Ayrshire	1226	2016-07-03 13:33:11.964454	2016-07-03 13:33:11.964454
647	South Gloucestershire	1226	2016-07-03 13:33:11.969734	2016-07-03 13:33:11.969734
648	South Lanarkshire	1226	2016-07-03 13:33:11.973826	2016-07-03 13:33:11.973826
649	Staffordshire	1226	2016-07-03 13:33:11.977302	2016-07-03 13:33:11.977302
650	Stirling	1226	2016-07-03 13:33:11.981868	2016-07-03 13:33:11.981868
651	Suffolk	1226	2016-07-03 13:33:11.985886	2016-07-03 13:33:11.985886
652	Surrey	1226	2016-07-03 13:33:11.990877	2016-07-03 13:33:11.990877
653	Mid Glamorgan	1226	2016-07-03 13:33:11.994551	2016-07-03 13:33:11.994551
654	Warwickshire	1226	2016-07-03 13:33:11.998239	2016-07-03 13:33:11.998239
655	West Dunbartonshire	1226	2016-07-03 13:33:12.003275	2016-07-03 13:33:12.003275
656	West Lothian	1226	2016-07-03 13:33:12.007465	2016-07-03 13:33:12.007465
657	West Sussex	1226	2016-07-03 13:33:12.011408	2016-07-03 13:33:12.011408
658	Wiltshire	1226	2016-07-03 13:33:12.016925	2016-07-03 13:33:12.016925
659	Worcestershire	1226	2016-07-03 13:33:12.025323	2016-07-03 13:33:12.025323
660	Achaïa	1085	2016-07-03 13:33:12.034704	2016-07-03 13:33:12.034704
661	Aitolia-Akarnania	1085	2016-07-03 13:33:12.043642	2016-07-03 13:33:12.043642
662	Argolis	1085	2016-07-03 13:33:12.048412	2016-07-03 13:33:12.048412
663	Arkadia	1085	2016-07-03 13:33:12.053	2016-07-03 13:33:12.053
664	Arta	1085	2016-07-03 13:33:12.057104	2016-07-03 13:33:12.057104
665	Attiki	1085	2016-07-03 13:33:12.061509	2016-07-03 13:33:12.061509
666	Chalkidiki	1085	2016-07-03 13:33:12.066288	2016-07-03 13:33:12.066288
667	Chania	1085	2016-07-03 13:33:12.07024	2016-07-03 13:33:12.07024
668	Chios	1085	2016-07-03 13:33:12.074764	2016-07-03 13:33:12.074764
669	Dodekanisos	1085	2016-07-03 13:33:12.078632	2016-07-03 13:33:12.078632
670	Drama	1085	2016-07-03 13:33:12.083495	2016-07-03 13:33:12.083495
671	Evros	1085	2016-07-03 13:33:12.087853	2016-07-03 13:33:12.087853
672	Evrytania	1085	2016-07-03 13:33:12.092198	2016-07-03 13:33:12.092198
673	Evvoia	1085	2016-07-03 13:33:12.096206	2016-07-03 13:33:12.096206
674	Florina	1085	2016-07-03 13:33:12.10032	2016-07-03 13:33:12.10032
675	Fokis	1085	2016-07-03 13:33:12.10485	2016-07-03 13:33:12.10485
676	Fthiotis	1085	2016-07-03 13:33:12.109101	2016-07-03 13:33:12.109101
677	Grevena	1085	2016-07-03 13:33:12.113715	2016-07-03 13:33:12.113715
678	Ileia	1085	2016-07-03 13:33:12.117899	2016-07-03 13:33:12.117899
679	Imathia	1085	2016-07-03 13:33:12.122014	2016-07-03 13:33:12.122014
680	Ioannina	1085	2016-07-03 13:33:12.125959	2016-07-03 13:33:12.125959
681	Irakleion	1085	2016-07-03 13:33:12.131087	2016-07-03 13:33:12.131087
682	Karditsa	1085	2016-07-03 13:33:12.135193	2016-07-03 13:33:12.135193
683	Kastoria	1085	2016-07-03 13:33:12.139047	2016-07-03 13:33:12.139047
684	Kavalla	1085	2016-07-03 13:33:12.143284	2016-07-03 13:33:12.143284
685	Kefallinia	1085	2016-07-03 13:33:12.147618	2016-07-03 13:33:12.147618
686	Kerkyra	1085	2016-07-03 13:33:12.152263	2016-07-03 13:33:12.152263
687	Kilkis	1085	2016-07-03 13:33:12.156244	2016-07-03 13:33:12.156244
688	Korinthia	1085	2016-07-03 13:33:12.160623	2016-07-03 13:33:12.160623
689	Kozani	1085	2016-07-03 13:33:12.163931	2016-07-03 13:33:12.163931
690	Kyklades	1085	2016-07-03 13:33:12.168308	2016-07-03 13:33:12.168308
691	Lakonia	1085	2016-07-03 13:33:12.172965	2016-07-03 13:33:12.172965
692	Larisa	1085	2016-07-03 13:33:12.18231	2016-07-03 13:33:12.18231
693	Lasithion	1085	2016-07-03 13:33:12.186933	2016-07-03 13:33:12.186933
694	Lefkas	1085	2016-07-03 13:33:12.191445	2016-07-03 13:33:12.191445
695	Lesvos	1085	2016-07-03 13:33:12.197892	2016-07-03 13:33:12.197892
696	Magnisia	1085	2016-07-03 13:33:12.203175	2016-07-03 13:33:12.203175
697	Messinia	1085	2016-07-03 13:33:12.207728	2016-07-03 13:33:12.207728
698	Pella	1085	2016-07-03 13:33:12.21126	2016-07-03 13:33:12.21126
699	Preveza	1085	2016-07-03 13:33:12.215271	2016-07-03 13:33:12.215271
700	Rethymnon	1085	2016-07-03 13:33:12.219007	2016-07-03 13:33:12.219007
701	Rodopi	1085	2016-07-03 13:33:12.223571	2016-07-03 13:33:12.223571
702	Samos	1085	2016-07-03 13:33:12.227888	2016-07-03 13:33:12.227888
703	Serrai	1085	2016-07-03 13:33:12.232192	2016-07-03 13:33:12.232192
704	Thesprotia	1085	2016-07-03 13:33:12.235935	2016-07-03 13:33:12.235935
705	Thessaloniki	1085	2016-07-03 13:33:12.240238	2016-07-03 13:33:12.240238
706	Trikala	1085	2016-07-03 13:33:12.244121	2016-07-03 13:33:12.244121
707	Voiotia	1085	2016-07-03 13:33:12.259268	2016-07-03 13:33:12.259268
708	Xanthi	1085	2016-07-03 13:33:12.263304	2016-07-03 13:33:12.263304
709	Zakynthos	1085	2016-07-03 13:33:12.268735	2016-07-03 13:33:12.268735
710	Agio Oros	1085	2016-07-03 13:33:12.274051	2016-07-03 13:33:12.274051
711	Alta Verapez	1090	2016-07-03 13:33:12.278783	2016-07-03 13:33:12.278783
712	Baja Verapez	1090	2016-07-03 13:33:12.283739	2016-07-03 13:33:12.283739
713	Chimaltenango	1090	2016-07-03 13:33:12.287803	2016-07-03 13:33:12.287803
714	Chiquimula	1090	2016-07-03 13:33:12.292194	2016-07-03 13:33:12.292194
715	El Progreso	1090	2016-07-03 13:33:12.297267	2016-07-03 13:33:12.297267
716	Escuintla	1090	2016-07-03 13:33:12.301025	2016-07-03 13:33:12.301025
717	Guatemala	1090	2016-07-03 13:33:12.304952	2016-07-03 13:33:12.304952
718	Huehuetenango	1090	2016-07-03 13:33:12.309223	2016-07-03 13:33:12.309223
719	Izabal	1090	2016-07-03 13:33:12.31306	2016-07-03 13:33:12.31306
720	Jalapa	1090	2016-07-03 13:33:12.317371	2016-07-03 13:33:12.317371
721	Jutiapa	1090	2016-07-03 13:33:12.321795	2016-07-03 13:33:12.321795
722	Peten	1090	2016-07-03 13:33:12.325605	2016-07-03 13:33:12.325605
723	Quetzaltenango	1090	2016-07-03 13:33:12.329624	2016-07-03 13:33:12.329624
724	Quiche	1090	2016-07-03 13:33:12.335118	2016-07-03 13:33:12.335118
725	Reta.thuleu	1090	2016-07-03 13:33:12.339022	2016-07-03 13:33:12.339022
726	Sacatepequez	1090	2016-07-03 13:33:12.342881	2016-07-03 13:33:12.342881
727	San Marcos	1090	2016-07-03 13:33:12.347879	2016-07-03 13:33:12.347879
728	Santa Rosa	1090	2016-07-03 13:33:12.352446	2016-07-03 13:33:12.352446
729	Solol6	1090	2016-07-03 13:33:12.356771	2016-07-03 13:33:12.356771
730	Suchitepequez	1090	2016-07-03 13:33:12.360856	2016-07-03 13:33:12.360856
731	Totonicapan	1090	2016-07-03 13:33:12.365954	2016-07-03 13:33:12.365954
732	Zacapa	1090	2016-07-03 13:33:12.369791	2016-07-03 13:33:12.369791
733	Budapest	1099	2016-07-03 13:33:12.375341	2016-07-03 13:33:12.375341
734	Bács-Kiskun	1099	2016-07-03 13:33:12.380477	2016-07-03 13:33:12.380477
735	Baranya	1099	2016-07-03 13:33:12.384521	2016-07-03 13:33:12.384521
736	Békés	1099	2016-07-03 13:33:12.388689	2016-07-03 13:33:12.388689
737	Borsod-Abaúj-Zemplén	1099	2016-07-03 13:33:12.392856	2016-07-03 13:33:12.392856
738	Csongrád	1099	2016-07-03 13:33:12.39693	2016-07-03 13:33:12.39693
739	Fejér	1099	2016-07-03 13:33:12.401447	2016-07-03 13:33:12.401447
740	Győr-Moson-Sopron	1099	2016-07-03 13:33:12.406811	2016-07-03 13:33:12.406811
741	Hajdu-Bihar	1099	2016-07-03 13:33:12.412219	2016-07-03 13:33:12.412219
742	Heves	1099	2016-07-03 13:33:12.417658	2016-07-03 13:33:12.417658
743	Jász-Nagykun-Szolnok	1099	2016-07-03 13:33:12.422234	2016-07-03 13:33:12.422234
744	Komárom-Esztergom	1099	2016-07-03 13:33:12.426108	2016-07-03 13:33:12.426108
745	Nográd	1099	2016-07-03 13:33:12.430516	2016-07-03 13:33:12.430516
746	Pest	1099	2016-07-03 13:33:12.434442	2016-07-03 13:33:12.434442
747	Somogy	1099	2016-07-03 13:33:12.439218	2016-07-03 13:33:12.439218
748	Szabolcs-Szatmár-Bereg	1099	2016-07-03 13:33:12.443239	2016-07-03 13:33:12.443239
749	Tolna	1099	2016-07-03 13:33:12.447105	2016-07-03 13:33:12.447105
750	Vas	1099	2016-07-03 13:33:12.451675	2016-07-03 13:33:12.451675
751	Veszprém	1099	2016-07-03 13:33:12.455593	2016-07-03 13:33:12.455593
752	Zala	1099	2016-07-03 13:33:12.459087	2016-07-03 13:33:12.459087
753	Békéscsaba	1099	2016-07-03 13:33:12.471439	2016-07-03 13:33:12.471439
754	Debrecen	1099	2016-07-03 13:33:12.47791	2016-07-03 13:33:12.47791
755	Dunaújváros	1099	2016-07-03 13:33:12.481774	2016-07-03 13:33:12.481774
756	Eger	1099	2016-07-03 13:33:12.485448	2016-07-03 13:33:12.485448
757	Győr	1099	2016-07-03 13:33:12.489652	2016-07-03 13:33:12.489652
758	Hódmezővásárhely	1099	2016-07-03 13:33:12.492985	2016-07-03 13:33:12.492985
759	Kaposvár	1099	2016-07-03 13:33:12.49776	2016-07-03 13:33:12.49776
760	Kecskemét	1099	2016-07-03 13:33:12.501401	2016-07-03 13:33:12.501401
761	Miskolc	1099	2016-07-03 13:33:12.504802	2016-07-03 13:33:12.504802
762	Nagykanizsa	1099	2016-07-03 13:33:12.508122	2016-07-03 13:33:12.508122
763	Nyiregyháza	1099	2016-07-03 13:33:12.512817	2016-07-03 13:33:12.512817
764	Pécs	1099	2016-07-03 13:33:12.517013	2016-07-03 13:33:12.517013
765	Salgótarján	1099	2016-07-03 13:33:12.520739	2016-07-03 13:33:12.520739
766	Sopron	1099	2016-07-03 13:33:12.524638	2016-07-03 13:33:12.524638
767	Szeged	1099	2016-07-03 13:33:12.528122	2016-07-03 13:33:12.528122
768	Székesfehérvár	1099	2016-07-03 13:33:12.531516	2016-07-03 13:33:12.531516
769	Szekszárd	1099	2016-07-03 13:33:12.536493	2016-07-03 13:33:12.536493
770	Szolnok	1099	2016-07-03 13:33:12.540224	2016-07-03 13:33:12.540224
771	Szombathely	1099	2016-07-03 13:33:12.543612	2016-07-03 13:33:12.543612
772	Tatabánya	1099	2016-07-03 13:33:12.547302	2016-07-03 13:33:12.547302
773	Zalaegerszeg	1099	2016-07-03 13:33:12.552386	2016-07-03 13:33:12.552386
774	Bali	1102	2016-07-03 13:33:12.555637	2016-07-03 13:33:12.555637
775	Bangka Belitung	1102	2016-07-03 13:33:12.559511	2016-07-03 13:33:12.559511
776	Banten	1102	2016-07-03 13:33:12.563902	2016-07-03 13:33:12.563902
777	Bengkulu	1102	2016-07-03 13:33:12.568706	2016-07-03 13:33:12.568706
778	Gorontalo	1102	2016-07-03 13:33:12.57291	2016-07-03 13:33:12.57291
779	Irian Jaya	1102	2016-07-03 13:33:12.578005	2016-07-03 13:33:12.578005
780	Jambi	1102	2016-07-03 13:33:12.581777	2016-07-03 13:33:12.581777
781	Jawa Barat	1102	2016-07-03 13:33:12.591062	2016-07-03 13:33:12.591062
782	Jawa Tengah	1102	2016-07-03 13:33:12.596979	2016-07-03 13:33:12.596979
783	Jawa Timur	1102	2016-07-03 13:33:12.600887	2016-07-03 13:33:12.600887
784	Kalimantan Barat	1102	2016-07-03 13:33:12.604914	2016-07-03 13:33:12.604914
785	Kalimantan Timur	1102	2016-07-03 13:33:12.608431	2016-07-03 13:33:12.608431
786	Kalimantan Selatan	1102	2016-07-03 13:33:12.612634	2016-07-03 13:33:12.612634
787	Kepulauan Riau	1102	2016-07-03 13:33:12.616139	2016-07-03 13:33:12.616139
788	Lampung	1102	2016-07-03 13:33:12.619834	2016-07-03 13:33:12.619834
789	Maluku	1102	2016-07-03 13:33:12.623307	2016-07-03 13:33:12.623307
790	Maluku Utara	1102	2016-07-03 13:33:12.628086	2016-07-03 13:33:12.628086
791	Nusa Tenggara Barat	1102	2016-07-03 13:33:12.631584	2016-07-03 13:33:12.631584
792	Nusa Tenggara Timur	1102	2016-07-03 13:33:12.63499	2016-07-03 13:33:12.63499
793	Papua	1102	2016-07-03 13:33:12.639433	2016-07-03 13:33:12.639433
794	Riau	1102	2016-07-03 13:33:12.643618	2016-07-03 13:33:12.643618
795	Sulawesi Selatan	1102	2016-07-03 13:33:12.647227	2016-07-03 13:33:12.647227
796	Sulawesi Tengah	1102	2016-07-03 13:33:12.650482	2016-07-03 13:33:12.650482
797	Sulawesi Tenggara	1102	2016-07-03 13:33:12.654729	2016-07-03 13:33:12.654729
798	Sulawesi Utara	1102	2016-07-03 13:33:12.658123	2016-07-03 13:33:12.658123
799	Sumatra Barat	1102	2016-07-03 13:33:12.661538	2016-07-03 13:33:12.661538
800	Sumatra Selatan	1102	2016-07-03 13:33:12.665547	2016-07-03 13:33:12.665547
801	Sumatera Utara	1102	2016-07-03 13:33:12.669257	2016-07-03 13:33:12.669257
802	Jakarta Raya	1102	2016-07-03 13:33:12.67256	2016-07-03 13:33:12.67256
803	Aceh	1102	2016-07-03 13:33:12.677436	2016-07-03 13:33:12.677436
804	Yogyakarta	1102	2016-07-03 13:33:12.685899	2016-07-03 13:33:12.685899
805	Cork	1105	2016-07-03 13:33:12.694539	2016-07-03 13:33:12.694539
806	Clare	1105	2016-07-03 13:33:12.699592	2016-07-03 13:33:12.699592
807	Cavan	1105	2016-07-03 13:33:12.703445	2016-07-03 13:33:12.703445
808	Carlow	1105	2016-07-03 13:33:12.707146	2016-07-03 13:33:12.707146
809	Dublin	1105	2016-07-03 13:33:12.710891	2016-07-03 13:33:12.710891
810	Donegal	1105	2016-07-03 13:33:12.715103	2016-07-03 13:33:12.715103
811	Galway	1105	2016-07-03 13:33:12.718838	2016-07-03 13:33:12.718838
812	Kildare	1105	2016-07-03 13:33:12.722555	2016-07-03 13:33:12.722555
813	Kilkenny	1105	2016-07-03 13:33:12.725889	2016-07-03 13:33:12.725889
814	Kerry	1105	2016-07-03 13:33:12.730012	2016-07-03 13:33:12.730012
815	Longford	1105	2016-07-03 13:33:12.733603	2016-07-03 13:33:12.733603
816	Louth	1105	2016-07-03 13:33:12.737227	2016-07-03 13:33:12.737227
817	Limerick	1105	2016-07-03 13:33:12.740558	2016-07-03 13:33:12.740558
818	Leitrim	1105	2016-07-03 13:33:12.747443	2016-07-03 13:33:12.747443
819	Laois	1105	2016-07-03 13:33:12.753436	2016-07-03 13:33:12.753436
820	Meath	1105	2016-07-03 13:33:12.757966	2016-07-03 13:33:12.757966
821	Monaghan	1105	2016-07-03 13:33:12.762191	2016-07-03 13:33:12.762191
822	Mayo	1105	2016-07-03 13:33:12.768987	2016-07-03 13:33:12.768987
823	Offaly	1105	2016-07-03 13:33:12.774376	2016-07-03 13:33:12.774376
824	Roscommon	1105	2016-07-03 13:33:12.78027	2016-07-03 13:33:12.78027
825	Sligo	1105	2016-07-03 13:33:12.786103	2016-07-03 13:33:12.786103
826	Tipperary	1105	2016-07-03 13:33:12.792149	2016-07-03 13:33:12.792149
827	Waterford	1105	2016-07-03 13:33:12.796573	2016-07-03 13:33:12.796573
828	Westmeath	1105	2016-07-03 13:33:12.800603	2016-07-03 13:33:12.800603
829	Wicklow	1105	2016-07-03 13:33:12.806122	2016-07-03 13:33:12.806122
830	Wexford	1105	2016-07-03 13:33:12.810285	2016-07-03 13:33:12.810285
831	HaDarom	1106	2016-07-03 13:33:12.816643	2016-07-03 13:33:12.816643
832	HaMerkaz	1106	2016-07-03 13:33:12.822686	2016-07-03 13:33:12.822686
833	HaZafon	1106	2016-07-03 13:33:12.826716	2016-07-03 13:33:12.826716
834	Haifa	1106	2016-07-03 13:33:12.832172	2016-07-03 13:33:12.832172
835	Tel-Aviv	1106	2016-07-03 13:33:12.836086	2016-07-03 13:33:12.836086
836	Jerusalem	1106	2016-07-03 13:33:12.842483	2016-07-03 13:33:12.842483
837	Al Anbar	1104	2016-07-03 13:33:12.848741	2016-07-03 13:33:12.848741
838	Al Ba,rah	1104	2016-07-03 13:33:12.852934	2016-07-03 13:33:12.852934
839	Al Muthanna	1104	2016-07-03 13:33:12.857265	2016-07-03 13:33:12.857265
840	Al Qadisiyah	1104	2016-07-03 13:33:12.86214	2016-07-03 13:33:12.86214
841	An Najef	1104	2016-07-03 13:33:12.865992	2016-07-03 13:33:12.865992
842	Arbil	1104	2016-07-03 13:33:12.869726	2016-07-03 13:33:12.869726
843	As Sulaymaniyah	1104	2016-07-03 13:33:12.876663	2016-07-03 13:33:12.876663
844	At Ta'mim	1104	2016-07-03 13:33:12.880533	2016-07-03 13:33:12.880533
845	Babil	1104	2016-07-03 13:33:12.883573	2016-07-03 13:33:12.883573
846	Baghdad	1104	2016-07-03 13:33:12.887044	2016-07-03 13:33:12.887044
847	Dahuk	1104	2016-07-03 13:33:12.891337	2016-07-03 13:33:12.891337
848	Dhi Qar	1104	2016-07-03 13:33:12.897257	2016-07-03 13:33:12.897257
849	Diyala	1104	2016-07-03 13:33:12.905707	2016-07-03 13:33:12.905707
850	Karbala'	1104	2016-07-03 13:33:12.91358	2016-07-03 13:33:12.91358
851	Maysan	1104	2016-07-03 13:33:12.917215	2016-07-03 13:33:12.917215
852	Ninawa	1104	2016-07-03 13:33:12.920973	2016-07-03 13:33:12.920973
853	Salah ad Din	1104	2016-07-03 13:33:12.925976	2016-07-03 13:33:12.925976
854	Wasit	1104	2016-07-03 13:33:12.931676	2016-07-03 13:33:12.931676
855	Ardabil	1103	2016-07-03 13:33:12.935488	2016-07-03 13:33:12.935488
856	Azarbayjan-e Gharbi	1103	2016-07-03 13:33:12.939355	2016-07-03 13:33:12.939355
857	Azarbayjan-e Sharqi	1103	2016-07-03 13:33:12.943861	2016-07-03 13:33:12.943861
858	Bushehr	1103	2016-07-03 13:33:12.94806	2016-07-03 13:33:12.94806
859	Chahar Mahall va Bakhtiari	1103	2016-07-03 13:33:12.951522	2016-07-03 13:33:12.951522
860	Esfahan	1103	2016-07-03 13:33:12.955589	2016-07-03 13:33:12.955589
861	Fars	1103	2016-07-03 13:33:12.959314	2016-07-03 13:33:12.959314
862	Gilan	1103	2016-07-03 13:33:12.963468	2016-07-03 13:33:12.963468
863	Golestan	1103	2016-07-03 13:33:12.967307	2016-07-03 13:33:12.967307
864	Hamadan	1103	2016-07-03 13:33:12.971148	2016-07-03 13:33:12.971148
865	Hormozgan	1103	2016-07-03 13:33:12.975457	2016-07-03 13:33:12.975457
866	Iiam	1103	2016-07-03 13:33:12.978989	2016-07-03 13:33:12.978989
867	Kerman	1103	2016-07-03 13:33:12.982615	2016-07-03 13:33:12.982615
868	Kermanshah	1103	2016-07-03 13:33:12.986881	2016-07-03 13:33:12.986881
869	Khorasan	1103	2016-07-03 13:33:12.990186	2016-07-03 13:33:12.990186
870	Khuzestan	1103	2016-07-03 13:33:12.994822	2016-07-03 13:33:12.994822
871	Kohjiluyeh va Buyer Ahmad	1103	2016-07-03 13:33:12.998752	2016-07-03 13:33:12.998752
872	Kordestan	1103	2016-07-03 13:33:13.002253	2016-07-03 13:33:13.002253
873	Lorestan	1103	2016-07-03 13:33:13.006803	2016-07-03 13:33:13.006803
874	Markazi	1103	2016-07-03 13:33:13.010817	2016-07-03 13:33:13.010817
875	Mazandaran	1103	2016-07-03 13:33:13.015466	2016-07-03 13:33:13.015466
876	Qazvin	1103	2016-07-03 13:33:13.019546	2016-07-03 13:33:13.019546
877	Qom	1103	2016-07-03 13:33:13.023385	2016-07-03 13:33:13.023385
878	Semnan	1103	2016-07-03 13:33:13.026696	2016-07-03 13:33:13.026696
879	Sistan va Baluchestan	1103	2016-07-03 13:33:13.031249	2016-07-03 13:33:13.031249
880	Tehran	1103	2016-07-03 13:33:13.034742	2016-07-03 13:33:13.034742
881	Yazd	1103	2016-07-03 13:33:13.038061	2016-07-03 13:33:13.038061
882	Zanjan	1103	2016-07-03 13:33:13.043006	2016-07-03 13:33:13.043006
883	Austurland	1100	2016-07-03 13:33:13.047147	2016-07-03 13:33:13.047147
884	Hofuoborgarsvaeoi utan Reykjavikur	1100	2016-07-03 13:33:13.050821	2016-07-03 13:33:13.050821
885	Norourland eystra	1100	2016-07-03 13:33:13.054572	2016-07-03 13:33:13.054572
886	Norourland vestra	1100	2016-07-03 13:33:13.059462	2016-07-03 13:33:13.059462
887	Reykjavik	1100	2016-07-03 13:33:13.063508	2016-07-03 13:33:13.063508
888	Suourland	1100	2016-07-03 13:33:13.067395	2016-07-03 13:33:13.067395
889	Suournes	1100	2016-07-03 13:33:13.071853	2016-07-03 13:33:13.071853
890	Vestfirolr	1100	2016-07-03 13:33:13.076029	2016-07-03 13:33:13.076029
891	Vesturland	1100	2016-07-03 13:33:13.079728	2016-07-03 13:33:13.079728
892	Agrigento	1107	2016-07-03 13:33:13.083507	2016-07-03 13:33:13.083507
893	Alessandria	1107	2016-07-03 13:33:13.087389	2016-07-03 13:33:13.087389
894	Ancona	1107	2016-07-03 13:33:13.092311	2016-07-03 13:33:13.092311
895	Aosta	1107	2016-07-03 13:33:13.096207	2016-07-03 13:33:13.096207
896	Arezzo	1107	2016-07-03 13:33:13.100065	2016-07-03 13:33:13.100065
897	Ascoli Piceno	1107	2016-07-03 13:33:13.104482	2016-07-03 13:33:13.104482
898	Asti	1107	2016-07-03 13:33:13.108559	2016-07-03 13:33:13.108559
899	Avellino	1107	2016-07-03 13:33:13.113392	2016-07-03 13:33:13.113392
900	Bari	1107	2016-07-03 13:33:13.125238	2016-07-03 13:33:13.125238
901	Belluno	1107	2016-07-03 13:33:13.134313	2016-07-03 13:33:13.134313
902	Benevento	1107	2016-07-03 13:33:13.138981	2016-07-03 13:33:13.138981
903	Bergamo	1107	2016-07-03 13:33:13.143386	2016-07-03 13:33:13.143386
904	Biella	1107	2016-07-03 13:33:13.147246	2016-07-03 13:33:13.147246
905	Bologna	1107	2016-07-03 13:33:13.151741	2016-07-03 13:33:13.151741
906	Bolzano	1107	2016-07-03 13:33:13.155601	2016-07-03 13:33:13.155601
907	Brescia	1107	2016-07-03 13:33:13.159462	2016-07-03 13:33:13.159462
908	Brindisi	1107	2016-07-03 13:33:13.163284	2016-07-03 13:33:13.163284
909	Cagliari	1107	2016-07-03 13:33:13.166828	2016-07-03 13:33:13.166828
910	Caltanissetta	1107	2016-07-03 13:33:13.171459	2016-07-03 13:33:13.171459
911	Campobasso	1107	2016-07-03 13:33:13.17518	2016-07-03 13:33:13.17518
912	Caserta	1107	2016-07-03 13:33:13.178394	2016-07-03 13:33:13.178394
913	Catania	1107	2016-07-03 13:33:13.182712	2016-07-03 13:33:13.182712
914	Catanzaro	1107	2016-07-03 13:33:13.186963	2016-07-03 13:33:13.186963
915	Chieti	1107	2016-07-03 13:33:13.1904	2016-07-03 13:33:13.1904
916	Como	1107	2016-07-03 13:33:13.193982	2016-07-03 13:33:13.193982
917	Cosenza	1107	2016-07-03 13:33:13.198363	2016-07-03 13:33:13.198363
918	Cremona	1107	2016-07-03 13:33:13.202388	2016-07-03 13:33:13.202388
919	Crotone	1107	2016-07-03 13:33:13.20577	2016-07-03 13:33:13.20577
920	Cuneo	1107	2016-07-03 13:33:13.209457	2016-07-03 13:33:13.209457
921	Enna	1107	2016-07-03 13:33:13.21428	2016-07-03 13:33:13.21428
922	Ferrara	1107	2016-07-03 13:33:13.217827	2016-07-03 13:33:13.217827
923	Firenze	1107	2016-07-03 13:33:13.222246	2016-07-03 13:33:13.222246
924	Foggia	1107	2016-07-03 13:33:13.226396	2016-07-03 13:33:13.226396
925	Forlì-Cesena	1107	2016-07-03 13:33:13.23028	2016-07-03 13:33:13.23028
926	Frosinone	1107	2016-07-03 13:33:13.233893	2016-07-03 13:33:13.233893
927	Genova	1107	2016-07-03 13:33:13.238732	2016-07-03 13:33:13.238732
928	Gorizia	1107	2016-07-03 13:33:13.242745	2016-07-03 13:33:13.242745
929	Grosseto	1107	2016-07-03 13:33:13.24639	2016-07-03 13:33:13.24639
930	Imperia	1107	2016-07-03 13:33:13.251184	2016-07-03 13:33:13.251184
931	Isernia	1107	2016-07-03 13:33:13.255485	2016-07-03 13:33:13.255485
932	L'Aquila	1107	2016-07-03 13:33:13.260329	2016-07-03 13:33:13.260329
933	La Spezia	1107	2016-07-03 13:33:13.26562	2016-07-03 13:33:13.26562
934	Latina	1107	2016-07-03 13:33:13.270011	2016-07-03 13:33:13.270011
935	Lecce	1107	2016-07-03 13:33:13.274271	2016-07-03 13:33:13.274271
936	Lecco	1107	2016-07-03 13:33:13.27864	2016-07-03 13:33:13.27864
937	Livorno	1107	2016-07-03 13:33:13.283274	2016-07-03 13:33:13.283274
938	Lodi	1107	2016-07-03 13:33:13.286776	2016-07-03 13:33:13.286776
939	Lucca	1107	2016-07-03 13:33:13.290281	2016-07-03 13:33:13.290281
940	Macerata	1107	2016-07-03 13:33:13.29507	2016-07-03 13:33:13.29507
941	Mantova	1107	2016-07-03 13:33:13.299187	2016-07-03 13:33:13.299187
942	Massa-Carrara	1107	2016-07-03 13:33:13.302425	2016-07-03 13:33:13.302425
943	Matera	1107	2016-07-03 13:33:13.306309	2016-07-03 13:33:13.306309
944	Messina	1107	2016-07-03 13:33:13.309307	2016-07-03 13:33:13.309307
945	Milano	1107	2016-07-03 13:33:13.313065	2016-07-03 13:33:13.313065
946	Modena	1107	2016-07-03 13:33:13.317738	2016-07-03 13:33:13.317738
947	Napoli	1107	2016-07-03 13:33:13.324134	2016-07-03 13:33:13.324134
948	Novara	1107	2016-07-03 13:33:13.328827	2016-07-03 13:33:13.328827
949	Nuoro	1107	2016-07-03 13:33:13.333819	2016-07-03 13:33:13.333819
950	Oristano	1107	2016-07-03 13:33:13.346366	2016-07-03 13:33:13.346366
951	Padova	1107	2016-07-03 13:33:13.355001	2016-07-03 13:33:13.355001
952	Palermo	1107	2016-07-03 13:33:13.358134	2016-07-03 13:33:13.358134
953	Parma	1107	2016-07-03 13:33:13.362585	2016-07-03 13:33:13.362585
954	Pavia	1107	2016-07-03 13:33:13.365899	2016-07-03 13:33:13.365899
955	Perugia	1107	2016-07-03 13:33:13.370012	2016-07-03 13:33:13.370012
956	Pesaro e Urbino	1107	2016-07-03 13:33:13.373765	2016-07-03 13:33:13.373765
957	Pescara	1107	2016-07-03 13:33:13.376975	2016-07-03 13:33:13.376975
958	Piacenza	1107	2016-07-03 13:33:13.380614	2016-07-03 13:33:13.380614
959	Pisa	1107	2016-07-03 13:33:13.384224	2016-07-03 13:33:13.384224
960	Pistoia	1107	2016-07-03 13:33:13.387506	2016-07-03 13:33:13.387506
961	Pordenone	1107	2016-07-03 13:33:13.391462	2016-07-03 13:33:13.391462
962	Potenza	1107	2016-07-03 13:33:13.394852	2016-07-03 13:33:13.394852
963	Prato	1107	2016-07-03 13:33:13.399161	2016-07-03 13:33:13.399161
964	Ragusa	1107	2016-07-03 13:33:13.403501	2016-07-03 13:33:13.403501
965	Ravenna	1107	2016-07-03 13:33:13.407292	2016-07-03 13:33:13.407292
966	Reggio Calabria	1107	2016-07-03 13:33:13.410766	2016-07-03 13:33:13.410766
967	Reggio Emilia	1107	2016-07-03 13:33:13.414765	2016-07-03 13:33:13.414765
968	Rieti	1107	2016-07-03 13:33:13.418877	2016-07-03 13:33:13.418877
969	Rimini	1107	2016-07-03 13:33:13.422807	2016-07-03 13:33:13.422807
970	Roma	1107	2016-07-03 13:33:13.42717	2016-07-03 13:33:13.42717
971	Rovigo	1107	2016-07-03 13:33:13.430877	2016-07-03 13:33:13.430877
972	Salerno	1107	2016-07-03 13:33:13.434465	2016-07-03 13:33:13.434465
973	Sassari	1107	2016-07-03 13:33:13.439159	2016-07-03 13:33:13.439159
974	Savona	1107	2016-07-03 13:33:13.442596	2016-07-03 13:33:13.442596
975	Siena	1107	2016-07-03 13:33:13.449797	2016-07-03 13:33:13.449797
976	Siracusa	1107	2016-07-03 13:33:13.454102	2016-07-03 13:33:13.454102
977	Sondrio	1107	2016-07-03 13:33:13.457835	2016-07-03 13:33:13.457835
978	Taranto	1107	2016-07-03 13:33:13.461688	2016-07-03 13:33:13.461688
979	Teramo	1107	2016-07-03 13:33:13.465615	2016-07-03 13:33:13.465615
980	Terni	1107	2016-07-03 13:33:13.470224	2016-07-03 13:33:13.470224
981	Torino	1107	2016-07-03 13:33:13.473641	2016-07-03 13:33:13.473641
982	Trapani	1107	2016-07-03 13:33:13.477483	2016-07-03 13:33:13.477483
983	Trento	1107	2016-07-03 13:33:13.482234	2016-07-03 13:33:13.482234
984	Treviso	1107	2016-07-03 13:33:13.485867	2016-07-03 13:33:13.485867
985	Trieste	1107	2016-07-03 13:33:13.489256	2016-07-03 13:33:13.489256
986	Udine	1107	2016-07-03 13:33:13.492645	2016-07-03 13:33:13.492645
987	Varese	1107	2016-07-03 13:33:13.496135	2016-07-03 13:33:13.496135
988	Venezia	1107	2016-07-03 13:33:13.500192	2016-07-03 13:33:13.500192
989	Verbano-Cusio-Ossola	1107	2016-07-03 13:33:13.504338	2016-07-03 13:33:13.504338
990	Vercelli	1107	2016-07-03 13:33:13.507452	2016-07-03 13:33:13.507452
991	Verona	1107	2016-07-03 13:33:13.511313	2016-07-03 13:33:13.511313
992	Vibo Valentia	1107	2016-07-03 13:33:13.51517	2016-07-03 13:33:13.51517
993	Vicenza	1107	2016-07-03 13:33:13.519293	2016-07-03 13:33:13.519293
994	Viterbo	1107	2016-07-03 13:33:13.523316	2016-07-03 13:33:13.523316
995	Aichi	1109	2016-07-03 13:33:13.526923	2016-07-03 13:33:13.526923
996	Akita	1109	2016-07-03 13:33:13.530686	2016-07-03 13:33:13.530686
997	Aomori	1109	2016-07-03 13:33:13.535138	2016-07-03 13:33:13.535138
998	Chiba	1109	2016-07-03 13:33:13.538307	2016-07-03 13:33:13.538307
999	Ehime	1109	2016-07-03 13:33:13.54229	2016-07-03 13:33:13.54229
1000	Fukui	1109	2016-07-03 13:33:13.545603	2016-07-03 13:33:13.545603
1001	Fukuoka	1109	2016-07-03 13:33:13.549453	2016-07-03 13:33:13.549453
1002	Fukusima	1109	2016-07-03 13:33:13.558771	2016-07-03 13:33:13.558771
1003	Gifu	1109	2016-07-03 13:33:13.56748	2016-07-03 13:33:13.56748
1004	Gunma	1109	2016-07-03 13:33:13.571343	2016-07-03 13:33:13.571343
1005	Hiroshima	1109	2016-07-03 13:33:13.575542	2016-07-03 13:33:13.575542
1006	Hokkaido	1109	2016-07-03 13:33:13.579449	2016-07-03 13:33:13.579449
1007	Hyogo	1109	2016-07-03 13:33:13.582977	2016-07-03 13:33:13.582977
1008	Ibaraki	1109	2016-07-03 13:33:13.586542	2016-07-03 13:33:13.586542
1009	Ishikawa	1109	2016-07-03 13:33:13.591645	2016-07-03 13:33:13.591645
1010	Iwate	1109	2016-07-03 13:33:13.596331	2016-07-03 13:33:13.596331
1011	Kagawa	1109	2016-07-03 13:33:13.600281	2016-07-03 13:33:13.600281
1012	Kagoshima	1109	2016-07-03 13:33:13.60439	2016-07-03 13:33:13.60439
1013	Kanagawa	1109	2016-07-03 13:33:13.608428	2016-07-03 13:33:13.608428
1014	Kochi	1109	2016-07-03 13:33:13.612227	2016-07-03 13:33:13.612227
1015	Kumamoto	1109	2016-07-03 13:33:13.615602	2016-07-03 13:33:13.615602
1016	Kyoto	1109	2016-07-03 13:33:13.619458	2016-07-03 13:33:13.619458
1017	Mie	1109	2016-07-03 13:33:13.623207	2016-07-03 13:33:13.623207
1018	Miyagi	1109	2016-07-03 13:33:13.626935	2016-07-03 13:33:13.626935
1019	Miyazaki	1109	2016-07-03 13:33:13.63095	2016-07-03 13:33:13.63095
1020	Nagano	1109	2016-07-03 13:33:13.63387	2016-07-03 13:33:13.63387
1021	Nagasaki	1109	2016-07-03 13:33:13.637627	2016-07-03 13:33:13.637627
1022	Nara	1109	2016-07-03 13:33:13.641199	2016-07-03 13:33:13.641199
1023	Niigata	1109	2016-07-03 13:33:13.645844	2016-07-03 13:33:13.645844
1024	Oita	1109	2016-07-03 13:33:13.648879	2016-07-03 13:33:13.648879
1025	Okayama	1109	2016-07-03 13:33:13.653281	2016-07-03 13:33:13.653281
1026	Okinawa	1109	2016-07-03 13:33:13.657418	2016-07-03 13:33:13.657418
1027	Osaka	1109	2016-07-03 13:33:13.660542	2016-07-03 13:33:13.660542
1028	Saga	1109	2016-07-03 13:33:13.664406	2016-07-03 13:33:13.664406
1029	Saitama	1109	2016-07-03 13:33:13.668338	2016-07-03 13:33:13.668338
1030	Shiga	1109	2016-07-03 13:33:13.672094	2016-07-03 13:33:13.672094
1031	Shimane	1109	2016-07-03 13:33:13.676384	2016-07-03 13:33:13.676384
1032	Shizuoka	1109	2016-07-03 13:33:13.679784	2016-07-03 13:33:13.679784
1033	Tochigi	1109	2016-07-03 13:33:13.683003	2016-07-03 13:33:13.683003
1034	Tokushima	1109	2016-07-03 13:33:13.687318	2016-07-03 13:33:13.687318
1035	Tokyo	1109	2016-07-03 13:33:13.691486	2016-07-03 13:33:13.691486
1036	Tottori	1109	2016-07-03 13:33:13.694755	2016-07-03 13:33:13.694755
1037	Toyama	1109	2016-07-03 13:33:13.697838	2016-07-03 13:33:13.697838
1038	Wakayama	1109	2016-07-03 13:33:13.701722	2016-07-03 13:33:13.701722
1039	Yamagata	1109	2016-07-03 13:33:13.706056	2016-07-03 13:33:13.706056
1040	Yamaguchi	1109	2016-07-03 13:33:13.709485	2016-07-03 13:33:13.709485
1041	Yamanashi	1109	2016-07-03 13:33:13.71326	2016-07-03 13:33:13.71326
1042	Clarendon	1108	2016-07-03 13:33:13.717005	2016-07-03 13:33:13.717005
1043	Hanover	1108	2016-07-03 13:33:13.721397	2016-07-03 13:33:13.721397
1044	Kingston	1108	2016-07-03 13:33:13.725185	2016-07-03 13:33:13.725185
1045	Portland	1108	2016-07-03 13:33:13.729457	2016-07-03 13:33:13.729457
1046	Saint Andrew	1108	2016-07-03 13:33:13.733711	2016-07-03 13:33:13.733711
1047	Saint Ann	1108	2016-07-03 13:33:13.737301	2016-07-03 13:33:13.737301
1048	Saint Catherine	1108	2016-07-03 13:33:13.741458	2016-07-03 13:33:13.741458
1049	Saint Elizabeth	1108	2016-07-03 13:33:13.744945	2016-07-03 13:33:13.744945
1050	Saint James	1108	2016-07-03 13:33:13.748988	2016-07-03 13:33:13.748988
1051	Saint Mary	1108	2016-07-03 13:33:13.752823	2016-07-03 13:33:13.752823
1052	Saint Thomas	1108	2016-07-03 13:33:13.756357	2016-07-03 13:33:13.756357
1053	Trelawny	1108	2016-07-03 13:33:13.759567	2016-07-03 13:33:13.759567
1054	Westmoreland	1108	2016-07-03 13:33:13.762994	2016-07-03 13:33:13.762994
1055	Kaesong-si	1114	2016-07-03 13:33:13.772315	2016-07-03 13:33:13.772315
1056	Nampo-si	1114	2016-07-03 13:33:13.781918	2016-07-03 13:33:13.781918
1057	Pyongyang-ai	1114	2016-07-03 13:33:13.787622	2016-07-03 13:33:13.787622
1058	Chagang-do	1114	2016-07-03 13:33:13.791347	2016-07-03 13:33:13.791347
1059	Hamgyongbuk-do	1114	2016-07-03 13:33:13.794708	2016-07-03 13:33:13.794708
1060	Hamgyongnam-do	1114	2016-07-03 13:33:13.799633	2016-07-03 13:33:13.799633
1061	Hwanghaebuk-do	1114	2016-07-03 13:33:13.804258	2016-07-03 13:33:13.804258
1062	Hwanghaenam-do	1114	2016-07-03 13:33:13.807878	2016-07-03 13:33:13.807878
1063	Kangwon-do	1114	2016-07-03 13:33:13.811203	2016-07-03 13:33:13.811203
1064	Pyonganbuk-do	1114	2016-07-03 13:33:13.815502	2016-07-03 13:33:13.815502
1065	Pyongannam-do	1114	2016-07-03 13:33:13.819023	2016-07-03 13:33:13.819023
1066	Yanggang-do	1114	2016-07-03 13:33:13.823385	2016-07-03 13:33:13.823385
1067	Najin Sonbong-si	1114	2016-07-03 13:33:13.827162	2016-07-03 13:33:13.827162
1068	Seoul Teugbyeolsi	1115	2016-07-03 13:33:13.831612	2016-07-03 13:33:13.831612
1069	Busan Gwang'yeogsi	1115	2016-07-03 13:33:13.834897	2016-07-03 13:33:13.834897
1070	Daegu Gwang'yeogsi	1115	2016-07-03 13:33:13.837735	2016-07-03 13:33:13.837735
1071	Daejeon Gwang'yeogsi	1115	2016-07-03 13:33:13.842474	2016-07-03 13:33:13.842474
1072	Gwangju Gwang'yeogsi	1115	2016-07-03 13:33:13.845689	2016-07-03 13:33:13.845689
1073	Incheon Gwang'yeogsi	1115	2016-07-03 13:33:13.849455	2016-07-03 13:33:13.849455
1074	Ulsan Gwang'yeogsi	1115	2016-07-03 13:33:13.853021	2016-07-03 13:33:13.853021
1075	Chungcheongbugdo	1115	2016-07-03 13:33:13.856665	2016-07-03 13:33:13.856665
1076	Chungcheongnamdo	1115	2016-07-03 13:33:13.860198	2016-07-03 13:33:13.860198
1077	Gang'weondo	1115	2016-07-03 13:33:13.864585	2016-07-03 13:33:13.864585
1078	Gyeonggido	1115	2016-07-03 13:33:13.868835	2016-07-03 13:33:13.868835
1079	Gyeongsangbugdo	1115	2016-07-03 13:33:13.872593	2016-07-03 13:33:13.872593
1080	Gyeongsangnamdo	1115	2016-07-03 13:33:13.87621	2016-07-03 13:33:13.87621
1081	Jejudo	1115	2016-07-03 13:33:13.880209	2016-07-03 13:33:13.880209
1082	Jeonrabugdo	1115	2016-07-03 13:33:13.890061	2016-07-03 13:33:13.890061
1083	Jeonranamdo	1115	2016-07-03 13:33:13.896066	2016-07-03 13:33:13.896066
1084	Beirout	1120	2016-07-03 13:33:13.900133	2016-07-03 13:33:13.900133
1085	El Begsa	1120	2016-07-03 13:33:13.907191	2016-07-03 13:33:13.907191
1086	Jabal Loubnane	1120	2016-07-03 13:33:13.911173	2016-07-03 13:33:13.911173
1087	Loubnane ech Chemali	1120	2016-07-03 13:33:13.914807	2016-07-03 13:33:13.914807
1088	Loubnane ej Jnoubi	1120	2016-07-03 13:33:13.919187	2016-07-03 13:33:13.919187
1089	Nabatiye	1120	2016-07-03 13:33:13.922252	2016-07-03 13:33:13.922252
1090	Aguascalientes	1140	2016-07-03 13:33:13.926695	2016-07-03 13:33:13.926695
1091	Baja California	1140	2016-07-03 13:33:13.930132	2016-07-03 13:33:13.930132
1092	Baja California Sur	1140	2016-07-03 13:33:13.934091	2016-07-03 13:33:13.934091
1093	Campeche	1140	2016-07-03 13:33:13.937634	2016-07-03 13:33:13.937634
1094	Coahuila	1140	2016-07-03 13:33:13.941339	2016-07-03 13:33:13.941339
1095	Colima	1140	2016-07-03 13:33:13.944755	2016-07-03 13:33:13.944755
1096	Chiapas	1140	2016-07-03 13:33:13.948097	2016-07-03 13:33:13.948097
1097	Chihuahua	1140	2016-07-03 13:33:13.951299	2016-07-03 13:33:13.951299
1098	Durango	1140	2016-07-03 13:33:13.955017	2016-07-03 13:33:13.955017
1099	Guanajuato	1140	2016-07-03 13:33:13.959308	2016-07-03 13:33:13.959308
1100	Guerrero	1140	2016-07-03 13:33:13.962494	2016-07-03 13:33:13.962494
1101	Hidalgo	1140	2016-07-03 13:33:13.969463	2016-07-03 13:33:13.969463
1102	Jalisco	1140	2016-07-03 13:33:13.973254	2016-07-03 13:33:13.973254
1103	Mexico	1140	2016-07-03 13:33:13.977289	2016-07-03 13:33:13.977289
1104	Michoacin	1140	2016-07-03 13:33:13.980538	2016-07-03 13:33:13.980538
1105	Morelos	1140	2016-07-03 13:33:13.984549	2016-07-03 13:33:13.984549
1106	Nayarit	1140	2016-07-03 13:33:13.999886	2016-07-03 13:33:13.999886
1107	Nuevo Leon	1140	2016-07-03 13:33:14.003916	2016-07-03 13:33:14.003916
1108	Oaxaca	1140	2016-07-03 13:33:14.007461	2016-07-03 13:33:14.007461
1109	Puebla	1140	2016-07-03 13:33:14.010727	2016-07-03 13:33:14.010727
1110	Queretaro	1140	2016-07-03 13:33:14.015019	2016-07-03 13:33:14.015019
1111	Quintana Roo	1140	2016-07-03 13:33:14.018561	2016-07-03 13:33:14.018561
1112	San Luis Potosi	1140	2016-07-03 13:33:14.02181	2016-07-03 13:33:14.02181
1113	Sinaloa	1140	2016-07-03 13:33:14.025116	2016-07-03 13:33:14.025116
1114	Sonora	1140	2016-07-03 13:33:14.029851	2016-07-03 13:33:14.029851
1115	Tabasco	1140	2016-07-03 13:33:14.033864	2016-07-03 13:33:14.033864
1116	Tamaulipas	1140	2016-07-03 13:33:14.037382	2016-07-03 13:33:14.037382
1117	Tlaxcala	1140	2016-07-03 13:33:14.040702	2016-07-03 13:33:14.040702
1118	Veracruz	1140	2016-07-03 13:33:14.045716	2016-07-03 13:33:14.045716
1119	Yucatan	1140	2016-07-03 13:33:14.048871	2016-07-03 13:33:14.048871
1120	Zacatecas	1140	2016-07-03 13:33:14.052448	2016-07-03 13:33:14.052448
1121	Abuja Capital Territory	1157	2016-07-03 13:33:14.056348	2016-07-03 13:33:14.056348
1122	Abia	1157	2016-07-03 13:33:14.06047	2016-07-03 13:33:14.06047
1123	Adamawa	1157	2016-07-03 13:33:14.063807	2016-07-03 13:33:14.063807
1124	Akwa Ibom	1157	2016-07-03 13:33:14.067136	2016-07-03 13:33:14.067136
1125	Anambra	1157	2016-07-03 13:33:14.071243	2016-07-03 13:33:14.071243
1126	Bauchi	1157	2016-07-03 13:33:14.075308	2016-07-03 13:33:14.075308
1127	Bayelsa	1157	2016-07-03 13:33:14.078502	2016-07-03 13:33:14.078502
1128	Benue	1157	2016-07-03 13:33:14.082375	2016-07-03 13:33:14.082375
1129	Borno	1157	2016-07-03 13:33:14.086087	2016-07-03 13:33:14.086087
1130	Cross River	1157	2016-07-03 13:33:14.090074	2016-07-03 13:33:14.090074
1131	Delta	1157	2016-07-03 13:33:14.093138	2016-07-03 13:33:14.093138
1132	Ebonyi	1157	2016-07-03 13:33:14.096964	2016-07-03 13:33:14.096964
1133	Edo	1157	2016-07-03 13:33:14.100617	2016-07-03 13:33:14.100617
1134	Ekiti	1157	2016-07-03 13:33:14.104023	2016-07-03 13:33:14.104023
1135	Enugu	1157	2016-07-03 13:33:14.107348	2016-07-03 13:33:14.107348
1136	Gombe	1157	2016-07-03 13:33:14.111866	2016-07-03 13:33:14.111866
1137	Imo	1157	2016-07-03 13:33:14.115182	2016-07-03 13:33:14.115182
1138	Jigawa	1157	2016-07-03 13:33:14.119299	2016-07-03 13:33:14.119299
1139	Kaduna	1157	2016-07-03 13:33:14.122486	2016-07-03 13:33:14.122486
1140	Kano	1157	2016-07-03 13:33:14.126631	2016-07-03 13:33:14.126631
1141	Katsina	1157	2016-07-03 13:33:14.130861	2016-07-03 13:33:14.130861
1142	Kebbi	1157	2016-07-03 13:33:14.134103	2016-07-03 13:33:14.134103
1143	Kogi	1157	2016-07-03 13:33:14.138022	2016-07-03 13:33:14.138022
1144	Kwara	1157	2016-07-03 13:33:14.141469	2016-07-03 13:33:14.141469
1145	Lagos	1157	2016-07-03 13:33:14.145349	2016-07-03 13:33:14.145349
1146	Nassarawa	1157	2016-07-03 13:33:14.149116	2016-07-03 13:33:14.149116
1147	Niger	1157	2016-07-03 13:33:14.152548	2016-07-03 13:33:14.152548
1148	Ogun	1157	2016-07-03 13:33:14.156625	2016-07-03 13:33:14.156625
1149	Ondo	1157	2016-07-03 13:33:14.160983	2016-07-03 13:33:14.160983
1150	Osun	1157	2016-07-03 13:33:14.164928	2016-07-03 13:33:14.164928
1151	Oyo	1157	2016-07-03 13:33:14.168541	2016-07-03 13:33:14.168541
1152	Rivers	1157	2016-07-03 13:33:14.172198	2016-07-03 13:33:14.172198
1153	Sokoto	1157	2016-07-03 13:33:14.176355	2016-07-03 13:33:14.176355
1154	Taraba	1157	2016-07-03 13:33:14.17989	2016-07-03 13:33:14.17989
1155	Yobe	1157	2016-07-03 13:33:14.183531	2016-07-03 13:33:14.183531
1156	Zamfara	1157	2016-07-03 13:33:14.186873	2016-07-03 13:33:14.186873
1157	Akershus	1161	2016-07-03 13:33:14.190567	2016-07-03 13:33:14.190567
1158	Aust-Agder	1161	2016-07-03 13:33:14.194529	2016-07-03 13:33:14.194529
1159	Buskerud	1161	2016-07-03 13:33:14.1978	2016-07-03 13:33:14.1978
1160	Finumark	1161	2016-07-03 13:33:14.210473	2016-07-03 13:33:14.210473
1161	Hedmark	1161	2016-07-03 13:33:14.216538	2016-07-03 13:33:14.216538
1162	Hordaland	1161	2016-07-03 13:33:14.22055	2016-07-03 13:33:14.22055
1163	Mire og Romsdal	1161	2016-07-03 13:33:14.224831	2016-07-03 13:33:14.224831
1164	Nordland	1161	2016-07-03 13:33:14.228548	2016-07-03 13:33:14.228548
1165	Nord-Trindelag	1161	2016-07-03 13:33:14.231576	2016-07-03 13:33:14.231576
1166	Oppland	1161	2016-07-03 13:33:14.234857	2016-07-03 13:33:14.234857
1167	Oslo	1161	2016-07-03 13:33:14.238561	2016-07-03 13:33:14.238561
1168	Rogaland	1161	2016-07-03 13:33:14.242497	2016-07-03 13:33:14.242497
1169	Sogn og Fjordane	1161	2016-07-03 13:33:14.245734	2016-07-03 13:33:14.245734
1170	Sir-Trindelag	1161	2016-07-03 13:33:14.249719	2016-07-03 13:33:14.249719
1171	Telemark	1161	2016-07-03 13:33:14.253414	2016-07-03 13:33:14.253414
1172	Troms	1161	2016-07-03 13:33:14.256763	2016-07-03 13:33:14.256763
1173	Vest-Agder	1161	2016-07-03 13:33:14.260669	2016-07-03 13:33:14.260669
1174	Vestfold	1161	2016-07-03 13:33:14.264176	2016-07-03 13:33:14.264176
1175	Ostfold	1161	2016-07-03 13:33:14.267485	2016-07-03 13:33:14.267485
1176	Jan Mayen	1161	2016-07-03 13:33:14.27257	2016-07-03 13:33:14.27257
1177	Svalbard	1161	2016-07-03 13:33:14.277807	2016-07-03 13:33:14.277807
1178	Auckland	1154	2016-07-03 13:33:14.281563	2016-07-03 13:33:14.281563
1179	Bay of Plenty	1154	2016-07-03 13:33:14.28521	2016-07-03 13:33:14.28521
1180	Canterbury	1154	2016-07-03 13:33:14.289259	2016-07-03 13:33:14.289259
1181	Gisborne	1154	2016-07-03 13:33:14.29427	2016-07-03 13:33:14.29427
1182	Hawkes Bay	1154	2016-07-03 13:33:14.298003	2016-07-03 13:33:14.298003
1183	Manawatu-Wanganui	1154	2016-07-03 13:33:14.301701	2016-07-03 13:33:14.301701
1184	Marlborough	1154	2016-07-03 13:33:14.306002	2016-07-03 13:33:14.306002
1185	Nelson	1154	2016-07-03 13:33:14.309935	2016-07-03 13:33:14.309935
1186	Northland	1154	2016-07-03 13:33:14.315102	2016-07-03 13:33:14.315102
1187	Otago	1154	2016-07-03 13:33:14.318899	2016-07-03 13:33:14.318899
1188	Southland	1154	2016-07-03 13:33:14.322966	2016-07-03 13:33:14.322966
1189	Taranaki	1154	2016-07-03 13:33:14.327151	2016-07-03 13:33:14.327151
1190	Tasman	1154	2016-07-03 13:33:14.331045	2016-07-03 13:33:14.331045
1191	waikato	1154	2016-07-03 13:33:14.335087	2016-07-03 13:33:14.335087
1192	Wellington	1154	2016-07-03 13:33:14.33872	2016-07-03 13:33:14.33872
1193	West Coast	1154	2016-07-03 13:33:14.343326	2016-07-03 13:33:14.343326
1194	El Callao	1169	2016-07-03 13:33:14.347581	2016-07-03 13:33:14.347581
1195	Ancash	1169	2016-07-03 13:33:14.351447	2016-07-03 13:33:14.351447
1196	Apurimac	1169	2016-07-03 13:33:14.355124	2016-07-03 13:33:14.355124
1197	Arequipa	1169	2016-07-03 13:33:14.358625	2016-07-03 13:33:14.358625
1198	Ayacucho	1169	2016-07-03 13:33:14.363541	2016-07-03 13:33:14.363541
1199	Cajamarca	1169	2016-07-03 13:33:14.367462	2016-07-03 13:33:14.367462
1200	Cuzco	1169	2016-07-03 13:33:14.371306	2016-07-03 13:33:14.371306
1201	Huancavelica	1169	2016-07-03 13:33:14.380153	2016-07-03 13:33:14.380153
1202	Huanuco	1169	2016-07-03 13:33:14.384916	2016-07-03 13:33:14.384916
1203	Ica	1169	2016-07-03 13:33:14.389044	2016-07-03 13:33:14.389044
1204	Junin	1169	2016-07-03 13:33:14.394442	2016-07-03 13:33:14.394442
1205	La Libertad	1169	2016-07-03 13:33:14.398304	2016-07-03 13:33:14.398304
1206	Lambayeque	1169	2016-07-03 13:33:14.402383	2016-07-03 13:33:14.402383
1207	Lima	1169	2016-07-03 13:33:14.406838	2016-07-03 13:33:14.406838
1208	Loreto	1169	2016-07-03 13:33:14.410534	2016-07-03 13:33:14.410534
1209	Madre de Dios	1169	2016-07-03 13:33:14.417079	2016-07-03 13:33:14.417079
1210	Moquegua	1169	2016-07-03 13:33:14.426465	2016-07-03 13:33:14.426465
1211	Pasco	1169	2016-07-03 13:33:14.435485	2016-07-03 13:33:14.435485
1212	Piura	1169	2016-07-03 13:33:14.440307	2016-07-03 13:33:14.440307
1213	Puno	1169	2016-07-03 13:33:14.444868	2016-07-03 13:33:14.444868
1214	San Martin	1169	2016-07-03 13:33:14.449131	2016-07-03 13:33:14.449131
1215	Tacna	1169	2016-07-03 13:33:14.453169	2016-07-03 13:33:14.453169
1216	Tumbes	1169	2016-07-03 13:33:14.458677	2016-07-03 13:33:14.458677
1217	Ucayali	1169	2016-07-03 13:33:14.465459	2016-07-03 13:33:14.465459
1218	Adygeya, Respublika	1177	2016-07-03 13:33:14.470846	2016-07-03 13:33:14.470846
1219	Altay, Respublika	1177	2016-07-03 13:33:14.476191	2016-07-03 13:33:14.476191
1220	Bashkortostan, Respublika	1177	2016-07-03 13:33:14.486215	2016-07-03 13:33:14.486215
1221	Buryatiya, Respublika	1177	2016-07-03 13:33:14.491461	2016-07-03 13:33:14.491461
1222	Chechenskaya Respublika	1177	2016-07-03 13:33:14.495476	2016-07-03 13:33:14.495476
1223	Chuvashskaya Respublika	1177	2016-07-03 13:33:14.499643	2016-07-03 13:33:14.499643
1224	Dagestan, Respublika	1177	2016-07-03 13:33:14.504521	2016-07-03 13:33:14.504521
1225	Ingushskaya Respublika	1177	2016-07-03 13:33:14.508175	2016-07-03 13:33:14.508175
1226	Kabardino-Balkarskaya	1177	2016-07-03 13:33:14.512041	2016-07-03 13:33:14.512041
1227	Kalmykiya, Respublika	1177	2016-07-03 13:33:14.516235	2016-07-03 13:33:14.516235
1228	Karachayevo-Cherkesskaya Respublika	1177	2016-07-03 13:33:14.520569	2016-07-03 13:33:14.520569
1229	Kareliya, Respublika	1177	2016-07-03 13:33:14.524581	2016-07-03 13:33:14.524581
1230	Khakasiya, Respublika	1177	2016-07-03 13:33:14.529098	2016-07-03 13:33:14.529098
1231	Komi, Respublika	1177	2016-07-03 13:33:14.533674	2016-07-03 13:33:14.533674
1232	Mariy El, Respublika	1177	2016-07-03 13:33:14.537252	2016-07-03 13:33:14.537252
1233	Mordoviya, Respublika	1177	2016-07-03 13:33:14.54148	2016-07-03 13:33:14.54148
1234	Sakha, Respublika [Yakutiya]	1177	2016-07-03 13:33:14.545375	2016-07-03 13:33:14.545375
1235	Severnaya Osetiya, Respublika	1177	2016-07-03 13:33:14.549706	2016-07-03 13:33:14.549706
1236	Tatarstan, Respublika	1177	2016-07-03 13:33:14.553049	2016-07-03 13:33:14.553049
1237	Tyva, Respublika [Tuva]	1177	2016-07-03 13:33:14.557803	2016-07-03 13:33:14.557803
1238	Udmurtskaya Respublika	1177	2016-07-03 13:33:14.562516	2016-07-03 13:33:14.562516
1239	Altayskiy kray	1177	2016-07-03 13:33:14.565986	2016-07-03 13:33:14.565986
1240	Khabarovskiy kray	1177	2016-07-03 13:33:14.571116	2016-07-03 13:33:14.571116
1351	Maha Sarakham	1211	2016-07-03 13:33:15.083461	2016-07-03 13:33:15.083461
1241	Krasnodarskiy kray	1177	2016-07-03 13:33:14.574938	2016-07-03 13:33:14.574938
1242	Krasnoyarskiy kray	1177	2016-07-03 13:33:14.578734	2016-07-03 13:33:14.578734
1243	Primorskiy kray	1177	2016-07-03 13:33:14.582731	2016-07-03 13:33:14.582731
1244	Stavropol'skiy kray	1177	2016-07-03 13:33:14.58846	2016-07-03 13:33:14.58846
1245	Amurskaya oblast'	1177	2016-07-03 13:33:14.592177	2016-07-03 13:33:14.592177
1246	Arkhangel'skaya oblast'	1177	2016-07-03 13:33:14.596357	2016-07-03 13:33:14.596357
1247	Astrakhanskaya oblast'	1177	2016-07-03 13:33:14.600687	2016-07-03 13:33:14.600687
1248	Belgorodskaya oblast'	1177	2016-07-03 13:33:14.604782	2016-07-03 13:33:14.604782
1249	Bryanskaya oblast'	1177	2016-07-03 13:33:14.608669	2016-07-03 13:33:14.608669
1250	Chelyabinskaya oblast'	1177	2016-07-03 13:33:14.6141	2016-07-03 13:33:14.6141
1251	Chitinskaya oblast'	1177	2016-07-03 13:33:14.617725	2016-07-03 13:33:14.617725
1252	Irkutskaya oblast'	1177	2016-07-03 13:33:14.621329	2016-07-03 13:33:14.621329
1253	Ivanovskaya oblast'	1177	2016-07-03 13:33:14.62626	2016-07-03 13:33:14.62626
1254	Kaliningradskaya oblast'	1177	2016-07-03 13:33:14.631519	2016-07-03 13:33:14.631519
1255	Kaluzhskaya oblast'	1177	2016-07-03 13:33:14.635505	2016-07-03 13:33:14.635505
1256	Kamchatskaya oblast'	1177	2016-07-03 13:33:14.643434	2016-07-03 13:33:14.643434
1257	Kemerovskaya oblast'	1177	2016-07-03 13:33:14.655042	2016-07-03 13:33:14.655042
1258	Kirovskaya oblast'	1177	2016-07-03 13:33:14.659686	2016-07-03 13:33:14.659686
1259	Kostromskaya oblast'	1177	2016-07-03 13:33:14.663484	2016-07-03 13:33:14.663484
1260	Kurganskaya oblast'	1177	2016-07-03 13:33:14.669168	2016-07-03 13:33:14.669168
1261	Kurskaya oblast'	1177	2016-07-03 13:33:14.675059	2016-07-03 13:33:14.675059
1262	Leningradskaya oblast'	1177	2016-07-03 13:33:14.678905	2016-07-03 13:33:14.678905
1263	Lipetskaya oblast'	1177	2016-07-03 13:33:14.68366	2016-07-03 13:33:14.68366
1264	Magadanskaya oblast'	1177	2016-07-03 13:33:14.687281	2016-07-03 13:33:14.687281
1265	Moskovskaya oblast'	1177	2016-07-03 13:33:14.691575	2016-07-03 13:33:14.691575
1266	Murmanskaya oblast'	1177	2016-07-03 13:33:14.696059	2016-07-03 13:33:14.696059
1267	Nizhegorodskaya oblast'	1177	2016-07-03 13:33:14.700304	2016-07-03 13:33:14.700304
1268	Novgorodskaya oblast'	1177	2016-07-03 13:33:14.7043	2016-07-03 13:33:14.7043
1269	Novosibirskaya oblast'	1177	2016-07-03 13:33:14.708717	2016-07-03 13:33:14.708717
1270	Omskaya oblast'	1177	2016-07-03 13:33:14.712821	2016-07-03 13:33:14.712821
1271	Orenburgskaya oblast'	1177	2016-07-03 13:33:14.716251	2016-07-03 13:33:14.716251
1272	Orlovskaya oblast'	1177	2016-07-03 13:33:14.719933	2016-07-03 13:33:14.719933
1273	Penzenskaya oblast'	1177	2016-07-03 13:33:14.724471	2016-07-03 13:33:14.724471
1274	Permskaya oblast'	1177	2016-07-03 13:33:14.728627	2016-07-03 13:33:14.728627
1275	Pskovskaya oblast'	1177	2016-07-03 13:33:14.732527	2016-07-03 13:33:14.732527
1276	Rostovskaya oblast'	1177	2016-07-03 13:33:14.736618	2016-07-03 13:33:14.736618
1277	Ryazanskaya oblast'	1177	2016-07-03 13:33:14.740369	2016-07-03 13:33:14.740369
1278	Sakhalinskaya oblast'	1177	2016-07-03 13:33:14.744504	2016-07-03 13:33:14.744504
1279	Samarskaya oblast'	1177	2016-07-03 13:33:14.748599	2016-07-03 13:33:14.748599
1280	Saratovskaya oblast'	1177	2016-07-03 13:33:14.75258	2016-07-03 13:33:14.75258
1281	Smolenskaya oblast'	1177	2016-07-03 13:33:14.756429	2016-07-03 13:33:14.756429
1282	Sverdlovskaya oblast'	1177	2016-07-03 13:33:14.760452	2016-07-03 13:33:14.760452
1283	Tambovskaya oblast'	1177	2016-07-03 13:33:14.764469	2016-07-03 13:33:14.764469
1284	Tomskaya oblast'	1177	2016-07-03 13:33:14.768529	2016-07-03 13:33:14.768529
1285	Tul'skaya oblast'	1177	2016-07-03 13:33:14.772985	2016-07-03 13:33:14.772985
1286	Tverskaya oblast'	1177	2016-07-03 13:33:14.777968	2016-07-03 13:33:14.777968
1287	Tyumenskaya oblast'	1177	2016-07-03 13:33:14.781877	2016-07-03 13:33:14.781877
1288	Ul'yanovskaya oblast'	1177	2016-07-03 13:33:14.786039	2016-07-03 13:33:14.786039
1289	Vladimirskaya oblast'	1177	2016-07-03 13:33:14.789905	2016-07-03 13:33:14.789905
1290	Volgogradskaya oblast'	1177	2016-07-03 13:33:14.794506	2016-07-03 13:33:14.794506
1291	Vologodskaya oblast'	1177	2016-07-03 13:33:14.79855	2016-07-03 13:33:14.79855
1292	Voronezhskaya oblast'	1177	2016-07-03 13:33:14.80272	2016-07-03 13:33:14.80272
1293	Yaroslavskaya oblast'	1177	2016-07-03 13:33:14.807491	2016-07-03 13:33:14.807491
1294	Moskva	1177	2016-07-03 13:33:14.813794	2016-07-03 13:33:14.813794
1295	Sankt-Peterburg	1177	2016-07-03 13:33:14.818721	2016-07-03 13:33:14.818721
1296	Yevreyskaya avtonomnaya oblast'	1177	2016-07-03 13:33:14.823662	2016-07-03 13:33:14.823662
1297	Aginskiy Buryatskiy avtonomnyy	1177	2016-07-03 13:33:14.827707	2016-07-03 13:33:14.827707
1298	Chukotskiy avtonomnyy okrug	1177	2016-07-03 13:33:14.832266	2016-07-03 13:33:14.832266
1299	Evenkiyskiy avtonomnyy okrug	1177	2016-07-03 13:33:14.836137	2016-07-03 13:33:14.836137
1300	Khanty-Mansiyskiy avtonomnyy okrug	1177	2016-07-03 13:33:14.841093	2016-07-03 13:33:14.841093
1301	Komi-Permyatskiy avtonomnyy okrug	1177	2016-07-03 13:33:14.845771	2016-07-03 13:33:14.845771
1302	Koryakskiy avtonomnyy okrug	1177	2016-07-03 13:33:14.849801	2016-07-03 13:33:14.849801
1303	Nenetskiy avtonomnyy okrug	1177	2016-07-03 13:33:14.853371	2016-07-03 13:33:14.853371
1304	Taymyrskiy (Dolgano-Nenetskiy)	1177	2016-07-03 13:33:14.868507	2016-07-03 13:33:14.868507
1305	Ust'-Ordynskiy Buryatskiy	1177	2016-07-03 13:33:14.872955	2016-07-03 13:33:14.872955
1306	Yamalo-Nenetskiy avtonomnyy okrug	1177	2016-07-03 13:33:14.877308	2016-07-03 13:33:14.877308
1307	Blekinge lan	1204	2016-07-03 13:33:14.880864	2016-07-03 13:33:14.880864
1308	Dalarnas lan	1204	2016-07-03 13:33:14.88499	2016-07-03 13:33:14.88499
1309	Gotlands lan	1204	2016-07-03 13:33:14.888881	2016-07-03 13:33:14.888881
1310	Gavleborge lan	1204	2016-07-03 13:33:14.893246	2016-07-03 13:33:14.893246
1311	Hallands lan	1204	2016-07-03 13:33:14.896536	2016-07-03 13:33:14.896536
1312	Jamtlande lan	1204	2016-07-03 13:33:14.900726	2016-07-03 13:33:14.900726
1313	Jonkopings lan	1204	2016-07-03 13:33:14.90449	2016-07-03 13:33:14.90449
1314	Kalmar lan	1204	2016-07-03 13:33:14.908101	2016-07-03 13:33:14.908101
1315	Kronoberge lan	1204	2016-07-03 13:33:14.912234	2016-07-03 13:33:14.912234
1316	Norrbottena lan	1204	2016-07-03 13:33:14.916619	2016-07-03 13:33:14.916619
1317	Skane lan	1204	2016-07-03 13:33:14.920268	2016-07-03 13:33:14.920268
1318	Stockholms lan	1204	2016-07-03 13:33:14.924258	2016-07-03 13:33:14.924258
1319	Sodermanlands lan	1204	2016-07-03 13:33:14.928408	2016-07-03 13:33:14.928408
1320	Uppsala lan	1204	2016-07-03 13:33:14.932144	2016-07-03 13:33:14.932144
1321	Varmlanda lan	1204	2016-07-03 13:33:14.936419	2016-07-03 13:33:14.936419
1322	Vasterbottens lan	1204	2016-07-03 13:33:14.940686	2016-07-03 13:33:14.940686
1323	Vasternorrlands lan	1204	2016-07-03 13:33:14.945002	2016-07-03 13:33:14.945002
1324	Vastmanlanda lan	1204	2016-07-03 13:33:14.949227	2016-07-03 13:33:14.949227
1325	Vastra Gotalands lan	1204	2016-07-03 13:33:14.953046	2016-07-03 13:33:14.953046
1326	Orebro lan	1204	2016-07-03 13:33:14.957078	2016-07-03 13:33:14.957078
1327	Ostergotlands lan	1204	2016-07-03 13:33:14.960636	2016-07-03 13:33:14.960636
1328	Krung Thep Maha Nakhon Bangkok	1211	2016-07-03 13:33:14.964752	2016-07-03 13:33:14.964752
1329	Phatthaya	1211	2016-07-03 13:33:14.968816	2016-07-03 13:33:14.968816
1330	Amnat Charoen	1211	2016-07-03 13:33:14.97282	2016-07-03 13:33:14.97282
1331	Ang Thong	1211	2016-07-03 13:33:14.976554	2016-07-03 13:33:14.976554
1332	Buri Ram	1211	2016-07-03 13:33:14.981026	2016-07-03 13:33:14.981026
1333	Chachoengsao	1211	2016-07-03 13:33:14.985046	2016-07-03 13:33:14.985046
1334	Chai Nat	1211	2016-07-03 13:33:14.989165	2016-07-03 13:33:14.989165
1335	Chaiyaphum	1211	2016-07-03 13:33:14.992897	2016-07-03 13:33:14.992897
1336	Chanthaburi	1211	2016-07-03 13:33:14.99893	2016-07-03 13:33:14.99893
1337	Chiang Mai	1211	2016-07-03 13:33:15.004758	2016-07-03 13:33:15.004758
1338	Chiang Rai	1211	2016-07-03 13:33:15.0091	2016-07-03 13:33:15.0091
1339	Chon Buri	1211	2016-07-03 13:33:15.013397	2016-07-03 13:33:15.013397
1340	Chumphon	1211	2016-07-03 13:33:15.017596	2016-07-03 13:33:15.017596
1341	Kalasin	1211	2016-07-03 13:33:15.021878	2016-07-03 13:33:15.021878
1342	Kamphasng Phet	1211	2016-07-03 13:33:15.030936	2016-07-03 13:33:15.030936
1343	Kanchanaburi	1211	2016-07-03 13:33:15.03672	2016-07-03 13:33:15.03672
1344	Khon Kaen	1211	2016-07-03 13:33:15.040755	2016-07-03 13:33:15.040755
1345	Krabi	1211	2016-07-03 13:33:15.047027	2016-07-03 13:33:15.047027
1346	Lampang	1211	2016-07-03 13:33:15.0511	2016-07-03 13:33:15.0511
1347	Lamphun	1211	2016-07-03 13:33:15.055749	2016-07-03 13:33:15.055749
1348	Loei	1211	2016-07-03 13:33:15.059688	2016-07-03 13:33:15.059688
1349	Lop Buri	1211	2016-07-03 13:33:15.064458	2016-07-03 13:33:15.064458
1350	Mae Hong Son	1211	2016-07-03 13:33:15.068908	2016-07-03 13:33:15.068908
1352	Mukdahan	1211	2016-07-03 13:33:15.087509	2016-07-03 13:33:15.087509
1353	Nakhon Nayok	1211	2016-07-03 13:33:15.091297	2016-07-03 13:33:15.091297
1354	Nakhon Pathom	1211	2016-07-03 13:33:15.095609	2016-07-03 13:33:15.095609
1355	Nakhon Phanom	1211	2016-07-03 13:33:15.099637	2016-07-03 13:33:15.099637
1356	Nakhon Ratchasima	1211	2016-07-03 13:33:15.103426	2016-07-03 13:33:15.103426
1357	Nakhon Sawan	1211	2016-07-03 13:33:15.106932	2016-07-03 13:33:15.106932
1358	Nakhon Si Thammarat	1211	2016-07-03 13:33:15.111528	2016-07-03 13:33:15.111528
1359	Nan	1211	2016-07-03 13:33:15.115275	2016-07-03 13:33:15.115275
1360	Narathiwat	1211	2016-07-03 13:33:15.118439	2016-07-03 13:33:15.118439
1361	Nong Bua Lam Phu	1211	2016-07-03 13:33:15.123059	2016-07-03 13:33:15.123059
1362	Nong Khai	1211	2016-07-03 13:33:15.126792	2016-07-03 13:33:15.126792
1363	Nonthaburi	1211	2016-07-03 13:33:15.130038	2016-07-03 13:33:15.130038
1364	Pathum Thani	1211	2016-07-03 13:33:15.134608	2016-07-03 13:33:15.134608
1365	Pattani	1211	2016-07-03 13:33:15.138712	2016-07-03 13:33:15.138712
1366	Phangnga	1211	2016-07-03 13:33:15.143469	2016-07-03 13:33:15.143469
1367	Phatthalung	1211	2016-07-03 13:33:15.147272	2016-07-03 13:33:15.147272
1368	Phayao	1211	2016-07-03 13:33:15.151302	2016-07-03 13:33:15.151302
1369	Phetchabun	1211	2016-07-03 13:33:15.154919	2016-07-03 13:33:15.154919
1370	Phetchaburi	1211	2016-07-03 13:33:15.159133	2016-07-03 13:33:15.159133
1371	Phichit	1211	2016-07-03 13:33:15.162804	2016-07-03 13:33:15.162804
1372	Phitsanulok	1211	2016-07-03 13:33:15.166675	2016-07-03 13:33:15.166675
1373	Phrae	1211	2016-07-03 13:33:15.170924	2016-07-03 13:33:15.170924
1374	Phra Nakhon Si Ayutthaya	1211	2016-07-03 13:33:15.174202	2016-07-03 13:33:15.174202
1375	Phaket	1211	2016-07-03 13:33:15.17827	2016-07-03 13:33:15.17827
1376	Prachin Buri	1211	2016-07-03 13:33:15.182826	2016-07-03 13:33:15.182826
1377	Prachuap Khiri Khan	1211	2016-07-03 13:33:15.186116	2016-07-03 13:33:15.186116
1378	Ranong	1211	2016-07-03 13:33:15.190343	2016-07-03 13:33:15.190343
1379	Ratchaburi	1211	2016-07-03 13:33:15.19426	2016-07-03 13:33:15.19426
1380	Rayong	1211	2016-07-03 13:33:15.197559	2016-07-03 13:33:15.197559
1381	Roi Et	1211	2016-07-03 13:33:15.201114	2016-07-03 13:33:15.201114
1382	Sa Kaeo	1211	2016-07-03 13:33:15.205717	2016-07-03 13:33:15.205717
1383	Sakon Nakhon	1211	2016-07-03 13:33:15.209519	2016-07-03 13:33:15.209519
1384	Samut Prakan	1211	2016-07-03 13:33:15.213206	2016-07-03 13:33:15.213206
1385	Samut Sakhon	1211	2016-07-03 13:33:15.216859	2016-07-03 13:33:15.216859
1386	Samut Songkhram	1211	2016-07-03 13:33:15.222262	2016-07-03 13:33:15.222262
1387	Saraburi	1211	2016-07-03 13:33:15.226097	2016-07-03 13:33:15.226097
1388	Satun	1211	2016-07-03 13:33:15.231233	2016-07-03 13:33:15.231233
1389	Sing Buri	1211	2016-07-03 13:33:15.236374	2016-07-03 13:33:15.236374
1390	Si Sa Ket	1211	2016-07-03 13:33:15.240457	2016-07-03 13:33:15.240457
1391	Songkhla	1211	2016-07-03 13:33:15.244265	2016-07-03 13:33:15.244265
1392	Sukhothai	1211	2016-07-03 13:33:15.248235	2016-07-03 13:33:15.248235
1393	Suphan Buri	1211	2016-07-03 13:33:15.252886	2016-07-03 13:33:15.252886
1394	Surat Thani	1211	2016-07-03 13:33:15.256724	2016-07-03 13:33:15.256724
1395	Surin	1211	2016-07-03 13:33:15.260691	2016-07-03 13:33:15.260691
1396	Tak	1211	2016-07-03 13:33:15.264583	2016-07-03 13:33:15.264583
1397	Trang	1211	2016-07-03 13:33:15.268867	2016-07-03 13:33:15.268867
1398	Trat	1211	2016-07-03 13:33:15.273574	2016-07-03 13:33:15.273574
1399	Ubon Ratchathani	1211	2016-07-03 13:33:15.27748	2016-07-03 13:33:15.27748
1400	Udon Thani	1211	2016-07-03 13:33:15.281094	2016-07-03 13:33:15.281094
1401	Uthai Thani	1211	2016-07-03 13:33:15.289239	2016-07-03 13:33:15.289239
1402	Uttaradit	1211	2016-07-03 13:33:15.297609	2016-07-03 13:33:15.297609
1403	Yala	1211	2016-07-03 13:33:15.308107	2016-07-03 13:33:15.308107
1404	Yasothon	1211	2016-07-03 13:33:15.312513	2016-07-03 13:33:15.312513
1405	Adana	1219	2016-07-03 13:33:15.316133	2016-07-03 13:33:15.316133
1406	Ad yaman	1219	2016-07-03 13:33:15.319594	2016-07-03 13:33:15.319594
1407	Afyon	1219	2016-07-03 13:33:15.323557	2016-07-03 13:33:15.323557
1408	Ag r	1219	2016-07-03 13:33:15.327498	2016-07-03 13:33:15.327498
1409	Aksaray	1219	2016-07-03 13:33:15.331346	2016-07-03 13:33:15.331346
1410	Amasya	1219	2016-07-03 13:33:15.335094	2016-07-03 13:33:15.335094
1411	Ankara	1219	2016-07-03 13:33:15.340141	2016-07-03 13:33:15.340141
1412	Antalya	1219	2016-07-03 13:33:15.343745	2016-07-03 13:33:15.343745
1413	Ardahan	1219	2016-07-03 13:33:15.347526	2016-07-03 13:33:15.347526
1414	Artvin	1219	2016-07-03 13:33:15.352471	2016-07-03 13:33:15.352471
1415	Aydin	1219	2016-07-03 13:33:15.356552	2016-07-03 13:33:15.356552
1416	Bal kesir	1219	2016-07-03 13:33:15.36051	2016-07-03 13:33:15.36051
1417	Bartin	1219	2016-07-03 13:33:15.36452	2016-07-03 13:33:15.36452
1418	Batman	1219	2016-07-03 13:33:15.367723	2016-07-03 13:33:15.367723
1419	Bayburt	1219	2016-07-03 13:33:15.372583	2016-07-03 13:33:15.372583
1420	Bilecik	1219	2016-07-03 13:33:15.376715	2016-07-03 13:33:15.376715
1421	Bingol	1219	2016-07-03 13:33:15.380687	2016-07-03 13:33:15.380687
1422	Bitlis	1219	2016-07-03 13:33:15.384835	2016-07-03 13:33:15.384835
1423	Bolu	1219	2016-07-03 13:33:15.389294	2016-07-03 13:33:15.389294
1424	Burdur	1219	2016-07-03 13:33:15.39355	2016-07-03 13:33:15.39355
1425	Bursa	1219	2016-07-03 13:33:15.397583	2016-07-03 13:33:15.397583
1426	Canakkale	1219	2016-07-03 13:33:15.401545	2016-07-03 13:33:15.401545
1427	Cankir	1219	2016-07-03 13:33:15.404977	2016-07-03 13:33:15.404977
1428	Corum	1219	2016-07-03 13:33:15.409246	2016-07-03 13:33:15.409246
1429	Denizli	1219	2016-07-03 13:33:15.415193	2016-07-03 13:33:15.415193
1430	Diyarbakir	1219	2016-07-03 13:33:15.419475	2016-07-03 13:33:15.419475
1431	Duzce	1219	2016-07-03 13:33:15.423811	2016-07-03 13:33:15.423811
1432	Edirne	1219	2016-07-03 13:33:15.428471	2016-07-03 13:33:15.428471
1433	Elazig	1219	2016-07-03 13:33:15.432677	2016-07-03 13:33:15.432677
1434	Erzincan	1219	2016-07-03 13:33:15.436528	2016-07-03 13:33:15.436528
1435	Erzurum	1219	2016-07-03 13:33:15.440515	2016-07-03 13:33:15.440515
1436	Eskis'ehir	1219	2016-07-03 13:33:15.445023	2016-07-03 13:33:15.445023
1437	Gaziantep	1219	2016-07-03 13:33:15.449618	2016-07-03 13:33:15.449618
1438	Giresun	1219	2016-07-03 13:33:15.45371	2016-07-03 13:33:15.45371
1439	Gms'hane	1219	2016-07-03 13:33:15.457656	2016-07-03 13:33:15.457656
1440	Hakkari	1219	2016-07-03 13:33:15.46141	2016-07-03 13:33:15.46141
1441	Hatay	1219	2016-07-03 13:33:15.466129	2016-07-03 13:33:15.466129
1442	Igidir	1219	2016-07-03 13:33:15.469804	2016-07-03 13:33:15.469804
1443	Isparta	1219	2016-07-03 13:33:15.474456	2016-07-03 13:33:15.474456
1444	Icel	1219	2016-07-03 13:33:15.477894	2016-07-03 13:33:15.477894
1445	Istanbul	1219	2016-07-03 13:33:15.482049	2016-07-03 13:33:15.482049
1446	Izmir	1219	2016-07-03 13:33:15.486617	2016-07-03 13:33:15.486617
1447	Kahramanmaras	1219	2016-07-03 13:33:15.490259	2016-07-03 13:33:15.490259
1448	Karabk	1219	2016-07-03 13:33:15.494476	2016-07-03 13:33:15.494476
1449	Karaman	1219	2016-07-03 13:33:15.499419	2016-07-03 13:33:15.499419
1450	Kars	1219	2016-07-03 13:33:15.503291	2016-07-03 13:33:15.503291
1451	Kastamonu	1219	2016-07-03 13:33:15.507552	2016-07-03 13:33:15.507552
1452	Kayseri	1219	2016-07-03 13:33:15.516168	2016-07-03 13:33:15.516168
1453	Kirikkale	1219	2016-07-03 13:33:15.526959	2016-07-03 13:33:15.526959
1454	Kirklareli	1219	2016-07-03 13:33:15.535334	2016-07-03 13:33:15.535334
1455	Kirs'ehir	1219	2016-07-03 13:33:15.539217	2016-07-03 13:33:15.539217
1456	Kilis	1219	2016-07-03 13:33:15.543391	2016-07-03 13:33:15.543391
1457	Kocaeli	1219	2016-07-03 13:33:15.547232	2016-07-03 13:33:15.547232
1458	Konya	1219	2016-07-03 13:33:15.551505	2016-07-03 13:33:15.551505
1459	Ktahya	1219	2016-07-03 13:33:15.555431	2016-07-03 13:33:15.555431
1460	Malatya	1219	2016-07-03 13:33:15.558974	2016-07-03 13:33:15.558974
1461	Manisa	1219	2016-07-03 13:33:15.563685	2016-07-03 13:33:15.563685
1462	Mardin	1219	2016-07-03 13:33:15.567461	2016-07-03 13:33:15.567461
1463	Mugila	1219	2016-07-03 13:33:15.571258	2016-07-03 13:33:15.571258
1464	Mus	1219	2016-07-03 13:33:15.575187	2016-07-03 13:33:15.575187
1465	Nevs'ehir	1219	2016-07-03 13:33:15.579044	2016-07-03 13:33:15.579044
1466	Nigide	1219	2016-07-03 13:33:15.582537	2016-07-03 13:33:15.582537
1467	Ordu	1219	2016-07-03 13:33:15.58719	2016-07-03 13:33:15.58719
1468	Osmaniye	1219	2016-07-03 13:33:15.590309	2016-07-03 13:33:15.590309
1469	Rize	1219	2016-07-03 13:33:15.601079	2016-07-03 13:33:15.601079
1470	Sakarya	1219	2016-07-03 13:33:15.606095	2016-07-03 13:33:15.606095
1471	Samsun	1219	2016-07-03 13:33:15.609806	2016-07-03 13:33:15.609806
1472	Siirt	1219	2016-07-03 13:33:15.615122	2016-07-03 13:33:15.615122
1473	Sinop	1219	2016-07-03 13:33:15.620262	2016-07-03 13:33:15.620262
1474	Sivas	1219	2016-07-03 13:33:15.623884	2016-07-03 13:33:15.623884
1475	S'anliurfa	1219	2016-07-03 13:33:15.628476	2016-07-03 13:33:15.628476
1476	S'rnak	1219	2016-07-03 13:33:15.632065	2016-07-03 13:33:15.632065
1477	Tekirdag	1219	2016-07-03 13:33:15.635687	2016-07-03 13:33:15.635687
1478	Tokat	1219	2016-07-03 13:33:15.639891	2016-07-03 13:33:15.639891
1479	Trabzon	1219	2016-07-03 13:33:15.644237	2016-07-03 13:33:15.644237
1480	Tunceli	1219	2016-07-03 13:33:15.648556	2016-07-03 13:33:15.648556
1481	Us'ak	1219	2016-07-03 13:33:15.653051	2016-07-03 13:33:15.653051
1482	Van	1219	2016-07-03 13:33:15.658301	2016-07-03 13:33:15.658301
1483	Yalova	1219	2016-07-03 13:33:15.662786	2016-07-03 13:33:15.662786
1484	Yozgat	1219	2016-07-03 13:33:15.667564	2016-07-03 13:33:15.667564
1485	Zonguldak	1219	2016-07-03 13:33:15.672197	2016-07-03 13:33:15.672197
1486	Changhua	1208	2016-07-03 13:33:15.67588	2016-07-03 13:33:15.67588
1487	Chiayi	1208	2016-07-03 13:33:15.680321	2016-07-03 13:33:15.680321
1488	Hsinchu	1208	2016-07-03 13:33:15.684073	2016-07-03 13:33:15.684073
1489	Hualien	1208	2016-07-03 13:33:15.687261	2016-07-03 13:33:15.687261
1490	Ilan	1208	2016-07-03 13:33:15.691221	2016-07-03 13:33:15.691221
1491	Kaohsiung	1208	2016-07-03 13:33:15.695652	2016-07-03 13:33:15.695652
1492	Miaoli	1208	2016-07-03 13:33:15.699229	2016-07-03 13:33:15.699229
1493	Nantou	1208	2016-07-03 13:33:15.702619	2016-07-03 13:33:15.702619
1494	Penghu	1208	2016-07-03 13:33:15.706269	2016-07-03 13:33:15.706269
1495	Pingtung	1208	2016-07-03 13:33:15.711284	2016-07-03 13:33:15.711284
1496	Taichung	1208	2016-07-03 13:33:15.715051	2016-07-03 13:33:15.715051
1497	Tainan	1208	2016-07-03 13:33:15.71838	2016-07-03 13:33:15.71838
1498	Taipei	1208	2016-07-03 13:33:15.723389	2016-07-03 13:33:15.723389
1499	Taitung	1208	2016-07-03 13:33:15.727117	2016-07-03 13:33:15.727117
1500	Taoyuan	1208	2016-07-03 13:33:15.731036	2016-07-03 13:33:15.731036
1501	Yunlin	1208	2016-07-03 13:33:15.735063	2016-07-03 13:33:15.735063
1502	Keelung	1208	2016-07-03 13:33:15.74575	2016-07-03 13:33:15.74575
1503	An Giang	1233	2016-07-03 13:33:15.754542	2016-07-03 13:33:15.754542
1504	Ba Ria - Vung Tau	1233	2016-07-03 13:33:15.758388	2016-07-03 13:33:15.758388
1505	Bac Can	1233	2016-07-03 13:33:15.762959	2016-07-03 13:33:15.762959
1506	Bac Giang	1233	2016-07-03 13:33:15.766813	2016-07-03 13:33:15.766813
1507	Bac Lieu	1233	2016-07-03 13:33:15.77035	2016-07-03 13:33:15.77035
1508	Bac Ninh	1233	2016-07-03 13:33:15.774003	2016-07-03 13:33:15.774003
1509	Ben Tre	1233	2016-07-03 13:33:15.778175	2016-07-03 13:33:15.778175
1510	Binh Dinh	1233	2016-07-03 13:33:15.781649	2016-07-03 13:33:15.781649
1511	Binh Duong	1233	2016-07-03 13:33:15.785179	2016-07-03 13:33:15.785179
1512	Binh Phuoc	1233	2016-07-03 13:33:15.788598	2016-07-03 13:33:15.788598
1513	Binh Thuan	1233	2016-07-03 13:33:15.792159	2016-07-03 13:33:15.792159
1514	Ca Mau	1233	2016-07-03 13:33:15.796366	2016-07-03 13:33:15.796366
1515	Can Tho	1233	2016-07-03 13:33:15.799875	2016-07-03 13:33:15.799875
1516	Cao Bang	1233	2016-07-03 13:33:15.803315	2016-07-03 13:33:15.803315
1517	Da Nang, thanh pho	1233	2016-07-03 13:33:15.807619	2016-07-03 13:33:15.807619
1518	Dong Nai	1233	2016-07-03 13:33:15.811091	2016-07-03 13:33:15.811091
1519	Dong Thap	1233	2016-07-03 13:33:15.814611	2016-07-03 13:33:15.814611
1520	Gia Lai	1233	2016-07-03 13:33:15.818719	2016-07-03 13:33:15.818719
1521	Ha Giang	1233	2016-07-03 13:33:15.822087	2016-07-03 13:33:15.822087
1522	Ha Nam	1233	2016-07-03 13:33:15.825492	2016-07-03 13:33:15.825492
1523	Ha Noi, thu do	1233	2016-07-03 13:33:15.828877	2016-07-03 13:33:15.828877
1524	Ha Tay	1233	2016-07-03 13:33:15.832483	2016-07-03 13:33:15.832483
1525	Ha Tinh	1233	2016-07-03 13:33:15.836907	2016-07-03 13:33:15.836907
1526	Hai Duong	1233	2016-07-03 13:33:15.840075	2016-07-03 13:33:15.840075
1527	Hai Phong, thanh pho	1233	2016-07-03 13:33:15.84344	2016-07-03 13:33:15.84344
1528	Hoa Binh	1233	2016-07-03 13:33:15.846834	2016-07-03 13:33:15.846834
1529	Ho Chi Minh, thanh pho [Sai Gon]	1233	2016-07-03 13:33:15.85082	2016-07-03 13:33:15.85082
1530	Hung Yen	1233	2016-07-03 13:33:15.854089	2016-07-03 13:33:15.854089
1531	Khanh Hoa	1233	2016-07-03 13:33:15.858316	2016-07-03 13:33:15.858316
1532	Kien Giang	1233	2016-07-03 13:33:15.861978	2016-07-03 13:33:15.861978
1533	Kon Tum	1233	2016-07-03 13:33:15.865321	2016-07-03 13:33:15.865321
1534	Lai Chau	1233	2016-07-03 13:33:15.869146	2016-07-03 13:33:15.869146
1535	Lam Dong	1233	2016-07-03 13:33:15.873183	2016-07-03 13:33:15.873183
1536	Lang Son	1233	2016-07-03 13:33:15.877486	2016-07-03 13:33:15.877486
1537	Lao Cai	1233	2016-07-03 13:33:15.881338	2016-07-03 13:33:15.881338
1538	Long An	1233	2016-07-03 13:33:15.88482	2016-07-03 13:33:15.88482
1539	Nam Dinh	1233	2016-07-03 13:33:15.888688	2016-07-03 13:33:15.888688
1540	Nghe An	1233	2016-07-03 13:33:15.892769	2016-07-03 13:33:15.892769
1541	Ninh Binh	1233	2016-07-03 13:33:15.895602	2016-07-03 13:33:15.895602
1542	Ninh Thuan	1233	2016-07-03 13:33:15.899068	2016-07-03 13:33:15.899068
1543	Phu Tho	1233	2016-07-03 13:33:15.903021	2016-07-03 13:33:15.903021
1544	Phu Yen	1233	2016-07-03 13:33:15.90625	2016-07-03 13:33:15.90625
1545	Quang Binh	1233	2016-07-03 13:33:15.909658	2016-07-03 13:33:15.909658
1546	Quang Nam	1233	2016-07-03 13:33:15.913911	2016-07-03 13:33:15.913911
1547	Quang Ngai	1233	2016-07-03 13:33:15.917315	2016-07-03 13:33:15.917315
1548	Quang Ninh	1233	2016-07-03 13:33:15.920898	2016-07-03 13:33:15.920898
1549	Quang Tri	1233	2016-07-03 13:33:15.92414	2016-07-03 13:33:15.92414
1550	Soc Trang	1233	2016-07-03 13:33:15.927081	2016-07-03 13:33:15.927081
1551	Son La	1233	2016-07-03 13:33:15.931302	2016-07-03 13:33:15.931302
1552	Tay Ninh	1233	2016-07-03 13:33:15.934689	2016-07-03 13:33:15.934689
1553	Thai Binh	1233	2016-07-03 13:33:15.938995	2016-07-03 13:33:15.938995
1554	Thai Nguyen	1233	2016-07-03 13:33:15.942487	2016-07-03 13:33:15.942487
1555	Thanh Hoa	1233	2016-07-03 13:33:15.945642	2016-07-03 13:33:15.945642
1556	Thua Thien-Hue	1233	2016-07-03 13:33:15.948905	2016-07-03 13:33:15.948905
1557	Tien Giang	1233	2016-07-03 13:33:15.964303	2016-07-03 13:33:15.964303
1558	Tra Vinh	1233	2016-07-03 13:33:15.968337	2016-07-03 13:33:15.968337
1559	Tuyen Quang	1233	2016-07-03 13:33:15.972183	2016-07-03 13:33:15.972183
1560	Vinh Long	1233	2016-07-03 13:33:15.976507	2016-07-03 13:33:15.976507
1561	Vinh Phuc	1233	2016-07-03 13:33:15.980318	2016-07-03 13:33:15.980318
1562	Yen Bai	1233	2016-07-03 13:33:15.984591	2016-07-03 13:33:15.984591
1563	Eastern Cape	1196	2016-07-03 13:33:15.988305	2016-07-03 13:33:15.988305
1564	Free State	1196	2016-07-03 13:33:15.992656	2016-07-03 13:33:15.992656
1565	Gauteng	1196	2016-07-03 13:33:15.997193	2016-07-03 13:33:15.997193
1566	Kwazulu-Natal	1196	2016-07-03 13:33:16.000886	2016-07-03 13:33:16.000886
1567	Mpumalanga	1196	2016-07-03 13:33:16.004705	2016-07-03 13:33:16.004705
1568	Northern Cape	1196	2016-07-03 13:33:16.009078	2016-07-03 13:33:16.009078
1569	Limpopo	1196	2016-07-03 13:33:16.013408	2016-07-03 13:33:16.013408
1570	Western Cape	1196	2016-07-03 13:33:16.016973	2016-07-03 13:33:16.016973
1571	Bulawayo	1240	2016-07-03 13:33:16.020844	2016-07-03 13:33:16.020844
1572	Harare	1240	2016-07-03 13:33:16.024627	2016-07-03 13:33:16.024627
1573	Manicaland	1240	2016-07-03 13:33:16.028138	2016-07-03 13:33:16.028138
1574	Mashonaland Central	1240	2016-07-03 13:33:16.031746	2016-07-03 13:33:16.031746
1575	Mashonaland East	1240	2016-07-03 13:33:16.036361	2016-07-03 13:33:16.036361
1576	Mashonaland West	1240	2016-07-03 13:33:16.040823	2016-07-03 13:33:16.040823
1577	Masvingo	1240	2016-07-03 13:33:16.047266	2016-07-03 13:33:16.047266
1578	Matabeleland North	1240	2016-07-03 13:33:16.051774	2016-07-03 13:33:16.051774
1579	Matabeleland South	1240	2016-07-03 13:33:16.056794	2016-07-03 13:33:16.056794
1580	Midlands	1240	2016-07-03 13:33:16.0606	2016-07-03 13:33:16.0606
1581	South Karelia	1075	2016-07-03 13:33:16.064521	2016-07-03 13:33:16.064521
1582	South Ostrobothnia	1075	2016-07-03 13:33:16.068388	2016-07-03 13:33:16.068388
1583	Etelä-Savo	1075	2016-07-03 13:33:16.072225	2016-07-03 13:33:16.072225
1584	Häme	1075	2016-07-03 13:33:16.07662	2016-07-03 13:33:16.07662
1585	Itä-Uusimaa	1075	2016-07-03 13:33:16.080335	2016-07-03 13:33:16.080335
1586	Kainuu	1075	2016-07-03 13:33:16.08464	2016-07-03 13:33:16.08464
1587	Central Ostrobothnia	1075	2016-07-03 13:33:16.088531	2016-07-03 13:33:16.088531
1588	Central Finland	1075	2016-07-03 13:33:16.092429	2016-07-03 13:33:16.092429
1589	Kymenlaakso	1075	2016-07-03 13:33:16.096729	2016-07-03 13:33:16.096729
1590	Lapland	1075	2016-07-03 13:33:16.100225	2016-07-03 13:33:16.100225
1591	Tampere Region	1075	2016-07-03 13:33:16.104234	2016-07-03 13:33:16.104234
1592	Ostrobothnia	1075	2016-07-03 13:33:16.108862	2016-07-03 13:33:16.108862
1593	North Karelia	1075	2016-07-03 13:33:16.113445	2016-07-03 13:33:16.113445
1594	Nothern Ostrobothnia	1075	2016-07-03 13:33:16.117755	2016-07-03 13:33:16.117755
1595	Northern Savo	1075	2016-07-03 13:33:16.121612	2016-07-03 13:33:16.121612
1596	Päijät-Häme	1075	2016-07-03 13:33:16.126035	2016-07-03 13:33:16.126035
1597	Satakunta	1075	2016-07-03 13:33:16.130097	2016-07-03 13:33:16.130097
1598	Uusimaa	1075	2016-07-03 13:33:16.133597	2016-07-03 13:33:16.133597
1599	South-West Finland	1075	2016-07-03 13:33:16.137139	2016-07-03 13:33:16.137139
1600	Åland	1075	2016-07-03 13:33:16.141468	2016-07-03 13:33:16.141468
1601	Manchester	1108	2016-07-03 13:33:16.144815	2016-07-03 13:33:16.144815
1602	Brussels	1020	2016-07-03 13:33:16.148404	2016-07-03 13:33:16.148404
1603	Distrito Federal	1140	2016-07-03 13:33:16.152111	2016-07-03 13:33:16.152111
1604	North West	1196	2016-07-03 13:33:16.155561	2016-07-03 13:33:16.155561
1605	Tyne and Wear	1226	2016-07-03 13:33:16.158852	2016-07-03 13:33:16.158852
1606	Greater Manchester	1226	2016-07-03 13:33:16.173725	2016-07-03 13:33:16.173725
1607	Co Tyrone	1226	2016-07-03 13:33:16.182679	2016-07-03 13:33:16.182679
1608	West Yorkshire	1226	2016-07-03 13:33:16.193399	2016-07-03 13:33:16.193399
1609	South Yorkshire	1226	2016-07-03 13:33:16.197333	2016-07-03 13:33:16.197333
1610	Merseyside	1226	2016-07-03 13:33:16.201731	2016-07-03 13:33:16.201731
1611	Berkshire	1226	2016-07-03 13:33:16.205468	2016-07-03 13:33:16.205468
1612	West Midlands	1226	2016-07-03 13:33:16.209484	2016-07-03 13:33:16.209484
1613	West Glamorgan	1226	2016-07-03 13:33:16.213723	2016-07-03 13:33:16.213723
1614	Greater London	1226	2016-07-03 13:33:16.218038	2016-07-03 13:33:16.218038
1615	Carbonia-Iglesias	1107	2016-07-03 13:33:16.221408	2016-07-03 13:33:16.221408
1616	Olbia-Tempio	1107	2016-07-03 13:33:16.224695	2016-07-03 13:33:16.224695
1617	Medio Campidano	1107	2016-07-03 13:33:16.228733	2016-07-03 13:33:16.228733
1618	Ogliastra	1107	2016-07-03 13:33:16.232451	2016-07-03 13:33:16.232451
1619	Jura	1076	2016-07-03 13:33:16.236141	2016-07-03 13:33:16.236141
1620	Barletta-Andria-Trani	1107	2016-07-03 13:33:16.23929	2016-07-03 13:33:16.23929
1621	Fermo	1107	2016-07-03 13:33:16.24373	2016-07-03 13:33:16.24373
1622	Monza e Brianza	1107	2016-07-03 13:33:16.247419	2016-07-03 13:33:16.247419
1623	Clwyd	1226	2016-07-03 13:33:16.250873	2016-07-03 13:33:16.250873
1624	Dyfed	1226	2016-07-03 13:33:16.254107	2016-07-03 13:33:16.254107
1625	South Glamorgan	1226	2016-07-03 13:33:16.258326	2016-07-03 13:33:16.258326
\.


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('states_id_seq', 1625, true);


--
-- Data for Name: subcategories; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY subcategories (id, name, created_at, updated_at, slug) FROM stdin;
1102	 Beauty & Fashion	2016-05-31 14:44:53.693596	2016-09-06 05:20:51.015455	beauty-fashion
1103	 Agriculture	2016-05-31 14:44:53.698522	2016-09-06 05:20:51.027607	agriculture
1104	 Architectural	2016-05-31 14:44:53.704318	2016-09-06 05:20:51.037997	architectural
1105	 Blogging	2016-05-31 14:44:53.709361	2016-09-06 05:20:51.049192	blogging
1107	 E-Commerce	2016-05-31 14:44:53.717037	2016-09-06 05:20:51.071259	e-commerce
1108	 Education	2016-05-31 14:44:53.722916	2016-09-06 05:20:51.08278	education
1109	 Enterprise	2016-05-31 14:44:53.730348	2016-09-06 05:20:51.093755	enterprise
1111	 Government	2016-05-31 14:44:53.739425	2016-09-06 05:20:51.115216	government
1112	 Games & Recreational	2016-05-31 14:44:53.744826	2016-09-06 05:20:51.127166	games-recreational
1113	 Healtcare	2016-05-31 14:44:53.748454	2016-09-06 05:20:51.13859	healtcare
1115	 Manufacturing & Energy	2016-05-31 14:44:53.758336	2016-09-06 05:20:51.160286	manufacturing-energy
1116	 Music	2016-05-31 14:44:53.762582	2016-09-06 05:20:51.172178	music
1117	 Non-profit	2016-05-31 14:44:53.767244	2016-09-06 05:20:51.182722	non-profit
1119	 Photography	2016-05-31 14:44:53.778227	2016-09-06 05:20:51.206026	photography
1120	 Real Estate	2016-05-31 14:44:53.782037	2016-09-06 05:20:51.21617	real-estate
1122	 Restaurant	2016-05-31 14:44:53.794066	2016-09-06 05:20:51.238209	restaurant
1123	 Small Business	2016-05-31 14:44:53.799884	2016-09-06 05:20:51.249637	small-business
1124	 Social Networking	2016-05-31 14:44:53.806667	2016-09-06 05:20:51.260536	social-networking
1125	 Sports	2016-05-31 14:44:53.811662	2016-09-06 05:20:51.274118	sports
1127	 Technology	2016-05-31 14:44:53.824854	2016-09-06 05:20:51.304657	technology
1128	 Travel & Hotel	2016-05-31 14:44:53.830411	2016-09-06 05:20:51.316414	travel-hotel
1129	 Wedding	2016-05-31 14:44:53.836205	2016-09-06 05:20:51.326728	wedding
1131	 Sketch Design	2016-05-31 14:44:53.847638	2016-09-06 05:20:51.349879	sketch-design
1132	Admin Templates	2016-05-31 14:53:51.965382	2016-09-06 05:20:51.360644	admin-templates
1133	CakePHP	2016-07-18 12:09:16.627891	2016-09-06 05:20:51.372314	cakephp
1134	CodeIgniter	2016-07-18 12:10:49.63816	2016-09-06 05:20:51.384087	codeigniter
1136	Symfony	2016-07-18 12:16:33.336813	2016-09-06 05:20:51.405095	symfony
1137	YiiFramework	2016-07-18 12:16:33.387729	2016-09-06 05:20:51.41734	yiiframework
1139	Joomla	2016-07-18 12:16:33.487617	2016-09-06 05:20:51.473365	joomla
1140	Magento	2016-07-18 12:16:33.535604	2016-09-06 05:20:51.482823	magento
1141	PrestaShop	2016-07-18 12:16:33.603404	2016-09-06 05:20:51.494536	prestashop
1142	Wordpress	2016-07-18 12:16:33.666577	2016-09-06 05:20:51.505273	wordpress
1143	AngularJS	2016-07-18 12:16:33.72745	2016-09-06 05:20:51.516004	angularjs
1145	Dojo	2016-07-18 12:17:15.818054	2016-09-06 05:20:51.539024	dojo
1146	jQuery	2016-07-18 12:17:15.880857	2016-09-06 05:20:51.549321	jquery
1147	MooTools	2016-07-18 12:17:15.931514	2016-09-06 05:20:51.560465	mootools
1149	Titanium Appcelerator	2016-07-18 12:17:16.031777	2016-09-06 05:20:51.583587	titanium-appcelerator
1150	NodeJS	2016-07-18 12:17:16.093253	2016-09-06 05:20:51.593986	nodejs
1151	PhoneGap	2016-07-18 12:17:16.154698	2016-09-06 05:20:51.605925	phonegap
1152	TinyMCE	2016-07-18 12:17:16.222129	2016-09-06 05:20:51.617368	tinymce
1154	EmberJS	2016-07-18 12:17:17.596544	2016-09-06 05:20:51.638001	emberjs
1155	Django	2016-07-18 12:21:27.468868	2016-09-06 05:20:51.650014	django
1156	Pylons	2016-07-18 12:21:27.527919	2016-09-06 05:20:51.661053	pylons
1157	Blender3D	2016-07-18 12:21:27.579917	2016-09-06 05:20:51.672433	blender3d
1159	Data Analysis	2016-07-18 12:21:27.670763	2016-09-06 05:20:51.705627	data-analysis
1160	ApacheCXF	2016-07-18 12:21:27.737171	2016-09-06 05:20:51.717202	apachecxf
1162	JBoss seam	2016-07-18 12:21:27.862388	2016-09-06 05:20:51.738252	jboss-seam
1163	JavaServer Faces	2016-07-18 12:21:27.931583	2016-09-06 05:20:51.749326	javaserver-faces
1164	Spring	2016-07-18 12:21:29.889002	2016-09-06 05:20:51.761673	spring
1165	FX	2016-07-18 12:22:14.539309	2016-09-06 05:20:51.77198	fx
1167	Android	2016-07-18 12:22:14.639223	2016-09-06 05:20:51.794947	android
1168	Google AppEngine	2016-07-18 12:22:14.6988	2016-09-06 05:20:51.805673	google-appengine
1170	Sinatra	2016-07-18 12:22:14.827634	2016-09-06 05:20:51.828581	sinatra
1171	Gems	2016-07-18 12:22:14.888529	2016-09-06 05:20:51.838883	gems
1172	Qt	2016-07-18 12:22:14.947578	2016-09-06 05:20:51.849734	qt
1173	Games	2016-07-18 12:22:15.010932	2016-09-06 05:20:51.861492	games
1175	TreeFrog Framework	2016-07-18 12:24:47.249879	2016-09-06 05:20:51.883104	treefrog-framework
1176	Embedded Systems	2016-07-18 12:24:47.301786	2016-09-06 05:20:51.893967	embedded-systems
1178	Robotic	2016-07-18 12:24:47.43038	2016-09-06 05:20:51.916595	robotic
1180	ASP.NET	2016-07-18 12:24:47.5516	2016-09-06 05:20:51.933157	asp-net
1181	Mobile Games	2016-07-18 12:24:47.620172	2016-09-06 05:20:51.950748	mobile-games
1182	Mobile App	2016-07-18 12:24:47.682955	2016-09-06 05:20:51.960979	mobile-app
1183	Cocoa	2016-07-18 12:24:47.74332	2016-09-06 05:20:51.972104	cocoa
1184	iOS	2016-07-18 12:24:49.07741	2016-09-06 05:20:51.983503	ios
1186	News	2016-07-18 12:29:16.592341	2016-09-06 05:20:51.998704	news
1188	Forms	2016-07-18 12:29:16.718094	2016-09-06 05:20:52.039378	forms
1189	Galleries	2016-07-18 12:29:16.781036	2016-09-06 05:20:52.049766	galleries
1190	Widgets	2016-07-18 12:29:16.841165	2016-09-06 05:20:52.060765	widgets
1191	SEO	2016-07-18 12:29:16.902242	2016-09-06 05:20:52.07151	seo
1193	Utilities	2016-07-18 12:29:17.032828	2016-09-06 05:20:52.094698	utilities
1194	Media	2016-07-18 12:29:18.150864	2016-09-06 05:20:52.105216	media
1195	Responsive	2016-07-18 12:29:28.937648	2016-09-06 05:20:52.116218	responsive
1197	Performance	2016-07-18 12:29:29.048189	2016-09-06 05:20:52.138359	performance
1198	Social Media	2016-07-18 12:29:29.116354	2016-09-06 05:20:52.149829	social-media
1199	Accounting	2016-07-18 12:29:29.17957	2016-09-06 05:20:52.162757	accounting
1201	Cart	2016-07-18 12:29:29.307041	2016-09-06 05:20:52.182905	cart
1202	Charts	2016-07-18 12:29:29.367574	2016-09-06 05:20:52.194412	charts
1203	Slider	2016-07-18 12:29:29.428168	2016-09-06 05:20:52.2055	slider
1206	Layouts	2016-07-18 12:34:07.085101	2016-09-06 05:20:52.232815	layouts
1207	Buttons	2016-07-18 12:34:07.133753	2016-09-06 05:20:52.250132	buttons
1208	Menu Navigation	2016-07-18 12:34:07.176534	2016-09-06 05:20:52.261025	menu-navigation
1209	Canvas	2016-07-18 12:34:07.228375	2016-09-06 05:20:52.27258	canvas
1214	3D	2016-07-18 12:34:08.291133	2016-09-06 05:20:52.301046	3d
1215	Other	2016-07-18 12:35:37.285035	2016-09-06 05:20:52.317362	other
1220	Ghost	2016-07-18 12:35:37.565605	2016-09-06 05:20:52.361643	ghost
1221	HTML/CSS	2016-07-18 12:35:37.628211	2016-09-06 05:20:52.372667	html-css
1224	OpenCart	2016-07-18 12:35:40.726664	2016-09-06 05:20:52.39275	opencart
1225	Tumblr	2016-07-18 12:38:59.278707	2016-09-06 05:20:52.405912	tumblr
1229	Character	2016-07-22 15:08:03.179689	2016-09-06 05:20:52.438377	character
1230	Mascot	2016-07-22 15:08:03.231383	2016-09-06 05:20:52.451549	mascot
1231	Tattoo	2016-07-22 15:08:03.292985	2016-09-06 05:20:52.461852	tattoo
1179	AI	2016-07-18 12:24:47.490449	2016-07-18 12:24:47.490449	a-i
1205	Charts	2016-07-18 12:34:07.031379	2016-07-18 12:34:07.031379	charts-foo
1210	Charts	2016-07-18 12:34:07.294957	2016-07-18 12:34:07.294957	charts-foo-bar
1212	Media	2016-07-18 12:34:07.415745	2016-07-18 12:34:07.415745	media-foo
1213	Forms	2016-07-18 12:34:07.481971	2016-07-18 12:34:07.481971	forms-foo
1216	Android	2016-07-18 12:35:37.346719	2016-07-18 12:35:37.346719	android-foo
1217	iOS	2016-07-18 12:35:37.382936	2016-07-18 12:35:37.382936	ios-foo
1222	Joomla	2016-07-18 12:35:37.695243	2016-07-18 12:35:37.695243	joomla-foo
1223	Magento	2016-07-18 12:35:37.755695	2016-07-18 12:35:37.755695	magento-foo
1226	Wordpress	2016-07-18 12:38:59.350634	2016-07-18 12:38:59.350634	wp-foo
1234	Light	2016-07-22 15:11:07.694005	2016-09-06 05:20:52.494839	light
1235	Dark	2016-07-22 15:11:07.751724	2016-09-06 05:20:52.506671	dark
1236	Paper	2016-07-22 15:11:07.806681	2016-09-06 05:20:52.517662	paper
1238	Wall	2016-07-22 15:11:07.929092	2016-09-06 05:20:52.538734	wall
1239	Fabric	2016-07-22 15:11:07.993761	2016-09-06 05:20:52.550152	fabric
1240	Noise	2016-07-22 15:11:08.061736	2016-09-06 05:20:52.562284	noise
1241	Diamond	2016-07-22 15:11:08.116304	2016-09-06 05:20:52.57262	diamond
1243	Carbon	2016-07-22 15:11:08.242743	2016-09-06 05:20:52.595342	carbon
1244	Apple Watch	2016-07-22 15:16:25.412517	2016-09-06 05:20:52.60587	apple-watch
1245	iPhone	2016-07-22 15:16:25.470308	2016-09-06 05:20:52.616965	iphone
1246	iPad	2016-07-22 15:16:25.527797	2016-09-06 05:20:52.629869	ipad
1248	iMac	2016-07-22 15:16:25.655886	2016-09-06 05:20:52.650214	imac
1249	Packaging	2016-07-22 15:16:25.718003	2016-09-06 05:20:52.661837	packaging
1250	Paper & Book	2016-07-22 15:16:25.784356	2016-09-06 05:20:52.672998	paper-book
1252	Fashion & Apparel	2016-07-22 15:16:25.924362	2016-09-06 05:20:52.707561	fashion-apparel
1253	Signs & Billboards	2016-07-22 15:16:25.994053	2016-09-06 05:20:52.716892	signs-billboards
1255	Smartphone	2016-07-22 15:16:26.129571	2016-09-06 05:20:52.739735	smartphone
1256	Laptop	2016-07-22 15:16:26.192164	2016-09-06 05:20:52.751371	laptop
1257	Personal Computer	2016-07-22 15:16:26.25954	2016-09-06 05:20:52.761647	personal-computer
1258	3D Brushes	2016-07-22 15:26:03.704331	2016-09-06 05:20:52.773196	3d-brushes
1260	Substance	2016-07-22 15:26:03.833939	2016-09-06 05:20:52.794467	substance
1261	Animals	2016-07-22 15:26:03.891939	2016-09-06 05:20:52.805967	animals
1262	Brick	2016-07-22 15:26:03.953901	2016-09-06 05:20:52.817816	brick
1263	Buildings	2016-07-22 15:26:04.020957	2016-09-06 05:20:52.828465	buildings
1265	Decals	2016-07-22 15:26:04.143613	2016-09-06 05:20:52.85132	decals
1266	Doors	2016-07-22 15:26:04.208347	2016-09-06 05:20:52.861816	doors
1268	Floor	2016-07-22 15:26:04.332393	2016-09-06 05:20:52.877676	floor
1270	Ground	2016-07-22 15:26:04.45278	2016-09-06 05:20:52.90078	ground
1271	Grunge	2016-07-22 15:26:04.514026	2016-09-06 05:20:52.917358	grunge
1273	Landscapes	2016-07-22 15:26:04.642288	2016-09-06 05:20:52.939466	landscapes
1274	Manmade	2016-07-22 15:26:04.710222	2016-09-06 05:20:52.950424	manmade
1275	Marble	2016-07-22 15:26:04.772235	2016-09-06 05:20:52.962837	marble
1276	Metal	2016-07-22 15:26:04.832511	2016-09-06 05:20:52.97312	metal
1278	Ornaments	2016-07-22 15:26:04.958967	2016-09-06 05:20:52.995008	ornaments
1280	Plaster	2016-07-22 15:26:05.081601	2016-09-06 05:20:53.0104	plaster
1281	Plastic	2016-07-22 15:26:05.150843	2016-09-06 05:20:53.027932	plastic
1282	Roads	2016-07-22 15:26:05.210698	2016-09-06 05:20:53.040065	roads
1284	Roofing	2016-07-22 15:26:05.333024	2016-09-06 05:20:53.062025	roofing
1285	Rust	2016-07-22 15:26:05.392133	2016-09-06 05:20:53.075902	rust
1286	Signs	2016-07-22 15:26:05.458338	2016-09-06 05:20:53.095559	signs
1287	Soil	2016-07-22 15:26:05.523477	2016-09-06 05:20:53.107146	soil
1289	Varios	2016-07-22 15:26:05.642685	2016-09-06 05:20:53.129043	varios
1290	Windows	2016-07-22 15:26:05.703992	2016-09-06 05:20:53.140154	windows
1291	Wood	2016-07-22 15:26:05.770222	2016-09-06 05:20:53.151308	wood
1293	Button	2016-07-22 15:56:17.629684	2016-09-06 05:20:53.16683	button
1295	Badges	2016-07-22 15:56:17.759591	2016-09-06 05:20:53.19528	badges
1296	Tables	2016-07-22 15:56:17.810609	2016-09-06 05:20:53.206072	tables
1297	Sliders	2016-07-22 15:56:17.874138	2016-09-06 05:20:53.217486	sliders
1298	Banner	2016-07-22 15:56:17.93611	2016-09-06 05:20:53.229027	banner
1300	User Interfaces	2016-07-22 15:56:18.06758	2016-09-06 05:20:53.244652	user-interfaces
1302	Flyer	2016-07-22 16:00:17.808946	2016-09-06 05:20:53.272634	flyer
1303	Poster	2016-07-22 16:00:17.869894	2016-09-06 05:20:53.283827	poster
1304	Infographic	2016-07-22 16:00:17.936335	2016-09-06 05:20:53.296326	infographic
1305	Brochure	2016-07-22 16:00:17.999433	2016-09-06 05:20:53.306413	brochure
1307	Email	2016-07-22 16:00:18.125073	2016-09-06 05:20:53.329956	email
1308	Powerpoint	2016-07-22 16:00:18.187739	2016-09-06 05:20:53.340608	powerpoint
1309	Resumes	2016-07-22 16:00:18.252549	2016-09-06 05:20:53.350806	resumes
1310	T-shirt	2016-07-22 16:02:28.115209	2016-09-06 05:20:53.36213	t-shirt
1312	Merchandise	2016-07-22 16:02:28.241348	2016-09-06 05:20:53.384006	merchandise
1313	Sticker	2016-07-22 16:02:28.302855	2016-09-06 05:20:53.395991	sticker
1314	Dress	2016-07-22 16:02:28.364471	2016-09-06 05:20:53.407921	dress
1315	Slipper	2016-07-22 16:02:28.426454	2016-09-06 05:20:53.417114	slipper
1316	Cup	2016-07-22 16:02:28.491129	2016-09-06 05:20:53.428559	cup
1318	Book cover	2016-07-22 16:02:28.614156	2016-09-06 05:20:53.451149	book-cover
1322	Animal & Pet	2016-07-23 02:43:15.797699	2016-09-06 05:20:53.485489	animal-pet
1324	Art & Design	2016-07-23 02:43:15.928827	2016-09-06 05:20:53.500913	art-design
1325	Attorney & Law	2016-07-23 02:43:15.995511	2016-09-06 05:20:53.517616	attorney-law
1327	Automotive	2016-07-23 02:43:16.127649	2016-09-06 05:20:53.539882	automotive
1328	Childcare	2016-07-23 02:43:16.19676	2016-09-06 05:20:53.551319	childcare
1329	Cleaning & Maintenance	2016-07-23 02:43:16.270594	2016-09-06 05:20:53.562505	cleaning-maintenance
1331	Community & Non-profit	2016-07-23 02:43:16.406839	2016-09-06 05:20:53.584272	community-non-profit
1332	Computer	2016-07-23 02:43:16.473689	2016-09-06 05:20:53.595947	computer
1333	Construction	2016-07-23 02:43:16.536695	2016-09-06 05:20:53.606707	construction
1335	Dating	2016-07-23 02:43:16.667543	2016-09-06 05:20:53.629724	dating
1338	Environmental	2016-07-23 02:43:16.869158	2016-09-06 05:20:53.651026	environmental
1339	Fashion	2016-07-23 02:43:16.929065	2016-09-06 05:20:53.662548	fashion
1340	Floral	2016-07-23 02:43:16.99432	2016-09-06 05:20:53.67378	floral
1342	Games & Recreation	2016-07-23 02:43:17.129778	2016-09-06 05:20:53.696032	games-recreation
1343	Home Furnishing	2016-07-23 02:43:17.196375	2016-09-06 05:20:53.707097	home-furnishing
1344	Industrial	2016-07-23 02:43:17.263172	2016-09-06 05:20:53.71734	industrial
1345	Internet	2016-07-23 02:43:17.32622	2016-09-06 05:20:53.729089	internet
1347	Medical & Pharmaceutical	2016-07-23 02:43:17.466423	2016-09-06 05:20:53.775139	medical-pharmaceutical
1350	Political	2016-07-23 02:43:17.669331	2016-09-06 05:20:53.817897	political
1351	Real Estate & Mortage	2016-07-23 02:43:17.736251	2016-09-06 05:20:53.829241	real-estate-mortage
1352	Religious	2016-07-23 02:43:17.799406	2016-09-06 05:20:53.840715	religious
1354	Retail	2016-07-23 02:43:17.927758	2016-09-06 05:20:53.857488	retail
1358	Thecnology	2016-07-23 02:43:18.199125	2016-09-06 05:20:53.895797	thecnology
1359	Sport	2016-07-23 02:43:18.264258	2016-09-06 05:20:53.906239	sport
1361	Wedding Service	2016-07-23 02:43:19.797524	2016-09-06 05:20:53.92303	wedding-service
1362	Invitation	2016-07-23 02:49:45.82517	2016-09-06 05:20:53.941268	invitation
1269	FX	2016-07-22 15:26:04.390272	2016-07-22 15:26:04.390272	fx-foo
1279	Paper	2016-07-22 15:26:05.021947	2016-07-22 15:26:05.021947	paper-foo
1292	Forms	2016-07-22 15:56:17.56128	2016-07-22 15:56:17.56128	frm-foo
1320	Accounting & Financial	2016-07-23 02:43:15.66047	2016-07-23 02:43:15.66047	financial-foo
1321	Agriculture	2016-07-23 02:43:15.729751	2016-07-23 02:43:15.729751	agriculture-foo
1323	Architectural	2016-07-23 02:43:15.866435	2016-07-23 02:43:15.866435	arch-foo
1336	Education	2016-07-23 02:43:16.736391	2016-07-23 02:43:16.736391	edu-foo
1348	Photography	2016-07-23 02:43:17.529056	2016-07-23 02:43:17.529056	photo-foo
1353	Restaurant	2016-07-23 02:43:17.868399	2016-07-23 02:43:17.868399	rest-foo
1355	Security	2016-07-23 02:43:17.989836	2016-07-23 02:43:17.989836	sec-foo
1360	Travel & Hotel	2016-07-23 02:43:18.32867	2016-07-23 02:43:18.32867	travel-foo
1232	3D	2016-07-22 15:08:03.352062	2016-07-22 15:08:03.352062	3d-foo
1364	Sea Creatures	2016-07-25 02:57:42.527771	2016-09-06 05:20:53.962826	sea-creatures
1366	Bird	2016-07-25 02:57:42.539093	2016-09-06 05:20:53.984734	bird
1367	Extinct Animal	2016-07-25 02:57:42.543599	2016-09-06 05:20:53.995657	extinct-animal
1368	Anatomy	2016-07-25 02:57:42.548334	2016-09-06 05:20:54.00731	anatomy
1369	Reptile	2016-07-25 02:57:42.553118	2016-09-06 05:20:54.017955	reptile
1370	Amphibians	2016-07-25 02:57:42.557542	2016-09-06 05:20:54.029462	amphibians
1372	Evergreen Tree	2016-07-25 02:57:42.570493	2016-09-06 05:20:54.051396	evergreen-tree
1373	Palm Tree	2016-07-25 02:57:42.574838	2016-09-06 05:20:54.062941	palm-tree
1374	Carton Tree	2016-07-25 02:57:42.579377	2016-09-06 05:20:54.074008	carton-tree
1376	Spooky Tree	2016-07-25 02:57:42.588158	2016-09-06 05:20:54.096028	spooky-tree
1377	Flowering Tree	2016-07-25 02:57:42.593222	2016-09-06 05:20:54.107751	flowering-tree
1378	Mineral	2016-07-25 02:57:42.597476	2016-09-06 05:20:54.118329	mineral
1381	Body of Water	2016-07-25 02:57:42.610388	2016-09-06 05:20:54.152252	body-of-water
1382	Coral Reef	2016-07-25 02:57:42.615267	2016-09-06 05:20:54.162764	coral-reef
1383	Island	2016-07-25 02:57:42.619577	2016-09-06 05:20:54.174361	island
1385	Fire	2016-07-25 02:57:42.638571	2016-09-06 05:20:54.19562	fire
1386	Maze	2016-07-25 02:57:42.643069	2016-09-06 05:20:54.206942	maze
1387	Forest	2016-07-25 02:57:42.6478	2016-09-06 05:20:54.21896	forest
1388	Coastline	2016-07-25 02:57:42.65275	2016-09-06 05:20:54.229446	coastline
1389	Park	2016-07-25 02:57:42.656808	2016-09-06 05:20:54.240521	park
1391	Tropics	2016-07-25 02:57:42.666073	2016-09-06 05:20:54.262542	tropics
1392	Meadow	2016-07-25 02:57:42.670525	2016-09-06 05:20:54.273965	meadow
1393	Mesa	2016-07-25 02:57:42.674537	2016-09-06 05:20:54.287018	mesa
1394	Telephone	2016-07-25 02:57:42.679142	2016-09-06 05:20:54.30722	telephone
1397	Video Devices	2016-07-25 02:57:42.692722	2016-09-06 05:20:54.345631	video-devices
1398	Computer Equipment	2016-07-25 02:57:42.696604	2016-09-06 05:20:54.363255	computer-equipment
1400	Film	2016-07-25 02:57:42.706558	2016-09-06 05:20:54.377658	film
1402	Sci-Fi	2016-07-25 02:57:42.715674	2016-09-06 05:20:54.407284	sci-fi
1403	Printer	2016-07-25 02:57:42.719468	2016-09-06 05:20:54.418089	printer
1404	Remote Control	2016-07-25 02:57:42.724392	2016-09-06 05:20:54.429235	remote-control
1405	Antenna	2016-07-25 02:57:42.731313	2016-09-06 05:20:54.44074	antenna
1406	Router	2016-07-25 02:57:42.736432	2016-09-06 05:20:54.451261	router
1408	PDA	2016-07-25 02:57:42.746036	2016-09-06 05:20:54.474843	pda
1409	Photocopier	2016-07-25 02:57:42.750565	2016-09-06 05:20:54.484514	photocopier
1410	Weapons	2016-07-25 02:57:42.754954	2016-09-06 05:20:54.495866	weapons
1411	Car	2016-07-25 02:57:42.759745	2016-09-06 05:20:54.507292	car
1413	Vehicle Parts	2016-07-25 02:57:42.769755	2016-09-06 05:20:54.529263	vehicle-parts
1414	Vessel	2016-07-25 02:57:42.774105	2016-09-06 05:20:54.540334	vessel
1415	Spacecraft	2016-07-25 02:57:42.779461	2016-09-06 05:20:54.552068	spacecraft
1417	Tank	2016-07-25 02:57:42.788123	2016-09-06 05:20:54.574206	tank
1418	Trains	2016-07-25 02:57:42.792695	2016-09-06 05:20:54.586327	trains
1419	Motorcycle	2016-07-25 02:57:42.797351	2016-09-06 05:20:54.596139	motorcycle
1421	Bus	2016-07-25 02:57:42.806626	2016-09-06 05:20:54.619151	bus
1422	Wagon	2016-07-25 02:57:42.810904	2016-09-06 05:20:54.63009	wagon
1423	Electric Cart	2016-07-25 02:57:42.815829	2016-09-06 05:20:54.640767	electric-cart
1424	Ambulance	2016-07-25 02:57:42.819693	2016-09-06 05:20:54.652145	ambulance
1425	ATV	2016-07-25 02:57:42.824664	2016-09-06 05:20:54.663087	atv
1427	Two Wheel Scooter	2016-07-25 02:57:42.8336	2016-09-06 05:20:54.685684	two-wheel-scooter
1428	Cable Way	2016-07-25 02:57:42.838112	2016-09-06 05:20:54.696879	cable-way
1430	Amphibious	2016-07-25 02:57:42.846621	2016-09-06 05:20:54.718375	amphibious
1431	Armored Car	2016-07-25 02:57:42.851335	2016-09-06 05:20:54.730582	armored-car
1432	Snowcat	2016-07-25 02:57:42.855887	2016-09-06 05:20:54.740653	snowcat
1434	Rings	2016-07-25 02:57:42.865114	2016-09-06 05:20:54.762868	rings
1435	Pendants	2016-07-25 02:57:42.869542	2016-09-06 05:20:54.775233	pendants
1436	Necklaces	2016-07-25 02:57:42.873983	2016-09-06 05:20:54.78532	necklaces
1437	Earrings	2016-07-25 02:57:42.878354	2016-09-06 05:20:54.796504	earrings
1439	Bracelets	2016-07-25 02:57:42.888081	2016-09-06 05:20:54.819414	bracelets
1440	Building	2016-07-25 02:57:42.892341	2016-09-06 05:20:54.830198	building
1441	Urban Design	2016-07-25 02:57:42.896323	2016-09-06 05:20:54.841824	urban-design
1443	Site Component	2016-07-25 02:57:42.905864	2016-09-06 05:20:54.863075	site-component
1444	Archaeology	2016-07-25 02:57:42.910731	2016-09-06 05:20:54.876649	archaeology
1445	People	2016-07-25 02:57:42.915448	2016-09-06 05:20:54.89754	people
1447	Robot	2016-07-25 02:57:42.924866	2016-09-06 05:20:54.91911	robot
1448	Movie and Television Character	2016-07-25 02:57:42.929092	2016-09-06 05:20:54.930078	movie-and-television-character
1449	Game character	2016-07-25 02:57:42.934535	2016-09-06 05:20:54.940936	game-character
1450	Superhero	2016-07-25 02:57:42.94057	2016-09-06 05:20:54.953328	superhero
1453	Human Skeleton	2016-07-25 02:57:42.957555	2016-09-06 05:20:54.979658	human-skeleton
1454	Skull	2016-07-25 02:57:42.962921	2016-09-06 05:20:54.997324	skull
1455	Brain	2016-07-25 02:57:42.968839	2016-09-06 05:20:55.007738	brain
1456	Soldier	2016-07-25 02:57:42.97484	2016-09-06 05:20:55.01879	soldier
1458	Table	2016-07-25 02:57:42.986537	2016-09-06 05:20:55.041082	table
1459	Bed	2016-07-25 02:57:42.992972	2016-09-06 05:20:55.05212	bed
1460	Desk 	2016-07-25 02:57:42.999025	2016-09-06 05:20:55.063596	desk
1461	Shelving	2016-07-25 02:57:43.005182	2016-09-06 05:20:55.122521	shelving
1463	Dresser	2016-07-25 02:57:43.016509	2016-09-06 05:20:55.15226	dresser
1464	Patio Furniture	2016-07-25 02:57:43.022184	2016-09-06 05:20:55.162909	patio-furniture
1465	Rack	2016-07-25 02:57:43.028028	2016-09-06 05:20:55.1742	rack
1466	Cupboard	2016-07-25 02:57:43.034486	2016-09-06 05:20:55.185303	cupboard
1468	Entertaiment Center	2016-07-25 02:57:43.045865	2016-09-06 05:20:55.206954	entertaiment-center
1469	Night Stand	2016-07-25 02:57:43.050963	2016-09-06 05:20:55.218769	night-stand
1471	Chest	2016-07-25 02:57:43.06246	2016-09-06 05:20:55.241125	chest
1472	Bathroom Furniture	2016-07-25 02:57:43.070445	2016-09-06 05:20:55.252661	bathroom-furniture
1473	Kitchen Set	2016-07-25 02:57:43.075747	2016-09-06 05:20:55.262963	kitchen-set
1475	Bar Counter	2016-07-25 02:57:43.086854	2016-09-06 05:20:55.285972	bar-counter
1476	Podium	2016-07-25 02:57:43.091778	2016-09-06 05:20:55.296542	podium
1478	Counter	2016-07-25 02:57:43.103093	2016-09-06 05:20:55.319464	counter
1479	Cushion	2016-07-25 02:57:43.109098	2016-09-06 05:20:55.33003	cushion
1480	Kitchen Cart	2016-07-25 02:57:43.114455	2016-09-06 05:20:55.341053	kitchen-cart
1481	Bones	2016-07-25 02:57:43.119462	2016-09-06 05:20:55.352371	bones
1485	Fauna	2016-07-25 02:57:43.142576	2016-09-06 05:20:55.376671	fauna
1486	Flora	2016-07-25 02:57:43.148631	2016-09-06 05:20:55.385348	flora
1490	Humans	2016-07-25 02:57:43.173305	2016-09-06 05:20:55.418451	humans
1379	Ground	2016-07-25 02:57:42.601899	2016-07-25 02:57:42.601899	ground-foo
1396	Computer	2016-07-25 02:57:42.687646	2016-07-25 02:57:42.687646	compi-foo
1452	Mascot	2016-07-25 02:57:42.952133	2016-07-25 02:57:42.952133	msct-foo
1482	Building	2016-07-25 02:57:43.126474	2016-07-25 02:57:43.126474	build-foo
1483	Doors	2016-07-25 02:57:43.131322	2016-07-25 02:57:43.131322	door-foo
1487	Floor	2016-07-25 02:57:43.154044	2016-07-25 02:57:43.154044	floor-foo
1488	Ground	2016-07-25 02:57:43.159692	2016-07-25 02:57:43.159692	grnd-foo
1493	Ornaments	2016-07-25 02:57:43.190338	2016-07-25 02:57:43.190338	orn-foo
1494	Paper	2016-07-25 02:57:43.196496	2016-07-25 02:57:43.196496	paperf-foo
1491	Ice	2016-07-25 02:57:43.178748	2016-09-06 05:20:55.431453	ice-foo
1500	Splatter	2016-07-25 02:57:43.227847	2016-09-06 05:20:55.486804	splatter
1503	Walls	2016-07-25 02:57:43.244013	2016-09-06 05:20:55.524008	walls
1504	Water	2016-07-25 02:57:43.249986	2016-09-06 05:20:55.54191	water
1506	Ceramic	2016-07-25 02:57:43.259532	2016-09-06 05:20:55.558135	ceramic
1508	Glass	2016-07-25 02:57:43.270376	2016-09-06 05:20:55.580409	glass
1509	Glow	2016-07-25 02:57:43.275008	2016-09-06 05:20:55.59712	glow
1518	Plugin	2016-07-26 03:08:58.217565	2016-09-06 05:20:55.658174	plugin
1519	aerial	2016-07-28 08:37:05.079476	2016-09-06 05:20:55.67524	aerial
1520	green screen	2016-07-28 08:37:05.135434	2016-09-06 05:20:55.686563	green-screen
1522	arts	2016-07-28 08:38:36.301693	2016-09-06 05:20:55.731373	arts
1524	editorial	2016-07-28 08:38:36.311478	2016-09-06 05:20:55.753	editorial
1526	explosion	2016-07-28 08:38:36.321606	2016-09-06 05:20:55.7689	explosion
1528	smoke	2016-07-28 08:38:36.330154	2016-09-06 05:20:55.792942	smoke
1535	city	2016-07-28 08:38:36.37246	2016-09-06 05:20:55.85299	city
1536	life style	2016-07-28 08:38:36.378017	2016-09-06 05:20:55.864351	life-style
1537	science	2016-07-28 08:38:36.382466	2016-09-06 05:20:55.87482	science
1539	medical	2016-07-28 08:38:36.392258	2016-09-06 05:20:55.891875	medical
1542	historical	2016-07-28 08:38:36.404834	2016-09-06 05:20:55.932703	historical
1544	travel	2016-07-28 08:38:36.414847	2016-09-06 05:20:55.960504	travel
1545	slow motion	2016-07-28 08:38:36.419553	2016-09-06 05:20:55.976776	slow-motion
1546	space	2016-07-28 08:38:36.42375	2016-09-06 05:20:55.986081	space
1549	weather	2016-07-28 08:38:36.438026	2016-09-06 05:20:56.015313	weather
1551	effect & lower third	2016-07-28 08:38:36.447029	2016-09-06 05:20:56.036086	effect-lower-third
1552	time lapse	2016-07-28 08:38:36.451436	2016-09-06 05:20:56.053664	time-lapse
1554	sea	2016-07-28 08:38:36.460734	2016-09-06 05:20:56.076918	sea
1555	rain	2016-07-28 08:38:36.464725	2016-09-06 05:20:56.09771	rain
1556	clouds	2016-07-28 08:38:36.46954	2016-09-06 05:20:56.108352	clouds
1558	design elements	2016-07-28 08:38:36.529612	2016-09-06 05:20:56.130183	design-elements
1559	characters	2016-07-28 08:38:36.537372	2016-09-06 05:20:56.141994	characters
1561	action	2016-07-28 08:38:36.554057	2016-09-06 05:20:56.159251	action
1563	intro	2016-07-28 08:38:36.564792	2016-09-06 05:20:56.178792	intro
1564	logo reveal	2016-07-28 08:38:36.570602	2016-09-06 05:20:56.199154	logo-reveal
1566	presentation	2016-07-28 08:38:36.581437	2016-09-06 05:20:56.219117	presentation
1567	slideshow	2016-07-28 08:38:36.586602	2016-09-06 05:20:56.23058	slideshow
1568	cinematic	2016-07-28 08:38:36.590927	2016-09-06 05:20:56.242287	cinematic
1570	particles	2016-07-28 08:38:36.600483	2016-09-06 05:20:56.264034	particles
1575	elements	2016-07-28 08:38:36.645152	2016-09-06 05:20:56.294157	elements
1577	revealer	2016-07-28 08:38:36.660366	2016-09-06 05:20:56.319465	revealer
1578	transitions	2016-07-28 08:38:36.671488	2016-09-06 05:20:56.330424	transitions
1579	interface effects	2016-07-28 08:38:36.680993	2016-09-06 05:20:56.342927	interface-effects
1581	architecture	2016-07-28 08:38:36.285804	2016-09-06 05:20:56.36385	architecture
1582	Mobile Apps	2016-08-07 04:46:36.933104	2016-09-06 05:20:56.375781	mobile-apps
1584	Game	2016-08-07 04:46:36.941263	2016-09-06 05:20:56.397255	game
1585	Database	2016-08-07 04:46:36.946045	2016-09-06 05:20:56.409486	database
1586	Software Testing	2016-08-07 04:46:36.951987	2016-09-06 05:20:56.420337	software-testing
1588	Development Tools	2016-08-07 04:46:36.970371	2016-09-06 05:20:56.442188	development-tools
1590	Finance	2016-08-07 04:46:36.97803	2016-09-06 05:20:56.458874	finance
1591	Enterprenuership	2016-08-07 04:46:36.982413	2016-09-06 05:20:56.475932	enterprenuership
1592	Communication	2016-08-07 04:46:36.986113	2016-09-06 05:20:56.486364	communication
1593	Management	2016-08-07 04:46:36.989656	2016-09-06 05:20:56.497639	management
1595	Strategy	2016-08-07 04:46:36.999064	2016-09-06 05:20:56.520005	strategy
1596	Project Management	2016-08-07 04:46:37.003204	2016-09-06 05:20:56.531137	project-management
1598	Data Analytics	2016-08-07 04:46:37.011165	2016-09-06 05:20:56.552983	data-analytics
1599	Human Resources	2016-08-07 04:46:37.014875	2016-09-06 05:20:56.565203	human-resources
1600	Industry	2016-08-07 04:46:37.040075	2016-09-06 05:20:56.574991	industry
1603	Network Security	2016-08-07 04:46:37.052894	2016-09-06 05:20:56.609277	network-security
1604	Hardware	2016-08-07 04:46:37.056906	2016-09-06 05:20:56.619343	hardware
1606	Microsoft	2016-08-07 04:46:37.066376	2016-09-06 05:20:56.642043	microsoft
1607	Oracle	2016-08-07 04:46:37.070377	2016-09-06 05:20:56.652827	oracle
1608	Apple	2016-08-07 04:46:37.074548	2016-09-06 05:20:56.664222	apple
1609	Google	2016-08-07 04:46:37.079271	2016-09-06 05:20:56.678201	google
1610	Adobe	2016-08-07 04:46:37.083632	2016-09-06 05:20:56.697951	adobe
1612	Productivity	2016-08-07 04:46:37.09436	2016-09-06 05:20:56.719531	productivity
1613	Leadership	2016-08-07 04:46:37.100243	2016-09-06 05:20:56.730229	leadership
1614	Personal Finance	2016-08-07 04:46:37.105545	2016-09-06 05:20:56.743339	personal-finance
1616	Parenting 	2016-08-07 04:46:37.117139	2016-09-06 05:20:56.763735	parenting
1617	Relationship	2016-08-07 04:46:37.122419	2016-09-06 05:20:56.774796	relationship
1618	Spirituality	2016-08-07 04:46:37.128123	2016-09-06 05:20:56.786887	spirituality
1619	Creativity	2016-08-07 04:46:37.135228	2016-09-06 05:20:56.797625	creativity
1621	Study Skill	2016-08-07 04:46:37.146468	2016-09-06 05:20:56.820563	study-skill
1622	Motivation	2016-08-07 04:46:37.151555	2016-09-06 05:20:56.830719	motivation
1623	Web Design	2016-08-07 04:46:37.157658	2016-09-06 05:20:56.842247	web-design
1495	Plaster	2016-07-25 02:57:43.201129	2016-07-25 02:57:43.201129	plaster-foo
1496	Plastic	2016-07-25 02:57:43.206457	2016-07-25 02:57:43.206457	plasric-foo
1497	Roads	2016-07-25 02:57:43.212014	2016-07-25 02:57:43.212014	road-foo
1498	Roofing	2016-07-25 02:57:43.218195	2016-07-25 02:57:43.218195	roofs-foo
1505	Wood	2016-07-25 02:57:43.254874	2016-07-25 02:57:43.254874	wood-foo
1507	Fabric	2016-07-25 02:57:43.263892	2016-07-25 02:57:43.263892	fabric-foo
1510	Marble	2016-07-25 02:57:43.279827	2016-07-25 02:57:43.279827	marble-foo
1513	Plastic	2016-07-25 02:57:43.294566	2016-07-25 02:57:43.294566	plastic-foo
1514	Sci-Fi	2016-07-25 02:57:43.29953	2016-07-25 02:57:43.29953	sci-fi-foo
1516	Water	2016-07-25 02:57:43.309867	2016-07-25 02:57:43.309867	water-foo
1517	Wood	2016-07-25 02:57:43.331755	2016-07-25 02:57:43.331755	wood-foo
1521	animals	2016-07-28 08:37:05.140435	2016-07-28 08:37:05.140435	nimals-foo
1527	fire	2016-07-28 08:38:36.326232	2016-07-28 08:38:36.326232	fire-foo
1529	fashion	2016-07-28 08:38:36.334705	2016-07-28 08:38:36.334705	fhasion-foo
1530	food & drink	2016-07-28 08:38:36.349476	2016-07-28 08:38:36.349476	f-d-foo
1532	nature	2016-07-28 08:38:36.35838	2016-07-28 08:38:36.35838	nature-foo
1533	people	2016-07-28 08:38:36.363435	2016-07-28 08:38:36.363435	people-foo
1538	entertaiment	2016-07-28 08:38:36.387303	2016-07-28 08:38:36.387303	enta-foo
1543	sports	2016-07-28 08:38:36.409814	2016-07-28 08:38:36.409814	sp-foo
1548	water	2016-07-28 08:38:36.432849	2016-07-28 08:38:36.432849	wt-foo
1550	wedding	2016-07-28 08:38:36.44238	2016-07-28 08:38:36.44238	wed-foo
1560	grunge	2016-07-28 08:38:36.543432	2016-07-28 08:38:36.543432	grug-foo
1571	sci-fi	2016-07-28 08:38:36.604766	2016-07-28 08:38:36.604766	sci-foo
1572	trapcode	2016-07-28 08:38:36.609637	2016-07-28 08:38:36.609637	trap-foo
1573	particles	2016-07-28 08:38:36.614862	2016-07-28 08:38:36.614862	tcle-foo
1589	E-Commerce	2016-08-07 04:46:36.974233	2016-08-07 04:46:36.974233	ecom-foo
1601	Real Estate	2016-08-07 04:46:37.044926	2016-08-07 04:46:37.044926	rl-foo
1624	Mobile App	2016-08-07 04:46:37.163546	2016-08-07 04:46:37.163546	mobile-app-foo
1100	 Arts & Design	2016-05-31 14:44:53.679879	2016-09-06 05:20:50.960837	arts-design
1101	 Accounting & Financial	2016-05-31 14:44:53.68665	2016-09-06 05:20:51.005344	accounting-financial
1106	 Community	2016-05-31 14:44:53.713827	2016-09-06 05:20:51.061323	community
1110	 Entertaiment	2016-05-31 14:44:53.73445	2016-09-06 05:20:51.104198	entertaiment
1114	 Legal Industry	2016-05-31 14:44:53.752973	2016-09-06 05:20:51.149017	legal-industry
1118	 Publishing	2016-05-31 14:44:53.772687	2016-09-06 05:20:51.194119	publishing
1121	 Retail & Distribution	2016-05-31 14:44:53.786169	2016-09-06 05:20:51.227107	retail-distribution
1126	 Startups	2016-05-31 14:44:53.81554	2016-09-06 05:20:51.294572	startups
1130	 PSD Design	2016-05-31 14:44:53.841598	2016-09-06 05:20:51.3384	psd-design
1135	Laravel	2016-07-18 12:16:33.272634	2016-09-06 05:20:51.394661	laravel
1138	Zend Framework	2016-07-18 12:16:33.44308	2016-09-06 05:20:51.427847	zend-framework
1144	React	2016-07-18 12:16:35.898601	2016-09-06 05:20:51.52697	react
1148	Prototype	2016-07-18 12:17:15.976868	2016-09-06 05:20:51.57293	prototype
1153	Ionic	2016-07-18 12:17:16.281791	2016-09-06 05:20:51.626923	ionic
1158	AI	2016-07-18 12:21:27.628044	2016-09-06 05:20:51.685158	ai
1161	Grails	2016-07-18 12:21:27.799873	2016-09-06 05:20:51.727336	grails
1166	Struts 2	2016-07-18 12:22:14.592927	2016-09-06 05:20:51.782983	struts-2
1169	Ruby on Rails	2016-07-18 12:22:14.764616	2016-09-06 05:20:51.816661	ruby-on-rails
1174	Database Engines	2016-07-18 12:22:16.425592	2016-09-06 05:20:51.873741	database-engines
1177	Scientific Computing	2016-07-18 12:24:47.362561	2016-09-06 05:20:51.905072	scientific-computing
1187	Mobile	2016-07-18 12:29:16.653126	2016-09-06 05:20:52.018444	mobile
1192	Newsletter	2016-07-18 12:29:16.972028	2016-09-06 05:20:52.083319	newsletter
1196	Security	2016-07-18 12:29:28.993305	2016-09-06 05:20:52.129136	security
1200	Shipping	2016-07-18 12:29:29.240965	2016-09-06 05:20:52.171964	shipping
1204	Animation & Effects	2016-07-18 12:29:31.113245	2016-09-06 05:20:52.216442	animation-effects
1219	Drupal	2016-07-18 12:35:37.498538	2016-09-06 05:20:52.344105	drupal
1228	Card	2016-07-22 15:08:03.118929	2016-09-06 05:20:52.426212	card
1233	Emoticon	2016-07-22 15:08:04.374341	2016-09-06 05:20:52.479177	emoticon
1237	Stripes	2016-07-22 15:11:07.869114	2016-09-06 05:20:52.529595	stripes
1242	Grid	2016-07-22 15:11:08.176161	2016-09-06 05:20:52.583435	grid
1247	MacBook	2016-07-22 15:16:25.594573	2016-09-06 05:20:52.638999	macbook
1251	Food & Beverages	2016-07-22 15:16:25.853572	2016-09-06 05:20:52.686162	food-beverages
1254	Animated Mockups	2016-07-22 15:16:26.063565	2016-09-06 05:20:52.72803	animated-mockups
1259	3D Scans	2016-07-22 15:26:03.761964	2016-09-06 05:20:52.784859	3d-scans
1264	Concrete	2016-07-22 15:26:04.083679	2016-09-06 05:20:52.839431	concrete
1272	HDR Skies	2016-07-22 15:26:04.579775	2016-09-06 05:20:52.928949	hdr-skies
1277	Nature	2016-07-22 15:26:04.892763	2016-09-06 05:20:52.983742	nature
1283	Rock	2016-07-22 15:26:05.270309	2016-09-06 05:20:53.05033	rock
1288	Tiles	2016-07-22 15:26:05.580673	2016-09-06 05:20:53.117144	tiles
1294	Navigation Bars	2016-07-22 15:56:17.695364	2016-09-06 05:20:53.185249	navigation-bars
1301	Postcard	2016-07-22 16:00:17.747427	2016-09-06 05:20:53.263134	postcard
1306	Signage	2016-07-22 16:00:18.064293	2016-09-06 05:20:53.317563	signage
1311	Apparel	2016-07-22 16:02:28.178297	2016-09-06 05:20:53.374209	apparel
1317	Mug	2016-07-22 16:02:28.551917	2016-09-06 05:20:53.439953	mug
1319	Magazine cover	2016-07-22 16:02:28.682858	2016-09-06 05:20:53.461997	magazine-cover
1326	Bar & Night Club	2016-07-23 02:43:16.065666	2016-09-06 05:20:53.52959	bar-night-club
1330	Communications	2016-07-23 02:43:16.339847	2016-09-06 05:20:53.573167	communications
1334	Cosmetic & Beauty	2016-07-23 02:43:16.606495	2016-09-06 05:20:53.61784	cosmetic-beauty
1341	Food & Drink	2016-07-23 02:43:17.058824	2016-09-06 05:20:53.685709	food-drink
1626	Design Tools	2016-08-07 04:46:37.185778	2016-09-06 05:20:56.875197	design-tools
1627	User Experience	2016-08-07 04:46:37.191629	2016-09-06 05:20:56.88695	user-experience
1628	Game Design	2016-08-07 04:46:37.197791	2016-09-06 05:20:56.897662	game-design
1630	3D & 2D	2016-08-07 04:46:37.208751	2016-09-06 05:20:56.919757	3d-2d
1631	Animation	2016-08-07 04:46:37.214334	2016-09-06 05:20:56.931707	animation
1634	Interior	2016-08-07 04:46:37.229712	2016-09-06 05:20:56.95185	interior
1637	Social Media Marketing	2016-08-07 04:46:37.244344	2016-09-06 05:20:57.131467	social-media-marketing
1638	Branding	2016-08-07 04:46:37.24879	2016-09-06 05:20:57.154106	branding
1639	Market Fundamental	2016-08-07 04:46:37.254165	2016-09-06 05:20:57.164687	market-fundamental
1641	Advertising	2016-08-07 04:46:37.265228	2016-09-06 05:20:57.186835	advertising
1642	Video Marketing	2016-08-07 04:46:37.27012	2016-09-06 05:20:57.197892	video-marketing
1644	Non-Digital Marketing	2016-08-07 04:46:37.281039	2016-09-06 05:20:57.21963	non-digital-marketing
1645	Product Marketing	2016-08-07 04:46:37.285965	2016-09-06 05:20:57.231313	product-marketing
1646	Affiliate	2016-08-07 04:46:37.292206	2016-09-06 05:20:57.241964	affiliate
1647	Art & Craft	2016-08-07 04:46:37.297185	2016-09-06 05:20:57.253045	art-craft
1649	Cook	2016-08-07 04:46:37.309492	2016-09-06 05:20:57.277048	cook
1650	Beauty	2016-08-07 04:46:37.315503	2016-09-06 05:20:57.287583	beauty
1651	Makeup	2016-08-07 04:46:37.320558	2016-09-06 05:20:57.298001	makeup
1654	Digital Photography	2016-08-07 04:46:37.33799	2016-09-06 05:20:57.331405	digital-photography
1655	Photography Fundamental	2016-08-07 04:46:37.343169	2016-09-06 05:20:57.342995	photography-fundamental
1656	Portrait	2016-08-07 04:46:37.349057	2016-09-06 05:20:57.35384	portrait
1658	Black & White	2016-08-07 04:46:37.36048	2016-09-06 05:20:57.37664	black-white
1659	Photography Tools	2016-08-07 04:46:37.367025	2016-09-06 05:20:57.387365	photography-tools
1661	Travel Photography 	2016-08-07 04:46:37.377141	2016-09-06 05:20:57.409702	travel-photography
1662	Commercial Photography 	2016-08-07 04:46:37.396412	2016-09-06 05:20:57.420461	commercial-photography
1664	Video Design	2016-08-07 04:46:37.409208	2016-09-06 05:20:57.442594	video-design
1665	Fitness	2016-08-07 04:46:37.41568	2016-09-06 05:20:57.454028	fitness
1666	General Health	2016-08-07 04:46:37.421509	2016-09-06 05:20:57.464867	general-health
1667	Herbal	2016-08-07 04:46:37.427174	2016-09-06 05:20:57.475782	herbal
1669	Nutrition	2016-08-07 04:46:37.43839	2016-09-06 05:20:57.494801	nutrition
1670	Yoga	2016-08-07 04:46:37.444587	2016-09-06 05:20:57.508808	yoga
1672	Dance	2016-08-07 04:46:37.470357	2016-09-06 05:20:57.531706	dance
1673	Meditation	2016-08-07 04:46:37.475253	2016-09-06 05:20:57.542476	meditation
1674	Instruments	2016-08-07 04:46:37.480269	2016-09-06 05:20:57.55343	instruments
1676	Vocal	2016-08-07 04:46:37.490572	2016-09-06 05:20:57.575682	vocal
1677	Techniques	2016-08-07 04:46:37.494753	2016-09-06 05:20:57.586779	techniques
1678	Music Software	2016-08-07 04:46:37.499192	2016-09-06 05:20:57.599326	music-software
1679	Math	2016-08-07 04:46:37.503041	2016-09-06 05:20:57.609433	math
1683	English	2016-08-07 04:46:37.51974	2016-09-06 05:20:57.644178	english
1684	Spanish	2016-08-07 04:46:37.5245	2016-09-06 05:20:57.665907	spanish
1685	German	2016-08-07 04:46:37.528537	2016-09-06 05:20:57.675346	german
1686	French	2016-08-07 04:46:37.532633	2016-09-06 05:20:57.688464	french
1688	Chinese	2016-08-07 04:46:37.540232	2016-09-06 05:20:57.708991	chinese
1689	Russian	2016-08-07 04:46:37.543892	2016-09-06 05:20:57.721119	russian
1690	Latin	2016-08-07 04:46:37.548092	2016-09-06 05:20:57.731121	latin
1691	Italian	2016-08-07 04:46:37.551801	2016-09-06 05:20:57.743044	italian
1692	Indonesian	2016-08-07 04:46:37.555855	2016-09-06 05:20:57.753881	indonesian
1632	Fashion	2016-08-07 04:46:37.219088	2016-08-07 04:46:37.219088	fash-foo
1633	Architectural	2016-08-07 04:46:37.225224	2016-08-07 04:46:37.225224	archi-foo
1668	Sports	2016-08-07 04:46:37.432082	2016-08-07 04:46:37.432082	spo-foo
1680	Science	2016-08-07 04:46:37.508081	2016-08-07 04:46:37.508081	science-foo
1681	Nature	2016-08-07 04:46:37.511952	2016-08-07 04:46:37.511952	nture-foo
1346	Landscaping	2016-07-23 02:43:17.388133	2016-09-06 05:20:53.740427	landscaping
1349	Physical Fitness	2016-07-23 02:43:17.598924	2016-09-06 05:20:53.804336	physical-fitness
1357	Spa & Esthetics	2016-07-23 02:43:18.136394	2016-09-06 05:20:53.883166	spa-esthetics
1363	Mammals	2016-07-25 02:57:42.491493	2016-09-06 05:20:53.951362	mammals
1365	Invertebrate	2016-07-25 02:57:42.533094	2016-09-06 05:20:53.973697	invertebrate
1371	Deciduous	2016-07-25 02:57:42.562012	2016-09-06 05:20:54.04068	deciduous
1375	Fruit Tree	2016-07-25 02:57:42.583683	2016-09-06 05:20:54.084768	fruit-tree
1380	Liquid	2016-07-25 02:57:42.606343	2016-09-06 05:20:54.134109	liquid
1384	Cartoon Landscapes	2016-07-25 02:57:42.624873	2016-09-06 05:20:54.185005	cartoon-landscapes
1390	Iceberg	2016-07-25 02:57:42.661869	2016-09-06 05:20:54.251109	iceberg
1395	Audio Devices	2016-07-25 02:57:42.683389	2016-09-06 05:20:54.31886	audio-devices
1401	Electrical	2016-07-25 02:57:42.710807	2016-09-06 05:20:54.397186	electrical
1407	Charger	2016-07-25 02:57:42.741331	2016-09-06 05:20:54.462913	charger
1412	Aircraft	2016-07-25 02:57:42.765115	2016-09-06 05:20:54.518573	aircraft
1416	Large Truck	2016-07-25 02:57:42.783903	2016-09-06 05:20:54.562605	large-truck
1420	Pedaled Vehicles	2016-07-25 02:57:42.802447	2016-09-06 05:20:54.607159	pedaled-vehicles
1426	Stroller	2016-07-25 02:57:42.829162	2016-09-06 05:20:54.674328	stroller
1429	Snowmobile	2016-07-25 02:57:42.842532	2016-09-06 05:20:54.707281	snowmobile
1433	New Concept Vehicles	2016-07-25 02:57:42.860336	2016-09-06 05:20:54.75147	new-concept-vehicles
1438	Cufflinks	2016-07-25 02:57:42.882664	2016-09-06 05:20:54.808724	cufflinks
1442	Building Component	2016-07-25 02:57:42.901439	2016-09-06 05:20:54.852068	building-component
1446	Mythological Creatures	2016-07-25 02:57:42.919941	2016-09-06 05:20:54.908359	mythological-creatures
1451	Stickman	2016-07-25 02:57:42.94643	2016-09-06 05:20:54.963089	stickman
1457	Seating	2016-07-25 02:57:42.981196	2016-09-06 05:20:55.030721	seating
1462	Cabinet	2016-07-25 02:57:43.010563	2016-09-06 05:20:55.141723	cabinet
1467	Armoire	2016-07-25 02:57:43.039676	2016-09-06 05:20:55.196265	armoire
1470	Sideboard	2016-07-25 02:57:43.0572	2016-09-06 05:20:55.229642	sideboard
1474	Vanity	2016-07-25 02:57:43.080852	2016-09-06 05:20:55.274075	vanity
1477	Office Furniture	2016-07-25 02:57:43.097116	2016-09-06 05:20:55.307576	office-furniture
1489	HDRI Images	2016-07-25 02:57:43.166412	2016-09-06 05:20:55.405818	hdri-images
1499	Skies	2016-07-25 02:57:43.222885	2016-09-06 05:20:55.476088	skies
1501	Stone	2016-07-25 02:57:43.233802	2016-09-06 05:20:55.508661	stone
1512	Organic	2016-07-25 02:57:43.289928	2016-09-06 05:20:55.617766	organic
1523	business	2016-07-28 08:38:36.307236	2016-09-06 05:20:55.74137	business
1534	military	2016-07-28 08:38:36.368088	2016-09-06 05:20:55.835584	military
1541	holidays	2016-07-28 08:38:36.400382	2016-09-06 05:20:55.914764	holidays
1547	transportation	2016-07-28 08:38:36.428836	2016-09-06 05:20:55.99731	transportation
1553	snow	2016-07-28 08:38:36.456227	2016-09-06 05:20:56.06401	snow
1557	3d animated element	2016-07-28 08:38:36.520381	2016-09-06 05:20:56.119579	3d-animated-element
1565	typography	2016-07-28 08:38:36.576191	2016-09-06 05:20:56.20868	typography
1569	trapcode	2016-07-28 08:38:36.595858	2016-09-06 05:20:56.252251	trapcode
1576	lower thirds	2016-07-28 08:38:36.65272	2016-09-06 05:20:56.308855	lower-thirds
1580	overlays 	2016-07-28 08:38:36.686381	2016-09-06 05:20:56.35275	overlays
1583	Programming Languages	2016-08-07 04:46:36.937794	2016-09-06 05:20:56.386603	programming-languages
1587	Software Engineering	2016-08-07 04:46:36.966368	2016-09-06 05:20:56.430989	software-engineering
1594	Sales	2016-08-07 04:46:36.994559	2016-09-06 05:20:56.509488	sales
1597	Business Law	2016-08-07 04:46:37.007048	2016-09-06 05:20:56.541955	business-law
1602	IT Certification	2016-08-07 04:46:37.048459	2016-09-06 05:20:56.591314	it-certification
1605	Operating System	2016-08-07 04:46:37.061505	2016-09-06 05:20:56.631733	operating-system
1611	Personal Transformation	2016-08-07 04:46:37.088985	2016-09-06 05:20:56.709198	personal-transformation
1615	Career Development	2016-08-07 04:46:37.111566	2016-09-06 05:20:56.753651	career-development
1620	Stress Management	2016-08-07 04:46:37.14046	2016-09-06 05:20:56.80871	stress-management
1625	Graphic Design	2016-08-07 04:46:37.180574	2016-09-06 05:20:56.859214	graphic-design
1629	Design Thinking	2016-08-07 04:46:37.202453	2016-09-06 05:20:56.908433	design-thinking
1635	Digital Marketing	2016-08-07 04:46:37.235046	2016-09-06 05:20:56.964637	digital-marketing
1640	Analytics	2016-08-07 04:46:37.259367	2016-09-06 05:20:57.175206	analytics
1643	Content Management	2016-08-07 04:46:37.275368	2016-09-06 05:20:57.208163	content-management
1648	Food	2016-08-07 04:46:37.303133	2016-09-06 05:20:57.264357	food
1653	Pet Care & Training	2016-08-07 04:46:37.331379	2016-09-06 05:20:57.313965	pet-care-training
1657	Landscape	2016-08-07 04:46:37.355143	2016-09-06 05:20:57.364459	landscape
1660	Tips & Trick	2016-08-07 04:46:37.371978	2016-09-06 05:20:57.397855	tips-trick
1663	Wedding Photography 	2016-08-07 04:46:37.402807	2016-09-06 05:20:57.43095	wedding-photography
1671	Dieting	2016-08-07 04:46:37.466187	2016-09-06 05:20:57.520436	dieting
1675	Music Fundamental	2016-08-07 04:46:37.486244	2016-09-06 05:20:57.565035	music-fundamental
1682	Humanities	2016-08-07 04:46:37.516054	2016-09-06 05:20:57.629358	humanities
1687	Japanese	2016-08-07 04:46:37.536481	2016-09-06 05:20:57.697611	japanese
1693	Web Development	2016-08-07 04:46:36.919767	2016-09-06 05:20:57.764631	web-development
1185	E-Commerce	2016-07-18 12:29:16.538899	2016-07-18 12:29:16.538899	e-commerce_foo
1211	Games	2016-07-18 12:34:07.35529	2016-07-18 12:34:07.35529	games-foo
1218	Ionic	2016-07-18 12:35:37.440202	2016-07-18 12:35:37.440202	ionic-foo
1227	PrestaShop	2016-07-18 12:39:01.110293	2016-07-18 12:39:01.110293	prestashop-foo
1267	Fabric	2016-07-22 15:26:04.269494	2016-07-22 15:26:04.269494	fabric-foo
1299	Newsletter	2016-07-22 15:56:18.00049	2016-07-22 15:56:18.00049	newsletter-foo
1337	Entertaiment	2016-07-23 02:43:16.801198	2016-07-23 02:43:16.801198	ente-foo
1356	Medical & Pharmaceutical	2016-07-23 02:43:18.069922	2016-07-23 02:43:18.069922	medical-foo
1399	Photography	2016-07-25 02:57:42.701099	2016-07-25 02:57:42.701099	photo-foo-bar
1484	Fabric	2016-07-25 02:57:43.136573	2016-07-25 02:57:43.136573	fabric-foo
1492	Metal	2016-07-25 02:57:43.184992	2016-07-25 02:57:43.184992	mtal-foo
1502	Tiles	2016-07-25 02:57:43.239008	2016-07-25 02:57:43.239008	tile-foo
1511	Metal	2016-07-25 02:57:43.285086	2016-07-25 02:57:43.285086	metal-foo
1515	Stone	2016-07-25 02:57:43.304634	2016-07-25 02:57:43.304634	stone-foo
1525	education	2016-07-28 08:38:36.316947	2016-07-28 08:38:36.316947	educ-foo
1531	industrial	2016-07-28 08:38:36.35332	2016-07-28 08:38:36.35332	indus-foo
1540	technology	2016-07-28 08:38:36.39616	2016-07-28 08:38:36.39616	tech-foo
1562	infographic	2016-07-28 08:38:36.559004	2016-07-28 08:38:36.559004	info-foo
1574	typography	2016-07-28 08:38:36.624762	2016-07-28 08:38:36.624762	typo-foo
1636	SEO	2016-08-07 04:46:37.240032	2016-08-07 04:46:37.240032	seo-foo
1652	Travel	2016-08-07 04:46:37.326274	2016-08-07 04:46:37.326274	vel-foo
\.


--
-- Name: subcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('subcategories_id_seq', 7, true);


--
-- Data for Name: t3d_autocompletes; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY t3d_autocompletes (id, term, popularity, created_at, updated_at) FROM stdin;
\.


--
-- Name: t3d_autocompletes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('t3d_autocompletes_id_seq', 1, false);


--
-- Data for Name: t3ds; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY t3ds (id, name, description, category_id, note, thumbnail, price, agree, slug, url_demo, video_demo, user_id, animated, low_poly, material, rigged, texture, uv_mapped, unwrapped_uvs, bitmap_texture, procedural_texture, tileable, layered, resolution, created_at, updated_at, polygons_count, vertices_count, modelsub_id, genre_id, geometry_id, price_ext, team_id, reject, average_rate, sell) FROM stdin;
3	Vivid CG Skies Sun Clouds 001 	<p>Vivid CG Skies are very high resolution spherical HDR panoramas of existing skies. They are created very meticulousy to meet your expectations at lighting up your 3D scenes.</p>\r\n\r\n<p>Resolution of vivid CG skies:</p>\r\n\r\n<p>This ultra high resolution sky hemisphere is ready to light up your 3D scene. The 15 000 pixels wide and 3750 pixels high true HDR sky image will guarantee great effects with lighting up your model.</p>\r\n\r\n<p>What do you buy:</p>\r\n\r\n<p>The CG Skies that you will purchase are always in 2 main formats: HDR and EXR, both in 32 bits, 15k resolution. Each package contains 5000 px wide preview image, that can be used in postproduction process for some other reasons.</p>\r\n	1047		e691e23a2ad39901bc3a4b82aea922844d00f1e69601cad9f7.jpg	12.0	t	vivid-cg-skies-sun-clouds-001	https://3docean.net/item/vivid-cg-skies-sun-clouds-001-15k-resolution/screenshots/17247496	https://3docean.net/item/vivid-cg-skies-sun-clouds-001-15k-resolution/screenshots/17247496	18	\N	\N	\N	\N	\N	\N	\N	\N	\N	No	No	2000 x 3000	2016-07-27 02:41:20.739146	2016-08-28 09:59:43.39223	\N	\N	\N	6	\N	1567.0	4	f	\N	0
2	Rock Realistic V-ray Material	Authentic freegan seitan, pinterest hoodie vice next level man braid mixtape. +1 cred pabst, banjo tote bag man bun listicle. Tilde direct trade banh mi, etsy celiac craft beer 90&#39;s cliche distillery kogi mlkshk put a bird on it. Letterpress single-origin coffee chillwave, man braid stumptown sriracha tofu authentic microdosing selfies pop-up. Street art helvetica williamsburg food truck. Tote bag swag meggings brooklyn paleo skateboard shoreditch, retro listicle. Sustainable normcore cardigan, 90&#39;s cornhole kinfolk 8-bit fixie selfies.	1048	nothing...	85d9b9d6bb322a07089658dda826c6ff26413fb0972cf98b85.png	3.0	t	rock-realistic-v-ray-material	https://3docean.net/item/fabric-materials/11734915?s_rank=2		18	No	\N	\N	\N	\N	\N	\N	No	No	No	\N	\N	2016-07-27 01:51:47.829175	2016-09-04 03:34:05.097222	\N	\N	\N	9	\N	456.0	5	f	\N	0
6	ALEYSHA v.02	<img alt="" src="https://0.s3.envato.com/files/20359581/preview.jpg" />	1040		369d802dc2522792d0a75088226ca4f460de663e2f5d23d69b.png	12.0	t	aleysha-v-02	https://3docean.net/item/aleysha-v02/screenshots/134757	https://creativemarket.com/3d/animals	19	Yes	Yes	Yes	Yes	Yes	Yes	Yes	\N	\N	\N	\N	2001x2002	2016-09-08 03:15:45.777691	2016-09-08 03:24:48.237436	3454	2435	\N	\N	1	1245.0	1	f	\N	0
5	Charity/Fundraising WordPress Theme	<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/c24ba6f0e5b34d15de32dcd6eaca7a8f926fb224/687474703a2f2f736b61742e74662f68656c70696e672d68616e64732f68682d66656174757265642d312e6a7067" /></p>\r\n\r\n<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/c4404d6d6bd32a7aed85cc29e615448324fd33a0/687474703a2f2f736b61742e74662f68656c70696e672d68616e64732f68682d66656174757265642d322e6a7067" /></p>\r\n	1040		fcea48a2709a2de616ebc10898a297e1b930f4dd3819324c6b.png	24.0	t	charity-fundraising-wordpress-theme	http://preview.themeforest.net/item/helpinghands-charityfundraising-wordpress-theme/full_screen_preview/12832860		19	Yes	Yes	Yes	Yes	Yes	Yes	Yes	\N	\N	\N	\N	3000x3929	2016-09-08 03:09:39.718265	2016-09-08 03:28:07.213831	24233	5345	3	6	1	2546.0	1	f	\N	1
4	Maya Shelf Label Icon Generator (Create colourful maya shelf icons within 5 secs)	<p>Maya Shelf Icon Generator<br />\r\n<br />\r\nGenerates crystal-clear colourful 5-line label icons for maya shelf commands.<br />\r\nexports as png.&nbsp;<br />\r\ntransparency supported.<br />\r\n<br />\r\nIMPORTANT NOTE!!!<br />\r\n&raquo; if you dont see crystal clear bitmap texts right here on this page&rsquo;s main preview image; reset your monitor to its natural resolution. also press autoadjust button on monitor.<br />\r\n&raquo; dont stop windows &ldquo;theme service&rdquo; (check services.msc)<br />\r\n&raquo;windows7 and up only ! (dont disable or stop windows theme service)<br />\r\n&raquo; if this will be your day and first purchase in envato and will ready to complain before buy via false sentences;dont buy.<br />\r\n&raquo; what you see is what you get. if you dont see a crystal-clear-text in product item image preview;dont buy. (its because you have a wrong resolution monitor set!)<br />\r\n&raquo; if you are a person who uses still Windows XP. (win7 minimum required)<br />\r\n&raquo; if dont have &ldquo;Administrator Rights&rdquo; on the pc.<br />\r\n&raquo; if you are a 1-day-old member on envato<br />\r\nplease dont buy.</p>\r\n\r\n<p><img alt="" src="https://www.creativecrash.com/system/photos/000/520/297/520297/big/p2.png" style="height:612px; width:425px" /></p>\r\n\r\n<p>UPDATES 1.3.0.0<br />\r\n&raquo; Favorites Functionality added. now you can collect and reuse icon styles. by the way you can remember your icon styles.<br />\r\n&raquo; each 5 line backgrounds now can be stylized individually.<br />\r\n&raquo; right click to preview lines to select. left click to preview lines to apply last background-color. eg. if you right click to line1 and than left click to line2; will apply line1 style to line2 style. its utilized to build style applying to 5lines faster.</p>\r\n\r\n<p><br />\r\n(please dont use bad antivirus apps andalso use this tool via &ldquo;Administrator priviliages&rdquo;).</p>\r\n	1051	nothing...	e7960f9dfbf0beed78caae29ecc90920c7f824ebc441f8185a.jpg	\N	f	maya-shelf-label-icon-generator-create-colourful-maya-shelf-icons-within-5-secs	https://3docean.net/item/maya-shelf-label-icon-generator-create-colourful-maya-shelf-icons-within-5-secs/15675996?s_rank=1#video-container	https://3docean.net/item/maya-shelf-label-icon-generator-create-colourful-maya-shelf-icons-within-5-secs/15675996?s_rank=1#video-container	20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2000 x 1780	2016-07-27 03:02:17.71263	2016-11-07 19:55:15.337406	\N	\N	\N	2	\N	\N	\N	f	\N	0
\.


--
-- Name: t3ds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('t3ds_id_seq', 7, true);


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY taggings (id, tag_id, theme_id, created_at, updated_at, code_id, graphic_id, t3d_id, videofx_id, font_id, course_id) FROM stdin;
60	58	\N	2016-07-21 05:03:40.613509	2016-07-21 05:03:40.613509	9	\N	\N	\N	\N	\N
61	59	\N	2016-07-21 05:03:40.655367	2016-07-21 05:03:40.655367	9	\N	\N	\N	\N	\N
62	60	\N	2016-07-21 05:03:40.661225	2016-07-21 05:03:40.661225	9	\N	\N	\N	\N	\N
63	61	\N	2016-07-21 05:03:40.666695	2016-07-21 05:03:40.666695	9	\N	\N	\N	\N	\N
73	71	11	2016-07-22 07:38:13.066205	2016-07-22 07:38:13.066205	\N	\N	\N	\N	\N	\N
74	72	11	2016-07-22 07:38:13.074008	2016-07-22 07:38:13.074008	\N	\N	\N	\N	\N	\N
75	73	11	2016-07-22 07:38:13.081424	2016-07-22 07:38:13.081424	\N	\N	\N	\N	\N	\N
76	74	18	2016-07-22 07:39:22.724607	2016-07-22 07:39:22.724607	\N	\N	\N	\N	\N	\N
77	75	18	2016-07-22 07:39:22.729608	2016-07-22 07:39:22.729608	\N	\N	\N	\N	\N	\N
78	76	18	2016-07-22 07:39:22.735633	2016-07-22 07:39:22.735633	\N	\N	\N	\N	\N	\N
81	79	\N	2016-07-27 02:59:21.008884	2016-07-27 02:59:21.008884	\N	\N	3	\N	\N	\N
82	80	\N	2016-07-27 02:59:21.042414	2016-07-27 02:59:21.042414	\N	\N	3	\N	\N	\N
83	81	\N	2016-07-27 02:59:21.057235	2016-07-27 02:59:21.057235	\N	\N	3	\N	\N	\N
84	82	\N	2016-07-27 02:59:21.068714	2016-07-27 02:59:21.068714	\N	\N	3	\N	\N	\N
85	83	\N	2016-07-27 02:59:21.078302	2016-07-27 02:59:21.078302	\N	\N	3	\N	\N	\N
86	84	\N	2016-07-27 02:59:21.087869	2016-07-27 02:59:21.087869	\N	\N	3	\N	\N	\N
87	85	\N	2016-07-27 03:23:01.687851	2016-07-27 03:23:01.687851	\N	\N	4	\N	\N	\N
88	86	\N	2016-07-27 03:23:01.694662	2016-07-27 03:23:01.694662	\N	\N	4	\N	\N	\N
89	87	\N	2016-07-27 03:23:01.701551	2016-07-27 03:23:01.701551	\N	\N	4	\N	\N	\N
90	88	\N	2016-07-27 03:23:01.708751	2016-07-27 03:23:01.708751	\N	\N	4	\N	\N	\N
91	89	\N	2016-07-27 03:23:01.719623	2016-07-27 03:23:01.719623	\N	\N	4	\N	\N	\N
92	90	\N	2016-07-27 03:23:01.726112	2016-07-27 03:23:01.726112	\N	\N	4	\N	\N	\N
93	10	\N	2016-07-27 04:34:34.645012	2016-07-27 04:34:34.645012	\N	\N	2	\N	\N	\N
94	91	\N	2016-07-27 04:34:34.650316	2016-07-27 04:34:34.650316	\N	\N	2	\N	\N	\N
95	92	\N	2016-07-27 04:34:34.655246	2016-07-27 04:34:34.655246	\N	\N	2	\N	\N	\N
96	93	\N	2016-07-27 04:34:34.660194	2016-07-27 04:34:34.660194	\N	\N	2	\N	\N	\N
97	94	\N	2016-07-27 04:34:34.66723	2016-07-27 04:34:34.66723	\N	\N	2	\N	\N	\N
98	95	\N	2016-07-27 04:34:34.673443	2016-07-27 04:34:34.673443	\N	\N	2	\N	\N	\N
99	96	\N	2016-07-27 04:34:34.678907	2016-07-27 04:34:34.678907	\N	\N	2	\N	\N	\N
100	97	\N	2016-07-27 04:34:34.685086	2016-07-27 04:34:34.685086	\N	\N	2	\N	\N	\N
101	98	\N	2016-07-27 04:34:34.691571	2016-07-27 04:34:34.691571	\N	\N	2	\N	\N	\N
102	99	\N	2016-07-27 04:34:34.698512	2016-07-27 04:34:34.698512	\N	\N	2	\N	\N	\N
103	100	\N	2016-07-27 04:34:34.703695	2016-07-27 04:34:34.703695	\N	\N	2	\N	\N	\N
104	101	\N	2016-07-27 04:34:34.708756	2016-07-27 04:34:34.708756	\N	\N	2	\N	\N	\N
105	15	\N	2016-07-27 04:34:34.714159	2016-07-27 04:34:34.714159	\N	\N	2	\N	\N	\N
106	102	\N	2016-07-27 04:34:34.720216	2016-07-27 04:34:34.720216	\N	\N	2	\N	\N	\N
107	103	\N	2016-07-27 04:34:34.725649	2016-07-27 04:34:34.725649	\N	\N	2	\N	\N	\N
108	104	\N	2016-07-27 04:34:34.730782	2016-07-27 04:34:34.730782	\N	\N	2	\N	\N	\N
109	105	\N	2016-07-27 04:34:34.736957	2016-07-27 04:34:34.736957	\N	\N	2	\N	\N	\N
110	106	\N	2016-07-27 04:34:34.742987	2016-07-27 04:34:34.742987	\N	\N	2	\N	\N	\N
111	107	\N	2016-07-27 04:34:34.74771	2016-07-27 04:34:34.74771	\N	\N	2	\N	\N	\N
112	108	\N	2016-07-27 04:34:34.753525	2016-07-27 04:34:34.753525	\N	\N	2	\N	\N	\N
113	109	\N	2016-07-27 04:34:34.758869	2016-07-27 04:34:34.758869	\N	\N	2	\N	\N	\N
114	110	\N	2016-07-27 04:34:34.765334	2016-07-27 04:34:34.765334	\N	\N	2	\N	\N	\N
115	111	\N	2016-07-27 04:34:34.771514	2016-07-27 04:34:34.771514	\N	\N	2	\N	\N	\N
116	112	\N	2016-07-27 04:34:34.776415	2016-07-27 04:34:34.776415	\N	\N	2	\N	\N	\N
117	113	\N	2016-07-27 04:34:34.781765	2016-07-27 04:34:34.781765	\N	\N	2	\N	\N	\N
118	114	\N	2016-07-27 04:34:34.78652	2016-07-27 04:34:34.78652	\N	\N	2	\N	\N	\N
119	115	\N	2016-07-27 04:34:34.791983	2016-07-27 04:34:34.791983	\N	\N	2	\N	\N	\N
120	116	\N	2016-07-27 04:34:34.796478	2016-07-27 04:34:34.796478	\N	\N	2	\N	\N	\N
121	117	\N	2016-07-27 04:34:34.802894	2016-07-27 04:34:34.802894	\N	\N	2	\N	\N	\N
122	118	\N	2016-07-27 04:34:34.811698	2016-07-27 04:34:34.811698	\N	\N	2	\N	\N	\N
132	128	\N	2016-08-02 02:32:11.302534	2016-08-02 02:32:11.302534	\N	\N	\N	4	\N	\N
133	129	\N	2016-08-02 02:32:11.339232	2016-08-02 02:32:11.339232	\N	\N	\N	4	\N	\N
134	130	\N	2016-08-02 02:32:11.34824	2016-08-02 02:32:11.34824	\N	\N	\N	4	\N	\N
135	131	\N	2016-08-02 02:32:11.354969	2016-08-02 02:32:11.354969	\N	\N	\N	4	\N	\N
136	132	\N	2016-08-02 02:32:11.362395	2016-08-02 02:32:11.362395	\N	\N	\N	4	\N	\N
137	133	\N	2016-08-02 03:57:48.164404	2016-08-02 03:57:48.164404	\N	\N	\N	1	\N	\N
138	134	\N	2016-08-02 03:57:48.171481	2016-08-02 03:57:48.171481	\N	\N	\N	1	\N	\N
139	135	\N	2016-08-02 03:57:48.17712	2016-08-02 03:57:48.17712	\N	\N	\N	1	\N	\N
140	136	\N	2016-08-02 03:57:48.18207	2016-08-02 03:57:48.18207	\N	\N	\N	1	\N	\N
141	137	\N	2016-08-02 03:57:48.187175	2016-08-02 03:57:48.187175	\N	\N	\N	1	\N	\N
142	138	\N	2016-08-02 03:57:48.192684	2016-08-02 03:57:48.192684	\N	\N	\N	1	\N	\N
143	139	\N	2016-08-02 03:57:48.197469	2016-08-02 03:57:48.197469	\N	\N	\N	1	\N	\N
144	140	\N	2016-08-02 03:57:48.204982	2016-08-02 03:57:48.204982	\N	\N	\N	1	\N	\N
145	141	\N	2016-08-02 03:57:48.210441	2016-08-02 03:57:48.210441	\N	\N	\N	1	\N	\N
146	142	\N	2016-08-02 03:57:48.216107	2016-08-02 03:57:48.216107	\N	\N	\N	1	\N	\N
147	143	\N	2016-08-02 03:57:48.22197	2016-08-02 03:57:48.22197	\N	\N	\N	1	\N	\N
148	144	\N	2016-08-02 03:57:48.229317	2016-08-02 03:57:48.229317	\N	\N	\N	1	\N	\N
149	145	\N	2016-08-02 03:57:48.23589	2016-08-02 03:57:48.23589	\N	\N	\N	1	\N	\N
150	146	\N	2016-08-02 03:57:48.24185	2016-08-02 03:57:48.24185	\N	\N	\N	1	\N	\N
165	160	\N	2016-08-02 04:13:18.476045	2016-08-02 04:13:18.476045	\N	\N	\N	3	\N	\N
166	120	\N	2016-08-02 04:13:18.486359	2016-08-02 04:13:18.486359	\N	\N	\N	3	\N	\N
167	161	\N	2016-08-02 04:13:18.492013	2016-08-02 04:13:18.492013	\N	\N	\N	3	\N	\N
168	162	\N	2016-08-02 04:13:18.497421	2016-08-02 04:13:18.497421	\N	\N	\N	3	\N	\N
169	163	\N	2016-08-02 04:13:18.502142	2016-08-02 04:13:18.502142	\N	\N	\N	3	\N	\N
170	164	\N	2016-08-02 04:13:18.508809	2016-08-02 04:13:18.508809	\N	\N	\N	3	\N	\N
171	165	\N	2016-08-02 04:13:18.513791	2016-08-02 04:13:18.513791	\N	\N	\N	3	\N	\N
172	166	\N	2016-08-02 04:13:18.519504	2016-08-02 04:13:18.519504	\N	\N	\N	3	\N	\N
173	167	\N	2016-08-02 04:13:18.526894	2016-08-02 04:13:18.526894	\N	\N	\N	3	\N	\N
174	168	\N	2016-08-02 04:13:18.532089	2016-08-02 04:13:18.532089	\N	\N	\N	3	\N	\N
175	169	\N	2016-08-02 04:13:18.537306	2016-08-02 04:13:18.537306	\N	\N	\N	3	\N	\N
176	170	\N	2016-08-02 04:13:18.542118	2016-08-02 04:13:18.542118	\N	\N	\N	3	\N	\N
177	171	\N	2016-08-02 04:13:18.54739	2016-08-02 04:13:18.54739	\N	\N	\N	3	\N	\N
178	172	\N	2016-08-02 04:13:18.55259	2016-08-02 04:13:18.55259	\N	\N	\N	3	\N	\N
179	173	\N	2016-08-02 04:13:18.557565	2016-08-02 04:13:18.557565	\N	\N	\N	3	\N	\N
180	174	\N	2016-08-06 11:23:27.709429	2016-08-06 11:23:27.709429	\N	\N	\N	\N	1	\N
181	175	\N	2016-08-06 11:23:27.717788	2016-08-06 11:23:27.717788	\N	\N	\N	\N	1	\N
182	176	\N	2016-08-06 11:23:27.725853	2016-08-06 11:23:27.725853	\N	\N	\N	\N	1	\N
183	177	\N	2016-08-06 11:23:27.73543	2016-08-06 11:23:27.73543	\N	\N	\N	\N	1	\N
184	178	\N	2016-08-06 11:23:27.739813	2016-08-06 11:23:27.739813	\N	\N	\N	\N	1	\N
185	179	\N	2016-08-06 11:23:27.744032	2016-08-06 11:23:27.744032	\N	\N	\N	\N	1	\N
186	180	\N	2016-08-06 11:23:27.750615	2016-08-06 11:23:27.750615	\N	\N	\N	\N	1	\N
187	181	\N	2016-08-06 11:23:27.756371	2016-08-06 11:23:27.756371	\N	\N	\N	\N	1	\N
188	182	\N	2016-08-06 11:23:27.763649	2016-08-06 11:23:27.763649	\N	\N	\N	\N	1	\N
189	183	\N	2016-08-06 11:23:27.770626	2016-08-06 11:23:27.770626	\N	\N	\N	\N	1	\N
190	184	\N	2016-08-06 11:23:27.776956	2016-08-06 11:23:27.776956	\N	\N	\N	\N	1	\N
191	185	\N	2016-08-06 11:23:27.78476	2016-08-06 11:23:27.78476	\N	\N	\N	\N	1	\N
192	186	\N	2016-08-06 11:23:27.79218	2016-08-06 11:23:27.79218	\N	\N	\N	\N	1	\N
193	187	\N	2016-08-06 11:23:27.800345	2016-08-06 11:23:27.800345	\N	\N	\N	\N	1	\N
194	188	\N	2016-08-06 11:23:27.809082	2016-08-06 11:23:27.809082	\N	\N	\N	\N	1	\N
195	189	\N	2016-08-06 11:23:27.815507	2016-08-06 11:23:27.815507	\N	\N	\N	\N	1	\N
223	215	\N	2016-08-07 13:15:05.064537	2016-08-07 13:15:05.064537	\N	\N	\N	\N	\N	1
224	216	\N	2016-08-07 13:15:05.073477	2016-08-07 13:15:05.073477	\N	\N	\N	\N	\N	1
229	220	15	2016-08-20 07:07:07.879958	2016-08-20 07:07:07.879958	\N	\N	\N	\N	\N	\N
230	221	15	2016-08-20 07:07:07.903149	2016-08-20 07:07:07.903149	\N	\N	\N	\N	\N	\N
231	222	15	2016-08-20 07:07:07.908035	2016-08-20 07:07:07.908035	\N	\N	\N	\N	\N	\N
232	223	15	2016-08-20 07:07:07.914384	2016-08-20 07:07:07.914384	\N	\N	\N	\N	\N	\N
233	224	15	2016-08-20 07:07:07.920572	2016-08-20 07:07:07.920572	\N	\N	\N	\N	\N	\N
234	225	20	2016-08-23 19:02:40.919464	2016-08-23 19:02:40.919464	\N	\N	\N	\N	\N	\N
235	226	20	2016-08-23 19:02:40.971003	2016-08-23 19:02:40.971003	\N	\N	\N	\N	\N	\N
236	227	20	2016-08-23 19:02:40.975981	2016-08-23 19:02:40.975981	\N	\N	\N	\N	\N	\N
237	135	20	2016-08-23 19:02:40.981267	2016-08-23 19:02:40.981267	\N	\N	\N	\N	\N	\N
238	228	20	2016-08-23 19:02:40.985941	2016-08-23 19:02:40.985941	\N	\N	\N	\N	\N	\N
239	229	20	2016-08-23 19:02:40.990239	2016-08-23 19:02:40.990239	\N	\N	\N	\N	\N	\N
240	230	20	2016-08-23 19:02:40.994487	2016-08-23 19:02:40.994487	\N	\N	\N	\N	\N	\N
241	231	20	2016-08-23 19:02:40.999937	2016-08-23 19:02:40.999937	\N	\N	\N	\N	\N	\N
242	232	20	2016-08-23 19:02:41.006603	2016-08-23 19:02:41.006603	\N	\N	\N	\N	\N	\N
243	233	20	2016-08-23 19:02:41.011542	2016-08-23 19:02:41.011542	\N	\N	\N	\N	\N	\N
244	234	20	2016-08-23 19:02:41.015791	2016-08-23 19:02:41.015791	\N	\N	\N	\N	\N	\N
245	235	20	2016-08-23 19:02:41.019806	2016-08-23 19:02:41.019806	\N	\N	\N	\N	\N	\N
246	236	20	2016-08-23 19:02:41.023775	2016-08-23 19:02:41.023775	\N	\N	\N	\N	\N	\N
247	237	20	2016-08-23 19:02:41.028031	2016-08-23 19:02:41.028031	\N	\N	\N	\N	\N	\N
248	238	20	2016-08-23 19:02:41.032631	2016-08-23 19:02:41.032631	\N	\N	\N	\N	\N	\N
263	250	14	2016-08-25 02:28:58.050313	2016-08-25 02:28:58.050313	\N	\N	\N	\N	\N	\N
264	251	14	2016-08-25 02:28:58.05979	2016-08-25 02:28:58.05979	\N	\N	\N	\N	\N	\N
265	252	14	2016-08-25 02:28:58.066019	2016-08-25 02:28:58.066019	\N	\N	\N	\N	\N	\N
266	253	14	2016-08-25 02:28:58.073438	2016-08-25 02:28:58.073438	\N	\N	\N	\N	\N	\N
267	254	14	2016-08-25 02:28:58.079494	2016-08-25 02:28:58.079494	\N	\N	\N	\N	\N	\N
268	255	14	2016-08-25 02:28:58.108086	2016-08-25 02:28:58.108086	\N	\N	\N	\N	\N	\N
269	256	14	2016-08-25 02:28:58.113701	2016-08-25 02:28:58.113701	\N	\N	\N	\N	\N	\N
270	257	14	2016-08-25 02:28:58.11873	2016-08-25 02:28:58.11873	\N	\N	\N	\N	\N	\N
271	258	10	2016-08-25 02:31:09.896155	2016-08-25 02:31:09.896155	\N	\N	\N	\N	\N	\N
272	259	10	2016-08-25 02:31:09.905053	2016-08-25 02:31:09.905053	\N	\N	\N	\N	\N	\N
273	260	10	2016-08-25 02:31:09.910248	2016-08-25 02:31:09.910248	\N	\N	\N	\N	\N	\N
274	261	10	2016-08-25 02:31:09.915291	2016-08-25 02:31:09.915291	\N	\N	\N	\N	\N	\N
275	262	10	2016-08-25 02:31:09.92096	2016-08-25 02:31:09.92096	\N	\N	\N	\N	\N	\N
276	263	10	2016-08-25 02:31:09.926839	2016-08-25 02:31:09.926839	\N	\N	\N	\N	\N	\N
277	264	10	2016-08-25 02:31:09.932557	2016-08-25 02:31:09.932557	\N	\N	\N	\N	\N	\N
278	265	\N	2016-08-27 05:21:19.275155	2016-08-27 05:21:19.275155	\N	2	\N	\N	\N	\N
279	266	\N	2016-08-27 05:21:19.287999	2016-08-27 05:21:19.287999	\N	2	\N	\N	\N	\N
280	267	\N	2016-08-27 05:21:19.296983	2016-08-27 05:21:19.296983	\N	2	\N	\N	\N	\N
281	268	\N	2016-08-27 05:21:19.30528	2016-08-27 05:21:19.30528	\N	2	\N	\N	\N	\N
282	269	\N	2016-08-29 18:31:45.525235	2016-08-29 18:31:45.525235	13	\N	\N	\N	\N	\N
283	270	\N	2016-08-29 18:31:45.531801	2016-08-29 18:31:45.531801	13	\N	\N	\N	\N	\N
284	271	\N	2016-08-29 18:31:45.537012	2016-08-29 18:31:45.537012	13	\N	\N	\N	\N	\N
300	227	\N	2016-09-06 16:42:01.741455	2016-09-06 16:42:01.741455	14	\N	\N	\N	\N	\N
301	161	\N	2016-09-06 16:42:01.770126	2016-09-06 16:42:01.770126	14	\N	\N	\N	\N	\N
302	13	\N	2016-09-06 16:42:01.775231	2016-09-06 16:42:01.775231	14	\N	\N	\N	\N	\N
303	284	\N	2016-09-06 16:42:01.780267	2016-09-06 16:42:01.780267	14	\N	\N	\N	\N	\N
304	285	\N	2016-09-06 16:42:01.785858	2016-09-06 16:42:01.785858	14	\N	\N	\N	\N	\N
305	15	\N	2016-09-06 16:42:01.792613	2016-09-06 16:42:01.792613	14	\N	\N	\N	\N	\N
306	286	\N	2016-09-06 16:42:01.798629	2016-09-06 16:42:01.798629	14	\N	\N	\N	\N	\N
307	287	\N	2016-09-06 16:42:01.803865	2016-09-06 16:42:01.803865	14	\N	\N	\N	\N	\N
308	288	\N	2016-09-06 16:42:01.81209	2016-09-06 16:42:01.81209	14	\N	\N	\N	\N	\N
309	234	\N	2016-09-06 16:42:01.818284	2016-09-06 16:42:01.818284	14	\N	\N	\N	\N	\N
310	245	\N	2016-09-06 16:42:01.824717	2016-09-06 16:42:01.824717	14	\N	\N	\N	\N	\N
311	289	\N	2016-09-06 16:42:01.829854	2016-09-06 16:42:01.829854	14	\N	\N	\N	\N	\N
312	290	\N	2016-09-06 16:42:01.83494	2016-09-06 16:42:01.83494	14	\N	\N	\N	\N	\N
313	291	\N	2016-09-06 16:42:01.84113	2016-09-06 16:42:01.84113	14	\N	\N	\N	\N	\N
314	292	\N	2016-09-06 16:42:01.848689	2016-09-06 16:42:01.848689	14	\N	\N	\N	\N	\N
329	301	\N	2016-09-07 09:31:28.577592	2016-09-07 09:31:28.577592	\N	\N	\N	\N	\N	3
330	302	\N	2016-09-07 09:31:28.586553	2016-09-07 09:31:28.586553	\N	\N	\N	\N	\N	3
331	303	\N	2016-09-07 09:31:28.59321	2016-09-07 09:31:28.59321	\N	\N	\N	\N	\N	3
332	285	\N	2016-09-07 09:31:28.598546	2016-09-07 09:31:28.598546	\N	\N	\N	\N	\N	3
333	304	\N	2016-09-07 09:31:28.606003	2016-09-07 09:31:28.606003	\N	\N	\N	\N	\N	3
334	305	\N	2016-09-07 09:31:28.613322	2016-09-07 09:31:28.613322	\N	\N	\N	\N	\N	3
335	306	\N	2016-09-07 09:31:28.618822	2016-09-07 09:31:28.618822	\N	\N	\N	\N	\N	3
336	307	\N	2016-09-07 09:31:28.628034	2016-09-07 09:31:28.628034	\N	\N	\N	\N	\N	3
337	308	\N	2016-09-07 09:31:28.633071	2016-09-07 09:31:28.633071	\N	\N	\N	\N	\N	3
338	309	\N	2016-09-07 09:31:28.639581	2016-09-07 09:31:28.639581	\N	\N	\N	\N	\N	3
339	310	\N	2016-09-07 09:31:28.645917	2016-09-07 09:31:28.645917	\N	\N	\N	\N	\N	3
340	311	\N	2016-09-07 09:31:28.65265	2016-09-07 09:31:28.65265	\N	\N	\N	\N	\N	3
341	312	\N	2016-09-07 09:31:28.659596	2016-09-07 09:31:28.659596	\N	\N	\N	\N	\N	3
342	144	\N	2016-09-07 09:31:28.66674	2016-09-07 09:31:28.66674	\N	\N	\N	\N	\N	3
343	313	\N	2016-09-07 09:31:28.673747	2016-09-07 09:31:28.673747	\N	\N	\N	\N	\N	3
358	315	\N	2016-09-07 17:49:18.348212	2016-09-07 17:49:18.348212	\N	\N	\N	\N	4	\N
359	316	\N	2016-09-07 17:49:18.364132	2016-09-07 17:49:18.364132	\N	\N	\N	\N	4	\N
360	317	\N	2016-09-07 17:49:18.369072	2016-09-07 17:49:18.369072	\N	\N	\N	\N	4	\N
361	318	\N	2016-09-07 17:49:18.37276	2016-09-07 17:49:18.37276	\N	\N	\N	\N	4	\N
362	319	\N	2016-09-07 17:49:18.375435	2016-09-07 17:49:18.375435	\N	\N	\N	\N	4	\N
363	320	\N	2016-09-07 17:49:18.377889	2016-09-07 17:49:18.377889	\N	\N	\N	\N	4	\N
364	321	\N	2016-09-07 17:49:18.380479	2016-09-07 17:49:18.380479	\N	\N	\N	\N	4	\N
365	322	\N	2016-09-07 17:49:18.382629	2016-09-07 17:49:18.382629	\N	\N	\N	\N	4	\N
366	323	\N	2016-09-07 17:49:18.384674	2016-09-07 17:49:18.384674	\N	\N	\N	\N	4	\N
367	6	\N	2016-09-07 17:49:18.386713	2016-09-07 17:49:18.386713	\N	\N	\N	\N	4	\N
368	324	\N	2016-09-07 17:49:18.389012	2016-09-07 17:49:18.389012	\N	\N	\N	\N	4	\N
369	325	\N	2016-09-07 17:49:18.391253	2016-09-07 17:49:18.391253	\N	\N	\N	\N	4	\N
370	326	\N	2016-09-07 17:49:18.393381	2016-09-07 17:49:18.393381	\N	\N	\N	\N	4	\N
371	327	\N	2016-09-07 17:49:18.39552	2016-09-07 17:49:18.39552	\N	\N	\N	\N	4	\N
372	328	\N	2016-09-07 17:49:18.398278	2016-09-07 17:49:18.398278	\N	\N	\N	\N	4	\N
387	95	\N	2016-09-07 19:44:58.157059	2016-09-07 19:44:58.157059	\N	3	\N	\N	\N	\N
388	342	\N	2016-09-07 19:44:58.166221	2016-09-07 19:44:58.166221	\N	3	\N	\N	\N	\N
389	15	\N	2016-09-07 19:44:58.173385	2016-09-07 19:44:58.173385	\N	3	\N	\N	\N	\N
390	343	\N	2016-09-07 19:44:58.179916	2016-09-07 19:44:58.179916	\N	3	\N	\N	\N	\N
391	344	\N	2016-09-07 19:44:58.186702	2016-09-07 19:44:58.186702	\N	3	\N	\N	\N	\N
392	345	\N	2016-09-07 19:44:58.191881	2016-09-07 19:44:58.191881	\N	3	\N	\N	\N	\N
393	346	\N	2016-09-07 19:44:58.200638	2016-09-07 19:44:58.200638	\N	3	\N	\N	\N	\N
394	290	\N	2016-09-07 19:44:58.205939	2016-09-07 19:44:58.205939	\N	3	\N	\N	\N	\N
395	347	\N	2016-09-07 19:44:58.211432	2016-09-07 19:44:58.211432	\N	3	\N	\N	\N	\N
396	348	\N	2016-09-07 19:44:58.219318	2016-09-07 19:44:58.219318	\N	3	\N	\N	\N	\N
403	352	\N	2016-09-08 03:14:35.866895	2016-09-08 03:14:35.866895	\N	\N	5	\N	\N	\N
404	353	\N	2016-09-08 03:14:35.887534	2016-09-08 03:14:35.887534	\N	\N	5	\N	\N	\N
405	354	\N	2016-09-08 03:14:35.893742	2016-09-08 03:14:35.893742	\N	\N	5	\N	\N	\N
406	355	\N	2016-09-08 03:14:35.898933	2016-09-08 03:14:35.898933	\N	\N	5	\N	\N	\N
407	356	\N	2016-09-08 03:14:35.904527	2016-09-08 03:14:35.904527	\N	\N	5	\N	\N	\N
408	357	\N	2016-09-08 03:14:35.910245	2016-09-08 03:14:35.910245	\N	\N	5	\N	\N	\N
409	358	\N	2016-09-08 03:14:35.91725	2016-09-08 03:14:35.91725	\N	\N	5	\N	\N	\N
410	359	\N	2016-09-08 03:14:35.923144	2016-09-08 03:14:35.923144	\N	\N	5	\N	\N	\N
411	360	\N	2016-09-08 03:14:35.929492	2016-09-08 03:14:35.929492	\N	\N	5	\N	\N	\N
412	361	\N	2016-09-08 03:14:35.93459	2016-09-08 03:14:35.93459	\N	\N	5	\N	\N	\N
413	362	\N	2016-09-08 03:14:35.940978	2016-09-08 03:14:35.940978	\N	\N	5	\N	\N	\N
414	363	\N	2016-09-08 03:14:35.947279	2016-09-08 03:14:35.947279	\N	\N	5	\N	\N	\N
415	280	\N	2016-09-08 03:14:35.953263	2016-09-08 03:14:35.953263	\N	\N	5	\N	\N	\N
416	364	\N	2016-09-08 03:14:35.959549	2016-09-08 03:14:35.959549	\N	\N	5	\N	\N	\N
417	365	\N	2016-09-08 03:14:35.965077	2016-09-08 03:14:35.965077	\N	\N	5	\N	\N	\N
418	366	\N	2016-09-08 03:18:26.055591	2016-09-08 03:18:26.055591	\N	\N	6	\N	\N	\N
419	367	\N	2016-09-08 03:18:26.061155	2016-09-08 03:18:26.061155	\N	\N	6	\N	\N	\N
420	368	\N	2016-09-08 03:18:26.065791	2016-09-08 03:18:26.065791	\N	\N	6	\N	\N	\N
421	369	\N	2016-09-08 03:18:26.070195	2016-09-08 03:18:26.070195	\N	\N	6	\N	\N	\N
422	370	\N	2016-09-08 03:18:26.074602	2016-09-08 03:18:26.074602	\N	\N	6	\N	\N	\N
423	371	\N	2016-09-08 03:18:26.080464	2016-09-08 03:18:26.080464	\N	\N	6	\N	\N	\N
424	372	\N	2016-09-08 03:18:26.088516	2016-09-08 03:18:26.088516	\N	\N	6	\N	\N	\N
425	373	\N	2016-09-08 03:18:26.093013	2016-09-08 03:18:26.093013	\N	\N	6	\N	\N	\N
426	86	\N	2016-09-08 03:18:26.097946	2016-09-08 03:18:26.097946	\N	\N	6	\N	\N	\N
427	374	\N	2016-09-08 03:18:26.102065	2016-09-08 03:18:26.102065	\N	\N	6	\N	\N	\N
428	375	\N	2016-09-08 03:18:26.106183	2016-09-08 03:18:26.106183	\N	\N	6	\N	\N	\N
429	376	\N	2016-09-08 03:18:26.110126	2016-09-08 03:18:26.110126	\N	\N	6	\N	\N	\N
430	377	\N	2016-09-08 03:18:26.114818	2016-09-08 03:18:26.114818	\N	\N	6	\N	\N	\N
431	378	\N	2016-09-08 03:18:26.11944	2016-09-08 03:18:26.11944	\N	\N	6	\N	\N	\N
432	379	\N	2016-09-08 03:18:26.123934	2016-09-08 03:18:26.123934	\N	\N	6	\N	\N	\N
452	225	\N	2016-09-08 09:39:51.476434	2016-09-08 09:39:51.476434	\N	\N	\N	5	\N	\N
453	226	\N	2016-09-08 09:39:51.508129	2016-09-08 09:39:51.508129	\N	\N	\N	5	\N	\N
454	227	\N	2016-09-08 09:39:51.514043	2016-09-08 09:39:51.514043	\N	\N	\N	5	\N	\N
455	135	\N	2016-09-08 09:39:51.519468	2016-09-08 09:39:51.519468	\N	\N	\N	5	\N	\N
456	228	\N	2016-09-08 09:39:51.526112	2016-09-08 09:39:51.526112	\N	\N	\N	5	\N	\N
457	229	\N	2016-09-08 09:39:51.531122	2016-09-08 09:39:51.531122	\N	\N	\N	5	\N	\N
458	230	\N	2016-09-08 09:39:51.536572	2016-09-08 09:39:51.536572	\N	\N	\N	5	\N	\N
459	231	\N	2016-09-08 09:39:51.542231	2016-09-08 09:39:51.542231	\N	\N	\N	5	\N	\N
460	232	\N	2016-09-08 09:39:51.547016	2016-09-08 09:39:51.547016	\N	\N	\N	5	\N	\N
461	233	\N	2016-09-08 09:39:51.551961	2016-09-08 09:39:51.551961	\N	\N	\N	5	\N	\N
462	234	\N	2016-09-08 09:39:51.558204	2016-09-08 09:39:51.558204	\N	\N	\N	5	\N	\N
463	235	\N	2016-09-08 09:39:51.571172	2016-09-08 09:39:51.571172	\N	\N	\N	5	\N	\N
464	236	\N	2016-09-08 09:39:51.577621	2016-09-08 09:39:51.577621	\N	\N	\N	5	\N	\N
465	237	\N	2016-09-08 09:39:51.583671	2016-09-08 09:39:51.583671	\N	\N	\N	5	\N	\N
466	238	\N	2016-09-08 09:39:51.589756	2016-09-08 09:39:51.589756	\N	\N	\N	5	\N	\N
481	207	23	2016-10-11 12:00:45.893523	2016-10-11 12:00:45.893523	\N	\N	\N	\N	\N	\N
482	402	23	2016-10-11 12:00:45.953046	2016-10-11 12:00:45.953046	\N	\N	\N	\N	\N	\N
483	403	23	2016-10-11 12:00:45.959417	2016-10-11 12:00:45.959417	\N	\N	\N	\N	\N	\N
484	404	23	2016-10-11 12:00:45.966594	2016-10-11 12:00:45.966594	\N	\N	\N	\N	\N	\N
485	405	23	2016-10-11 12:00:45.972401	2016-10-11 12:00:45.972401	\N	\N	\N	\N	\N	\N
486	406	23	2016-10-11 12:00:45.978233	2016-10-11 12:00:45.978233	\N	\N	\N	\N	\N	\N
487	407	23	2016-10-11 12:00:45.984114	2016-10-11 12:00:45.984114	\N	\N	\N	\N	\N	\N
488	408	23	2016-10-11 12:00:45.988343	2016-10-11 12:00:45.988343	\N	\N	\N	\N	\N	\N
489	409	23	2016-10-11 12:00:45.992924	2016-10-11 12:00:45.992924	\N	\N	\N	\N	\N	\N
490	410	23	2016-10-11 12:00:45.998063	2016-10-11 12:00:45.998063	\N	\N	\N	\N	\N	\N
491	411	23	2016-10-11 12:00:46.002966	2016-10-11 12:00:46.002966	\N	\N	\N	\N	\N	\N
492	412	23	2016-10-11 12:00:46.007706	2016-10-11 12:00:46.007706	\N	\N	\N	\N	\N	\N
493	413	23	2016-10-11 12:00:46.012477	2016-10-11 12:00:46.012477	\N	\N	\N	\N	\N	\N
494	414	23	2016-10-11 12:00:46.017463	2016-10-11 12:00:46.017463	\N	\N	\N	\N	\N	\N
495	415	23	2016-10-11 12:00:46.021985	2016-10-11 12:00:46.021985	\N	\N	\N	\N	\N	\N
496	416	\N	2016-10-11 12:29:36.139916	2016-10-11 12:29:36.139916	16	\N	\N	\N	\N	\N
497	417	\N	2016-10-11 12:29:36.146215	2016-10-11 12:29:36.146215	16	\N	\N	\N	\N	\N
498	418	\N	2016-10-11 12:29:36.151975	2016-10-11 12:29:36.151975	16	\N	\N	\N	\N	\N
499	419	\N	2016-10-11 12:29:36.157202	2016-10-11 12:29:36.157202	16	\N	\N	\N	\N	\N
500	420	\N	2016-10-11 12:29:36.163917	2016-10-11 12:29:36.163917	16	\N	\N	\N	\N	\N
501	421	\N	2016-10-11 12:29:36.171757	2016-10-11 12:29:36.171757	16	\N	\N	\N	\N	\N
502	422	\N	2016-10-11 12:29:36.177135	2016-10-11 12:29:36.177135	16	\N	\N	\N	\N	\N
503	423	\N	2016-10-11 12:29:36.182694	2016-10-11 12:29:36.182694	16	\N	\N	\N	\N	\N
504	424	\N	2016-10-11 12:29:36.187936	2016-10-11 12:29:36.187936	16	\N	\N	\N	\N	\N
505	425	\N	2016-10-11 12:29:36.192899	2016-10-11 12:29:36.192899	16	\N	\N	\N	\N	\N
506	426	\N	2016-10-11 12:29:36.197518	2016-10-11 12:29:36.197518	16	\N	\N	\N	\N	\N
\.


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('taggings_id_seq', 506, true);


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY tags (id, name, created_at, updated_at) FROM stdin;
1	taanpermata	2016-06-06 08:32:51.782941	2016-06-06 08:32:51.782941
2	<3	2016-06-06 08:32:51.848903	2016-06-06 08:32:51.848903
3	U	2016-06-06 08:32:51.856679	2016-06-06 08:32:51.856679
4	wp	2016-06-06 08:34:39.863027	2016-06-06 08:34:39.863027
5	bb	2016-06-06 08:34:39.870396	2016-06-06 08:34:39.870396
6	psd	2016-06-08 10:13:56.5216	2016-06-08 10:13:56.5216
7	design	2016-06-08 10:13:56.558963	2016-06-08 10:13:56.558963
8	website	2016-06-08 10:13:56.565193	2016-06-08 10:13:56.565193
9	photoshop	2016-06-08 10:13:56.571338	2016-06-08 10:13:56.571338
10	bag	2016-06-08 10:31:23.023049	2016-06-08 10:31:23.023049
11	beauty	2016-06-08 10:31:23.035686	2016-06-08 10:31:23.035686
12	bike	2016-06-08 10:31:23.053801	2016-06-08 10:31:23.053801
13	clothes	2016-06-08 10:31:23.061378	2016-06-08 10:31:23.061378
14	cosmetic	2016-06-08 10:31:23.06854	2016-06-08 10:31:23.06854
15	fashion	2016-06-08 10:31:23.075748	2016-06-08 10:31:23.075748
16	furniture	2016-06-08 10:31:23.083184	2016-06-08 10:31:23.083184
17	thundercats	2016-06-08 14:44:46.378923	2016-06-08 14:44:46.378923
18	leggings	2016-06-08 14:44:46.387037	2016-06-08 14:44:46.387037
19	chartreuse	2016-06-08 14:44:46.393253	2016-06-08 14:44:46.393253
20	poutine	2016-06-08 14:44:46.399203	2016-06-08 14:44:46.399203
21	irony	2016-06-08 14:44:46.405493	2016-06-08 14:44:46.405493
22	shabby	2016-06-08 14:44:46.412049	2016-06-08 14:44:46.412049
23	creative	2016-06-08 15:02:49.973652	2016-06-08 15:02:49.973652
24	market	2016-06-08 15:02:49.980794	2016-06-08 15:02:49.980794
25	joomla	2016-06-08 15:02:49.989164	2016-06-08 15:02:49.989164
41	intan	2016-06-08 16:35:42.755044	2016-06-08 16:35:42.755044
42	permata	2016-06-08 16:35:42.766779	2016-06-08 16:35:42.766779
43	sari	2016-06-08 16:35:42.776725	2016-06-08 16:35:42.776725
44	putu	2016-06-08 16:35:42.787703	2016-06-08 16:35:42.787703
45	greget	2016-06-09 16:01:36.210966	2016-06-09 16:01:36.210966
46	cimahi	2016-06-09 16:31:52.258721	2016-06-09 16:31:52.258721
47	cipete	2016-06-09 16:31:52.265211	2016-06-09 16:31:52.265211
48	cilincing	2016-06-09 16:31:52.271662	2016-06-09 16:31:52.271662
49	sdsd	2016-07-02 08:18:02.121039	2016-07-02 08:18:02.121039
50	dfdf	2016-07-02 08:18:02.145878	2016-07-02 08:18:02.145878
51	adad	2016-07-02 08:18:02.152668	2016-07-02 08:18:02.152668
52	dfdfg	2016-07-02 08:18:02.160324	2016-07-02 08:18:02.160324
53	dsdd	2016-07-07 09:31:36.232397	2016-07-07 09:31:36.232397
54	dsd	2016-07-07 09:31:36.280549	2016-07-07 09:31:36.280549
55	ssdd	2016-07-07 09:31:36.291409	2016-07-07 09:31:36.291409
56	dfsd	2016-07-18 13:58:57.759322	2016-07-18 13:58:57.759322
57	erer	2016-07-18 13:58:57.796869	2016-07-18 13:58:57.796869
58	php	2016-07-21 05:03:40.468863	2016-07-21 05:03:40.468863
59	seventeen	2016-07-21 05:03:40.562072	2016-07-21 05:03:40.562072
60	soul	2016-07-21 05:03:40.577181	2016-07-21 05:03:40.577181
61	heart	2016-07-21 05:03:40.585376	2016-07-21 05:03:40.585376
62	kamu	2016-07-22 01:08:32.063938	2016-07-22 01:08:32.063938
63	tidur	2016-07-22 01:08:32.106979	2016-07-22 01:08:32.106979
64	semua	2016-07-22 01:08:32.117795	2016-07-22 01:08:32.117795
65	music	2016-07-22 07:07:09.399925	2016-07-22 07:07:09.399925
66	sheckup	2016-07-22 07:07:09.409	2016-07-22 07:07:09.409
67	love	2016-07-22 07:07:09.420645	2016-07-22 07:07:09.420645
68	ooo	2016-07-22 07:09:23.128748	2016-07-22 07:09:23.128748
69	uytyt	2016-07-22 07:09:23.139153	2016-07-22 07:09:23.139153
70	bvdf	2016-07-22 07:09:23.151202	2016-07-22 07:09:23.151202
71	dert	2016-07-22 07:38:13.016427	2016-07-22 07:38:13.016427
72	r	2016-07-22 07:38:13.049416	2016-07-22 07:38:13.049416
73	rgggr	2016-07-22 07:38:13.057528	2016-07-22 07:38:13.057528
74	ser	2016-07-22 07:39:22.692539	2016-07-22 07:39:22.692539
75	thth	2016-07-22 07:39:22.703711	2016-07-22 07:39:22.703711
76	ghghg	2016-07-22 07:39:22.711978	2016-07-22 07:39:22.711978
77	uniqueness	2016-07-24 02:50:44.432964	2016-07-24 02:50:44.432964
78	presence	2016-07-24 02:50:44.45691	2016-07-24 02:50:44.45691
79	pipis	2016-07-27 02:59:20.859565	2016-07-27 02:59:20.859565
80	liu	2016-07-27 02:59:20.915953	2016-07-27 02:59:20.915953
81	ne	2016-07-27 02:59:20.927911	2016-07-27 02:59:20.927911
82	dikantong	2016-07-27 02:59:20.939312	2016-07-27 02:59:20.939312
83	telah	2016-07-27 02:59:20.949309	2016-07-27 02:59:20.949309
84	bererong	2016-07-27 02:59:20.966961	2016-07-27 02:59:20.966961
85	plugin	2016-07-27 03:23:01.632697	2016-07-27 03:23:01.632697
86	hair	2016-07-27 03:23:01.640706	2016-07-27 03:23:01.640706
87	generator	2016-07-27 03:23:01.649958	2016-07-27 03:23:01.649958
88	icon	2016-07-27 03:23:01.658162	2016-07-27 03:23:01.658162
89	maya	2016-07-27 03:23:01.668457	2016-07-27 03:23:01.668457
90	shelf	2016-07-27 03:23:01.67579	2016-07-27 03:23:01.67579
91	carpet	2016-07-27 04:34:34.43957	2016-07-27 04:34:34.43957
92	cinema 4d	2016-07-27 04:34:34.44699	2016-07-27 04:34:34.44699
93	closet	2016-07-27 04:34:34.453476	2016-07-27 04:34:34.453476
94	clothier	2016-07-27 04:34:34.461331	2016-07-27 04:34:34.461331
95	clothing	2016-07-27 04:34:34.467664	2016-07-27 04:34:34.467664
96	cotton	2016-07-27 04:34:34.475311	2016-07-27 04:34:34.475311
97	curtain	2016-07-27 04:34:34.482595	2016-07-27 04:34:34.482595
98	detergent	2016-07-27 04:34:34.489473	2016-07-27 04:34:34.489473
99	dress suit	2016-07-27 04:34:34.497364	2016-07-27 04:34:34.497364
100	fabric	2016-07-27 04:34:34.504369	2016-07-27 04:34:34.504369
101	fabric model	2016-07-27 04:34:34.511676	2016-07-27 04:34:34.511676
102	fashion designing	2016-07-27 04:34:34.520772	2016-07-27 04:34:34.520772
103	flag	2016-07-27 04:34:34.527593	2016-07-27 04:34:34.527593
104	get dressed	2016-07-27 04:34:34.535113	2016-07-27 04:34:34.535113
105	leather	2016-07-27 04:34:34.541396	2016-07-27 04:34:34.541396
106	linen	2016-07-27 04:34:34.547857	2016-07-27 04:34:34.547857
107	material	2016-07-27 04:34:34.555151	2016-07-27 04:34:34.555151
108	model	2016-07-27 04:34:34.563644	2016-07-27 04:34:34.563644
109	modelling	2016-07-27 04:34:34.569502	2016-07-27 04:34:34.569502
110	pyjamas	2016-07-27 04:34:34.576447	2016-07-27 04:34:34.576447
111	sewing	2016-07-27 04:34:34.582509	2016-07-27 04:34:34.582509
112	sheet	2016-07-27 04:34:34.590061	2016-07-27 04:34:34.590061
113	shelter	2016-07-27 04:34:34.598389	2016-07-27 04:34:34.598389
114	shirt	2016-07-27 04:34:34.60505	2016-07-27 04:34:34.60505
115	shorts	2016-07-27 04:34:34.613754	2016-07-27 04:34:34.613754
116	silk	2016-07-27 04:34:34.619975	2016-07-27 04:34:34.619975
117	tablecloth	2016-07-27 04:34:34.627044	2016-07-27 04:34:34.627044
118	weave	2016-07-27 04:34:34.634632	2016-07-27 04:34:34.634632
119	animal	2016-07-27 04:46:18.405764	2016-07-27 04:46:18.405764
120	animation	2016-07-27 04:46:18.416714	2016-07-27 04:46:18.416714
121	cartoon	2016-07-27 04:46:18.428024	2016-07-27 04:46:18.428024
122	cute	2016-07-27 04:46:18.43594	2016-07-27 04:46:18.43594
123	game	2016-07-27 04:46:18.443302	2016-07-27 04:46:18.443302
124	lowpoly	2016-07-27 04:46:18.451387	2016-07-27 04:46:18.451387
125	pig	2016-07-27 04:46:18.460072	2016-07-27 04:46:18.460072
126	pork	2016-07-27 04:46:18.466938	2016-07-27 04:46:18.466938
127	rigged	2016-07-27 04:46:18.474046	2016-07-27 04:46:18.474046
128	apple	2016-08-02 02:32:11.220474	2016-08-02 02:32:11.220474
129	motion	2016-08-02 02:32:11.241138	2016-08-02 02:32:11.241138
130	effects	2016-08-02 02:32:11.246649	2016-08-02 02:32:11.246649
131	video	2016-08-02 02:32:11.256228	2016-08-02 02:32:11.256228
132	medical	2016-08-02 02:32:11.263083	2016-08-02 02:32:11.263083
133	blur	2016-08-02 03:57:48.026295	2016-08-02 03:57:48.026295
134	busy	2016-08-02 03:57:48.03442	2016-08-02 03:57:48.03442
135	city	2016-08-02 03:57:48.042203	2016-08-02 03:57:48.042203
136	crowd	2016-08-02 03:57:48.048318	2016-08-02 03:57:48.048318
137	hurry	2016-08-02 03:57:48.055409	2016-08-02 03:57:48.055409
138	lifestyle	2016-08-02 03:57:48.062675	2016-08-02 03:57:48.062675
139	night	2016-08-02 03:57:48.070068	2016-08-02 03:57:48.070068
140	pedestrian	2016-08-02 03:57:48.080715	2016-08-02 03:57:48.080715
141	people	2016-08-02 03:57:48.096858	2016-08-02 03:57:48.096858
142	relax	2016-08-02 03:57:48.10331	2016-08-02 03:57:48.10331
143	rush	2016-08-02 03:57:48.109959	2016-08-02 03:57:48.109959
144	shopping	2016-08-02 03:57:48.116124	2016-08-02 03:57:48.116124
145	speed	2016-08-02 03:57:48.126667	2016-08-02 03:57:48.126667
146	walking	2016-08-02 03:57:48.133291	2016-08-02 03:57:48.133291
147	bad tv vhs	2016-08-02 04:05:43.555484	2016-08-02 04:05:43.555484
148	broken	2016-08-02 04:05:43.561589	2016-08-02 04:05:43.561589
149	computer	2016-08-02 04:05:43.568924	2016-08-02 04:05:43.568924
150	damage	2016-08-02 04:05:43.575793	2016-08-02 04:05:43.575793
151	data	2016-08-02 04:05:43.585855	2016-08-02 04:05:43.585855
152	digital	2016-08-02 04:05:43.591629	2016-08-02 04:05:43.591629
153	distort	2016-08-02 04:05:43.598439	2016-08-02 04:05:43.598439
154	distortions	2016-08-02 04:05:43.605165	2016-08-02 04:05:43.605165
155	error	2016-08-02 04:05:43.611347	2016-08-02 04:05:43.611347
156	glitch	2016-08-02 04:05:43.61793	2016-08-02 04:05:43.61793
157	noise	2016-08-02 04:05:43.626164	2016-08-02 04:05:43.626164
158	screen	2016-08-02 04:05:43.633572	2016-08-02 04:05:43.633572
159	signal	2016-08-02 04:05:43.642388	2016-08-02 04:05:43.642388
160	animated	2016-08-02 04:13:18.340396	2016-08-02 04:13:18.340396
161	clean	2016-08-02 04:13:18.349497	2016-08-02 04:13:18.349497
162	corporate	2016-08-02 04:13:18.356412	2016-08-02 04:13:18.356412
163	kinetic	2016-08-02 04:13:18.363291	2016-08-02 04:13:18.363291
164	kinetic typography	2016-08-02 04:13:18.368882	2016-08-02 04:13:18.368882
165	pack	2016-08-02 04:13:18.376113	2016-08-02 04:13:18.376113
166	package	2016-08-02 04:13:18.382543	2016-08-02 04:13:18.382543
167	presentation	2016-08-02 04:13:18.388715	2016-08-02 04:13:18.388715
168	presets	2016-08-02 04:13:18.395913	2016-08-02 04:13:18.395913
169	text animation	2016-08-02 04:13:18.403688	2016-08-02 04:13:18.403688
170	title	2016-08-02 04:13:18.410932	2016-08-02 04:13:18.410932
171	title animation	2016-08-02 04:13:18.417348	2016-08-02 04:13:18.417348
172	titles	2016-08-02 04:13:18.423497	2016-08-02 04:13:18.423497
173	typography	2016-08-02 04:13:18.429887	2016-08-02 04:13:18.429887
174	brush	2016-08-06 11:17:49.652659	2016-08-06 11:17:49.652659
175	wedding	2016-08-06 11:17:49.700062	2016-08-06 11:17:49.700062
176	logo	2016-08-06 11:17:49.721318	2016-08-06 11:17:49.721318
177	watercolour	2016-08-06 11:17:49.734627	2016-08-06 11:17:49.734627
178	brushed	2016-08-06 11:17:49.755748	2016-08-06 11:17:49.755748
179	handlettered	2016-08-06 11:17:49.790258	2016-08-06 11:17:49.790258
180	illustrated	2016-08-06 11:17:49.807323	2016-08-06 11:17:49.807323
181	brush script	2016-08-06 11:17:49.824788	2016-08-06 11:17:49.824788
182	font	2016-08-06 11:17:49.844174	2016-08-06 11:17:49.844174
183	branding	2016-08-06 11:17:49.861849	2016-08-06 11:17:49.861849
184	blog	2016-08-06 11:17:49.880663	2016-08-06 11:17:49.880663
185	rough	2016-08-06 11:17:49.895409	2016-08-06 11:17:49.895409
186	marker	2016-08-06 11:17:49.908482	2016-08-06 11:17:49.908482
187	casual	2016-08-06 11:17:49.925487	2016-08-06 11:17:49.925487
188	paint	2016-08-06 11:17:49.941609	2016-08-06 11:17:49.941609
189	feminine	2016-08-06 11:17:49.959783	2016-08-06 11:17:49.959783
190	cursive	2016-08-06 12:08:27.780013	2016-08-06 12:08:27.780013
191	script	2016-08-06 12:08:27.799905	2016-08-06 12:08:27.799905
192	mountains	2016-08-06 12:08:27.811531	2016-08-06 12:08:27.811531
193	outdoors	2016-08-06 12:08:27.821021	2016-08-06 12:08:27.821021
194	hand lettering	2016-08-06 12:08:27.831045	2016-08-06 12:08:27.831045
195	fonts	2016-08-06 12:08:27.855618	2016-08-06 12:08:27.855618
196	sans	2016-08-06 12:08:27.871462	2016-08-06 12:08:27.871462
197	vintage	2016-08-06 12:08:27.882881	2016-08-06 12:08:27.882881
198	retro	2016-08-06 12:08:27.892392	2016-08-06 12:08:27.892392
199	instagram	2016-08-06 12:08:27.901564	2016-08-06 12:08:27.901564
200	ianbarnard	2016-08-06 12:08:27.911814	2016-08-06 12:08:27.911814
201	quotes	2016-08-06 12:08:27.921492	2016-08-06 12:08:27.921492
202	bible	2016-08-06 12:08:27.933877	2016-08-06 12:08:27.933877
203	calligraphy	2016-08-06 12:08:27.943455	2016-08-06 12:08:27.943455
204	letters	2016-08-06 12:08:27.953478	2016-08-06 12:08:27.953478
205	hand drawn	2016-08-06 12:08:27.965705	2016-08-06 12:08:27.965705
206	alphabet	2016-08-06 12:08:27.975287	2016-08-06 12:08:27.975287
207	adventure	2016-08-06 12:08:27.984996	2016-08-06 12:08:27.984996
215	sads	2016-08-07 13:15:05.024754	2016-08-07 13:15:05.024754
216	dad	2016-08-07 13:15:05.049811	2016-08-07 13:15:05.049811
217	course	2016-08-11 03:15:17.62168	2016-08-11 03:15:17.62168
218	marketing	2016-08-11 03:15:17.665998	2016-08-11 03:15:17.665998
219	youtube	2016-08-11 03:15:17.677352	2016-08-11 03:15:17.677352
220	hgjhg	2016-08-20 07:07:07.770732	2016-08-20 07:07:07.770732
221	jghfgf	2016-08-20 07:07:07.836385	2016-08-20 07:07:07.836385
222	yryt	2016-08-20 07:07:07.842439	2016-08-20 07:07:07.842439
223	mbvtf	2016-08-20 07:07:07.848549	2016-08-20 07:07:07.848549
224	gfjghf	2016-08-20 07:07:07.853622	2016-08-20 07:07:07.853622
225	airbnb	2016-08-23 19:02:40.786268	2016-08-23 19:02:40.786268
226	android	2016-08-23 19:02:40.837012	2016-08-23 19:02:40.837012
227	business	2016-08-23 19:02:40.842502	2016-08-23 19:02:40.842502
228	cordova	2016-08-23 19:02:40.848404	2016-08-23 19:02:40.848404
229	directory	2016-08-23 19:02:40.852346	2016-08-23 19:02:40.852346
230	events	2016-08-23 19:02:40.855795	2016-08-23 19:02:40.855795
231	guide	2016-08-23 19:02:40.859025	2016-08-23 19:02:40.859025
232	ios	2016-08-23 19:02:40.862331	2016-08-23 19:02:40.862331
233	map	2016-08-23 19:02:40.867321	2016-08-23 19:02:40.867321
234	mobile	2016-08-23 19:02:40.873478	2016-08-23 19:02:40.873478
235	push	2016-08-23 19:02:40.878371	2016-08-23 19:02:40.878371
236	seo	2016-08-23 19:02:40.882929	2016-08-23 19:02:40.882929
237	sotial	2016-08-23 19:02:40.886531	2016-08-23 19:02:40.886531
238	uber	2016-08-23 19:02:40.890112	2016-08-23 19:02:40.890112
239	agency	2016-08-24 11:19:41.121983	2016-08-24 11:19:41.121983
240	ajax	2016-08-24 11:19:41.213494	2016-08-24 11:19:41.213494
241	fullscreen	2016-08-24 11:19:41.222435	2016-08-24 11:19:41.222435
242	gallery	2016-08-24 11:19:41.226624	2016-08-24 11:19:41.226624
243	masonry	2016-08-24 11:19:41.230261	2016-08-24 11:19:41.230261
244	minimal	2016-08-24 11:19:41.233905	2016-08-24 11:19:41.233905
245	modern	2016-08-24 11:19:41.237921	2016-08-24 11:19:41.237921
246	one page	2016-08-24 11:19:41.242564	2016-08-24 11:19:41.242564
247	parallax	2016-08-24 11:19:41.248233	2016-08-24 11:19:41.248233
248	photography	2016-08-24 11:19:41.252568	2016-08-24 11:19:41.252568
249	portfolio	2016-08-24 11:19:41.25665	2016-08-24 11:19:41.25665
250	sdhfgsjf	2016-08-25 02:28:57.95177	2016-08-25 02:28:57.95177
251	jdfhdhf	2016-08-25 02:28:57.982044	2016-08-25 02:28:57.982044
252	jhfdj	2016-08-25 02:28:57.987343	2016-08-25 02:28:57.987343
253	sdjfh	2016-08-25 02:28:57.993286	2016-08-25 02:28:57.993286
254	sdjfd	2016-08-25 02:28:57.998708	2016-08-25 02:28:57.998708
255	eury	2016-08-25 02:28:58.003453	2016-08-25 02:28:58.003453
256	qow	2016-08-25 02:28:58.007435	2016-08-25 02:28:58.007435
257	rynre	2016-08-25 02:28:58.012612	2016-08-25 02:28:58.012612
258	dfhd	2016-08-25 02:31:09.849715	2016-08-25 02:31:09.849715
259	eryw	2016-08-25 02:31:09.85539	2016-08-25 02:31:09.85539
260	fkjde	2016-08-25 02:31:09.86059	2016-08-25 02:31:09.86059
261	kdjfku	2016-08-25 02:31:09.868474	2016-08-25 02:31:09.868474
262	ejbkreu	2016-08-25 02:31:09.873988	2016-08-25 02:31:09.873988
263	lsdfje	2016-08-25 02:31:09.879	2016-08-25 02:31:09.879
264	ejhf	2016-08-25 02:31:09.884748	2016-08-25 02:31:09.884748
265	fgfg	2016-08-27 05:21:19.178091	2016-08-27 05:21:19.178091
266	r4t	2016-08-27 05:21:19.21118	2016-08-27 05:21:19.21118
267	lir	2016-08-27 05:21:19.217407	2016-08-27 05:21:19.217407
268	sierlk	2016-08-27 05:21:19.223506	2016-08-27 05:21:19.223506
269	erwer	2016-08-29 18:31:45.450681	2016-08-29 18:31:45.450681
270	rtr	2016-08-29 18:31:45.486094	2016-08-29 18:31:45.486094
271	dfd	2016-08-29 18:31:45.490122	2016-08-29 18:31:45.490122
272	behance	2016-09-03 18:52:46.313694	2016-09-03 18:52:46.313694
273	buddypress	2016-09-03 18:52:46.420446	2016-09-03 18:52:46.420446
274	collection	2016-09-03 18:52:46.424393	2016-09-03 18:52:46.424393
275	follow	2016-09-03 18:52:46.432751	2016-09-03 18:52:46.432751
276	group	2016-09-03 18:52:46.437341	2016-09-03 18:52:46.437341
277	network	2016-09-03 18:52:46.440824	2016-09-03 18:52:46.440824
278	nrg	2016-09-03 18:52:46.446097	2016-09-03 18:52:46.446097
279	share	2016-09-03 18:52:46.453938	2016-09-03 18:52:46.453938
280	social	2016-09-03 18:52:46.461745	2016-09-03 18:52:46.461745
281	social network	2016-09-03 18:52:46.468099	2016-09-03 18:52:46.468099
282	team	2016-09-03 18:52:46.473134	2016-09-03 18:52:46.473134
283	themeton	2016-09-03 18:52:46.479338	2016-09-03 18:52:46.479338
284	customizable	2016-09-06 16:42:01.608909	2016-09-06 16:42:01.608909
285	ecommerce	2016-09-06 16:42:01.668969	2016-09-06 16:42:01.668969
286	flat	2016-09-06 16:42:01.675499	2016-09-06 16:42:01.675499
287	magento	2016-09-06 16:42:01.678822	2016-09-06 16:42:01.678822
288	magento theme	2016-09-06 16:42:01.682051	2016-09-06 16:42:01.682051
289	multipurpose	2016-09-06 16:42:01.689109	2016-09-06 16:42:01.689109
290	responsive	2016-09-06 16:42:01.693004	2016-09-06 16:42:01.693004
291	responsive magento theme	2016-09-06 16:42:01.697591	2016-09-06 16:42:01.697591
292	unlimited colors	2016-09-06 16:42:01.70227	2016-09-06 16:42:01.70227
293	ajax magento theme	2016-09-06 16:46:54.826842	2016-09-06 16:46:54.826842
294	bootstrap ecommerce theme	2016-09-06 16:46:54.830562	2016-09-06 16:46:54.830562
295	bootstrap magento theme	2016-09-06 16:46:54.834023	2016-09-06 16:46:54.834023
296	magento 2	2016-09-06 16:46:54.856497	2016-09-06 16:46:54.856497
297	magento fashion theme	2016-09-06 16:46:54.862145	2016-09-06 16:46:54.862145
298	Magento2	2016-09-06 16:46:54.866948	2016-09-06 16:46:54.866948
299	magento2 theme	2016-09-06 16:46:54.870577	2016-09-06 16:46:54.870577
300	retina	2016-09-06 16:46:54.881213	2016-09-06 16:46:54.881213
301	agriculture	2016-09-07 09:31:28.382625	2016-09-07 09:31:28.382625
302	bio	2016-09-07 09:31:28.468967	2016-09-07 09:31:28.468967
303	eco	2016-09-07 09:31:28.475171	2016-09-07 09:31:28.475171
304	farming	2016-09-07 09:31:28.4829	2016-09-07 09:31:28.4829
305	food	2016-09-07 09:31:28.489993	2016-09-07 09:31:28.489993
306	garden	2016-09-07 09:31:28.497936	2016-09-07 09:31:28.497936
307	green	2016-09-07 09:31:28.503856	2016-09-07 09:31:28.503856
308	grocery shop	2016-09-07 09:31:28.509845	2016-09-07 09:31:28.509845
309	healthy food	2016-09-07 09:31:28.515705	2016-09-07 09:31:28.515705
310	natural	2016-09-07 09:31:28.519597	2016-09-07 09:31:28.519597
311	nature	2016-09-07 09:31:28.526425	2016-09-07 09:31:28.526425
312	organic	2016-09-07 09:31:28.53188	2016-09-07 09:31:28.53188
313	vegetable	2016-09-07 09:31:28.539135	2016-09-07 09:31:28.539135
314	infographic	2016-09-07 09:39:39.833851	2016-09-07 09:39:39.833851
315	admin	2016-09-07 17:33:30.830994	2016-09-07 17:33:30.830994
316	angular	2016-09-07 17:33:30.861729	2016-09-07 17:33:30.861729
317	AngularJS	2016-09-07 17:33:30.895008	2016-09-07 17:33:30.895008
318	bootstrap	2016-09-07 17:33:30.939685	2016-09-07 17:33:30.939685
319	chart	2016-09-07 17:33:30.9765	2016-09-07 17:33:30.9765
320	cms	2016-09-07 17:33:31.00643	2016-09-07 17:33:31.00643
321	content management system	2016-09-07 17:33:31.016276	2016-09-07 17:33:31.016276
322	crm	2016-09-07 17:33:31.028507	2016-09-07 17:33:31.028507
323	dashboard	2016-09-07 17:33:31.038814	2016-09-07 17:33:31.038814
324	slider	2016-09-07 17:33:31.052027	2016-09-07 17:33:31.052027
325	template	2016-09-07 17:33:31.064931	2016-09-07 17:33:31.064931
326	theme	2016-09-07 17:33:31.083682	2016-09-07 17:33:31.083682
327	themes	2016-09-07 17:33:31.094458	2016-09-07 17:33:31.094458
328	web app	2016-09-07 17:33:31.106384	2016-09-07 17:33:31.106384
329	amazing	2016-09-07 17:53:06.825012	2016-09-07 17:53:06.825012
330	app	2016-09-07 17:53:06.857991	2016-09-07 17:53:06.857991
331	graphic template	2016-09-07 17:53:06.866446	2016-09-07 17:53:06.866446
332	ios template	2016-09-07 17:53:06.877989	2016-09-07 17:53:06.877989
333	mobile template	2016-09-07 17:53:06.889927	2016-09-07 17:53:06.889927
334	Mobile UI	2016-09-07 17:53:06.9003	2016-09-07 17:53:06.9003
335	multipurpose ui kit	2016-09-07 17:53:06.913287	2016-09-07 17:53:06.913287
336	quality ui kit	2016-09-07 17:53:06.922202	2016-09-07 17:53:06.922202
337	sketch	2016-09-07 17:53:06.934348	2016-09-07 17:53:06.934348
338	smartphone	2016-09-07 17:53:06.944852	2016-09-07 17:53:06.944852
339	style	2016-09-07 17:53:06.955657	2016-09-07 17:53:06.955657
340	ui	2016-09-07 17:53:06.967099	2016-09-07 17:53:06.967099
341	ui kit	2016-09-07 17:53:06.978129	2016-09-07 17:53:06.978129
342	electronic	2016-09-07 19:44:58.081716	2016-09-07 19:44:58.081716
343	Fashion Shop	2016-09-07 19:44:58.093963	2016-09-07 19:44:58.093963
344	prestashop	2016-09-07 19:44:58.101953	2016-09-07 19:44:58.101953
345	prestashop 1.6	2016-09-07 19:44:58.106477	2016-09-07 19:44:58.106477
346	prestashop theme	2016-09-07 19:44:58.110853	2016-09-07 19:44:58.110853
347	responsive prestashop	2016-09-07 19:44:58.120285	2016-09-07 19:44:58.120285
348	responsive prestashop theme	2016-09-07 19:44:58.126206	2016-09-07 19:44:58.126206
349	junotheme	2016-09-07 19:48:07.432711	2016-09-07 19:48:07.432711
350	multiple	2016-09-07 19:48:07.43824	2016-09-07 19:48:07.43824
351	shopify	2016-09-07 19:48:07.444817	2016-09-07 19:48:07.444817
352	Causes	2016-09-08 03:14:35.716319	2016-09-08 03:14:35.716319
353	charity	2016-09-08 03:14:35.76979	2016-09-08 03:14:35.76979
354	charity hub	2016-09-08 03:14:35.775648	2016-09-08 03:14:35.775648
355	donate	2016-09-08 03:14:35.780783	2016-09-08 03:14:35.780783
356	donations	2016-09-08 03:14:35.784991	2016-09-08 03:14:35.784991
357	foundation	2016-09-08 03:14:35.789262	2016-09-08 03:14:35.789262
358	fundraising	2016-09-08 03:14:35.796433	2016-09-08 03:14:35.796433
359	ngo	2016-09-08 03:14:35.801138	2016-09-08 03:14:35.801138
360	non profit	2016-09-08 03:14:35.806458	2016-09-08 03:14:35.806458
361	non-profit	2016-09-08 03:14:35.812232	2016-09-08 03:14:35.812232
362	nonprofit	2016-09-08 03:14:35.817251	2016-09-08 03:14:35.817251
363	organization	2016-09-08 03:14:35.82167	2016-09-08 03:14:35.82167
364	volunteer	2016-09-08 03:14:35.829142	2016-09-08 03:14:35.829142
365	welfare	2016-09-08 03:14:35.83453	2016-09-08 03:14:35.83453
366	aleysha	2016-09-08 03:18:25.990991	2016-09-08 03:18:25.990991
367	anatomy	2016-09-08 03:18:25.994728	2016-09-08 03:18:25.994728
368	beautiful	2016-09-08 03:18:25.998065	2016-09-08 03:18:25.998065
369	bikini	2016-09-08 03:18:26.002503	2016-09-08 03:18:26.002503
370	body	2016-09-08 03:18:26.010333	2016-09-08 03:18:26.010333
371	displacement	2016-09-08 03:18:26.014276	2016-09-08 03:18:26.014276
372	female	2016-09-08 03:18:26.017525	2016-09-08 03:18:26.017525
373	girl	2016-09-08 03:18:26.020588	2016-09-08 03:18:26.020588
374	mesh	2016-09-08 03:18:26.025592	2016-09-08 03:18:26.025592
375	sexy	2016-09-08 03:18:26.029943	2016-09-08 03:18:26.029943
376	shader	2016-09-08 03:18:26.034129	2016-09-08 03:18:26.034129
377	shoes	2016-09-08 03:18:26.03762	2016-09-08 03:18:26.03762
378	skin	2016-09-08 03:18:26.041805	2016-09-08 03:18:26.041805
379	topology	2016-09-08 03:18:26.04723	2016-09-08 03:18:26.04723
380	andre	2016-09-08 03:22:15.550161	2016-09-08 03:22:15.550161
381	asset	2016-09-08 03:22:15.554448	2016-09-08 03:22:15.554448
382	bitgem	2016-09-08 03:22:15.557585	2016-09-08 03:22:15.557585
383	candle	2016-09-08 03:22:15.561037	2016-09-08 03:22:15.561037
384	fantasy	2016-09-08 03:22:15.568769	2016-09-08 03:22:15.568769
385	heroes	2016-09-08 03:22:15.57617	2016-09-08 03:22:15.57617
386	lantern	2016-09-08 03:22:15.580249	2016-09-08 03:22:15.580249
387	lighting	2016-09-08 03:22:15.584065	2016-09-08 03:22:15.584065
388	low	2016-09-08 03:22:15.587989	2016-09-08 03:22:15.587989
389	matthias	2016-09-08 03:22:15.593583	2016-09-08 03:22:15.593583
390	mini	2016-09-08 03:22:15.597304	2016-09-08 03:22:15.597304
391	poly	2016-09-08 03:22:15.600738	2016-09-08 03:22:15.600738
392	pot	2016-09-08 03:22:15.606561	2016-09-08 03:22:15.606561
393	torch	2016-09-08 03:22:15.611744	2016-09-08 03:22:15.611744
394	unity	2016-09-08 03:22:15.616007	2016-09-08 03:22:15.616007
395	wall	2016-09-08 03:22:15.620353	2016-09-08 03:22:15.620353
396	dark	2016-09-08 09:42:16.466716	2016-09-08 09:42:16.466716
397	light	2016-09-08 09:42:16.537885	2016-09-08 09:42:16.537885
398	onepage	2016-09-08 09:42:16.542911	2016-09-08 09:42:16.542911
399	page builder	2016-09-08 09:42:16.546717	2016-09-08 09:42:16.546717
400	shortcodes	2016-09-08 09:42:16.558221	2016-09-08 09:42:16.558221
401	visual composer	2016-09-08 09:42:16.561952	2016-09-08 09:42:16.561952
402	booking	2016-10-11 12:00:45.746411	2016-10-11 12:00:45.746411
403	holiday	2016-10-11 12:00:45.799648	2016-10-11 12:00:45.799648
404	reservation	2016-10-11 12:00:45.80515	2016-10-11 12:00:45.80515
405	resort	2016-10-11 12:00:45.809288	2016-10-11 12:00:45.809288
406	tour	2016-10-11 12:00:45.81375	2016-10-11 12:00:45.81375
407	tour agency	2016-10-11 12:00:45.81944	2016-10-11 12:00:45.81944
408	tour operator	2016-10-11 12:00:45.823627	2016-10-11 12:00:45.823627
409	tour package	2016-10-11 12:00:45.828047	2016-10-11 12:00:45.828047
410	tourism	2016-10-11 12:00:45.833344	2016-10-11 12:00:45.833344
411	travel	2016-10-11 12:00:45.838551	2016-10-11 12:00:45.838551
412	travel agency	2016-10-11 12:00:45.842131	2016-10-11 12:00:45.842131
413	trip	2016-10-11 12:00:45.846477	2016-10-11 12:00:45.846477
414	vacation	2016-10-11 12:00:45.8526	2016-10-11 12:00:45.8526
415	wordpress	2016-10-11 12:00:45.857519	2016-10-11 12:00:45.857519
416	business hours	2016-10-11 12:29:36.062113	2016-10-11 12:29:36.062113
417	business times	2016-10-11 12:29:36.066604	2016-10-11 12:29:36.066604
418	day night	2016-10-11 12:29:36.070267	2016-10-11 12:29:36.070267
419	day night business hours	2016-10-11 12:29:36.075167	2016-10-11 12:29:36.075167
420	office timings	2016-10-11 12:29:36.079759	2016-10-11 12:29:36.079759
421	opening hours	2016-10-11 12:29:36.084698	2016-10-11 12:29:36.084698
422	shop hours	2016-10-11 12:29:36.089195	2016-10-11 12:29:36.089195
423	shop open hours	2016-10-11 12:29:36.093449	2016-10-11 12:29:36.093449
424	Store Opening	2016-10-11 12:29:36.097413	2016-10-11 12:29:36.097413
425	store times	2016-10-11 12:29:36.101894	2016-10-11 12:29:36.101894
426	wordpress plugin	2016-10-11 12:29:36.107242	2016-10-11 12:29:36.107242
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('tags_id_seq', 426, true);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY teams (id, name, created_at, updated_at) FROM stdin;
1	Koala	2016-08-17 09:30:51.926548	2016-08-17 09:30:51.926548
2	Panda	2016-08-20 09:03:24.619515	2016-08-20 09:03:24.619515
3	Garuda	2016-08-20 16:44:10.642712	2016-08-20 16:44:10.642712
4	Tiger	2016-08-21 04:07:59.209623	2016-08-21 04:07:59.209623
5	Pigeon	2016-08-21 14:56:15.986547	2016-08-21 14:56:15.986547
\.


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('teams_id_seq', 6, true);


--
-- Data for Name: theme_autocompletes; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY theme_autocompletes (id, term, popularity, created_at, updated_at) FROM stdin;
\.


--
-- Name: theme_autocompletes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('theme_autocompletes_id_seq', 1, false);


--
-- Data for Name: themes; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY themes (id, name, description, created_at, updated_at, category_id, "column", layout, dependency_id, note, thumbnail, price, aggree, slug, url_demo, user_id, team_id, price_ext, reject, average_rate, sell) FROM stdin;
20	Authentic readymade post-ironic franzen	<img alt="" src="https://city1.wpmix.net/descr/coupon_code.jpg" style="height:1300px; width:616px" /><img alt="" src="https://city1.wpmix.net/descr/features.jpg" style="height:2019px; width:616px" />	2016-08-23 18:58:24.097471	2016-09-04 00:03:36.149992	1003	2	responsive	28		524420d485004bbcccf7ce54e69c5a2ac77e846674014f2793.png	35.0	t	authentic-readymade-post-ironic-franzen	http://preview.themeforest.net/item/mycity-geolocation-directory-and-events-guide/full_screen_preview/12265153	18	1	2400.0	f	\N	0
15	Classy Minimal Tumblr Theme	<p><strong>CLAUDIA</strong>&nbsp;is Beautiful Minimal Tumblr Theme which provides a classy and clean experience. Easy to use and customize. Ideal for anybody who needs a nice looking blog Tumblr theme, aimed at presenting content through its universal and minimal design</p>\r\n\r\n<p><img alt="" src="https://dl.dropboxusercontent.com/u/42221140/tmaniac/PROMOCLAUDIA.jpg" /></p>\r\n	2016-06-09 16:28:35.479492	2016-09-01 12:53:34.521401	1011	2	responsive	86	CLAUDIA is Beautiful Minimal Tumblr Theme which provides a classy and clean experience. Easy to use and customize. Ideal for anybody who needs a nice looking blog Tumblr theme, aimed at presenting content through its universal and minimal desig	eeab3bbc96b91a207023555e0d40f71831147126d0d7f183b6.png	\N	f	classy-minimal-tumblr-theme	http://localhost:3000/themes/classy-minimal-tumblr-theme/upload	18	1	\N	t	\N	0
14	Responsive Masonry Theme	<p><strong>Description</strong></p>\r\n\r\n<p>Venus is a responsive masonry theme for Tumblr. It includes many customizable options to enable or disable features.</p>\r\n\r\n<p><strong>Features</strong></p>\r\n\r\n<ul>\r\n\t<li>Infinite Scrolling</li>\r\n\t<li>Masonry Layout</li>\r\n\t<li>Responsive Design</li>\r\n\t<li>Owl Carousel</li>\r\n\t<li>Full Width Image Slider</li>\r\n\t<li>Instagram API Photos</li>\r\n\t<li>Pinterest API Pins</li>\r\n\t<li>Flickr API Photostream</li>\r\n\t<li>Pagination Numbers</li>\r\n\t<li>Social Media Icons</li>\r\n\t<li>Social Media Share Buttons</li>\r\n\t<li>Many customizable options</li>\r\n</ul>\r\n	2016-06-09 15:58:49.436306	2016-08-26 11:42:58.678759	1010	3		89	Venus is a responsive masonry theme for Tumblr. It includes many customizable options to enable or disable features.	1503a5f770b238e0bc1361b1849656d1673b3a250ea8e3fe60.png	7.0	t	responsive-masonry-theme	http://localhost:3000/themes/responsive-masonry-theme/upload	18	1	6789.0	f	\N	0
18	will approve it if it meets our seller requirements	<p>Creo Multipurpose Listing Template best suitable for Handmade Marketplace site.</p>\r\n\r\n<h3>This theme can be used to create a variety of sites:</h3>\r\n\r\n<ul>\r\n\t<li>Daily Deals marketplace (no need any paid plugins)</li>\r\n\t<li>Group Buying shop with manual refunds for failed deals (no need any paid plugins)</li>\r\n\t<li>Classic shop with physical products</li>\r\n\t<li>Shop with affiliate/external products</li>\r\n\t<li>Shop with downloadable products</li>\r\n\t<li>Group Buying marketplace with paid&nbsp;<a href="http://www.woothemes.com/products/woocommerce-pre-orders/" rel="nofollow">WooCommerce Pre-Orders</a>&nbsp;extension</li>\r\n\t<li>Gift certificates shop with paid&nbsp;<a href="http://codecanyon.net/item/woocommerce-pdf-vouchers-wordpress-plugin/7392046">WooCommerce PDF Vouchers</a>&nbsp;plugin</li>\r\n\t<li>Shop with booking feature with paid&nbsp;<a href="http://www.woothemes.com/products/woocommerce-bookings/" rel="nofollow">WooCommerce Bookings</a>&nbsp;extension</li>\r\n\t<li>Some applications can be combined</li>\r\n</ul>\r\n\r\n<h3>Flexibility:</h3>\r\n\r\n<ul>\r\n\t<li>Fully configurable header, footer and sidebar (via Visual Composer)</li>\r\n\t<li>Configurable submission form (via CMB2 API)</li>\r\n\t<li>Configurable search/filter form and sorting</li>\r\n\t<li>Configurable item templates (on list and single pages)</li>\r\n</ul>\r\n\r\n<h3>Listing features (free):</h3>\r\n\r\n<ul>\r\n\t<li>Custom fields</li>\r\n\t<li>Custom sorting</li>\r\n\t<li>Field-able item layouts</li>\r\n\t<li>Predefined listing filter fields</li>\r\n\t<li>Predefined listing types</li>\r\n\t<li>Front-end submission and editing</li>\r\n\t<li>Front-end WC variations submission</li>\r\n\t<li>Front-end WC downloadable files submission</li>\r\n\t<li>Availability calendar by days</li>\r\n\t<li>Booking calendar by days</li>\r\n\t<li>Purchase commissions for listing owner</li>\r\n\t<li>Subscription payments for listing submission</li>\r\n\t<li>Contact form with listing owner</li>\r\n\t<li>Group buying engine</li>\r\n\t<li>Countdown timer field</li>\r\n\t<li>Claim listing</li>\r\n\t<li>Favorite listing</li>\r\n\t<li>Flag/report listing</li>\r\n\t<li>Row, Grid layouts</li>\r\n\t<li>Filter by distance and geolocation</li>\r\n\t<li>Wide range of payment gateways (WooCommerce)</li>\r\n\t<li>E-mail notifications</li>\r\n\t<li>Mail templates</li>\r\n\t<li>Google Maps</li>\r\n\t<li>Google Directions</li>\r\n\t<li>Reviews with custom multi-ratings</li>\r\n\t<li>Textual Vouchers generation</li>\r\n\t<li>Voucher check/redeem form</li>\r\n\t<li>Infinite scroll</li>\r\n\t<li>Multisite support</li>\r\n</ul>\r\n\r\n<h3>Compatibility:</h3>\r\n\r\n<ul>\r\n\t<li>WooCommerce PreOrders plugin&nbsp;<strong>(paid, not included with theme)</strong></li>\r\n\t<li>WooCommerce Bookings plugin&nbsp;<strong>(paid, not included with theme)</strong></li>\r\n\t<li>WooCommerce Subscriptions plugin&nbsp;<strong>(paid, not included with theme)</strong></li>\r\n\t<li>YITH Subscriptions plugin</li>\r\n\t<li>WC Vendors plugin</li>\r\n\t<li>Contact Form 7 plugin</li>\r\n</ul>\r\n	2016-07-18 13:56:36.509582	2016-09-04 03:39:53.261182	1006	3	responsive	70	sdsd	57d3ddb8385ce8b139981d444a639235e0c7b7bb9088609fba.png	8.0	t	will-approve-it-if-it-meets-our-seller-requirements	asdsd	20	1	4556.0	f	\N	1
11	Multi-Purpose WordPress Theme	<img alt="" src="https://s3.amazonaws.com/tf-details/lawyerly-content.jpg" style="height:4575px; width:600px" />	2016-06-08 14:57:34.131083	2016-10-10 03:00:18.339755	1003	2	fixed	27	Butcher narwhal pickled, lo-fi selvage cliche roof party. Selvage semiotics twee, cray roof party meh mlkshk church-key 	40584722578b5208923ba9a6cc0a605c661ea686d6d00d8584.jpg	23.0	t	multi-purpose-wordpress-theme		20	1	4546.0	f	\N	2
10	Multipurpose Responsive Shopify Theme	<img alt="" src="http://crafter.giacomo.com.ua/wp-content/uploads/crafff.png" style="height:2580px; width:600px" />	2016-06-08 14:40:32.187987	2016-10-10 03:00:18.358404	1007	3	responsive	10	Actually tacos health goth, deep v direct trade 3 wolf moon authentic flexitarian hoodie gluten-free. Lomo meh ethical, YOLO lumbersexual austin mumblecore seitan.	d1c144aed9831e5a86fe9c38594592f7db141c29bc2f5dea17.jpg	30.0	t	multipurpose-wordpress-blog-and-magazine-theme	http://drakorindo.com/download-drama-korea-lets-fight-ghost-subtitle-indonesia/	18	1	8000.0	f	\N	1
23	Tour Booking & Adventure Tour WordPress Theme	<img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/6671d12a3d22f2f13e15008cdef2bcf296244342/687474703a2f2f7777772e77616974756b2e636f6d2f7468656d65666f726573742f70726576696577732f656e74726164612d7468656d652d707265766965772d312e6a7067" style="height:1267px; width:616px" />	2016-10-11 08:39:14.282681	2016-11-07 19:55:06.647348	1005	2	fixed	62		b746646f131e0f6a5b87f4f264121f9defb95dcc465a32f8f3.png	\N	\N	tour-booking-adventure-tour-wordpress-theme	https://themeforest.net/item/tour-booking-adventure-tour-wordpress-theme-entrada/full_screen_preview/16867379	18	\N	\N	f	\N	0
\.


--
-- Name: themes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('themes_id_seq', 23, true);


--
-- Data for Name: toitems; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY toitems (id, name, created_at, updated_at) FROM stdin;
1	theme	2016-10-16 17:19:39.377873	2016-10-16 17:19:39.377873
2	code	2016-10-16 17:19:58.775988	2016-10-16 17:19:58.775988
3	android	2016-10-16 17:20:10.898097	2016-10-16 17:20:10.898097
4	ios	2016-10-16 17:20:20.785202	2016-10-16 17:20:20.785202
5	graphic	2016-10-16 17:20:41.297323	2016-10-16 17:20:41.297323
6	t3ds	2016-10-16 17:21:06.233801	2016-10-16 17:21:06.233801
7	plugin	2016-10-16 17:21:32.037864	2016-10-16 17:21:32.037864
8	texture	2016-10-16 17:21:46.235491	2016-10-16 17:21:46.235491
9	video	2016-10-16 17:22:32.8088	2016-10-16 17:22:32.8088
10	font	2016-10-16 17:22:42.413977	2016-10-16 17:22:42.413977
\.


--
-- Name: toitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('toitems_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY users (id, email, created_at, updated_at, password_digest, activation_digest, activated, activated_at, remember_digest, reset_digest, reset_sent_at, first_n, last_n, company, city, postal_code, avatar, show_country, freelance_av, username, country_id, state_id, seller, admin, reviewer, job_post, team_id, leader, balance) FROM stdin;
18	gedepramayu2@gmail.com	2016-07-02 06:41:22.165092	2016-11-09 23:16:55.062194	$2a$10$JOM8WHBDC5ef6kIllWYy..Nvpz4/rs9isJPjweT/eS2aqjd3yi5Pa	$2a$10$Go8QELftIZFMd4S3FXLRcOxgPhz/osFAAfSJh1Q3sT8UmoXUsUoHO	t	2016-07-02 06:43:00.978229	\N	$2a$10$XMmN7dI8ume4y/TkTJ43UOh2TD30bsBlFCPLxXeg5HZD.MTdWqKU2	2016-11-09 23:16:55.059151	Trisnia	Studio	Trisnia  Studio	Singaraja	55432	8ce4ad8bd00f2e0ec525cc9f255360beb8608d80cbc8375f5e.png	f	t	trisnia	1102	774	t	f	f	t	\N	f	120.0
25	gedepramayu@ymail.com	2016-09-10 01:37:57.134311	2016-10-19 08:33:45.987155	$2a$10$I0hM7PvhhWTBy4xRprb8puEczWNJOMvXkWFVx7JvxdMpSccsM.bWu	$2a$10$iC8VGt9RVOgd1cQrHs7JQeTBpRhHP8XOUgfGh5dUOrQJvdeENsQse	t	2016-09-10 01:38:26.518134	\N	\N	\N	cristiani	stephani	Japan Channel	Osaka	34532	b1dc703b549799a4323254e3d7306a8799df9228576040c500.jpg	f	t	crista	1109	997	f	f	t	f	5	f	0.0
19	gedepramayu3@gmail.com	2016-07-02 06:56:15.448658	2016-10-20 07:50:31.56937	$2a$10$caSwio5KmToZiVt0a1VPMuDuaU8o/abX4xXspbCgDgvCaCAri2W1O	$2a$10$09HdLFN6k.CoA2ytW.KsRuCApiQBZIIuth9Ahu7PhXkQoB4PpVnY6	t	2016-07-02 07:00:40.329721	\N	\N	\N	Taan	Permata	Taan Studio	Gianyar	55098	10a68481faf480d3034bdcc43a6124b808a2bc57b7aaf797e5.jpg	f	t	taanp	1102	774	t	f	f	f	\N	f	188.4
23	gedeari7@gmail.com	2016-08-16 12:57:59.874894	2016-10-19 09:06:02.641053	$2a$10$z.J4dTSy5iA4K7ljWZI8Le3NcBCeLSZtUj26Ejav3c2I0JCwmZYwi	$2a$10$eDS.kloRgQT35YT96UOHJucNUGVHn7rr0y8Cs5IavXs5o1D2WcaWO	t	2016-08-16 13:01:08.829048	\N	\N	\N	Avika	Ivankov				422b8bf722d39ba368aa8de595df6cbcd42fdc5615559810c7.jpg	f	f	avikaivankov	\N	\N	f	f	t	f	5	t	0.0
24	gede.p@students.amikom.ac.id	2016-08-18 12:44:44.163864	2016-11-03 12:35:42.746595	$2a$10$B63QqKsHJF9AsGnBjaexYuS60olIjg95aNJrhqWWGJc8foOFII4pK	$2a$10$IeCwvTzBmZx0YuFDVovwWePpx7rv1Zb0nTUpvvgMRJgkb1TNG2jEO	t	2016-08-18 12:44:57.01427	\N	\N	\N	Cristiano	Ronaldo				2aa1d53da5939aa300d64cc39fefce8b53114a9e6edf3a103e.jpg	f	f	kim	\N	\N	f	t	f	f	\N	t	0.0
20	gedepramayu@gmail.com	2016-07-02 07:04:01.27585	2016-11-06 07:36:40.292884	$2a$10$aTLwAjDl7SD.WTfDxq1.ouZBR9nBxXgxGR/MMrYB6/06nYS0wf1am	$2a$10$UvVa7Kc3NQ6Qpq3tehEVDOKo2gIaicxENoSgOomd1MWTD1VN0cKjG	t	2016-07-02 07:05:17.547697	\N	$2a$10$2z4FZu3A2sJf7CDcen3EJOGxsczMMLspYgFF.aSwqJbmpUSfcrDjS	2016-11-06 07:36:40.290181	gede	pramayu	ArtStudio	Singaraja	55098	142cc8e552dabf8c7a5a1990e64912d0a31e19da45076ec72a.png	f	t	maddmon	1102	774	t	f	f	f	\N	f	148.8
30	maddmon@yahoo.com	2016-10-19 14:06:56.640584	2016-10-19 14:07:14.117131	$2a$10$UI5kegW6AZui/RnKBKkJvegRkDajknu4MoNWjMYGuYS7dPkgKG3p.	$2a$10$WHvRehQqS39j9IxwZS2mIOns7aQqDhEjyf1ZCLH2FqBFyV8UELR7O	t	2016-10-19 14:07:14.115345	\N	\N	\N	Tiara	Westlake	\N	\N	\N	\N	f	f	westlake	\N	\N	f	f	t	f	2	f	0.0
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('users_id_seq', 30, true);


--
-- Data for Name: vacancies; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY vacancies (id, name, description, category_id, user_id, location, created_at, updated_at, job_type, recruiter, experience, country_id, state_id, slug, url_form) FROM stdin;
8	Power Electronics Engineer	<p>Power Electronics Engineer</p>\r\n\r\n<p>We are currently looking for an enthusiastic Power Electronics Engineer for a permanent position based in the South of the UK. The role will be working in a globally recognised company as part of an established team focusing on high performance applications.</p>\r\n\r\n<p>Role responsibilities:</p>\r\n\r\n<ul>\r\n\t<li>Design, develop and test new and existing inverter products&nbsp;</li>\r\n\t<li>Working on the full development cycle (specification, design, schematic capture, through to supporting PCB layout, manufacture and assembly.</li>\r\n\t<li>Designing the best practices and industry standards in terms of EMC, creepage and clearance, thermal management, and robustness.</li>\r\n\t<li>Responsible for the electronic design of gate drivers, internal power supplies, digital control platform and sensor interfaces.&nbsp;</li>\r\n\t<li>Reusing sections of existing designs where possible, customising and adapting where necessary.</li>\r\n</ul>\r\n	1134	18	\N	2016-10-03 18:44:40.852294	2016-10-03 18:44:40.852294	Freelance	2	4	1013	179	power-electronics-engineer	\N
9	Mechanical Estimator Building Services	<p><strong>Your new company</strong><br />\r\nA leading Building Services installation company based in Northamptonshire are looking for a Mechanical Estimator to join their team. They offer turnkey mechanical and Electrical packages to Government, Industrial, Commercial, Educational, Medical, Retail and Leisure organisations.</p>\r\n\r\n<p><strong>Your new role</strong><br />\r\nYou will structure your time and tender projects in accordance with the Estimating Manager&#39;s tendering schedule and demand. You will be responsible to liaise with the Estimating manager for the tender given and ensure its returned ensuring that the estimator fully works to the BS ISO 9001 policy and procedures for Pre Contract. You will also have the opportunity to negotiate better discounts at tender to ensure we are more competitive than our competition, raise any estimating request for information RFIs throughout the tendering process. Projects range from anywhere between the value of &pound;10,000 - &pound;3million.</p>\r\n\r\n<p><strong>What you&#39;ll need to succeed</strong><br />\r\nYou will need to have time served qualification in the electrical or mechanical construction industry, bringing a wealth of knowledge within the M&amp;E sector for materials, products, prices and commercial awareness. You will also need a full and clean drivers licence, City and Guilds trained ability to use estimating Cypher software, training will be given if required.</p>\r\n	1136	18	\N	2016-10-03 18:56:11.395731	2016-10-08 14:12:19.379114	Freelance	4	3	1226	596	mechanical-estimator-building-services	https://www.youtube.com/watch?v=P6TaYwjP00U
\.


--
-- Name: vacancies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('vacancies_id_seq', 9, true);


--
-- Data for Name: videms; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY videms (id, trailer, videofx_id, created_at, updated_at) FROM stdin;
4	83a9d576e67e816b4f0e5f3ef6abec0963e4245758553c0fef.mp4	3	2016-08-22 18:32:54.099014	2016-08-22 18:32:54.099014
8	55ac8409549501d68c0565f27dbc8f560ee2213957ea45272d.mp4	4	2016-08-28 19:53:35.024617	2016-08-28 19:53:35.024617
10	24af8d717b0e826705595718851405d5a1e8d2a401ddfaec57.mp4	5	2016-09-08 09:38:48.847334	2016-09-08 09:38:48.847334
\.


--
-- Name: videms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('videms_id_seq', 11, true);


--
-- Data for Name: videofx_autocompletes; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY videofx_autocompletes (id, term, popularity, created_at, updated_at) FROM stdin;
\.


--
-- Name: videofx_autocompletes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('videofx_autocompletes_id_seq', 1, false);


--
-- Data for Name: videofxes; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY videofxes (id, name, description, category_id, softopen_id, note, thumbnail, price, agree, slug, url_demo, video_demo, user_id, created_at, updated_at, duration, resolution, looped_video, alpha_channel, source_audio, file_size, require_plugin, encode_id, latar_id, vidsub_id, poster, price_ext, team_id, reject, average_rate, sell) FROM stdin;
1	Timelapse Of People In Modern Walkway	<p><strong>MAIN FEATURES:</strong></p>\r\n\r\n<ul>\r\n\t<li>ELEMENT 3D V2.2 plugin required!</li>\r\n\t<li>Easy to customize.</li>\r\n\t<li>Custom Color Control</li>\r\n\t<li>Render time &ndash; about 27 minutes on I7 Processor, 16 GB RAM,</li>\r\n\t<li>1 Logo Placeholders, 2 Text Placeholders, 6 Photo Placeholders</li>\r\n\t<li>Pre-rendered Optical Flare</li>\r\n\t<li>Full HD Resolution (1920&times;1080)+(1280&times;720) / 30fps / 18 sec, Composition included</li>\r\n\t<li>2 version included ( Bright Version &amp; Dark Version )</li>\r\n\t<li>After Effects CS5 and above compatible</li>\r\n\t<li>The Music is not included, you can find&nbsp;<a href="http://audiojungle.net/item/skynet-particles-logo/5644160?s_rank=57">here</a></li>\r\n\t<li>If you don&rsquo;t have the &ldquo;Furore&rdquo; font, you can download it&nbsp;<a href="http://www.fontsquirrel.com/fonts/Furore" rel="nofollow">here</a></li>\r\n\t<li>Video Tutorial is included</li>\r\n</ul>\r\n	1052	\N		e7c8872d456cf64a0edd41d222610107baf0afc4ff4f276f22.png	\N	f	one-of-the-categories-listed-and-begin	https://videohive.net/item/timelapse-of-people-in-modern-walkway-2-pack/3549281	https://0.s3.envato.com/h264-video-previews/bbc1cb62-35ee-11e3-9010-005056923f83/399306.mp4	18	2016-08-02 01:37:20.715065	2016-08-31 10:14:30.446323	04:00	1920x1080	Yes	No	\N	245mb	\N	7	2	\N	\N	\N	\N	f	\N	0
3	Title Animation & Kinetic Typography Text	<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/23a25ecc696cdd5ae039b008605cd9be51a99132/687474703a2f2f64656d6f2e706978666c6f772e6e65742f70726f6d6f2f766964656f2f7479706f6b696e672f33352e676966" style="height:150px; width:615px" /></p>\r\n\r\n<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/988186c67eecfa97a30ea31ec5769e8f9c296162/687474703a2f2f64656d6f2e706978666c6f772e6e65742f70726f6d6f2f766964656f2f7479706f6b696e672f33382e706e67" style="height:326px; width:615px" /></p>\r\n\r\n<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/d4311086330f76f03a8e327de4248f7ce230c918/687474703a2f2f64656d6f2e706978666c6f772e6e65742f70726f6d6f2f766964656f2f7479706f6b696e672f33392e706e67" style="height:1252px; width:615px" /></p>\r\n	1054	6		356f406d30892fe2190d7fb0887eff2379d4895f82b1454344.png	25.0	t	it-will-be-entered-into-our-review-queue	https://videohive.net/item/timelapse-of-people-in-modern-walkway-2-pack/3549281	https://0.s3.envato.com/h264-video-previews/3e463776-8d9d-4306-b976-016032f7e2de/1114829.mp4	18	2016-08-02 02:14:49.12335	2016-09-08 09:43:49.953841	04:00	1920x1080	\N	\N	\N	245mb	\N	\N	\N	\N	\N	2345.0	1	f	\N	0
4	Photo Motion Pro - Professional 3D Photo Animator	<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/1c08c62ea1ed3342ab85191c8d72485ef8648740/687474703a2f2f696e7465676e6974792e636f6d2f6d656469615f73657276696e672f766964656f686976652f70686f746f6d6f74696f6e322f746f705f73656374696f6e2e6a706567" style="height:469px; width:1232px" /></p>\r\n\r\n<p><img alt="" src="https://d1a6a9r46cnyll.cloudfront.net/8fe913e6765a507f6cffbacaec22b1d1ce5a788e/687474703a2f2f696e7465676e6974792e636f6d2f6d656469615f73657276696e672f766964656f686976652f70686f746f6d6f74696f6e322f696e74726f64756374696f6e2e6a7067" style="height:1894px; width:1232px" /></p>\r\n	1055	16	what the fuck!!!	92333837db1e963a06ee021261f684eee3afc351e8b109cef9.png	23.0	t	will-approve-it-if-it-meets-our-seller-requirements	https://videohive.net/item/photo-motion-pro-professional-3d-photo-animator/13922688	https://0.s3.envato.com/h264-video-previews/3e463776-8d9d-4306-b976-016032f7e2de/1114829.mp4	18	2016-08-02 02:16:23.387719	2016-09-08 09:26:37.217483	04:00	1920x1080	\N	\N	\N	245mb	No	\N	\N	\N	\N	5674.0	4	f	\N	0
5	SEO & Marketing HTML Theme	<img alt="" src="https://city1.wpmix.net/descr/coupon_code.jpg" />	1054	8		eed73c69449988ffcdc5386284050c7f497b308754a5ca3f53.png	34.0	t	seo-marketing-html-theme	http://preview.themeforest.net/item/mycity-geolocation-directory-and-events-guide/full_screen_preview/12265153		18	2016-09-08 09:35:51.522655	2016-09-08 09:44:16.017975	2 hours	3000x2000	\N	\N	\N	5mb	\N	\N	\N	\N	\N	1345.0	1	f	\N	0
\.


--
-- Name: videofxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('videofxes_id_seq', 6, true);


--
-- Data for Name: videorates; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY videorates (id, framerate_id, videofx_id, created_at, updated_at) FROM stdin;
1	1	1	2016-08-02 03:57:48.402376	2016-08-02 03:57:48.402376
2	4	1	2016-08-02 03:57:48.415014	2016-08-02 03:57:48.415014
\.


--
-- Name: videorates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('videorates_id_seq', 4, true);


--
-- Data for Name: vidplugs; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY vidplugs (id, aeplugin_id, videofx_id, created_at, updated_at) FROM stdin;
1	2	3	2016-08-02 04:13:18.621122	2016-08-02 04:13:18.621122
2	5	3	2016-08-02 04:13:18.646755	2016-08-02 04:13:18.646755
3	2	5	2016-09-08 09:39:51.645578	2016-09-08 09:39:51.645578
4	4	5	2016-09-08 09:39:51.662293	2016-09-08 09:39:51.662293
5	5	5	2016-09-08 09:39:51.667382	2016-09-08 09:39:51.667382
\.


--
-- Name: vidplugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('vidplugs_id_seq', 7, true);


--
-- Data for Name: vidsubs; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY vidsubs (id, name, subcategory_id, created_at, updated_at) FROM stdin;
1	action	1575	2016-07-28 13:37:02.415405	2016-07-28 13:37:02.415405
2	3d animated element	1575	2016-07-28 13:37:02.444489	2016-07-28 13:37:02.444489
3	animals	1575	2016-07-28 13:37:02.449721	2016-07-28 13:37:02.449721
4	architecture	1575	2016-07-28 13:37:02.454984	2016-07-28 13:37:02.454984
5	arts	1575	2016-07-28 13:37:02.462661	2016-07-28 13:37:02.462661
6	business	1575	2016-07-28 13:37:02.467161	2016-07-28 13:37:02.467161
7	design elements	1575	2016-07-28 13:37:02.471834	2016-07-28 13:37:02.471834
8	editorial	1575	2016-07-28 13:37:02.476193	2016-07-28 13:37:02.476193
9	education	1575	2016-07-28 13:37:02.480695	2016-07-28 13:37:02.480695
10	explosion	1575	2016-07-28 13:37:02.484582	2016-07-28 13:37:02.484582
11	fire	1575	2016-07-28 13:37:02.488748	2016-07-28 13:37:02.488748
12	characters	1575	2016-07-28 13:37:02.493347	2016-07-28 13:37:02.493347
13	smoke	1575	2016-07-28 13:37:02.497484	2016-07-28 13:37:02.497484
14	fashion	1575	2016-07-28 13:37:02.502475	2016-07-28 13:37:02.502475
15	food & drink	1575	2016-07-28 13:37:02.506625	2016-07-28 13:37:02.506625
16	industrial	1575	2016-07-28 13:37:02.511514	2016-07-28 13:37:02.511514
17	nature	1575	2016-07-28 13:37:02.515595	2016-07-28 13:37:02.515595
18	infographic	1575	2016-07-28 13:37:02.520108	2016-07-28 13:37:02.520108
19	people	1575	2016-07-28 13:37:02.524793	2016-07-28 13:37:02.524793
20	military	1575	2016-07-28 13:37:02.538647	2016-07-28 13:37:02.538647
21	city	1575	2016-07-28 13:37:02.543271	2016-07-28 13:37:02.543271
22	life style	1575	2016-07-28 13:37:02.547697	2016-07-28 13:37:02.547697
23	science	1575	2016-07-28 13:37:02.552488	2016-07-28 13:37:02.552488
24	entertaiment	1575	2016-07-28 13:37:02.556041	2016-07-28 13:37:02.556041
25	medical	1575	2016-07-28 13:37:02.559825	2016-07-28 13:37:02.559825
26	technology	1575	2016-07-28 13:37:02.564236	2016-07-28 13:37:02.564236
27	sports	1575	2016-07-28 13:37:02.56896	2016-07-28 13:37:02.56896
28	travel	1575	2016-07-28 13:37:02.573119	2016-07-28 13:37:02.573119
29	slow motion	1575	2016-07-28 13:37:02.577255	2016-07-28 13:37:02.577255
30	transportation	1575	2016-07-28 13:37:02.581445	2016-07-28 13:37:02.581445
31	grunge	1575	2016-07-28 13:37:02.585348	2016-07-28 13:37:02.585348
32	space	1575	2016-07-28 13:37:02.590118	2016-07-28 13:37:02.590118
33	water	1575	2016-07-28 13:37:02.594841	2016-07-28 13:37:02.594841
34	weather	1575	2016-07-28 13:37:02.602345	2016-07-28 13:37:02.602345
35	wedding	1575	2016-07-28 13:37:02.610539	2016-07-28 13:37:02.610539
36	intro	1575	2016-07-28 13:37:02.619842	2016-07-28 13:37:02.619842
37	logo reveal	1575	2016-07-28 13:37:02.626649	2016-07-28 13:37:02.626649
38	typography	1575	2016-07-28 13:37:02.631002	2016-07-28 13:37:02.631002
39	presentation	1575	2016-07-28 13:37:02.635872	2016-07-28 13:37:02.635872
40	slideshow	1575	2016-07-28 13:37:02.639623	2016-07-28 13:37:02.639623
41	cinematic	1575	2016-07-28 13:37:02.643245	2016-07-28 13:37:02.643245
42	trapcode	1575	2016-07-28 13:37:02.647911	2016-07-28 13:37:02.647911
43	particles	1575	2016-07-28 13:37:02.652198	2016-07-28 13:37:02.652198
44	sci-fi	1575	2016-07-28 13:37:02.657021	2016-07-28 13:37:02.657021
45	action	1576	2016-07-28 13:37:02.661576	2016-07-28 13:37:02.661576
46	3d animated element	1576	2016-07-28 13:37:02.666139	2016-07-28 13:37:02.666139
47	animals	1576	2016-07-28 13:37:02.670277	2016-07-28 13:37:02.670277
48	architecture	1576	2016-07-28 13:37:02.674564	2016-07-28 13:37:02.674564
49	arts	1576	2016-07-28 13:37:02.679171	2016-07-28 13:37:02.679171
50	business	1576	2016-07-28 13:37:02.683574	2016-07-28 13:37:02.683574
51	design elements	1576	2016-07-28 13:37:02.687896	2016-07-28 13:37:02.687896
52	editorial	1576	2016-07-28 13:37:02.692278	2016-07-28 13:37:02.692278
53	education	1576	2016-07-28 13:37:02.696814	2016-07-28 13:37:02.696814
54	explosion	1576	2016-07-28 13:37:02.700533	2016-07-28 13:37:02.700533
55	fire	1576	2016-07-28 13:37:02.704435	2016-07-28 13:37:02.704435
56	characters	1576	2016-07-28 13:37:02.709215	2016-07-28 13:37:02.709215
57	smoke	1576	2016-07-28 13:37:02.7136	2016-07-28 13:37:02.7136
58	fashion	1576	2016-07-28 13:37:02.718139	2016-07-28 13:37:02.718139
59	food & drink	1576	2016-07-28 13:37:02.722509	2016-07-28 13:37:02.722509
60	industrial	1576	2016-07-28 13:37:02.726602	2016-07-28 13:37:02.726602
61	nature	1576	2016-07-28 13:37:02.731183	2016-07-28 13:37:02.731183
62	infographic	1576	2016-07-28 13:37:02.735362	2016-07-28 13:37:02.735362
63	people	1576	2016-07-28 13:37:02.741105	2016-07-28 13:37:02.741105
64	military	1576	2016-07-28 13:37:02.74526	2016-07-28 13:37:02.74526
65	city	1576	2016-07-28 13:37:02.749337	2016-07-28 13:37:02.749337
66	life style	1576	2016-07-28 13:37:02.753208	2016-07-28 13:37:02.753208
67	science	1576	2016-07-28 13:37:02.757314	2016-07-28 13:37:02.757314
68	entertaiment	1576	2016-07-28 13:37:02.761788	2016-07-28 13:37:02.761788
69	medical	1576	2016-07-28 13:37:02.766155	2016-07-28 13:37:02.766155
70	technology	1576	2016-07-28 13:37:02.770572	2016-07-28 13:37:02.770572
71	sports	1576	2016-07-28 13:37:02.77571	2016-07-28 13:37:02.77571
72	travel	1576	2016-07-28 13:37:02.779913	2016-07-28 13:37:02.779913
73	slow motion	1576	2016-07-28 13:37:02.784005	2016-07-28 13:37:02.784005
74	transportation	1576	2016-07-28 13:37:02.787729	2016-07-28 13:37:02.787729
75	grunge	1576	2016-07-28 13:37:02.79216	2016-07-28 13:37:02.79216
76	space	1576	2016-07-28 13:37:02.796686	2016-07-28 13:37:02.796686
77	water	1576	2016-07-28 13:37:02.801459	2016-07-28 13:37:02.801459
78	weather	1576	2016-07-28 13:37:02.805439	2016-07-28 13:37:02.805439
79	wedding	1576	2016-07-28 13:37:02.809637	2016-07-28 13:37:02.809637
80	intro	1576	2016-07-28 13:37:02.814133	2016-07-28 13:37:02.814133
81	logo reveal	1576	2016-07-28 13:37:02.819073	2016-07-28 13:37:02.819073
82	typography	1576	2016-07-28 13:37:02.823538	2016-07-28 13:37:02.823538
83	presentation	1576	2016-07-28 13:37:02.83862	2016-07-28 13:37:02.83862
84	slideshow	1576	2016-07-28 13:37:02.845041	2016-07-28 13:37:02.845041
85	cinematic	1576	2016-07-28 13:37:02.849248	2016-07-28 13:37:02.849248
86	trapcode	1576	2016-07-28 13:37:02.854203	2016-07-28 13:37:02.854203
87	particles	1576	2016-07-28 13:37:02.859246	2016-07-28 13:37:02.859246
88	sci-fi	1576	2016-07-28 13:37:02.863679	2016-07-28 13:37:02.863679
89	action	1577	2016-07-28 13:37:02.869308	2016-07-28 13:37:02.869308
90	3d animated element	1577	2016-07-28 13:37:02.875158	2016-07-28 13:37:02.875158
91	animals	1577	2016-07-28 13:37:02.882525	2016-07-28 13:37:02.882525
92	architecture	1577	2016-07-28 13:37:02.88872	2016-07-28 13:37:02.88872
93	arts	1577	2016-07-28 13:37:02.895159	2016-07-28 13:37:02.895159
94	business	1577	2016-07-28 13:37:02.90299	2016-07-28 13:37:02.90299
95	design elements	1577	2016-07-28 13:37:02.908961	2016-07-28 13:37:02.908961
96	editorial	1577	2016-07-28 13:37:02.913574	2016-07-28 13:37:02.913574
97	education	1577	2016-07-28 13:37:02.920291	2016-07-28 13:37:02.920291
98	explosion	1577	2016-07-28 13:37:02.926186	2016-07-28 13:37:02.926186
99	fire	1577	2016-07-28 13:37:02.932165	2016-07-28 13:37:02.932165
100	characters	1577	2016-07-28 13:37:02.938037	2016-07-28 13:37:02.938037
101	smoke	1577	2016-07-28 13:37:02.943985	2016-07-28 13:37:02.943985
102	fashion	1577	2016-07-28 13:37:02.950419	2016-07-28 13:37:02.950419
103	food & drink	1577	2016-07-28 13:37:02.956696	2016-07-28 13:37:02.956696
104	industrial	1577	2016-07-28 13:37:02.96224	2016-07-28 13:37:02.96224
105	nature	1577	2016-07-28 13:37:02.968506	2016-07-28 13:37:02.968506
106	infographic	1577	2016-07-28 13:37:02.973606	2016-07-28 13:37:02.973606
107	people	1577	2016-07-28 13:37:02.978357	2016-07-28 13:37:02.978357
108	military	1577	2016-07-28 13:37:02.983644	2016-07-28 13:37:02.983644
109	city	1577	2016-07-28 13:37:02.989871	2016-07-28 13:37:02.989871
110	life style	1577	2016-07-28 13:37:02.995123	2016-07-28 13:37:02.995123
111	science	1577	2016-07-28 13:37:03.001097	2016-07-28 13:37:03.001097
112	entertaiment	1577	2016-07-28 13:37:03.006104	2016-07-28 13:37:03.006104
113	medical	1577	2016-07-28 13:37:03.010902	2016-07-28 13:37:03.010902
114	technology	1577	2016-07-28 13:37:03.016394	2016-07-28 13:37:03.016394
115	sports	1577	2016-07-28 13:37:03.021616	2016-07-28 13:37:03.021616
116	travel	1577	2016-07-28 13:37:03.026415	2016-07-28 13:37:03.026415
117	slow motion	1577	2016-07-28 13:37:03.032104	2016-07-28 13:37:03.032104
118	transportation	1577	2016-07-28 13:37:03.03673	2016-07-28 13:37:03.03673
119	grunge	1577	2016-07-28 13:37:03.041432	2016-07-28 13:37:03.041432
120	space	1577	2016-07-28 13:37:03.053352	2016-07-28 13:37:03.053352
121	water	1577	2016-07-28 13:37:03.067316	2016-07-28 13:37:03.067316
122	weather	1577	2016-07-28 13:37:03.072566	2016-07-28 13:37:03.072566
123	wedding	1577	2016-07-28 13:37:03.078592	2016-07-28 13:37:03.078592
124	intro	1577	2016-07-28 13:37:03.084047	2016-07-28 13:37:03.084047
125	logo reveal	1577	2016-07-28 13:37:03.089218	2016-07-28 13:37:03.089218
126	typography	1577	2016-07-28 13:37:03.095388	2016-07-28 13:37:03.095388
127	presentation	1577	2016-07-28 13:37:03.100659	2016-07-28 13:37:03.100659
128	slideshow	1577	2016-07-28 13:37:03.106579	2016-07-28 13:37:03.106579
129	cinematic	1577	2016-07-28 13:37:03.111741	2016-07-28 13:37:03.111741
130	trapcode	1577	2016-07-28 13:37:03.117513	2016-07-28 13:37:03.117513
131	particles	1577	2016-07-28 13:37:03.122653	2016-07-28 13:37:03.122653
132	sci-fi	1577	2016-07-28 13:37:03.127636	2016-07-28 13:37:03.127636
133	action	1578	2016-07-28 13:37:03.134369	2016-07-28 13:37:03.134369
134	3d animated element	1578	2016-07-28 13:37:03.139891	2016-07-28 13:37:03.139891
135	animals	1578	2016-07-28 13:37:03.145191	2016-07-28 13:37:03.145191
136	architecture	1578	2016-07-28 13:37:03.150142	2016-07-28 13:37:03.150142
137	arts	1578	2016-07-28 13:37:03.155344	2016-07-28 13:37:03.155344
138	business	1578	2016-07-28 13:37:03.160101	2016-07-28 13:37:03.160101
139	design elements	1578	2016-07-28 13:37:03.165511	2016-07-28 13:37:03.165511
140	editorial	1578	2016-07-28 13:37:03.171239	2016-07-28 13:37:03.171239
141	education	1578	2016-07-28 13:37:03.176531	2016-07-28 13:37:03.176531
142	explosion	1578	2016-07-28 13:37:03.181429	2016-07-28 13:37:03.181429
143	fire	1578	2016-07-28 13:37:03.186377	2016-07-28 13:37:03.186377
144	characters	1578	2016-07-28 13:37:03.191834	2016-07-28 13:37:03.191834
145	smoke	1578	2016-07-28 13:37:03.196501	2016-07-28 13:37:03.196501
146	fashion	1578	2016-07-28 13:37:03.201731	2016-07-28 13:37:03.201731
147	food & drink	1578	2016-07-28 13:37:03.20792	2016-07-28 13:37:03.20792
148	industrial	1578	2016-07-28 13:37:03.212722	2016-07-28 13:37:03.212722
149	nature	1578	2016-07-28 13:37:03.217655	2016-07-28 13:37:03.217655
150	infographic	1578	2016-07-28 13:37:03.223903	2016-07-28 13:37:03.223903
151	people	1578	2016-07-28 13:37:03.228566	2016-07-28 13:37:03.228566
152	military	1578	2016-07-28 13:37:03.233041	2016-07-28 13:37:03.233041
153	city	1578	2016-07-28 13:37:03.238909	2016-07-28 13:37:03.238909
154	life style	1578	2016-07-28 13:37:03.243707	2016-07-28 13:37:03.243707
155	science	1578	2016-07-28 13:37:03.248486	2016-07-28 13:37:03.248486
156	entertaiment	1578	2016-07-28 13:37:03.252869	2016-07-28 13:37:03.252869
157	medical	1578	2016-07-28 13:37:03.258258	2016-07-28 13:37:03.258258
158	technology	1578	2016-07-28 13:37:03.262897	2016-07-28 13:37:03.262897
159	sports	1578	2016-07-28 13:37:03.268034	2016-07-28 13:37:03.268034
160	travel	1578	2016-07-28 13:37:03.307985	2016-07-28 13:37:03.307985
161	slow motion	1578	2016-07-28 13:37:03.312191	2016-07-28 13:37:03.312191
162	transportation	1578	2016-07-28 13:37:03.316139	2016-07-28 13:37:03.316139
163	grunge	1578	2016-07-28 13:37:03.321108	2016-07-28 13:37:03.321108
164	space	1578	2016-07-28 13:37:03.325835	2016-07-28 13:37:03.325835
165	water	1578	2016-07-28 13:37:03.329822	2016-07-28 13:37:03.329822
166	weather	1578	2016-07-28 13:37:03.333812	2016-07-28 13:37:03.333812
167	wedding	1578	2016-07-28 13:37:03.338516	2016-07-28 13:37:03.338516
168	intro	1578	2016-07-28 13:37:03.342769	2016-07-28 13:37:03.342769
169	logo reveal	1578	2016-07-28 13:37:03.348127	2016-07-28 13:37:03.348127
170	typography	1578	2016-07-28 13:37:03.352552	2016-07-28 13:37:03.352552
171	presentation	1578	2016-07-28 13:37:03.35659	2016-07-28 13:37:03.35659
172	slideshow	1578	2016-07-28 13:37:03.360924	2016-07-28 13:37:03.360924
173	cinematic	1578	2016-07-28 13:37:03.365056	2016-07-28 13:37:03.365056
174	trapcode	1578	2016-07-28 13:37:03.369029	2016-07-28 13:37:03.369029
175	particles	1578	2016-07-28 13:37:03.372933	2016-07-28 13:37:03.372933
176	sci-fi	1578	2016-07-28 13:37:03.377313	2016-07-28 13:37:03.377313
177	action	1579	2016-07-28 13:37:03.381505	2016-07-28 13:37:03.381505
178	3d animated element	1579	2016-07-28 13:37:03.385491	2016-07-28 13:37:03.385491
179	animals	1579	2016-07-28 13:37:03.389354	2016-07-28 13:37:03.389354
180	architecture	1579	2016-07-28 13:37:03.394191	2016-07-28 13:37:03.394191
181	arts	1579	2016-07-28 13:37:03.398037	2016-07-28 13:37:03.398037
182	business	1579	2016-07-28 13:37:03.402033	2016-07-28 13:37:03.402033
183	design elements	1579	2016-07-28 13:37:03.40591	2016-07-28 13:37:03.40591
184	editorial	1579	2016-07-28 13:37:03.409726	2016-07-28 13:37:03.409726
185	education	1579	2016-07-28 13:37:03.413876	2016-07-28 13:37:03.413876
186	explosion	1579	2016-07-28 13:37:03.417793	2016-07-28 13:37:03.417793
187	fire	1579	2016-07-28 13:37:03.421699	2016-07-28 13:37:03.421699
188	characters	1579	2016-07-28 13:37:03.426225	2016-07-28 13:37:03.426225
189	smoke	1579	2016-07-28 13:37:03.430079	2016-07-28 13:37:03.430079
190	fashion	1579	2016-07-28 13:37:03.43408	2016-07-28 13:37:03.43408
191	food & drink	1579	2016-07-28 13:37:03.438155	2016-07-28 13:37:03.438155
192	industrial	1579	2016-07-28 13:37:03.442117	2016-07-28 13:37:03.442117
193	nature	1579	2016-07-28 13:37:03.445799	2016-07-28 13:37:03.445799
194	infographic	1579	2016-07-28 13:37:03.450276	2016-07-28 13:37:03.450276
195	people	1579	2016-07-28 13:37:03.45738	2016-07-28 13:37:03.45738
196	military	1579	2016-07-28 13:37:03.461906	2016-07-28 13:37:03.461906
197	city	1579	2016-07-28 13:37:03.466379	2016-07-28 13:37:03.466379
198	life style	1579	2016-07-28 13:37:03.470862	2016-07-28 13:37:03.470862
199	science	1579	2016-07-28 13:37:03.474772	2016-07-28 13:37:03.474772
200	entertaiment	1579	2016-07-28 13:37:03.478441	2016-07-28 13:37:03.478441
201	medical	1579	2016-07-28 13:37:03.482584	2016-07-28 13:37:03.482584
202	technology	1579	2016-07-28 13:37:03.486806	2016-07-28 13:37:03.486806
203	sports	1579	2016-07-28 13:37:03.490251	2016-07-28 13:37:03.490251
204	travel	1579	2016-07-28 13:37:03.49398	2016-07-28 13:37:03.49398
205	slow motion	1579	2016-07-28 13:37:03.498095	2016-07-28 13:37:03.498095
206	transportation	1579	2016-07-28 13:37:03.50215	2016-07-28 13:37:03.50215
207	grunge	1579	2016-07-28 13:37:03.505721	2016-07-28 13:37:03.505721
208	space	1579	2016-07-28 13:37:03.510762	2016-07-28 13:37:03.510762
209	water	1579	2016-07-28 13:37:03.522767	2016-07-28 13:37:03.522767
210	weather	1579	2016-07-28 13:37:03.53342	2016-07-28 13:37:03.53342
211	wedding	1579	2016-07-28 13:37:03.536999	2016-07-28 13:37:03.536999
212	intro	1579	2016-07-28 13:37:03.541378	2016-07-28 13:37:03.541378
213	logo reveal	1579	2016-07-28 13:37:03.545323	2016-07-28 13:37:03.545323
214	typography	1579	2016-07-28 13:37:03.548926	2016-07-28 13:37:03.548926
215	presentation	1579	2016-07-28 13:37:03.552904	2016-07-28 13:37:03.552904
216	slideshow	1579	2016-07-28 13:37:03.557125	2016-07-28 13:37:03.557125
217	cinematic	1579	2016-07-28 13:37:03.561015	2016-07-28 13:37:03.561015
218	trapcode	1579	2016-07-28 13:37:03.56475	2016-07-28 13:37:03.56475
219	particles	1579	2016-07-28 13:37:03.569042	2016-07-28 13:37:03.569042
220	sci-fi	1579	2016-07-28 13:37:03.573162	2016-07-28 13:37:03.573162
221	action	1580	2016-07-28 13:37:03.576833	2016-07-28 13:37:03.576833
222	3d animated element	1580	2016-07-28 13:37:03.580496	2016-07-28 13:37:03.580496
223	animals	1580	2016-07-28 13:37:03.584849	2016-07-28 13:37:03.584849
224	architecture	1580	2016-07-28 13:37:03.588765	2016-07-28 13:37:03.588765
225	arts	1580	2016-07-28 13:37:03.592668	2016-07-28 13:37:03.592668
226	business	1580	2016-07-28 13:37:03.596413	2016-07-28 13:37:03.596413
227	design elements	1580	2016-07-28 13:37:03.599874	2016-07-28 13:37:03.599874
228	editorial	1580	2016-07-28 13:37:03.604706	2016-07-28 13:37:03.604706
229	education	1580	2016-07-28 13:37:03.608725	2016-07-28 13:37:03.608725
230	explosion	1580	2016-07-28 13:37:03.612618	2016-07-28 13:37:03.612618
231	fire	1580	2016-07-28 13:37:03.615874	2016-07-28 13:37:03.615874
232	characters	1580	2016-07-28 13:37:03.620111	2016-07-28 13:37:03.620111
233	smoke	1580	2016-07-28 13:37:03.62425	2016-07-28 13:37:03.62425
234	fashion	1580	2016-07-28 13:37:03.627884	2016-07-28 13:37:03.627884
235	food & drink	1580	2016-07-28 13:37:03.631532	2016-07-28 13:37:03.631532
236	industrial	1580	2016-07-28 13:37:03.635907	2016-07-28 13:37:03.635907
237	nature	1580	2016-07-28 13:37:03.639653	2016-07-28 13:37:03.639653
238	infographic	1580	2016-07-28 13:37:03.64423	2016-07-28 13:37:03.64423
239	people	1580	2016-07-28 13:37:03.654976	2016-07-28 13:37:03.654976
240	military	1580	2016-07-28 13:37:03.664211	2016-07-28 13:37:03.664211
241	city	1580	2016-07-28 13:37:03.66863	2016-07-28 13:37:03.66863
242	life style	1580	2016-07-28 13:37:03.672104	2016-07-28 13:37:03.672104
243	science	1580	2016-07-28 13:37:03.675962	2016-07-28 13:37:03.675962
244	entertaiment	1580	2016-07-28 13:37:03.680943	2016-07-28 13:37:03.680943
245	medical	1580	2016-07-28 13:37:03.684791	2016-07-28 13:37:03.684791
246	technology	1580	2016-07-28 13:37:03.688491	2016-07-28 13:37:03.688491
247	sports	1580	2016-07-28 13:37:03.692144	2016-07-28 13:37:03.692144
248	travel	1580	2016-07-28 13:37:03.695877	2016-07-28 13:37:03.695877
249	slow motion	1580	2016-07-28 13:37:03.699501	2016-07-28 13:37:03.699501
250	transportation	1580	2016-07-28 13:37:03.703216	2016-07-28 13:37:03.703216
251	grunge	1580	2016-07-28 13:37:03.707794	2016-07-28 13:37:03.707794
252	space	1580	2016-07-28 13:37:03.711435	2016-07-28 13:37:03.711435
253	water	1580	2016-07-28 13:37:03.71533	2016-07-28 13:37:03.71533
254	weather	1580	2016-07-28 13:37:03.719455	2016-07-28 13:37:03.719455
255	wedding	1580	2016-07-28 13:37:03.722873	2016-07-28 13:37:03.722873
256	intro	1580	2016-07-28 13:37:03.727156	2016-07-28 13:37:03.727156
257	logo reveal	1580	2016-07-28 13:37:03.730815	2016-07-28 13:37:03.730815
258	typography	1580	2016-07-28 13:37:03.741683	2016-07-28 13:37:03.741683
259	presentation	1580	2016-07-28 13:37:03.74975	2016-07-28 13:37:03.74975
260	slideshow	1580	2016-07-28 13:37:03.753426	2016-07-28 13:37:03.753426
261	cinematic	1580	2016-07-28 13:37:03.757304	2016-07-28 13:37:03.757304
262	trapcode	1580	2016-07-28 13:37:03.761088	2016-07-28 13:37:03.761088
263	particles	1580	2016-07-28 13:37:03.764804	2016-07-28 13:37:03.764804
264	sci-fi	1580	2016-07-28 13:37:03.768877	2016-07-28 13:37:03.768877
\.


--
-- Name: vidsubs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('vidsubs_id_seq', 265, true);


--
-- Data for Name: votes; Type: TABLE DATA; Schema: public; Owner: sixarts
--

COPY votes (id, votable_id, votable_type, voter_id, voter_type, vote_flag, vote_scope, vote_weight, created_at, updated_at) FROM stdin;
3	15	Theme	18	User	t	\N	1	2016-07-09 15:45:49.078714	2016-07-22 05:44:53.64024
6	14	Theme	18	User	t	\N	1	2016-07-15 04:22:53.227914	2016-07-15 04:22:53.227914
19	3	T3d	19	User	t	\N	1	2016-07-27 07:00:15.181085	2016-07-27 07:00:15.181085
21	4	Videofx	20	User	t	\N	1	2016-08-02 16:43:00.66816	2016-08-02 16:43:06.820765
22	3	Videofx	20	User	t	\N	1	2016-08-02 16:43:54.13743	2016-08-02 16:43:54.13743
23	1	Font	20	User	t	\N	1	2016-08-06 12:12:52.991578	2016-08-06 12:12:52.991578
9	11	Theme	19	User	t	\N	1	2016-07-16 15:23:49.024002	2016-07-16 15:23:49.024002
10	11	Theme	20	User	t	\N	1	2016-07-16 15:28:40.268203	2016-07-16 15:28:40.268203
25	1	Course	18	User	t	\N	1	2016-08-09 18:18:28.344494	2016-08-09 18:29:54.912928
12	9	Code	18	User	t	\N	1	2016-07-21 07:14:02.210696	2016-07-21 07:57:44.296173
14	9	Code	20	User	t	\N	1	2016-07-21 09:41:05.14958	2016-07-21 09:41:13.703804
15	9	Code	19	User	t	\N	1	2016-07-22 01:27:50.295635	2016-07-22 01:34:44.975913
29	6	T3d	18	User	t	\N	1	2016-10-10 06:16:16.975195	2016-10-10 06:16:16.975195
30	20	Theme	19	User	t	\N	1	2016-11-07 19:30:58.205071	2016-11-07 19:30:58.205071
31	10	Theme	19	User	t	\N	1	2016-11-07 19:31:13.847643	2016-11-07 19:31:13.847643
13	18	Theme	18	User	f	\N	1	2016-07-21 07:40:39.927052	2016-11-09 03:09:04.222922
32	10	Theme	18	User	t	\N	1	2016-11-09 03:09:15.126077	2016-11-09 03:09:15.126077
33	20	Theme	18	User	t	\N	1	2016-11-09 03:09:31.726507	2016-11-09 03:23:05.354377
36	14	Code	18	User	f	\N	1	2016-11-09 03:43:28.322045	2016-11-09 03:43:29.269386
37	3	Videofx	18	User	f	\N	1	2016-11-09 03:54:19.107795	2016-11-09 03:54:19.620359
35	5	Videofx	18	User	f	\N	1	2016-11-09 03:42:26.90854	2016-11-09 03:54:31.167857
38	4	Videofx	18	User	f	\N	1	2016-11-09 03:55:21.873594	2016-11-09 03:55:22.621912
34	3	Course	18	User	f	\N	1	2016-11-09 03:40:13.184897	2016-11-09 04:09:39.419721
5	11	Theme	18	User	f	\N	1	2016-07-12 14:01:09.971299	2016-11-09 10:05:57.122524
\.


--
-- Name: votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixarts
--

SELECT pg_catalog.setval('votes_id_seq', 38, true);


--
-- Data for Name: withdrawals; Type: TABLE DATA; Schema: public; Owner: khapoo
--

COPY withdrawals (id, mount, user_id, created_at, updated_at, status, address) FROM stdin;
2	50.0	18	2016-09-25 13:16:02.902467	2016-10-20 06:27:24.64335	t	gedepramayu@gmail.com
4	24.0	18	2016-09-26 04:36:38.406372	2016-10-20 06:31:23.105845	t	gedepramayu3@gmail.com
3	30.0	18	2016-09-26 04:32:48.507051	2016-10-20 06:33:57.021137	t	gedepramayu2@gmail.com
6	5.0	18	2016-10-20 07:00:58.797019	2016-10-20 07:01:36.217778	t	gedepramayu3@gmail.com
5	54.0	18	2016-09-26 04:38:57.658209	2016-10-20 07:45:43.337558	t	gedepramayu4@gmail.com
7	50.0	19	2016-10-20 07:17:42.316567	2016-10-20 07:50:31.484987	t	gedepramayu3@gmail.com
12	51.0	18	2016-11-05 04:49:13.116525	2016-11-05 04:49:13.116525	f	gedepramayu@gmail.com
\.


--
-- Name: withdrawals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khapoo
--

SELECT pg_catalog.setval('withdrawals_id_seq', 12, true);


--
-- Name: aeplugins_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY aeplugins
    ADD CONSTRAINT aeplugins_pkey PRIMARY KEY (id);


--
-- Name: akusukas_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY akusukas
    ADD CONSTRAINT akusukas_pkey PRIMARY KEY (id);


--
-- Name: allskills_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY allskills
    ADD CONSTRAINT allskills_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: brokes_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY brokes
    ADD CONSTRAINT brokes_pkey PRIMARY KEY (id);


--
-- Name: browsers_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY browsers
    ADD CONSTRAINT browsers_pkey PRIMARY KEY (id);


--
-- Name: canopens_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY canopens
    ADD CONSTRAINT canopens_pkey PRIMARY KEY (id);


--
-- Name: carts_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: categorydetails_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY categorydetails
    ADD CONSTRAINT categorydetails_pkey PRIMARY KEY (id);


--
-- Name: code_autocompletes_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY code_autocompletes
    ADD CONSTRAINT code_autocompletes_pkey PRIMARY KEY (id);


--
-- Name: codes_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codes
    ADD CONSTRAINT codes_pkey PRIMARY KEY (id);


--
-- Name: codesubs_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codesubs
    ADD CONSTRAINT codesubs_pkey PRIMARY KEY (id);


--
-- Name: cofiles_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY cofiles
    ADD CONSTRAINT cofiles_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: compatibles_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY compatibles
    ADD CONSTRAINT compatibles_pkey PRIMARY KEY (id);


--
-- Name: countries_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: course_autocompletes_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY course_autocompletes
    ADD CONSTRAINT course_autocompletes_pkey PRIMARY KEY (id);


--
-- Name: courses_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: databrowsers_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY databrowsers
    ADD CONSTRAINT databrowsers_pkey PRIMARY KEY (id);


--
-- Name: datacompatibles_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datacompatibles
    ADD CONSTRAINT datacompatibles_pkey PRIMARY KEY (id);


--
-- Name: dataincludes_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataincludes
    ADD CONSTRAINT dataincludes_pkey PRIMARY KEY (id);


--
-- Name: dataositems_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataositems
    ADD CONSTRAINT dataositems_pkey PRIMARY KEY (id);


--
-- Name: datasubcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datasubcategories
    ADD CONSTRAINT datasubcategories_pkey PRIMARY KEY (id);


--
-- Name: dependencies_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dependencies
    ADD CONSTRAINT dependencies_pkey PRIMARY KEY (id);


--
-- Name: diasukas_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas
    ADD CONSTRAINT diasukas_pkey PRIMARY KEY (id);


--
-- Name: encodes_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY encodes
    ADD CONSTRAINT encodes_pkey PRIMARY KEY (id);


--
-- Name: follows_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY follows
    ADD CONSTRAINT follows_pkey PRIMARY KEY (id);


--
-- Name: font_autocompletes_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY font_autocompletes
    ADD CONSTRAINT font_autocompletes_pkey PRIMARY KEY (id);


--
-- Name: fontindustries_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY fontindustries
    ADD CONSTRAINT fontindustries_pkey PRIMARY KEY (id);


--
-- Name: fonts_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY fonts
    ADD CONSTRAINT fonts_pkey PRIMARY KEY (id);


--
-- Name: framerates_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY framerates
    ADD CONSTRAINT framerates_pkey PRIMARY KEY (id);


--
-- Name: freeitems_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY freeitems
    ADD CONSTRAINT freeitems_pkey PRIMARY KEY (id);


--
-- Name: freepis_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY freepis
    ADD CONSTRAINT freepis_pkey PRIMARY KEY (id);


--
-- Name: genres_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- Name: geometries_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY geometries
    ADD CONSTRAINT geometries_pkey PRIMARY KEY (id);


--
-- Name: graphic_autocompletes_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY graphic_autocompletes
    ADD CONSTRAINT graphic_autocompletes_pkey PRIMARY KEY (id);


--
-- Name: graphics_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphics
    ADD CONSTRAINT graphics_pkey PRIMARY KEY (id);


--
-- Name: graphindustries_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphindustries
    ADD CONSTRAINT graphindustries_pkey PRIMARY KEY (id);


--
-- Name: headsecs_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY headsecs
    ADD CONSTRAINT headsecs_pkey PRIMARY KEY (id);


--
-- Name: includes_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY includes
    ADD CONSTRAINT includes_pkey PRIMARY KEY (id);


--
-- Name: industries_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY industries
    ADD CONSTRAINT industries_pkey PRIMARY KEY (id);


--
-- Name: languages_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);


--
-- Name: latars_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY latars
    ADD CONSTRAINT latars_pkey PRIMARY KEY (id);


--
-- Name: lectures_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY lectures
    ADD CONSTRAINT lectures_pkey PRIMARY KEY (id);


--
-- Name: line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items
    ADD CONSTRAINT line_items_pkey PRIMARY KEY (id);


--
-- Name: mailboxer_conversation_opt_outs_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_conversation_opt_outs
    ADD CONSTRAINT mailboxer_conversation_opt_outs_pkey PRIMARY KEY (id);


--
-- Name: mailboxer_conversations_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_conversations
    ADD CONSTRAINT mailboxer_conversations_pkey PRIMARY KEY (id);


--
-- Name: mailboxer_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_notifications
    ADD CONSTRAINT mailboxer_notifications_pkey PRIMARY KEY (id);


--
-- Name: mailboxer_receipts_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_receipts
    ADD CONSTRAINT mailboxer_receipts_pkey PRIMARY KEY (id);


--
-- Name: maintoitems_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY maintoitems
    ADD CONSTRAINT maintoitems_pkey PRIMARY KEY (id);


--
-- Name: memos_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY memos
    ADD CONSTRAINT memos_pkey PRIMARY KEY (id);


--
-- Name: messagereviewers_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY messagereviewers
    ADD CONSTRAINT messagereviewers_pkey PRIMARY KEY (id);


--
-- Name: modelsubs_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY modelsubs
    ADD CONSTRAINT modelsubs_pkey PRIMARY KEY (id);


--
-- Name: notes_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);


--
-- Name: notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: ositems_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY ositems
    ADD CONSTRAINT ositems_pkey PRIMARY KEY (id);


--
-- Name: ourstores_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY ourstores
    ADD CONSTRAINT ourstores_pkey PRIMARY KEY (id);


--
-- Name: payment_noties_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY payment_noties
    ADD CONSTRAINT payment_noties_pkey PRIMARY KEY (id);


--
-- Name: reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: revrests_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY revrests
    ADD CONSTRAINT revrests_pkey PRIMARY KEY (id);


--
-- Name: screenshots_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY screenshots
    ADD CONSTRAINT screenshots_pkey PRIMARY KEY (id);


--
-- Name: skills_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: social_networks_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY social_networks
    ADD CONSTRAINT social_networks_pkey PRIMARY KEY (id);


--
-- Name: softopen3ds_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY softopen3ds
    ADD CONSTRAINT softopen3ds_pkey PRIMARY KEY (id);


--
-- Name: softopens_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY softopens
    ADD CONSTRAINT softopens_pkey PRIMARY KEY (id);


--
-- Name: states_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: subcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY subcategories
    ADD CONSTRAINT subcategories_pkey PRIMARY KEY (id);


--
-- Name: t3d_autocompletes_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY t3d_autocompletes
    ADD CONSTRAINT t3d_autocompletes_pkey PRIMARY KEY (id);


--
-- Name: t3ds_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY t3ds
    ADD CONSTRAINT t3ds_pkey PRIMARY KEY (id);


--
-- Name: taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: teams_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: theme_autocompletes_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY theme_autocompletes
    ADD CONSTRAINT theme_autocompletes_pkey PRIMARY KEY (id);


--
-- Name: themes_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY themes
    ADD CONSTRAINT themes_pkey PRIMARY KEY (id);


--
-- Name: toitems_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY toitems
    ADD CONSTRAINT toitems_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vacancies_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY vacancies
    ADD CONSTRAINT vacancies_pkey PRIMARY KEY (id);


--
-- Name: videms_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videms
    ADD CONSTRAINT videms_pkey PRIMARY KEY (id);


--
-- Name: videofx_autocompletes_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY videofx_autocompletes
    ADD CONSTRAINT videofx_autocompletes_pkey PRIMARY KEY (id);


--
-- Name: videofxes_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videofxes
    ADD CONSTRAINT videofxes_pkey PRIMARY KEY (id);


--
-- Name: videorates_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videorates
    ADD CONSTRAINT videorates_pkey PRIMARY KEY (id);


--
-- Name: vidplugs_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY vidplugs
    ADD CONSTRAINT vidplugs_pkey PRIMARY KEY (id);


--
-- Name: vidsubs_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY vidsubs
    ADD CONSTRAINT vidsubs_pkey PRIMARY KEY (id);


--
-- Name: votes_pkey; Type: CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY votes
    ADD CONSTRAINT votes_pkey PRIMARY KEY (id);


--
-- Name: withdrawals_pkey; Type: CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY withdrawals
    ADD CONSTRAINT withdrawals_pkey PRIMARY KEY (id);


--
-- Name: index_akusukas_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_akusukas_on_user_id ON akusukas USING btree (user_id);


--
-- Name: index_allskills_on_skill_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_allskills_on_skill_id ON allskills USING btree (skill_id);


--
-- Name: index_allskills_on_user_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_allskills_on_user_id ON allskills USING btree (user_id);


--
-- Name: index_brokes_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_brokes_on_code_id ON brokes USING btree (code_id);


--
-- Name: index_brokes_on_font_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_brokes_on_font_id ON brokes USING btree (font_id);


--
-- Name: index_brokes_on_graphic_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_brokes_on_graphic_id ON brokes USING btree (graphic_id);


--
-- Name: index_brokes_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_brokes_on_t3d_id ON brokes USING btree (t3d_id);


--
-- Name: index_brokes_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_brokes_on_theme_id ON brokes USING btree (theme_id);


--
-- Name: index_brokes_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_brokes_on_videofx_id ON brokes USING btree (videofx_id);


--
-- Name: index_canopens_on_softopen3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_canopens_on_softopen3d_id ON canopens USING btree (softopen3d_id);


--
-- Name: index_canopens_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_canopens_on_t3d_id ON canopens USING btree (t3d_id);


--
-- Name: index_carts_on_user_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_carts_on_user_id ON carts USING btree (user_id);


--
-- Name: index_categories_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_categories_on_name ON categories USING btree (name);


--
-- Name: index_categories_on_slug; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_categories_on_slug ON categories USING btree (slug);


--
-- Name: index_categorydetails_on_category_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_categorydetails_on_category_id ON categorydetails USING btree (category_id);


--
-- Name: index_categorydetails_on_subcategory_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_categorydetails_on_subcategory_id ON categorydetails USING btree (subcategory_id);


--
-- Name: index_codes_on_agree; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_codes_on_agree ON codes USING btree (agree);


--
-- Name: index_codes_on_category_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_codes_on_category_id ON codes USING btree (category_id);


--
-- Name: index_codes_on_codesub_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_codes_on_codesub_id ON codes USING btree (codesub_id);


--
-- Name: index_codes_on_dependency_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_codes_on_dependency_id ON codes USING btree (dependency_id);


--
-- Name: index_codes_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_codes_on_name ON codes USING btree (name);


--
-- Name: index_codes_on_price; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_codes_on_price ON codes USING btree (price);


--
-- Name: index_codes_on_team_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_codes_on_team_id ON codes USING btree (team_id);


--
-- Name: index_codes_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_codes_on_user_id ON codes USING btree (user_id);


--
-- Name: index_codesubs_on_subcategory_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_codesubs_on_subcategory_id ON codesubs USING btree (subcategory_id);


--
-- Name: index_cofiles_on_course_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_cofiles_on_course_id ON cofiles USING btree (course_id);


--
-- Name: index_comments_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_comments_on_code_id ON comments USING btree (code_id);


--
-- Name: index_comments_on_course_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_comments_on_course_id ON comments USING btree (course_id);


--
-- Name: index_comments_on_font_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_comments_on_font_id ON comments USING btree (font_id);


--
-- Name: index_comments_on_graphic_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_comments_on_graphic_id ON comments USING btree (graphic_id);


--
-- Name: index_comments_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_comments_on_t3d_id ON comments USING btree (t3d_id);


--
-- Name: index_comments_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_comments_on_theme_id ON comments USING btree (theme_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_comments_on_user_id ON comments USING btree (user_id);


--
-- Name: index_comments_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_comments_on_videofx_id ON comments USING btree (videofx_id);


--
-- Name: index_courses_on_agree; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_courses_on_agree ON courses USING btree (agree);


--
-- Name: index_courses_on_category_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_courses_on_category_id ON courses USING btree (category_id);


--
-- Name: index_courses_on_language_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_courses_on_language_id ON courses USING btree (language_id);


--
-- Name: index_courses_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_courses_on_name ON courses USING btree (name);


--
-- Name: index_courses_on_price; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_courses_on_price ON courses USING btree (price);


--
-- Name: index_courses_on_team_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_courses_on_team_id ON courses USING btree (team_id);


--
-- Name: index_courses_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_courses_on_user_id ON courses USING btree (user_id);


--
-- Name: index_databrowsers_on_browser_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_databrowsers_on_browser_id ON databrowsers USING btree (browser_id);


--
-- Name: index_databrowsers_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_databrowsers_on_code_id ON databrowsers USING btree (code_id);


--
-- Name: index_databrowsers_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_databrowsers_on_theme_id ON databrowsers USING btree (theme_id);


--
-- Name: index_datacompatibles_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datacompatibles_on_code_id ON datacompatibles USING btree (code_id);


--
-- Name: index_datacompatibles_on_compatible_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datacompatibles_on_compatible_id ON datacompatibles USING btree (compatible_id);


--
-- Name: index_datacompatibles_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datacompatibles_on_theme_id ON datacompatibles USING btree (theme_id);


--
-- Name: index_dataincludes_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dataincludes_on_code_id ON dataincludes USING btree (code_id);


--
-- Name: index_dataincludes_on_font_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dataincludes_on_font_id ON dataincludes USING btree (font_id);


--
-- Name: index_dataincludes_on_graphic_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dataincludes_on_graphic_id ON dataincludes USING btree (graphic_id);


--
-- Name: index_dataincludes_on_include_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dataincludes_on_include_id ON dataincludes USING btree (include_id);


--
-- Name: index_dataincludes_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dataincludes_on_t3d_id ON dataincludes USING btree (t3d_id);


--
-- Name: index_dataincludes_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dataincludes_on_theme_id ON dataincludes USING btree (theme_id);


--
-- Name: index_dataincludes_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dataincludes_on_videofx_id ON dataincludes USING btree (videofx_id);


--
-- Name: index_dataositems_on_ositem_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dataositems_on_ositem_id ON dataositems USING btree (ositem_id);


--
-- Name: index_dataositems_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dataositems_on_t3d_id ON dataositems USING btree (t3d_id);


--
-- Name: index_datasubcategories_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datasubcategories_on_code_id ON datasubcategories USING btree (code_id);


--
-- Name: index_datasubcategories_on_course_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datasubcategories_on_course_id ON datasubcategories USING btree (course_id);


--
-- Name: index_datasubcategories_on_graphic_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datasubcategories_on_graphic_id ON datasubcategories USING btree (graphic_id);


--
-- Name: index_datasubcategories_on_subcategory_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datasubcategories_on_subcategory_id ON datasubcategories USING btree (subcategory_id);


--
-- Name: index_datasubcategories_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datasubcategories_on_t3d_id ON datasubcategories USING btree (t3d_id);


--
-- Name: index_datasubcategories_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datasubcategories_on_theme_id ON datasubcategories USING btree (theme_id);


--
-- Name: index_datasubcategories_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_datasubcategories_on_videofx_id ON datasubcategories USING btree (videofx_id);


--
-- Name: index_dependencies_on_category_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_dependencies_on_category_id ON dependencies USING btree (category_id);


--
-- Name: index_diasukas_on_akusuka_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_diasukas_on_akusuka_id ON diasukas USING btree (akusuka_id);


--
-- Name: index_diasukas_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_diasukas_on_code_id ON diasukas USING btree (code_id);


--
-- Name: index_diasukas_on_course_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_diasukas_on_course_id ON diasukas USING btree (course_id);


--
-- Name: index_diasukas_on_font_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_diasukas_on_font_id ON diasukas USING btree (font_id);


--
-- Name: index_diasukas_on_graphic_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_diasukas_on_graphic_id ON diasukas USING btree (graphic_id);


--
-- Name: index_diasukas_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_diasukas_on_t3d_id ON diasukas USING btree (t3d_id);


--
-- Name: index_diasukas_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_diasukas_on_theme_id ON diasukas USING btree (theme_id);


--
-- Name: index_diasukas_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_diasukas_on_videofx_id ON diasukas USING btree (videofx_id);


--
-- Name: index_follows_on_follower_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_follows_on_follower_id ON follows USING btree (follower_id);


--
-- Name: index_follows_on_following_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_follows_on_following_id ON follows USING btree (following_id);


--
-- Name: index_follows_on_following_id_and_follower_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE UNIQUE INDEX index_follows_on_following_id_and_follower_id ON follows USING btree (following_id, follower_id);


--
-- Name: index_fontindustries_on_font_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_fontindustries_on_font_id ON fontindustries USING btree (font_id);


--
-- Name: index_fontindustries_on_industry_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_fontindustries_on_industry_id ON fontindustries USING btree (industry_id);


--
-- Name: index_fonts_on_agree; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_fonts_on_agree ON fonts USING btree (agree);


--
-- Name: index_fonts_on_category_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_fonts_on_category_id ON fonts USING btree (category_id);


--
-- Name: index_fonts_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_fonts_on_name ON fonts USING btree (name);


--
-- Name: index_fonts_on_price; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_fonts_on_price ON fonts USING btree (price);


--
-- Name: index_fonts_on_team_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_fonts_on_team_id ON fonts USING btree (team_id);


--
-- Name: index_fonts_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_fonts_on_user_id ON fonts USING btree (user_id);


--
-- Name: index_freeitems_on_code_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_freeitems_on_code_id ON freeitems USING btree (code_id);


--
-- Name: index_freeitems_on_course_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_freeitems_on_course_id ON freeitems USING btree (course_id);


--
-- Name: index_freeitems_on_font_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_freeitems_on_font_id ON freeitems USING btree (font_id);


--
-- Name: index_freeitems_on_graphic_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_freeitems_on_graphic_id ON freeitems USING btree (graphic_id);


--
-- Name: index_freeitems_on_t3d_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_freeitems_on_t3d_id ON freeitems USING btree (t3d_id);


--
-- Name: index_freeitems_on_theme_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_freeitems_on_theme_id ON freeitems USING btree (theme_id);


--
-- Name: index_freeitems_on_videofx_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_freeitems_on_videofx_id ON freeitems USING btree (videofx_id);


--
-- Name: index_freepis_on_course_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_freepis_on_course_id ON freepis USING btree (course_id);


--
-- Name: index_graphics_on_agree; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_graphics_on_agree ON graphics USING btree (agree);


--
-- Name: index_graphics_on_category_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_graphics_on_category_id ON graphics USING btree (category_id);


--
-- Name: index_graphics_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_graphics_on_name ON graphics USING btree (name);


--
-- Name: index_graphics_on_price; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_graphics_on_price ON graphics USING btree (price);


--
-- Name: index_graphics_on_softopen_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_graphics_on_softopen_id ON graphics USING btree (softopen_id);


--
-- Name: index_graphics_on_team_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_graphics_on_team_id ON graphics USING btree (team_id);


--
-- Name: index_graphics_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_graphics_on_user_id ON graphics USING btree (user_id);


--
-- Name: index_graphindustries_on_graphic_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_graphindustries_on_graphic_id ON graphindustries USING btree (graphic_id);


--
-- Name: index_graphindustries_on_industry_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_graphindustries_on_industry_id ON graphindustries USING btree (industry_id);


--
-- Name: index_headsecs_on_course_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_headsecs_on_course_id ON headsecs USING btree (course_id);


--
-- Name: index_lectures_on_headsec_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_lectures_on_headsec_id ON lectures USING btree (headsec_id);


--
-- Name: index_line_items_on_cart_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_line_items_on_cart_id ON line_items USING btree (cart_id);


--
-- Name: index_line_items_on_code_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_line_items_on_code_id ON line_items USING btree (code_id);


--
-- Name: index_line_items_on_course_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_line_items_on_course_id ON line_items USING btree (course_id);


--
-- Name: index_line_items_on_font_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_line_items_on_font_id ON line_items USING btree (font_id);


--
-- Name: index_line_items_on_graphic_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_line_items_on_graphic_id ON line_items USING btree (graphic_id);


--
-- Name: index_line_items_on_t3d_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_line_items_on_t3d_id ON line_items USING btree (t3d_id);


--
-- Name: index_line_items_on_theme_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_line_items_on_theme_id ON line_items USING btree (theme_id);


--
-- Name: index_line_items_on_videofx_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_line_items_on_videofx_id ON line_items USING btree (videofx_id);


--
-- Name: index_mailboxer_conversation_opt_outs_on_conversation_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_mailboxer_conversation_opt_outs_on_conversation_id ON mailboxer_conversation_opt_outs USING btree (conversation_id);


--
-- Name: index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type ON mailboxer_conversation_opt_outs USING btree (unsubscriber_id, unsubscriber_type);


--
-- Name: index_mailboxer_notifications_on_conversation_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_mailboxer_notifications_on_conversation_id ON mailboxer_notifications USING btree (conversation_id);


--
-- Name: index_mailboxer_notifications_on_notified_object_id_and_type; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_mailboxer_notifications_on_notified_object_id_and_type ON mailboxer_notifications USING btree (notified_object_id, notified_object_type);


--
-- Name: index_mailboxer_notifications_on_sender_id_and_sender_type; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_mailboxer_notifications_on_sender_id_and_sender_type ON mailboxer_notifications USING btree (sender_id, sender_type);


--
-- Name: index_mailboxer_notifications_on_type; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_mailboxer_notifications_on_type ON mailboxer_notifications USING btree (type);


--
-- Name: index_mailboxer_receipts_on_notification_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_mailboxer_receipts_on_notification_id ON mailboxer_receipts USING btree (notification_id);


--
-- Name: index_mailboxer_receipts_on_receiver_id_and_receiver_type; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_mailboxer_receipts_on_receiver_id_and_receiver_type ON mailboxer_receipts USING btree (receiver_id, receiver_type);


--
-- Name: index_maintoitems_on_include_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_maintoitems_on_include_id ON maintoitems USING btree (include_id);


--
-- Name: index_maintoitems_on_toitem_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_maintoitems_on_toitem_id ON maintoitems USING btree (toitem_id);


--
-- Name: index_memos_on_note_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_memos_on_note_id ON memos USING btree (note_id);


--
-- Name: index_messagereviewers_on_team_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_messagereviewers_on_team_id ON messagereviewers USING btree (team_id);


--
-- Name: index_messagereviewers_on_user_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_messagereviewers_on_user_id ON messagereviewers USING btree (user_id);


--
-- Name: index_modelsubs_on_subcategory_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_modelsubs_on_subcategory_id ON modelsubs USING btree (subcategory_id);


--
-- Name: index_notes_on_team_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_notes_on_team_id ON notes USING btree (team_id);


--
-- Name: index_notes_on_user_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_notes_on_user_id ON notes USING btree (user_id);


--
-- Name: index_notifications_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_code_id ON notifications USING btree (code_id);


--
-- Name: index_notifications_on_course_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_course_id ON notifications USING btree (course_id);


--
-- Name: index_notifications_on_font_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_font_id ON notifications USING btree (font_id);


--
-- Name: index_notifications_on_graphic_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_graphic_id ON notifications USING btree (graphic_id);


--
-- Name: index_notifications_on_line_item_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_line_item_id ON notifications USING btree (line_item_id);


--
-- Name: index_notifications_on_notified_by_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_notified_by_id ON notifications USING btree (notified_by_id);


--
-- Name: index_notifications_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_t3d_id ON notifications USING btree (t3d_id);


--
-- Name: index_notifications_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_theme_id ON notifications USING btree (theme_id);


--
-- Name: index_notifications_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_user_id ON notifications USING btree (user_id);


--
-- Name: index_notifications_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_notifications_on_videofx_id ON notifications USING btree (videofx_id);


--
-- Name: index_ourstores_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_ourstores_on_user_id ON ourstores USING btree (user_id);


--
-- Name: index_payment_noties_on_cart_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_payment_noties_on_cart_id ON payment_noties USING btree (cart_id);


--
-- Name: index_reviews_on_code_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_reviews_on_code_id ON reviews USING btree (code_id);


--
-- Name: index_reviews_on_course_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_reviews_on_course_id ON reviews USING btree (course_id);


--
-- Name: index_reviews_on_font_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_reviews_on_font_id ON reviews USING btree (font_id);


--
-- Name: index_reviews_on_graphic_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_reviews_on_graphic_id ON reviews USING btree (graphic_id);


--
-- Name: index_reviews_on_t3d_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_reviews_on_t3d_id ON reviews USING btree (t3d_id);


--
-- Name: index_reviews_on_theme_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_reviews_on_theme_id ON reviews USING btree (theme_id);


--
-- Name: index_reviews_on_user_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_reviews_on_user_id ON reviews USING btree (user_id);


--
-- Name: index_reviews_on_videofx_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_reviews_on_videofx_id ON reviews USING btree (videofx_id);


--
-- Name: index_revrests_on_code_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_revrests_on_code_id ON revrests USING btree (code_id);


--
-- Name: index_revrests_on_course_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_revrests_on_course_id ON revrests USING btree (course_id);


--
-- Name: index_revrests_on_font_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_revrests_on_font_id ON revrests USING btree (font_id);


--
-- Name: index_revrests_on_graphic_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_revrests_on_graphic_id ON revrests USING btree (graphic_id);


--
-- Name: index_revrests_on_t3d_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_revrests_on_t3d_id ON revrests USING btree (t3d_id);


--
-- Name: index_revrests_on_theme_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_revrests_on_theme_id ON revrests USING btree (theme_id);


--
-- Name: index_revrests_on_videofx_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_revrests_on_videofx_id ON revrests USING btree (videofx_id);


--
-- Name: index_screenshots_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_screenshots_on_code_id ON screenshots USING btree (code_id);


--
-- Name: index_screenshots_on_font_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_screenshots_on_font_id ON screenshots USING btree (font_id);


--
-- Name: index_screenshots_on_graphic_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_screenshots_on_graphic_id ON screenshots USING btree (graphic_id);


--
-- Name: index_screenshots_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_screenshots_on_t3d_id ON screenshots USING btree (t3d_id);


--
-- Name: index_screenshots_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_screenshots_on_theme_id ON screenshots USING btree (theme_id);


--
-- Name: index_screenshots_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_screenshots_on_videofx_id ON screenshots USING btree (videofx_id);


--
-- Name: index_social_networks_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_social_networks_on_user_id ON social_networks USING btree (user_id);


--
-- Name: index_states_on_country_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_states_on_country_id ON states USING btree (country_id);


--
-- Name: index_subcategories_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_subcategories_on_name ON subcategories USING btree (name);


--
-- Name: index_t3ds_on_agree; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_t3ds_on_agree ON t3ds USING btree (agree);


--
-- Name: index_t3ds_on_category_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_t3ds_on_category_id ON t3ds USING btree (category_id);


--
-- Name: index_t3ds_on_genre_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_t3ds_on_genre_id ON t3ds USING btree (genre_id);


--
-- Name: index_t3ds_on_geometry_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_t3ds_on_geometry_id ON t3ds USING btree (geometry_id);


--
-- Name: index_t3ds_on_modelsub_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_t3ds_on_modelsub_id ON t3ds USING btree (modelsub_id);


--
-- Name: index_t3ds_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_t3ds_on_name ON t3ds USING btree (name);


--
-- Name: index_t3ds_on_price; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_t3ds_on_price ON t3ds USING btree (price);


--
-- Name: index_t3ds_on_team_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_t3ds_on_team_id ON t3ds USING btree (team_id);


--
-- Name: index_t3ds_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_t3ds_on_user_id ON t3ds USING btree (user_id);


--
-- Name: index_taggings_on_code_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_taggings_on_code_id ON taggings USING btree (code_id);


--
-- Name: index_taggings_on_course_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_taggings_on_course_id ON taggings USING btree (course_id);


--
-- Name: index_taggings_on_font_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_taggings_on_font_id ON taggings USING btree (font_id);


--
-- Name: index_taggings_on_graphic_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_taggings_on_graphic_id ON taggings USING btree (graphic_id);


--
-- Name: index_taggings_on_t3d_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_taggings_on_t3d_id ON taggings USING btree (t3d_id);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_taggings_on_tag_id ON taggings USING btree (tag_id);


--
-- Name: index_taggings_on_theme_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_taggings_on_theme_id ON taggings USING btree (theme_id);


--
-- Name: index_taggings_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_taggings_on_videofx_id ON taggings USING btree (videofx_id);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_tags_on_name ON tags USING btree (name);


--
-- Name: index_themes_on_aggree; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_themes_on_aggree ON themes USING btree (aggree);


--
-- Name: index_themes_on_category_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_themes_on_category_id ON themes USING btree (category_id);


--
-- Name: index_themes_on_dependency_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_themes_on_dependency_id ON themes USING btree (dependency_id);


--
-- Name: index_themes_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_themes_on_name ON themes USING btree (name);


--
-- Name: index_themes_on_price; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_themes_on_price ON themes USING btree (price);


--
-- Name: index_themes_on_slug; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_themes_on_slug ON themes USING btree (slug);


--
-- Name: index_themes_on_team_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_themes_on_team_id ON themes USING btree (team_id);


--
-- Name: index_themes_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_themes_on_user_id ON themes USING btree (user_id);


--
-- Name: index_users_on_team_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_users_on_team_id ON users USING btree (team_id);


--
-- Name: index_vacancies_on_category_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_vacancies_on_category_id ON vacancies USING btree (category_id);


--
-- Name: index_vacancies_on_country_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_vacancies_on_country_id ON vacancies USING btree (country_id);


--
-- Name: index_vacancies_on_state_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_vacancies_on_state_id ON vacancies USING btree (state_id);


--
-- Name: index_vacancies_on_user_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_vacancies_on_user_id ON vacancies USING btree (user_id);


--
-- Name: index_videms_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videms_on_videofx_id ON videms USING btree (videofx_id);


--
-- Name: index_videofxes_on_agree; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_agree ON videofxes USING btree (agree);


--
-- Name: index_videofxes_on_category_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_category_id ON videofxes USING btree (category_id);


--
-- Name: index_videofxes_on_encode_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_encode_id ON videofxes USING btree (encode_id);


--
-- Name: index_videofxes_on_latar_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_latar_id ON videofxes USING btree (latar_id);


--
-- Name: index_videofxes_on_name; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_name ON videofxes USING btree (name);


--
-- Name: index_videofxes_on_price; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_price ON videofxes USING btree (price);


--
-- Name: index_videofxes_on_softopen_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_softopen_id ON videofxes USING btree (softopen_id);


--
-- Name: index_videofxes_on_team_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_team_id ON videofxes USING btree (team_id);


--
-- Name: index_videofxes_on_user_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_user_id ON videofxes USING btree (user_id);


--
-- Name: index_videofxes_on_vidsub_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videofxes_on_vidsub_id ON videofxes USING btree (vidsub_id);


--
-- Name: index_videorates_on_framerate_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videorates_on_framerate_id ON videorates USING btree (framerate_id);


--
-- Name: index_videorates_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_videorates_on_videofx_id ON videorates USING btree (videofx_id);


--
-- Name: index_vidplugs_on_aeplugin_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_vidplugs_on_aeplugin_id ON vidplugs USING btree (aeplugin_id);


--
-- Name: index_vidplugs_on_videofx_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_vidplugs_on_videofx_id ON vidplugs USING btree (videofx_id);


--
-- Name: index_vidsubs_on_subcategory_id; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_vidsubs_on_subcategory_id ON vidsubs USING btree (subcategory_id);


--
-- Name: index_votes_on_votable_id_and_votable_type_and_vote_scope; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_votes_on_votable_id_and_votable_type_and_vote_scope ON votes USING btree (votable_id, votable_type, vote_scope);


--
-- Name: index_votes_on_voter_id_and_voter_type_and_vote_scope; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE INDEX index_votes_on_voter_id_and_voter_type_and_vote_scope ON votes USING btree (voter_id, voter_type, vote_scope);


--
-- Name: index_withdrawals_on_user_id; Type: INDEX; Schema: public; Owner: khapoo
--

CREATE INDEX index_withdrawals_on_user_id ON withdrawals USING btree (user_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: sixarts
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_0191938fcf; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphindustries
    ADD CONSTRAINT fk_rails_0191938fcf FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_01b010885e; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_01b010885e FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_024ba0b8ac; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT fk_rails_024ba0b8ac FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_04002ad27e; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY vacancies
    ADD CONSTRAINT fk_rails_04002ad27e FOREIGN KEY (country_id) REFERENCES countries(id);


--
-- Name: fk_rails_075adf8f88; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY freeitems
    ADD CONSTRAINT fk_rails_075adf8f88 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_07c5a430ec; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datasubcategories
    ADD CONSTRAINT fk_rails_07c5a430ec FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_08b52fcdfc; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videofxes
    ADD CONSTRAINT fk_rails_08b52fcdfc FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_0a0f608ab7; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videofxes
    ADD CONSTRAINT fk_rails_0a0f608ab7 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_0a2f65417f; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY fonts
    ADD CONSTRAINT fk_rails_0a2f65417f FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_0b1023a160; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY payment_noties
    ADD CONSTRAINT fk_rails_0b1023a160 FOREIGN KEY (cart_id) REFERENCES carts(id);


--
-- Name: fk_rails_0d09604739; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_0d09604739 FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_0f5f8cf0b9; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY courses
    ADD CONSTRAINT fk_rails_0f5f8cf0b9 FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_0fc1aeb9f6; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_0fc1aeb9f6 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_10b3e8bb67; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datasubcategories
    ADD CONSTRAINT fk_rails_10b3e8bb67 FOREIGN KEY (subcategory_id) REFERENCES subcategories(id);


--
-- Name: fk_rails_14b99d0f40; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datasubcategories
    ADD CONSTRAINT fk_rails_14b99d0f40 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_17ada52b0c; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY cofiles
    ADD CONSTRAINT fk_rails_17ada52b0c FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_19b7445cc2; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY maintoitems
    ADD CONSTRAINT fk_rails_19b7445cc2 FOREIGN KEY (toitem_id) REFERENCES toitems(id);


--
-- Name: fk_rails_1ad1bbe0ec; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataincludes
    ADD CONSTRAINT fk_rails_1ad1bbe0ec FOREIGN KEY (include_id) REFERENCES includes(id);


--
-- Name: fk_rails_1b05f4be5a; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY headsecs
    ADD CONSTRAINT fk_rails_1b05f4be5a FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_1b9181e9ce; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas
    ADD CONSTRAINT fk_rails_1b9181e9ce FOREIGN KEY (akusuka_id) REFERENCES akusukas(id);


--
-- Name: fk_rails_1bad410905; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY vidplugs
    ADD CONSTRAINT fk_rails_1bad410905 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_1cec163016; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphics
    ADD CONSTRAINT fk_rails_1cec163016 FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_2141622173; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datasubcategories
    ADD CONSTRAINT fk_rails_2141622173 FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_228043c544; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY t3ds
    ADD CONSTRAINT fk_rails_228043c544 FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_22ce7c7136; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY screenshots
    ADD CONSTRAINT fk_rails_22ce7c7136 FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_2312547c18; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datacompatibles
    ADD CONSTRAINT fk_rails_2312547c18 FOREIGN KEY (compatible_id) REFERENCES compatibles(id);


--
-- Name: fk_rails_23c2a5ff1d; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_23c2a5ff1d FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_24a45d61f6; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY fonts
    ADD CONSTRAINT fk_rails_24a45d61f6 FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_24cc635ab6; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY revrests
    ADD CONSTRAINT fk_rails_24cc635ab6 FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_250fe8d911; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataositems
    ADD CONSTRAINT fk_rails_250fe8d911 FOREIGN KEY (ositem_id) REFERENCES ositems(id);


--
-- Name: fk_rails_266c24b325; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY screenshots
    ADD CONSTRAINT fk_rails_266c24b325 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_2817d69a4b; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_2817d69a4b FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_2867910694; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codes
    ADD CONSTRAINT fk_rails_2867910694 FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_28a610e47e; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY vacancies
    ADD CONSTRAINT fk_rails_28a610e47e FOREIGN KEY (state_id) REFERENCES states(id);


--
-- Name: fk_rails_29c0c1342a; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY revrests
    ADD CONSTRAINT fk_rails_29c0c1342a FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_2be2394d37; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas
    ADD CONSTRAINT fk_rails_2be2394d37 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_2f7390ab43; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_2f7390ab43 FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_3035832253; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT fk_rails_3035832253 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_31a18b0550; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY revrests
    ADD CONSTRAINT fk_rails_31a18b0550 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_328ad8e5a2; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_328ad8e5a2 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_37e6ea894c; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY revrests
    ADD CONSTRAINT fk_rails_37e6ea894c FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_3b231a3364; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_3b231a3364 FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_3c4fd60115; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY messagereviewers
    ADD CONSTRAINT fk_rails_3c4fd60115 FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_3d6ea244f3; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codes
    ADD CONSTRAINT fk_rails_3d6ea244f3 FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_3d9222ee2e; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY freeitems
    ADD CONSTRAINT fk_rails_3d9222ee2e FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_3d9ddc81e6; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codes
    ADD CONSTRAINT fk_rails_3d9ddc81e6 FOREIGN KEY (codesub_id) REFERENCES codesubs(id);


--
-- Name: fk_rails_3f16a57f1e; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY memos
    ADD CONSTRAINT fk_rails_3f16a57f1e FOREIGN KEY (note_id) REFERENCES notes(id);


--
-- Name: fk_rails_403705ad7a; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_403705ad7a FOREIGN KEY (line_item_id) REFERENCES line_items(id);


--
-- Name: fk_rails_40bd891262; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY states
    ADD CONSTRAINT fk_rails_40bd891262 FOREIGN KEY (country_id) REFERENCES countries(id);


--
-- Name: fk_rails_4255048635; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY brokes
    ADD CONSTRAINT fk_rails_4255048635 FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_49de484d83; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videofxes
    ADD CONSTRAINT fk_rails_49de484d83 FOREIGN KEY (encode_id) REFERENCES encodes(id);


--
-- Name: fk_rails_4d5c6c4e07; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY freeitems
    ADD CONSTRAINT fk_rails_4d5c6c4e07 FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_4ecf169bc4; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY canopens
    ADD CONSTRAINT fk_rails_4ecf169bc4 FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_50b0f401f6; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY fontindustries
    ADD CONSTRAINT fk_rails_50b0f401f6 FOREIGN KEY (industry_id) REFERENCES industries(id);


--
-- Name: fk_rails_5702a25cb3; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY vidplugs
    ADD CONSTRAINT fk_rails_5702a25cb3 FOREIGN KEY (aeplugin_id) REFERENCES aeplugins(id);


--
-- Name: fk_rails_5ad4a8219f; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY messagereviewers
    ADD CONSTRAINT fk_rails_5ad4a8219f FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_5f9007f038; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphics
    ADD CONSTRAINT fk_rails_5f9007f038 FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_6148f29f93; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dependencies
    ADD CONSTRAINT fk_rails_6148f29f93 FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_61dcd15b19; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY maintoitems
    ADD CONSTRAINT fk_rails_61dcd15b19 FOREIGN KEY (include_id) REFERENCES includes(id);


--
-- Name: fk_rails_61e9861001; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT fk_rails_61e9861001 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_62061a2463; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY freeitems
    ADD CONSTRAINT fk_rails_62061a2463 FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_666a6a6750; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY themes
    ADD CONSTRAINT fk_rails_666a6a6750 FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_66a45938da; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items
    ADD CONSTRAINT fk_rails_66a45938da FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_68a240fc40; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY ourstores
    ADD CONSTRAINT fk_rails_68a240fc40 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_694f8848ed; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphics
    ADD CONSTRAINT fk_rails_694f8848ed FOREIGN KEY (softopen_id) REFERENCES softopens(id);


--
-- Name: fk_rails_69dfc34125; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT fk_rails_69dfc34125 FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_6a1dd7e56c; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items
    ADD CONSTRAINT fk_rails_6a1dd7e56c FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_6a86f08e98; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY t3ds
    ADD CONSTRAINT fk_rails_6a86f08e98 FOREIGN KEY (genre_id) REFERENCES genres(id);


--
-- Name: fk_rails_6db85e107c; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items
    ADD CONSTRAINT fk_rails_6db85e107c FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_6e40dcde17; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datacompatibles
    ADD CONSTRAINT fk_rails_6e40dcde17 FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_6e71379a44; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY brokes
    ADD CONSTRAINT fk_rails_6e71379a44 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_7063f96d11; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videms
    ADD CONSTRAINT fk_rails_7063f96d11 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_72ea53e78d; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datacompatibles
    ADD CONSTRAINT fk_rails_72ea53e78d FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_7337acbb43; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_7337acbb43 FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_738dce6a54; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY categorydetails
    ADD CONSTRAINT fk_rails_738dce6a54 FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_74a66bd6c5; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_74a66bd6c5 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_75e44d8e7b; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY withdrawals
    ADD CONSTRAINT fk_rails_75e44d8e7b FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_7682d2d387; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY vidsubs
    ADD CONSTRAINT fk_rails_7682d2d387 FOREIGN KEY (subcategory_id) REFERENCES subcategories(id);


--
-- Name: fk_rails_76ee255441; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datasubcategories
    ADD CONSTRAINT fk_rails_76ee255441 FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_78f8fb8ac7; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_78f8fb8ac7 FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_79cd76ac50; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY brokes
    ADD CONSTRAINT fk_rails_79cd76ac50 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_7f2323ad43; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT fk_rails_7f2323ad43 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_821635c19a; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY databrowsers
    ADD CONSTRAINT fk_rails_821635c19a FOREIGN KEY (browser_id) REFERENCES browsers(id);


--
-- Name: fk_rails_82169b35ca; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT fk_rails_82169b35ca FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_829fcc9a14; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_829fcc9a14 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_85ef00e693; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videofxes
    ADD CONSTRAINT fk_rails_85ef00e693 FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_8606a2e349; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY brokes
    ADD CONSTRAINT fk_rails_8606a2e349 FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_86776a21c7; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY databrowsers
    ADD CONSTRAINT fk_rails_86776a21c7 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_878e3cf5d3; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY revrests
    ADD CONSTRAINT fk_rails_878e3cf5d3 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_87ea048014; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codes
    ADD CONSTRAINT fk_rails_87ea048014 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_8907078fb8; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY akusukas
    ADD CONSTRAINT fk_rails_8907078fb8 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_8a96f5f242; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas
    ADD CONSTRAINT fk_rails_8a96f5f242 FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_8b726bf118; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY t3ds
    ADD CONSTRAINT fk_rails_8b726bf118 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_8bafc4397f; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataincludes
    ADD CONSTRAINT fk_rails_8bafc4397f FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_90ace0c49e; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY lectures
    ADD CONSTRAINT fk_rails_90ace0c49e FOREIGN KEY (headsec_id) REFERENCES headsecs(id);


--
-- Name: fk_rails_9220f74a6a; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY freepis
    ADD CONSTRAINT fk_rails_9220f74a6a FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_92a1aafea5; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT fk_rails_92a1aafea5 FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_94e464055d; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas
    ADD CONSTRAINT fk_rails_94e464055d FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_97233344c4; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY freeitems
    ADD CONSTRAINT fk_rails_97233344c4 FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_98380aad46; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY modelsubs
    ADD CONSTRAINT fk_rails_98380aad46 FOREIGN KEY (subcategory_id) REFERENCES subcategories(id);


--
-- Name: fk_rails_9921109a21; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_9921109a21 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_99da2dd6c1; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY screenshots
    ADD CONSTRAINT fk_rails_99da2dd6c1 FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_9d5459f37c; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataincludes
    ADD CONSTRAINT fk_rails_9d5459f37c FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_9e71fc0d83; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataincludes
    ADD CONSTRAINT fk_rails_9e71fc0d83 FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_9fcd2e236b; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT fk_rails_9fcd2e236b FOREIGN KEY (tag_id) REFERENCES tags(id);


--
-- Name: fk_rails_a0d9cd8fec; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videorates
    ADD CONSTRAINT fk_rails_a0d9cd8fec FOREIGN KEY (framerate_id) REFERENCES framerates(id);


--
-- Name: fk_rails_a2b041b7b0; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY themes
    ADD CONSTRAINT fk_rails_a2b041b7b0 FOREIGN KEY (dependency_id) REFERENCES dependencies(id);


--
-- Name: fk_rails_a2f4a98bbb; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY t3ds
    ADD CONSTRAINT fk_rails_a2f4a98bbb FOREIGN KEY (geometry_id) REFERENCES geometries(id);


--
-- Name: fk_rails_a4176b581e; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas
    ADD CONSTRAINT fk_rails_a4176b581e FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_a472a4c49c; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_a472a4c49c FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_a5f46b6f08; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY screenshots
    ADD CONSTRAINT fk_rails_a5f46b6f08 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_a82f605505; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datasubcategories
    ADD CONSTRAINT fk_rails_a82f605505 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_a836c2e09b; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videofxes
    ADD CONSTRAINT fk_rails_a836c2e09b FOREIGN KEY (latar_id) REFERENCES latars(id);


--
-- Name: fk_rails_a8710a5b70; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codes
    ADD CONSTRAINT fk_rails_a8710a5b70 FOREIGN KEY (dependency_id) REFERENCES dependencies(id);


--
-- Name: fk_rails_a99b8197f0; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videofxes
    ADD CONSTRAINT fk_rails_a99b8197f0 FOREIGN KEY (softopen_id) REFERENCES softopens(id);


--
-- Name: fk_rails_a9b9535142; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY vacancies
    ADD CONSTRAINT fk_rails_a9b9535142 FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_aa264fcdf6; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY allskills
    ADD CONSTRAINT fk_rails_aa264fcdf6 FOREIGN KEY (skill_id) REFERENCES skills(id);


--
-- Name: fk_rails_aacbc034a8; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items
    ADD CONSTRAINT fk_rails_aacbc034a8 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_aaf6241109; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY social_networks
    ADD CONSTRAINT fk_rails_aaf6241109 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_abd0c7217c; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY canopens
    ADD CONSTRAINT fk_rails_abd0c7217c FOREIGN KEY (softopen3d_id) REFERENCES softopen3ds(id);


--
-- Name: fk_rails_af645e8e5f; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items
    ADD CONSTRAINT fk_rails_af645e8e5f FOREIGN KEY (cart_id) REFERENCES carts(id);


--
-- Name: fk_rails_b080fb4855; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_b080fb4855 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_b2bbf87303; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY users
    ADD CONSTRAINT fk_rails_b2bbf87303 FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_b3c61f05ef; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY courses
    ADD CONSTRAINT fk_rails_b3c61f05ef FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_b7ca3c41a9; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY brokes
    ADD CONSTRAINT fk_rails_b7ca3c41a9 FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_b924fa5dac; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY themes
    ADD CONSTRAINT fk_rails_b924fa5dac FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_bb064bd7cd; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items
    ADD CONSTRAINT fk_rails_bb064bd7cd FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_bd337f099d; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas
    ADD CONSTRAINT fk_rails_bd337f099d FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_bf251f1678; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items
    ADD CONSTRAINT fk_rails_bf251f1678 FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_c12c347880; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY categorydetails
    ADD CONSTRAINT fk_rails_c12c347880 FOREIGN KEY (subcategory_id) REFERENCES subcategories(id);


--
-- Name: fk_rails_c254ebc795; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_c254ebc795 FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_c2a52c7924; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_c2a52c7924 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_c5495c8f19; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videofxes
    ADD CONSTRAINT fk_rails_c5495c8f19 FOREIGN KEY (vidsub_id) REFERENCES vidsubs(id);


--
-- Name: fk_rails_c59dcd6bc5; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY t3ds
    ADD CONSTRAINT fk_rails_c59dcd6bc5 FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_c61eb53ad9; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT fk_rails_c61eb53ad9 FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_c87b59327d; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY t3ds
    ADD CONSTRAINT fk_rails_c87b59327d FOREIGN KEY (modelsub_id) REFERENCES modelsubs(id);


--
-- Name: fk_rails_c88914d579; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY brokes
    ADD CONSTRAINT fk_rails_c88914d579 FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_c8cfb0292c; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY screenshots
    ADD CONSTRAINT fk_rails_c8cfb0292c FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_c8f5d50e90; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY freeitems
    ADD CONSTRAINT fk_rails_c8f5d50e90 FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_cb5582d97e; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY courses
    ADD CONSTRAINT fk_rails_cb5582d97e FOREIGN KEY (language_id) REFERENCES languages(id);


--
-- Name: fk_rails_cc634cc243; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas
    ADD CONSTRAINT fk_rails_cc634cc243 FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_cfcc12f13d; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataincludes
    ADD CONSTRAINT fk_rails_cfcc12f13d FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_d0f578074a; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_d0f578074a FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_d11a331aa5; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY datasubcategories
    ADD CONSTRAINT fk_rails_d11a331aa5 FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_d298fbe5f0; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY screenshots
    ADD CONSTRAINT fk_rails_d298fbe5f0 FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_d36119b9dc; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_d36119b9dc FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_d4e22597bc; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataincludes
    ADD CONSTRAINT fk_rails_d4e22597bc FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_d9568ea2a0; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataincludes
    ADD CONSTRAINT fk_rails_d9568ea2a0 FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_da23b334bf; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_da23b334bf FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_e04683b44b; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY fontindustries
    ADD CONSTRAINT fk_rails_e04683b44b FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_e072dca946; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY courses
    ADD CONSTRAINT fk_rails_e072dca946 FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_e0c18abf07; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY revrests
    ADD CONSTRAINT fk_rails_e0c18abf07 FOREIGN KEY (course_id) REFERENCES courses(id);


--
-- Name: fk_rails_e1c54aab68; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_e1c54aab68 FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_e1eabe5d7b; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY themes
    ADD CONSTRAINT fk_rails_e1eabe5d7b FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: fk_rails_e28f4277a7; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY databrowsers
    ADD CONSTRAINT fk_rails_e28f4277a7 FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_e6dab3fd70; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphindustries
    ADD CONSTRAINT fk_rails_e6dab3fd70 FOREIGN KEY (industry_id) REFERENCES industries(id);


--
-- Name: fk_rails_e79e0c06e7; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT fk_rails_e79e0c06e7 FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_e98e4c98dd; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY vacancies
    ADD CONSTRAINT fk_rails_e98e4c98dd FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_ea59a35211; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY carts
    ADD CONSTRAINT fk_rails_ea59a35211 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_ea60ea899e; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY graphics
    ADD CONSTRAINT fk_rails_ea60ea899e FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_ea838fe7af; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY fonts
    ADD CONSTRAINT fk_rails_ea838fe7af FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: fk_rails_ebb4b5dc1c; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY videorates
    ADD CONSTRAINT fk_rails_ebb4b5dc1c FOREIGN KEY (videofx_id) REFERENCES videofxes(id);


--
-- Name: fk_rails_ed285f7382; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY allskills
    ADD CONSTRAINT fk_rails_ed285f7382 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_ee79efc3eb; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_ee79efc3eb FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_f2960324fd; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY freeitems
    ADD CONSTRAINT fk_rails_f2960324fd FOREIGN KEY (theme_id) REFERENCES themes(id);


--
-- Name: fk_rails_f465112ddc; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY revrests
    ADD CONSTRAINT fk_rails_f465112ddc FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_f58e1435cb; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY diasukas
    ADD CONSTRAINT fk_rails_f58e1435cb FOREIGN KEY (graphic_id) REFERENCES graphics(id);


--
-- Name: fk_rails_f87bd28b1e; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY line_items
    ADD CONSTRAINT fk_rails_f87bd28b1e FOREIGN KEY (code_id) REFERENCES codes(id);


--
-- Name: fk_rails_fab654c9e1; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY dataositems
    ADD CONSTRAINT fk_rails_fab654c9e1 FOREIGN KEY (t3d_id) REFERENCES t3ds(id);


--
-- Name: fk_rails_fe6295fa9e; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_fe6295fa9e FOREIGN KEY (font_id) REFERENCES fonts(id);


--
-- Name: fk_rails_ff009aac1a; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_ff009aac1a FOREIGN KEY (notified_by_id) REFERENCES users(id);


--
-- Name: fk_rails_ff5daba190; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY codesubs
    ADD CONSTRAINT fk_rails_ff5daba190 FOREIGN KEY (subcategory_id) REFERENCES subcategories(id);


--
-- Name: fk_rails_sd434q34; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY allskills
    ADD CONSTRAINT fk_rails_sd434q34 FOREIGN KEY (vacancy_id) REFERENCES vacancies(id);


--
-- Name: mb_opt_outs_on_conversations_id; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_conversation_opt_outs
    ADD CONSTRAINT mb_opt_outs_on_conversations_id FOREIGN KEY (conversation_id) REFERENCES mailboxer_conversations(id);


--
-- Name: notifications_on_conversation_id; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_notifications
    ADD CONSTRAINT notifications_on_conversation_id FOREIGN KEY (conversation_id) REFERENCES mailboxer_conversations(id);


--
-- Name: receipts_on_notification_id; Type: FK CONSTRAINT; Schema: public; Owner: khapoo
--

ALTER TABLE ONLY mailboxer_receipts
    ADD CONSTRAINT receipts_on_notification_id FOREIGN KEY (notification_id) REFERENCES mailboxer_notifications(id);


--
-- Name: users_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_country_id_fkey FOREIGN KEY (country_id) REFERENCES countries(id);


--
-- Name: users_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sixarts
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_state_id_fkey FOREIGN KEY (state_id) REFERENCES states(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

