--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: lorin; Tablespace: 
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO lorin;

--
-- Name: genre_titles; Type: TABLE; Schema: public; Owner: lorin; Tablespace: 
--

ALTER TABLE public.genre_titles OWNER TO lorin;

--
-- Name: genre_titles_id_seq; Type: SEQUENCE; Schema: public; Owner: lorin
--

ALTER TABLE public.genre_titles_id_seq OWNER TO lorin;

--
-- Name: genre_titles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lorin
--

ALTER TABLE public.genres OWNER TO lorin;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: lorin
--

ALTER TABLE public.genres_id_seq OWNER TO lorin;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lorin
--

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: lorin; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO lorin;

--
-- Name: titles; Type: TABLE; Schema: public; Owner: lorin; Tablespace: 
--

ALTER TABLE public.titles OWNER TO lorin;

--
-- Name: titles_id_seq; Type: SEQUENCE; Schema: public; Owner: lorin
--

ALTER TABLE public.titles_id_seq OWNER TO lorin;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lorin
--


COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2016-11-01 14:58:52.346011	2016-11-01 14:58:52.346011
\.

COPY schema_migrations (version) FROM stdin;
20161101145411
20161101145445
20161101145554
\.

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);

