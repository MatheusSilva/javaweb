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
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    login character varying(20) NOT NULL,
    senha character(128) NOT NULL
);


ALTER TABLE usuario OWNER TO postgres;

--
-- Name: TABLE usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE usuario IS 'armazena os usuários.';


--
-- Name: COLUMN usuario.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario.id IS 'Armazena id do usuário';


--
-- Name: COLUMN usuario.nome; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario.nome IS 'Armazena o nome do usuário';


--
-- Name: COLUMN usuario.login; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario.login IS 'Armazena o login do usuário';


--
-- Name: COLUMN usuario.senha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario.senha IS 'Armazena a senha do usuário';


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (id, nome, login, senha) FROM stdin;
2	joaozinho	joao	F493638BF536A67055DDBE466AD3AA52D125F7953296D9D68064C7915EB02604A10B4AFB5F919646F0386F05F93D1F46F371BC3344C04E8EF703D0D5B5C53BAC
3	pedrinho2	pedro2	D20D8E3425E28C9641494CE463D080A0B1329F7F61B6CA1323DD0B48EE77E2965E90A17004C1EBEE958ED3CDF9C62FD869089F858A6F6526C8E68B2F81F0D523
\.


--
-- Name: usuario_login_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_login_key UNIQUE (login);


--
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


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

