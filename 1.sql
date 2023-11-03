--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE "strapi,";




--
-- Drop roles
--

DROP ROLE strapi;


--
-- Roles
--

CREATE ROLE strapi;
ALTER ROLE strapi WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:ev6j/DaBU84BZ7WtfTik1g==$HwdcEpWDKnADWTh0ClmAL8V+ZeOLmOlSy3xDqDHJj5g=:rAS+gcNpcfv6Uj+oAuwZkRO8aj6lkbJ35tGDOvgAhLk=';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: strapi
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO strapi;

\connect template1

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: strapi
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: strapi
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: strapi
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: strapi
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO strapi;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: strapi
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- Database "strapi," dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

--
-- Name: strapi,; Type: DATABASE; Schema: -; Owner: strapi
--

CREATE DATABASE "strapi," WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE "strapi," OWNER TO strapi;

\connect -reuse-previous=on "dbname='strapi,'"

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
-- Name: about_uses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.about_uses (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.about_uses OWNER TO strapi;

--
-- Name: about_uses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.about_uses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_uses_id_seq OWNER TO strapi;

--
-- Name: about_uses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.about_uses_id_seq OWNED BY public.about_uses.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO strapi;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO strapi;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO strapi;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: announcements; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.announcements (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.announcements OWNER TO strapi;

--
-- Name: announcements_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.announcements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_id_seq OWNER TO strapi;

--
-- Name: announcements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.announcements_id_seq OWNED BY public.announcements.id;


--
-- Name: article_freegaits; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_freegaits (
    id integer NOT NULL,
    article_title character varying(255),
    article_subtitle character varying(255),
    article_text text,
    chip character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.article_freegaits OWNER TO strapi;

--
-- Name: article_freegaits_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_freegaits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_freegaits_id_seq OWNER TO strapi;

--
-- Name: article_freegaits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_freegaits_id_seq OWNED BY public.article_freegaits.id;


--
-- Name: article_freegaits_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_freegaits_localizations_links (
    id integer NOT NULL,
    article_freegait_id integer,
    inv_article_freegait_id integer,
    article_freegait_order double precision
);


ALTER TABLE public.article_freegaits_localizations_links OWNER TO strapi;

--
-- Name: article_freegaits_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_freegaits_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_freegaits_localizations_links_id_seq OWNER TO strapi;

--
-- Name: article_freegaits_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_freegaits_localizations_links_id_seq OWNED BY public.article_freegaits_localizations_links.id;


--
-- Name: article_robogaits; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_robogaits (
    id integer NOT NULL,
    article_title character varying(255),
    article_subtitle character varying(255),
    article_text text,
    chip character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.article_robogaits OWNER TO strapi;

--
-- Name: article_robogaits_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_robogaits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_robogaits_id_seq OWNER TO strapi;

--
-- Name: article_robogaits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_robogaits_id_seq OWNED BY public.article_robogaits.id;


--
-- Name: article_robogaits_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_robogaits_localizations_links (
    id integer NOT NULL,
    article_robogait_id integer,
    inv_article_robogait_id integer,
    article_robogait_order double precision
);


ALTER TABLE public.article_robogaits_localizations_links OWNER TO strapi;

--
-- Name: article_robogaits_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_robogaits_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_robogaits_localizations_links_id_seq OWNER TO strapi;

--
-- Name: article_robogaits_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_robogaits_localizations_links_id_seq OWNED BY public.article_robogaits_localizations_links.id;


--
-- Name: article_visiogaits; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_visiogaits (
    id integer NOT NULL,
    article_title character varying(255),
    article_subtitle character varying(255),
    article_text text,
    chip character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.article_visiogaits OWNER TO strapi;

--
-- Name: article_visiogaits_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_visiogaits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_visiogaits_id_seq OWNER TO strapi;

--
-- Name: article_visiogaits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_visiogaits_id_seq OWNED BY public.article_visiogaits.id;


--
-- Name: article_visiogaits_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_visiogaits_localizations_links (
    id integer NOT NULL,
    article_visiogait_id integer,
    inv_article_visiogait_id integer,
    article_visiogait_order double precision
);


ALTER TABLE public.article_visiogaits_localizations_links OWNER TO strapi;

--
-- Name: article_visiogaits_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_visiogaits_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_visiogaits_localizations_links_id_seq OWNER TO strapi;

--
-- Name: article_visiogaits_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_visiogaits_localizations_links_id_seq OWNED BY public.article_visiogaits_localizations_links.id;


--
-- Name: contact_forms; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contact_forms (
    id integer NOT NULL,
    name character varying(255),
    last_name character varying(255),
    company character varying(255),
    email character varying(255),
    message text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    phone character varying(255)
);


ALTER TABLE public.contact_forms OWNER TO strapi;

--
-- Name: contact_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contact_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_forms_id_seq OWNER TO strapi;

--
-- Name: contact_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contact_forms_id_seq OWNED BY public.contact_forms.id;


--
-- Name: contact_us_page_addresses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contact_us_page_addresses (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    addresses jsonb,
    locale character varying(255)
);


ALTER TABLE public.contact_us_page_addresses OWNER TO strapi;

--
-- Name: contact_us_page_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contact_us_page_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_page_addresses_id_seq OWNER TO strapi;

--
-- Name: contact_us_page_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contact_us_page_addresses_id_seq OWNED BY public.contact_us_page_addresses.id;


--
-- Name: contact_us_page_addresses_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contact_us_page_addresses_localizations_links (
    id integer NOT NULL,
    contact_us_page_address_id integer,
    inv_contact_us_page_address_id integer,
    contact_us_page_address_order double precision
);


ALTER TABLE public.contact_us_page_addresses_localizations_links OWNER TO strapi;

--
-- Name: contact_us_page_addresses_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contact_us_page_addresses_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_page_addresses_localizations_links_id_seq OWNER TO strapi;

--
-- Name: contact_us_page_addresses_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contact_us_page_addresses_localizations_links_id_seq OWNED BY public.contact_us_page_addresses_localizations_links.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.contacts OWNER TO strapi;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO strapi;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: content_homes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.content_homes (
    id integer NOT NULL,
    hero jsonb,
    footer jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.content_homes OWNER TO strapi;

--
-- Name: content_homes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.content_homes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_homes_id_seq OWNER TO strapi;

--
-- Name: content_homes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.content_homes_id_seq OWNED BY public.content_homes.id;


--
-- Name: content_homes_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.content_homes_localizations_links (
    id integer NOT NULL,
    content_home_id integer,
    inv_content_home_id integer,
    content_home_order double precision
);


ALTER TABLE public.content_homes_localizations_links OWNER TO strapi;

--
-- Name: content_homes_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.content_homes_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_homes_localizations_links_id_seq OWNER TO strapi;

--
-- Name: content_homes_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.content_homes_localizations_links_id_seq OWNED BY public.content_homes_localizations_links.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO strapi;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO strapi;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO strapi;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO strapi;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: freegaits; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.freegaits (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.freegaits OWNER TO strapi;

--
-- Name: freegaits_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.freegaits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.freegaits_id_seq OWNER TO strapi;

--
-- Name: freegaits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.freegaits_id_seq OWNED BY public.freegaits.id;


--
-- Name: homes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homes (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.homes OWNER TO strapi;

--
-- Name: homes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homes_id_seq OWNER TO strapi;

--
-- Name: homes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homes_id_seq OWNED BY public.homes.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: our_products; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.our_products (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.our_products OWNER TO strapi;

--
-- Name: our_products_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.our_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.our_products_id_seq OWNER TO strapi;

--
-- Name: our_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.our_products_id_seq OWNED BY public.our_products.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.products (
    id integer NOT NULL,
    product_name character varying(255),
    product_desc text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    click_href character varying(255),
    product_tags jsonb,
    promotion_video_url character varying(255),
    locale character varying(255)
);


ALTER TABLE public.products OWNER TO strapi;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO strapi;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: products_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.products_localizations_links (
    id integer NOT NULL,
    product_id integer,
    inv_product_id integer,
    product_order double precision
);


ALTER TABLE public.products_localizations_links OWNER TO strapi;

--
-- Name: products_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.products_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_localizations_links_id_seq OWNER TO strapi;

--
-- Name: products_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.products_localizations_links_id_seq OWNED BY public.products_localizations_links.id;


--
-- Name: robogaits; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.robogaits (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.robogaits OWNER TO strapi;

--
-- Name: robogaits_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.robogaits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.robogaits_id_seq OWNER TO strapi;

--
-- Name: robogaits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.robogaits_id_seq OWNED BY public.robogaits.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: tests; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.tests (
    id integer NOT NULL,
    test_2 text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.tests OWNER TO strapi;

--
-- Name: tests_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_id_seq OWNER TO strapi;

--
-- Name: tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.tests_id_seq OWNED BY public.tests.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO strapi;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO strapi;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO strapi;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO strapi;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO strapi;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO strapi;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: visiogaits; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.visiogaits (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.visiogaits OWNER TO strapi;

--
-- Name: visiogaits_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.visiogaits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visiogaits_id_seq OWNER TO strapi;

--
-- Name: visiogaits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.visiogaits_id_seq OWNED BY public.visiogaits.id;


--
-- Name: about_uses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses ALTER COLUMN id SET DEFAULT nextval('public.about_uses_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: announcements id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.announcements ALTER COLUMN id SET DEFAULT nextval('public.announcements_id_seq'::regclass);


--
-- Name: article_freegaits id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_freegaits ALTER COLUMN id SET DEFAULT nextval('public.article_freegaits_id_seq'::regclass);


--
-- Name: article_freegaits_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_freegaits_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.article_freegaits_localizations_links_id_seq'::regclass);


--
-- Name: article_robogaits id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_robogaits ALTER COLUMN id SET DEFAULT nextval('public.article_robogaits_id_seq'::regclass);


--
-- Name: article_robogaits_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_robogaits_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.article_robogaits_localizations_links_id_seq'::regclass);


--
-- Name: article_visiogaits id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_visiogaits ALTER COLUMN id SET DEFAULT nextval('public.article_visiogaits_id_seq'::regclass);


--
-- Name: article_visiogaits_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_visiogaits_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.article_visiogaits_localizations_links_id_seq'::regclass);


--
-- Name: contact_forms id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_forms ALTER COLUMN id SET DEFAULT nextval('public.contact_forms_id_seq'::regclass);


--
-- Name: contact_us_page_addresses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_us_page_addresses ALTER COLUMN id SET DEFAULT nextval('public.contact_us_page_addresses_id_seq'::regclass);


--
-- Name: contact_us_page_addresses_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_us_page_addresses_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.contact_us_page_addresses_localizations_links_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: content_homes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.content_homes ALTER COLUMN id SET DEFAULT nextval('public.content_homes_id_seq'::regclass);


--
-- Name: content_homes_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.content_homes_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.content_homes_localizations_links_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: freegaits id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.freegaits ALTER COLUMN id SET DEFAULT nextval('public.freegaits_id_seq'::regclass);


--
-- Name: homes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homes ALTER COLUMN id SET DEFAULT nextval('public.homes_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: our_products id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.our_products ALTER COLUMN id SET DEFAULT nextval('public.our_products_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: products_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.products_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.products_localizations_links_id_seq'::regclass);


--
-- Name: robogaits id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.robogaits ALTER COLUMN id SET DEFAULT nextval('public.robogaits_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: tests id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tests ALTER COLUMN id SET DEFAULT nextval('public.tests_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Name: visiogaits id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.visiogaits ALTER COLUMN id SET DEFAULT nextval('public.visiogaits_id_seq'::regclass);


--
-- Data for Name: about_uses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.about_uses (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-10-06 10:32:54.972	2023-10-06 11:11:02.193	2023-10-06 10:32:56.17	1	1
\.


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	\N	{}	[]	2023-07-06 12:16:41.48	2023-07-06 12:16:41.48	\N	\N
2	plugin::upload.configure-view	\N	{}	[]	2023-07-06 12:16:41.49	2023-07-06 12:16:41.49	\N	\N
3	plugin::upload.assets.create	\N	{}	[]	2023-07-06 12:16:41.496	2023-07-06 12:16:41.496	\N	\N
4	plugin::upload.assets.update	\N	{}	[]	2023-07-06 12:16:41.504	2023-07-06 12:16:41.504	\N	\N
5	plugin::upload.assets.download	\N	{}	[]	2023-07-06 12:16:41.511	2023-07-06 12:16:41.511	\N	\N
6	plugin::upload.assets.copy-link	\N	{}	[]	2023-07-06 12:16:41.518	2023-07-06 12:16:41.518	\N	\N
7	plugin::upload.read	\N	{}	["admin::is-creator"]	2023-07-06 12:16:41.526	2023-07-06 12:16:41.526	\N	\N
8	plugin::upload.configure-view	\N	{}	[]	2023-07-06 12:16:41.532	2023-07-06 12:16:41.532	\N	\N
9	plugin::upload.assets.create	\N	{}	[]	2023-07-06 12:16:41.539	2023-07-06 12:16:41.539	\N	\N
10	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2023-07-06 12:16:41.547	2023-07-06 12:16:41.547	\N	\N
11	plugin::upload.assets.download	\N	{}	[]	2023-07-06 12:16:41.554	2023-07-06 12:16:41.554	\N	\N
12	plugin::upload.assets.copy-link	\N	{}	[]	2023-07-06 12:16:41.561	2023-07-06 12:16:41.561	\N	\N
13	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-07-06 12:16:41.625	2023-07-06 12:16:41.625	\N	\N
14	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-07-06 12:16:41.633	2023-07-06 12:16:41.633	\N	\N
15	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-07-06 12:16:41.64	2023-07-06 12:16:41.64	\N	\N
16	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2023-07-06 12:16:41.647	2023-07-06 12:16:41.647	\N	\N
17	plugin::content-manager.single-types.configure-view	\N	{}	[]	2023-07-06 12:16:41.654	2023-07-06 12:16:41.654	\N	\N
18	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2023-07-06 12:16:41.661	2023-07-06 12:16:41.661	\N	\N
19	plugin::content-manager.components.configure-layout	\N	{}	[]	2023-07-06 12:16:41.667	2023-07-06 12:16:41.667	\N	\N
20	plugin::content-type-builder.read	\N	{}	[]	2023-07-06 12:16:41.684	2023-07-06 12:16:41.684	\N	\N
21	plugin::email.settings.read	\N	{}	[]	2023-07-06 12:16:41.694	2023-07-06 12:16:41.694	\N	\N
22	plugin::upload.read	\N	{}	[]	2023-07-06 12:16:41.7	2023-07-06 12:16:41.7	\N	\N
23	plugin::upload.assets.create	\N	{}	[]	2023-07-06 12:16:41.706	2023-07-06 12:16:41.706	\N	\N
24	plugin::upload.assets.update	\N	{}	[]	2023-07-06 12:16:41.722	2023-07-06 12:16:41.722	\N	\N
25	plugin::upload.assets.download	\N	{}	[]	2023-07-06 12:16:41.728	2023-07-06 12:16:41.728	\N	\N
26	plugin::upload.assets.copy-link	\N	{}	[]	2023-07-06 12:16:41.741	2023-07-06 12:16:41.741	\N	\N
27	plugin::upload.configure-view	\N	{}	[]	2023-07-06 12:16:41.748	2023-07-06 12:16:41.748	\N	\N
28	plugin::upload.settings.read	\N	{}	[]	2023-07-06 12:16:41.758	2023-07-06 12:16:41.758	\N	\N
29	plugin::i18n.locale.create	\N	{}	[]	2023-07-06 12:16:41.764	2023-07-06 12:16:41.764	\N	\N
30	plugin::i18n.locale.read	\N	{}	[]	2023-07-06 12:16:41.77	2023-07-06 12:16:41.77	\N	\N
31	plugin::i18n.locale.update	\N	{}	[]	2023-07-06 12:16:41.777	2023-07-06 12:16:41.777	\N	\N
32	plugin::i18n.locale.delete	\N	{}	[]	2023-07-06 12:16:41.783	2023-07-06 12:16:41.783	\N	\N
33	plugin::users-permissions.roles.create	\N	{}	[]	2023-07-06 12:16:41.789	2023-07-06 12:16:41.789	\N	\N
34	plugin::users-permissions.roles.read	\N	{}	[]	2023-07-06 12:16:41.797	2023-07-06 12:16:41.797	\N	\N
35	plugin::users-permissions.roles.update	\N	{}	[]	2023-07-06 12:16:41.805	2023-07-06 12:16:41.805	\N	\N
36	plugin::users-permissions.roles.delete	\N	{}	[]	2023-07-06 12:16:41.811	2023-07-06 12:16:41.811	\N	\N
37	plugin::users-permissions.providers.read	\N	{}	[]	2023-07-06 12:16:41.818	2023-07-06 12:16:41.818	\N	\N
38	plugin::users-permissions.providers.update	\N	{}	[]	2023-07-06 12:16:41.828	2023-07-06 12:16:41.828	\N	\N
39	plugin::users-permissions.email-templates.read	\N	{}	[]	2023-07-06 12:16:41.834	2023-07-06 12:16:41.834	\N	\N
40	plugin::users-permissions.email-templates.update	\N	{}	[]	2023-07-06 12:16:41.841	2023-07-06 12:16:41.841	\N	\N
41	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2023-07-06 12:16:41.854	2023-07-06 12:16:41.854	\N	\N
42	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2023-07-06 12:16:41.861	2023-07-06 12:16:41.861	\N	\N
43	admin::marketplace.read	\N	{}	[]	2023-07-06 12:16:41.961	2023-07-06 12:16:41.961	\N	\N
44	admin::webhooks.create	\N	{}	[]	2023-07-06 12:16:41.991	2023-07-06 12:16:41.991	\N	\N
45	admin::webhooks.read	\N	{}	[]	2023-07-06 12:16:42.029	2023-07-06 12:16:42.029	\N	\N
46	admin::webhooks.update	\N	{}	[]	2023-07-06 12:16:42.035	2023-07-06 12:16:42.035	\N	\N
47	admin::webhooks.delete	\N	{}	[]	2023-07-06 12:16:42.041	2023-07-06 12:16:42.041	\N	\N
48	admin::users.create	\N	{}	[]	2023-07-06 12:16:42.048	2023-07-06 12:16:42.048	\N	\N
49	admin::users.read	\N	{}	[]	2023-07-06 12:16:42.055	2023-07-06 12:16:42.055	\N	\N
50	admin::users.update	\N	{}	[]	2023-07-06 12:16:42.066	2023-07-06 12:16:42.066	\N	\N
51	admin::users.delete	\N	{}	[]	2023-07-06 12:16:42.072	2023-07-06 12:16:42.072	\N	\N
52	admin::roles.create	\N	{}	[]	2023-07-06 12:16:42.084	2023-07-06 12:16:42.084	\N	\N
53	admin::roles.read	\N	{}	[]	2023-07-06 12:16:42.093	2023-07-06 12:16:42.093	\N	\N
54	admin::roles.update	\N	{}	[]	2023-07-06 12:16:42.099	2023-07-06 12:16:42.099	\N	\N
55	admin::roles.delete	\N	{}	[]	2023-07-06 12:16:42.106	2023-07-06 12:16:42.106	\N	\N
56	admin::api-tokens.access	\N	{}	[]	2023-07-06 12:16:42.112	2023-07-06 12:16:42.112	\N	\N
57	admin::api-tokens.create	\N	{}	[]	2023-07-06 12:16:42.118	2023-07-06 12:16:42.118	\N	\N
58	admin::api-tokens.read	\N	{}	[]	2023-07-06 12:16:42.124	2023-07-06 12:16:42.124	\N	\N
59	admin::api-tokens.update	\N	{}	[]	2023-07-06 12:16:42.131	2023-07-06 12:16:42.131	\N	\N
60	admin::api-tokens.regenerate	\N	{}	[]	2023-07-06 12:16:42.137	2023-07-06 12:16:42.137	\N	\N
61	admin::api-tokens.delete	\N	{}	[]	2023-07-06 12:16:42.143	2023-07-06 12:16:42.143	\N	\N
62	admin::project-settings.update	\N	{}	[]	2023-07-06 12:16:42.149	2023-07-06 12:16:42.149	\N	\N
63	admin::project-settings.read	\N	{}	[]	2023-07-06 12:16:42.156	2023-07-06 12:16:42.156	\N	\N
64	admin::transfer.tokens.access	\N	{}	[]	2023-07-06 12:16:42.17	2023-07-06 12:16:42.17	\N	\N
65	admin::transfer.tokens.create	\N	{}	[]	2023-07-06 12:16:42.178	2023-07-06 12:16:42.178	\N	\N
66	admin::transfer.tokens.read	\N	{}	[]	2023-07-06 12:16:42.184	2023-07-06 12:16:42.184	\N	\N
67	admin::transfer.tokens.update	\N	{}	[]	2023-07-06 12:16:42.194	2023-07-06 12:16:42.194	\N	\N
68	admin::transfer.tokens.regenerate	\N	{}	[]	2023-07-06 12:16:42.2	2023-07-06 12:16:42.2	\N	\N
69	admin::transfer.tokens.delete	\N	{}	[]	2023-07-06 12:16:42.206	2023-07-06 12:16:42.206	\N	\N
286	plugin::content-manager.explorer.create	api::announcement.announcement	{"fields": ["image"]}	[]	2023-10-05 10:31:33.474	2023-10-05 10:31:33.474	\N	\N
287	plugin::content-manager.explorer.create	api::article-freegait.article-freegait	{"fields": ["article_title", "article_subtitle", "article_text", "chip"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.481	2023-10-05 10:31:33.481	\N	\N
288	plugin::content-manager.explorer.create	api::article-robogait.article-robogait	{"fields": ["article_title", "article_subtitle", "article_text", "chip"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.488	2023-10-05 10:31:33.488	\N	\N
289	plugin::content-manager.explorer.create	api::article-visiogait.article-visiogait	{"fields": ["article_title", "article_subtitle", "article_text", "chip"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.499	2023-10-05 10:31:33.499	\N	\N
290	plugin::content-manager.explorer.create	api::contact.contact	{"fields": ["Split1"]}	[]	2023-10-05 10:31:33.505	2023-10-05 10:31:33.505	\N	\N
75	plugin::documentation.read	\N	{}	[]	2023-07-06 13:55:02.53	2023-07-06 13:55:02.53	\N	\N
76	plugin::documentation.settings.update	\N	{}	[]	2023-07-06 13:55:02.547	2023-07-06 13:55:02.547	\N	\N
77	plugin::documentation.settings.regenerate	\N	{}	[]	2023-07-06 13:55:02.554	2023-07-06 13:55:02.554	\N	\N
78	plugin::documentation.settings.read	\N	{}	[]	2023-07-06 13:55:02.562	2023-07-06 13:55:02.562	\N	\N
292	plugin::content-manager.explorer.create	api::content-home.content-home	{"fields": ["hero", "partners", "footer"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.528	2023-10-05 10:31:33.528	\N	\N
293	plugin::content-manager.explorer.create	api::freegait.freegait	{"fields": ["Banner1", "Slider1", "Split1", "Slider2", "ProductDetail", "Slider3", "Footer"]}	[]	2023-10-05 10:31:33.539	2023-10-05 10:31:33.539	\N	\N
294	plugin::content-manager.explorer.create	api::home.home	{"fields": ["Banner1", "Split1", "Banner2", "Freegait", "Visiogait", "Robogait", "Footer"]}	[]	2023-10-05 10:31:33.555	2023-10-05 10:31:33.555	\N	\N
295	plugin::content-manager.explorer.create	api::our-product.our-product	{"fields": ["Robogait", "Visiogait", "Freegait"]}	[]	2023-10-05 10:31:33.562	2023-10-05 10:31:33.562	\N	\N
296	plugin::content-manager.explorer.create	api::product.product	{"fields": ["product_name", "product_desc", "product_image", "product_catalog", "clickHref", "product_tags", "promotion_video_url", "product_manual"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.568	2023-10-05 10:31:33.568	\N	\N
297	plugin::content-manager.explorer.create	api::robogait.robogait	{"fields": ["Banner1", "Slider1", "ProductDetail", "Slider2", "Footer"]}	[]	2023-10-05 10:31:33.575	2023-10-05 10:31:33.575	\N	\N
298	plugin::content-manager.explorer.create	api::test.test	{"fields": ["test2"]}	[]	2023-10-05 10:31:33.581	2023-10-05 10:31:33.581	\N	\N
299	plugin::content-manager.explorer.create	api::visiogait.visiogait	{"fields": ["Banner1", "Slider1", "Banner2", "ProductDetail", "Footer"]}	[]	2023-10-05 10:31:33.588	2023-10-05 10:31:33.588	\N	\N
301	plugin::content-manager.explorer.read	api::announcement.announcement	{"fields": ["image"]}	[]	2023-10-05 10:31:33.601	2023-10-05 10:31:33.601	\N	\N
302	plugin::content-manager.explorer.read	api::article-freegait.article-freegait	{"fields": ["article_title", "article_subtitle", "article_text", "chip"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.608	2023-10-05 10:31:33.608	\N	\N
303	plugin::content-manager.explorer.read	api::article-robogait.article-robogait	{"fields": ["article_title", "article_subtitle", "article_text", "chip"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.615	2023-10-05 10:31:33.615	\N	\N
304	plugin::content-manager.explorer.read	api::article-visiogait.article-visiogait	{"fields": ["article_title", "article_subtitle", "article_text", "chip"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.628	2023-10-05 10:31:33.628	\N	\N
305	plugin::content-manager.explorer.read	api::contact.contact	{"fields": ["Split1"]}	[]	2023-10-05 10:31:33.634	2023-10-05 10:31:33.634	\N	\N
307	plugin::content-manager.explorer.read	api::content-home.content-home	{"fields": ["hero", "partners", "footer"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.649	2023-10-05 10:31:33.649	\N	\N
308	plugin::content-manager.explorer.read	api::freegait.freegait	{"fields": ["Banner1", "Slider1", "Split1", "Slider2", "ProductDetail", "Slider3", "Footer"]}	[]	2023-10-05 10:31:33.655	2023-10-05 10:31:33.655	\N	\N
309	plugin::content-manager.explorer.read	api::home.home	{"fields": ["Banner1", "Split1", "Banner2", "Freegait", "Visiogait", "Robogait", "Footer"]}	[]	2023-10-05 10:31:33.662	2023-10-05 10:31:33.662	\N	\N
310	plugin::content-manager.explorer.read	api::our-product.our-product	{"fields": ["Robogait", "Visiogait", "Freegait"]}	[]	2023-10-05 10:31:33.672	2023-10-05 10:31:33.672	\N	\N
311	plugin::content-manager.explorer.read	api::product.product	{"fields": ["product_name", "product_desc", "product_image", "product_catalog", "clickHref", "product_tags", "promotion_video_url", "product_manual"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.679	2023-10-05 10:31:33.679	\N	\N
312	plugin::content-manager.explorer.read	api::robogait.robogait	{"fields": ["Banner1", "Slider1", "ProductDetail", "Slider2", "Footer"]}	[]	2023-10-05 10:31:33.686	2023-10-05 10:31:33.686	\N	\N
313	plugin::content-manager.explorer.read	api::test.test	{"fields": ["test2"]}	[]	2023-10-05 10:31:33.692	2023-10-05 10:31:33.692	\N	\N
314	plugin::content-manager.explorer.read	api::visiogait.visiogait	{"fields": ["Banner1", "Slider1", "Banner2", "ProductDetail", "Footer"]}	[]	2023-10-05 10:31:33.699	2023-10-05 10:31:33.699	\N	\N
316	plugin::content-manager.explorer.update	api::announcement.announcement	{"fields": ["image"]}	[]	2023-10-05 10:31:33.712	2023-10-05 10:31:33.712	\N	\N
317	plugin::content-manager.explorer.update	api::article-freegait.article-freegait	{"fields": ["article_title", "article_subtitle", "article_text", "chip"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.719	2023-10-05 10:31:33.719	\N	\N
318	plugin::content-manager.explorer.update	api::article-robogait.article-robogait	{"fields": ["article_title", "article_subtitle", "article_text", "chip"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.725	2023-10-05 10:31:33.725	\N	\N
319	plugin::content-manager.explorer.update	api::article-visiogait.article-visiogait	{"fields": ["article_title", "article_subtitle", "article_text", "chip"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.743	2023-10-05 10:31:33.743	\N	\N
320	plugin::content-manager.explorer.update	api::contact.contact	{"fields": ["Split1"]}	[]	2023-10-05 10:31:33.75	2023-10-05 10:31:33.75	\N	\N
322	plugin::content-manager.explorer.update	api::content-home.content-home	{"fields": ["hero", "partners", "footer"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.763	2023-10-05 10:31:33.763	\N	\N
323	plugin::content-manager.explorer.update	api::freegait.freegait	{"fields": ["Banner1", "Slider1", "Split1", "Slider2", "ProductDetail", "Slider3", "Footer"]}	[]	2023-10-05 10:31:33.769	2023-10-05 10:31:33.769	\N	\N
324	plugin::content-manager.explorer.update	api::home.home	{"fields": ["Banner1", "Split1", "Banner2", "Freegait", "Visiogait", "Robogait", "Footer"]}	[]	2023-10-05 10:31:33.787	2023-10-05 10:31:33.787	\N	\N
325	plugin::content-manager.explorer.update	api::our-product.our-product	{"fields": ["Robogait", "Visiogait", "Freegait"]}	[]	2023-10-05 10:31:33.796	2023-10-05 10:31:33.796	\N	\N
326	plugin::content-manager.explorer.update	api::product.product	{"fields": ["product_name", "product_desc", "product_image", "product_catalog", "clickHref", "product_tags", "promotion_video_url", "product_manual"], "locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.802	2023-10-05 10:31:33.802	\N	\N
327	plugin::content-manager.explorer.update	api::robogait.robogait	{"fields": ["Banner1", "Slider1", "ProductDetail", "Slider2", "Footer"]}	[]	2023-10-05 10:31:33.809	2023-10-05 10:31:33.809	\N	\N
328	plugin::content-manager.explorer.update	api::test.test	{"fields": ["test2"]}	[]	2023-10-05 10:31:33.815	2023-10-05 10:31:33.815	\N	\N
329	plugin::content-manager.explorer.update	api::visiogait.visiogait	{"fields": ["Banner1", "Slider1", "Banner2", "ProductDetail", "Footer"]}	[]	2023-10-05 10:31:33.822	2023-10-05 10:31:33.822	\N	\N
330	plugin::content-manager.explorer.delete	api::about-us.about-us	{}	[]	2023-10-05 10:31:33.829	2023-10-05 10:31:33.829	\N	\N
331	plugin::content-manager.explorer.delete	api::announcement.announcement	{}	[]	2023-10-05 10:31:33.835	2023-10-05 10:31:33.835	\N	\N
332	plugin::content-manager.explorer.delete	api::article-freegait.article-freegait	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.841	2023-10-05 10:31:33.841	\N	\N
333	plugin::content-manager.explorer.delete	api::article-robogait.article-robogait	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.85	2023-10-05 10:31:33.85	\N	\N
334	plugin::content-manager.explorer.delete	api::article-visiogait.article-visiogait	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.856	2023-10-05 10:31:33.856	\N	\N
335	plugin::content-manager.explorer.delete	api::contact.contact	{}	[]	2023-10-05 10:31:33.864	2023-10-05 10:31:33.864	\N	\N
336	plugin::content-manager.explorer.delete	api::contact-form.contact-form	{}	[]	2023-10-05 10:31:33.872	2023-10-05 10:31:33.872	\N	\N
337	plugin::content-manager.explorer.delete	api::content-home.content-home	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.891	2023-10-05 10:31:33.891	\N	\N
338	plugin::content-manager.explorer.delete	api::freegait.freegait	{}	[]	2023-10-05 10:31:33.901	2023-10-05 10:31:33.901	\N	\N
339	plugin::content-manager.explorer.delete	api::home.home	{}	[]	2023-10-05 10:31:33.908	2023-10-05 10:31:33.908	\N	\N
340	plugin::content-manager.explorer.delete	api::our-product.our-product	{}	[]	2023-10-05 10:31:33.914	2023-10-05 10:31:33.914	\N	\N
341	plugin::content-manager.explorer.delete	api::product.product	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.92	2023-10-05 10:31:33.92	\N	\N
342	plugin::content-manager.explorer.delete	api::robogait.robogait	{}	[]	2023-10-05 10:31:33.927	2023-10-05 10:31:33.927	\N	\N
343	plugin::content-manager.explorer.delete	api::test.test	{}	[]	2023-10-05 10:31:33.933	2023-10-05 10:31:33.933	\N	\N
344	plugin::content-manager.explorer.delete	api::visiogait.visiogait	{}	[]	2023-10-05 10:31:33.947	2023-10-05 10:31:33.947	\N	\N
345	plugin::content-manager.explorer.publish	api::about-us.about-us	{}	[]	2023-10-05 10:31:33.959	2023-10-05 10:31:33.959	\N	\N
346	plugin::content-manager.explorer.publish	api::announcement.announcement	{}	[]	2023-10-05 10:31:33.965	2023-10-05 10:31:33.965	\N	\N
347	plugin::content-manager.explorer.publish	api::article-freegait.article-freegait	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.972	2023-10-05 10:31:33.972	\N	\N
348	plugin::content-manager.explorer.publish	api::article-robogait.article-robogait	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.978	2023-10-05 10:31:33.978	\N	\N
349	plugin::content-manager.explorer.publish	api::article-visiogait.article-visiogait	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:33.987	2023-10-05 10:31:33.987	\N	\N
350	plugin::content-manager.explorer.publish	api::contact.contact	{}	[]	2023-10-05 10:31:33.993	2023-10-05 10:31:33.993	\N	\N
351	plugin::content-manager.explorer.publish	api::contact-form.contact-form	{}	[]	2023-10-05 10:31:33.999	2023-10-05 10:31:33.999	\N	\N
352	plugin::content-manager.explorer.publish	api::content-home.content-home	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:34.006	2023-10-05 10:31:34.006	\N	\N
353	plugin::content-manager.explorer.publish	api::freegait.freegait	{}	[]	2023-10-05 10:31:34.012	2023-10-05 10:31:34.012	\N	\N
354	plugin::content-manager.explorer.publish	api::home.home	{}	[]	2023-10-05 10:31:34.019	2023-10-05 10:31:34.019	\N	\N
355	plugin::content-manager.explorer.publish	api::our-product.our-product	{}	[]	2023-10-05 10:31:34.025	2023-10-05 10:31:34.025	\N	\N
356	plugin::content-manager.explorer.publish	api::product.product	{"locales": ["en", "tr", "de"]}	[]	2023-10-05 10:31:34.032	2023-10-05 10:31:34.032	\N	\N
357	plugin::content-manager.explorer.publish	api::robogait.robogait	{}	[]	2023-10-05 10:31:34.039	2023-10-05 10:31:34.039	\N	\N
358	plugin::content-manager.explorer.publish	api::test.test	{}	[]	2023-10-05 10:31:34.051	2023-10-05 10:31:34.051	\N	\N
359	plugin::content-manager.explorer.publish	api::visiogait.visiogait	{}	[]	2023-10-05 10:31:34.062	2023-10-05 10:31:34.062	\N	\N
363	plugin::content-manager.explorer.create	api::about-us.about-us	{"fields": ["Banner1", "Footer"]}	[]	2023-10-06 11:11:19.77	2023-10-06 11:11:19.77	\N	\N
364	plugin::content-manager.explorer.read	api::about-us.about-us	{"fields": ["Banner1", "Footer"]}	[]	2023-10-06 11:11:19.786	2023-10-06 11:11:19.786	\N	\N
365	plugin::content-manager.explorer.update	api::about-us.about-us	{"fields": ["Banner1", "Footer"]}	[]	2023-10-06 11:11:19.793	2023-10-06 11:11:19.793	\N	\N
366	plugin::content-manager.explorer.create	api::contact-form.contact-form	{"fields": ["name", "lastName", "company", "email", "message", "phone"]}	[]	2023-10-06 12:17:33.898	2023-10-06 12:17:33.898	\N	\N
367	plugin::content-manager.explorer.read	api::contact-form.contact-form	{"fields": ["name", "lastName", "company", "email", "message", "phone"]}	[]	2023-10-06 12:17:33.909	2023-10-06 12:17:33.909	\N	\N
368	plugin::content-manager.explorer.update	api::contact-form.contact-form	{"fields": ["name", "lastName", "company", "email", "message", "phone"]}	[]	2023-10-06 12:17:33.916	2023-10-06 12:17:33.916	\N	\N
377	plugin::content-manager.explorer.create	api::contact-us-page-address.contact-us-page-address	{"fields": ["addresses"], "locales": ["en", "tr", "de"]}	[]	2023-10-12 06:16:11.996	2023-10-12 06:16:11.996	\N	\N
378	plugin::content-manager.explorer.read	api::contact-us-page-address.contact-us-page-address	{"fields": ["addresses"], "locales": ["en", "tr", "de"]}	[]	2023-10-12 06:16:12.008	2023-10-12 06:16:12.008	\N	\N
379	plugin::content-manager.explorer.update	api::contact-us-page-address.contact-us-page-address	{"fields": ["addresses"], "locales": ["en", "tr", "de"]}	[]	2023-10-12 06:16:12.016	2023-10-12 06:16:12.016	\N	\N
380	plugin::content-manager.explorer.delete	api::contact-us-page-address.contact-us-page-address	{"locales": ["en", "tr", "de"]}	[]	2023-10-12 06:16:12.025	2023-10-12 06:16:12.025	\N	\N
381	plugin::content-manager.explorer.publish	api::contact-us-page-address.contact-us-page-address	{"locales": ["en", "tr", "de"]}	[]	2023-10-12 06:16:12.033	2023-10-12 06:16:12.033	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	3	1
8	8	3	2
9	9	3	3
10	10	3	4
11	11	3	5
12	12	3	6
13	13	1	1
14	14	1	2
15	15	1	3
16	16	1	4
17	17	1	5
18	18	1	6
19	19	1	7
20	20	1	8
21	21	1	9
22	22	1	10
23	23	1	11
24	24	1	12
25	25	1	13
26	26	1	14
27	27	1	15
28	28	1	16
29	29	1	17
30	30	1	18
31	31	1	19
32	32	1	20
33	33	1	21
34	34	1	22
35	35	1	23
36	36	1	24
37	37	1	25
38	38	1	26
39	39	1	27
40	40	1	28
41	41	1	29
42	42	1	30
43	43	1	31
44	44	1	32
45	45	1	33
46	46	1	34
47	47	1	35
48	48	1	36
49	49	1	37
50	50	1	38
51	51	1	39
52	52	1	40
53	53	1	41
54	54	1	42
55	55	1	43
56	56	1	44
57	57	1	45
58	58	1	46
59	59	1	47
60	60	1	48
61	61	1	49
62	62	1	50
63	63	1	51
64	64	1	52
65	65	1	53
66	66	1	54
67	67	1	55
68	68	1	56
69	69	1	57
286	286	1	68
287	287	1	69
288	288	1	70
289	289	1	71
75	75	1	63
76	76	1	64
77	77	1	65
78	78	1	66
290	290	1	72
292	292	1	74
293	293	1	75
294	294	1	76
295	295	1	77
296	296	1	78
297	297	1	79
298	298	1	80
299	299	1	81
301	301	1	83
302	302	1	84
303	303	1	85
304	304	1	86
305	305	1	87
307	307	1	89
308	308	1	90
309	309	1	91
310	310	1	92
311	311	1	93
312	312	1	94
313	313	1	95
314	314	1	96
316	316	1	98
317	317	1	99
318	318	1	100
319	319	1	101
320	320	1	102
322	322	1	104
323	323	1	105
324	324	1	106
325	325	1	107
326	326	1	108
327	327	1	109
328	328	1	110
329	329	1	111
330	330	1	112
331	331	1	113
332	332	1	114
333	333	1	115
334	334	1	116
335	335	1	117
336	336	1	118
337	337	1	119
338	338	1	120
339	339	1	121
340	340	1	122
341	341	1	123
342	342	1	124
343	343	1	125
344	344	1	126
345	345	1	127
346	346	1	128
347	347	1	129
348	348	1	130
349	349	1	131
350	350	1	132
351	351	1	133
352	352	1	134
353	353	1	135
354	354	1	136
355	355	1	137
356	356	1	138
357	357	1	139
358	358	1	140
359	359	1	141
363	363	1	142
364	364	1	143
365	365	1	144
366	366	1	145
367	367	1	146
368	368	1	147
377	377	1	148
378	378	1	149
379	379	1	150
380	380	1	151
381	381	1	152
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-07-06 12:16:41.457	2023-07-06 12:16:41.457	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-07-06 12:16:41.468	2023-07-06 12:16:41.468	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2023-07-06 12:16:41.473	2023-07-06 12:16:41.473	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Geodo		\N	info@geodo.tech	$2a$10$uYIVmwu1MeHSbj/wJxVYue4Wspe7bVMkVp1oT1LQ9gmDdyfbjgCRW	\N	\N	t	f	\N	2023-07-06 12:17:32.359	2023-07-06 12:17:32.359	\N	\N
5	Berk	Başar	\N	berk.basar@bamateknoloji.com	$2a$10$Hs1QzMStuzrMTSNANUDaxOxIG8hyNMPHiZ8IZ7Wvaf5Xoy9tN0ihy	\N	8caab84eb3fc72536a440718bc1f3319fb880c4b	t	f	\N	2023-09-27 17:27:35.405	2023-09-27 17:29:15.345	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
5	5	1	1	2
\.


--
-- Data for Name: announcements; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.announcements (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
2	2023-10-06 10:10:38.368	2023-10-06 10:10:43.674	2023-10-06 10:10:43.67	1	1
\.


--
-- Data for Name: article_freegaits; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_freegaits (id, article_title, article_subtitle, article_text, chip, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: article_freegaits_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_freegaits_localizations_links (id, article_freegait_id, inv_article_freegait_id, article_freegait_order) FROM stdin;
\.


--
-- Data for Name: article_robogaits; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_robogaits (id, article_title, article_subtitle, article_text, chip, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
4	Effectiveness of robotic assisted rehabilitation for mobility and functional ability in adult stroke patients	robotic assisted rehabilitation for mobility and functional ability in adult stroke patients	Stroke is a leading cause of long-term disability, and rehabilitation, involving repetitive, high intensity, task-specific exercises, is the pathway to restoring motor skills. Robotic assistive devices are increasingly being used and it is hoped that with robotic devices, rehabilitation progress can be achieved for patients. Objectives: To examine the effectiveness of robotic devices in the rehabilitation of stroke patients for upper limb mobility, lower limb mobility, and activities of daily living. The sustainability of treatment effect was also examined. Inclusion criteria types of participants: Adult stroke patients 18 years and over. Types of intervention(s): Rehabilitation of stroke patients using robotic devices with assistive automation, compared to conventional physiotherapy. Outcomes: Motor movements of upper limbs, walking movement of lower limbs and activities of daily living, including follow-up measurements to examine the sustainability of treatment effect. Types of studies: Randomized and controlled clinical trials. Search strategy: Published and unpublished studies in English were searched. Methodological quality: All studies meeting the review inclusion criteria were independently assessed for methodological quality by two reviewers. Data extraction: Quantitative data were extracted using the standardized data extraction tool from the Joanna Briggs Institute Meta-Analysis of Statistics Assessment and Review Instrument. Data synthesis: Quantitative data were pooled in statistical meta-analysis. Effect sizes expressed as standardized mean difference, 95% confidence intervals and levels of heterogeneity (I) were calculated. Where statistical pooling was not possible, the findings were presented in narrative form. Results: Fifty-one studies with 1798 patients were included in this review. Thirty studies examined upper limb interventions and 21 studies evaluated lower limb gait training. Non-significant results were found for upper limb (SMD 0.07, 95% CI -0.11 to 0.26, I = 41%, P = 0.45), lower limb (SMD 0.17, 95% CI -0.15 to 0.48, I = 75%, P = 0.31) and activities of daily living (SMD 0.11, 95% CI -0.11 to 0.33, I = 66%, P = 0.32). For patients with severely impaired lower limbs, a significant difference was observed in favor of robotics (SMD 0.41, 95% CI 0.19 to 0.63, I = 28%, P = 0.0003). P-value analysis did not show significant results for the sustainability of treatment effect post intervention. Conclusions: Robotic training is just as effective as conventional training for upper limb motor movement, lower limb walking mobility and for activities of daily living. For lower limb patients with severe impairment, robotic training produces better outcomes than conventional training. The sufficient quantity of studies included and the reasonable quality of Grading of Recommendations Assessment, Development and Evaluation (GRADE) evidence support the findings.For treatment sustainability of upper and lower limbs, robotic training is just as effective as conventional training. However, the low quality of GRADE evidence and the lower number of studies included require caution for this finding. For treatment sustainability of activities of daily living, the better quality of GRADE evidence and the larger number of studies analyzed indicate that robotic training is just as effective as conventional training.\n\nDOI:10.11124/JBISRIR-2017-003456	Systematic Review	2023-10-12 07:11:51.597	2023-10-12 07:23:06.048	\N	5	5	tr
3	Appropriate Robotic Intervention for Gait Function in Subacute Stroke Patients	Gait Function in Subacute Stroke Patients	The purpose of this study was to critically evaluate the effects of robot-assisted gait training (RAGT) on gait-related function in patients with acute/subacute stroke. We conducted a systematic review of randomized controlled trials published between May 2012 and April 2016. This search included 334 articles (Cochrane, 51 articles; Embase, 175 articles; PubMed, 108 articles). Based on the inclusion and exclusion criteria, 7 studies were selected for this review. We performed a quality evaluation using the PEDro scale. In this review, 3 studies used an exoskeletal robot, and 4 studies used an end-effector robot as interventions. As a result, RAGT was found to be effective in improving walking ability in subacute stroke patients. Significant improvements in gait speed, functional ambulatory category, and Rivermead mobility index were found with RAGT compared with conventional physical therapy (p<0.05) . Therefore, aggressive weight support and gait training at an early stage using a robotic device are helpful, and robotic intervention should be applied according to the patient’s functional level and onset time of stroke.\n\nDOI:10.1155/2018/4085298	Systematic Review	2023-10-12 06:59:46.461	2023-10-12 07:22:59.938	\N	5	5	tr
\.


--
-- Data for Name: article_robogaits_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_robogaits_localizations_links (id, article_robogait_id, inv_article_robogait_id, article_robogait_order) FROM stdin;
\.


--
-- Data for Name: article_visiogaits; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_visiogaits (id, article_title, article_subtitle, article_text, chip, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: article_visiogaits_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_visiogaits_localizations_links (id, article_visiogait_id, inv_article_visiogait_id, article_visiogait_order) FROM stdin;
\.


--
-- Data for Name: contact_forms; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contact_forms (id, name, last_name, company, email, message, created_at, updated_at, published_at, created_by_id, updated_by_id, phone) FROM stdin;
1	Sait Bronix	asd	sad	alp@bronix.com	asd	2023-10-06 12:44:37.518	2023-10-06 12:44:37.518	2023-10-06 12:44:37.516	\N	\N	5070076546
2	Sait Bronix	asd	asd	asd@gmail.com	ads	2023-10-06 13:33:06.241	2023-10-06 13:33:06.241	2023-10-06 13:33:06.232	\N	\N	asd
3	Enes	Yarkan	Pertius	enesyarkan78@gmail.com	test	2023-10-06 13:40:56.862	2023-10-06 13:40:56.862	2023-10-06 13:40:56.852	\N	\N	+905442242632
4	Enes	Yarkan	Pertius	enesyarkan78@gmail.com	testset	2023-10-06 13:56:40.621	2023-10-06 13:56:40.621	2023-10-06 13:56:40.61	\N	\N	+905442242632
5	Enes	Yarkan	Taskium	enesyarkan78@gmail.com	BAMA TEST	2023-10-06 14:45:25.232	2023-10-06 14:45:25.232	2023-10-06 14:45:25.223	\N	\N	+905442242632
6	DARIO	DE LEO	CAPTIKS SRL	deleo@captiks.com	Goodmorning,\n\n \n\nI am Mr. Dario De Leo from Captiks, an Italian company focused on Developing Motion Analysis Systems.\n\nI am writing to you because we are looking for new business opportunities  for our product MOVIT SYSTEM as  reselling partenership, OEM partnership or other business partnership.\n\nMOVIT SYSTEM is a wearable solution for MOTION ANALYSIS that allows to measure human movement in every situation and already provide specific motion analysis protocol as Range of Motion, GAIT Analysis, Timed Up & Go Test, Six Minutes Walking Test, SWAY Analysis\n\nThe product is very useful for Research Centers (as universities), Hospitals and Rehabilitation Centers, Private Rehab, Orthopedics, Posturology and  Biomechanical Companies but even for Sport Teams and so on...\n\n \n\nHere following the link to the product web page\n\nhttp://www.captiks.com/index.php/en/products/movit-system-3d-edition\n\n\nI hope to get in touch with you and discuss about a future partnership\n\n \n\nBest Regards\n\nDario De Leo\n\n	2023-10-17 15:47:45.584	2023-10-17 15:47:45.584	2023-10-17 15:47:45.581	\N	\N	00393803042710
7	Peter	Cross	Rapid Micro Biosystem LLC	peter.cross@rapidrnicrobio.com	My name is Peter Cross from Rapid Micro Biosystem LLC in the United State. We are assisting our customer in obtaining a price quote for the purchase of your product. Could you kindly provide us with the following information:\n\n1, The estimated lead time. (The end destination is Madagascar)\n2, Warranty options available.\n3, Modes of payment.\n\nKindly send us your product catalogue so we could review and revert with our order thereafter. \n\nThank you for considering our inquiry, and we look forward to work with you soon.\n	2023-10-24 19:03:17.559	2023-10-24 19:03:17.559	2023-10-24 19:03:17.556	\N	\N	9793493022
8	Bengisu 	Albayrak	Bama Teknoloji	bengisu.albayrak@bamateknoloji.com	Bu mesaj yeni  web sitesinin iletişim kutucuğunun doğru çalışıp çalışmadığını test etmek için gönderilmiştir. Mesaj tarafınıza iletildiğinde lütfen bilgilendiriniz. 	2023-10-26 05:50:08.501	2023-10-26 05:50:08.501	2023-10-26 05:50:08.499	\N	\N	05368769264
9	Ciro	Labarile	Medical Calò Srl	ciro@medicalcalo.it	Dear Sirs,\nI am sales manager of the neurorehabilitation division of Medical Calò Srl, a company based in Italy with experience as an exclusive reseller of Robotis devices for walking and upper limb training with the Motorika company until a year ago (we have installed a certain number of ). We are interested in your products and would like to ask you if it is possible to have a call to discuss business opportunities.\nThanks in advance\nCiro Labarile	2023-10-26 10:28:10.989	2023-10-26 10:28:10.989	2023-10-26 10:28:10.987	\N	\N	+39 3357828026
10	Sofiia	Kovalenko	KIM medical	world@kim-medical.com	Dear Partners, my name is Sofiia. I am responsible for international communication in a Ukrainian medical company "KIM medical"\nWe are interested in your products and. Do you have exclusivity in Ukraine?Could you send the catalog and price please. \n    \nBest regards ,\n\nSofiia Kovalenko\nmob: +380974328536\nemail: world@kim-medical.com	2023-10-27 08:06:03.461	2023-10-27 08:06:03.461	2023-10-27 08:06:03.458	\N	\N	+380974328536
11	Gürkan	Durmaz	ANTALYA YAŞAM HASTANELERİ ÖZEL SAĞLIK HİZMETLERİ A.Ş.	satinalma@yasamhastaneleri.com	Merhaba, ürününüzle ilgili fiyat bilgisi talebimiz mevcuttur. Yukarıdaki mail adresinden yada telefon numarasından bana ulaşmanızı rica eder,\n\niyi çalışmalar dilerim.	2023-10-27 11:10:14.787	2023-10-27 11:10:14.787	2023-10-27 11:10:14.784	\N	\N	0505 889 4139
12	Luca	Papa	My wellness 	papa.luca.p@hotmail.it	Buongiorno volevo sapere quanto costa il macchinario per camminare per entrambe le gambe \nGrazie mille	2023-10-30 10:29:43.38	2023-10-30 10:29:43.38	2023-10-30 10:29:43.378	\N	\N	3403336108
13	Eric	Koech	Physical Therapy Services Ltd	eric.koech@physicaltherapy.co.ke	Hello, \n\nTrust you are well. \n\nWe are medical company located in Nairobi Kenya. \n\nWe looking for robotic gait training for our market. \n\nKindly share with us prices for consideration. \n\nKindly confirm to us if you do have distributor here in Kenya. \n	2023-11-01 08:33:59.123	2023-11-01 08:33:59.123	2023-11-01 08:33:59.12	\N	\N	+254727590920
14	Umut	Parlar	-	umutparlar00@gmail.com	Merhaba ben Umut Parlar. Pamukkale Üniversitesi 2022 yılı Biyomedikal Mühendisi mezunuyum.Başvuru ekranınız buraya yönlendirdiği için CV ekleyemedim. Şirketinize iş başvurusu yapmak istiyorum. 	2023-11-01 16:51:48.378	2023-11-01 16:51:48.378	2023-11-01 16:51:48.375	\N	\N	+905535579566
15	Alex 	Anufrienko	https://www.kontrast.by	alan@kontrast.by	Dear BAMA Teknoloji team,\n\n	2023-11-02 08:02:33.54	2023-11-02 08:02:33.54	2023-11-02 08:02:33.537	\N	\N	+375257134354
16	Alex 	Anufrienko	Fair Kontrast 	alan@kontrast.by	Dear BAMA Teknoloji team,\n\n We have high interest to your RoboGait product. Please clarify with type of CE registration  do you have (MDD or MDR)? In case of MDD please let me know when do  you planning to gain MDR. Looking forward to your reply.	2023-11-02 08:20:44.048	2023-11-02 08:20:44.048	2023-11-02 08:20:44.046	\N	\N	+375257134354
\.


--
-- Data for Name: contact_us_page_addresses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contact_us_page_addresses (id, created_at, updated_at, published_at, created_by_id, updated_by_id, addresses, locale) FROM stdin;
2	2023-10-12 06:35:12.525	2023-10-12 06:50:55.372	2023-10-12 06:35:39.016	1	5	{"addresses": [{"name": "BAMA R&D", "email": "bilgi@bamateknoloji.com", "phone1": "+90 312 284 23 85", "address": "Üniversiteler Mah. İhsan Doğramacı Bulvarı Galyum Blok No:27/Z02 ODTÜ Teknokent-ÇANKAYA/ANKARA", "position": {"lat": 39.89, "lng": 32.77}, "whatsapp": "+90 532 714 95 12"}, {"name": "BAMA Workshop", "email": "bilgi@bamateknoloji.com", "phone1": "+90 312 354 69 31", "address": "OSTİM Mahallesi, 1213. Sokak. No: 15 Ostim Organize Sanayi Bölgesi Yenimahalle, Ankara, 06374", "position": {"lat": 39.89, "lng": 32.77}}]}	en
3	2023-10-12 06:35:21.078	2023-10-12 06:51:19.256	2023-10-12 06:35:43.543	1	5	{"addresses": [{"name": "BAMA F&E", "email": "bilgi@bamateknoloji.com", "phone1": "+90 312 284 23 85", "address": "Üniversiteler Mah. İhsan Doğramacı Bulvarı Galyum Blok No:27/Z02 ODTÜ Teknokent-ÇANKAYA/ANKARA", "position": {"lat": 39.89, "lng": 32.77}, "whatsapp": "+90 532 714 95 12"}, {"name": "BAMA Werkstatt", "email": "bilgi@bamateknoloji.com", "phone1": "+90 312 354 69 31", "address": "OSTİM Mahallesi, 1213. Sokak. No: 15 Ostim Organize Sanayi Bölgesi Yenimahalle, Ankara, 06374", "position": {"lat": 39.89, "lng": 32.77}}]}	de
1	2023-10-12 06:10:25.773	2023-10-12 06:35:21.092	2023-10-12 06:17:10.162	1	1	{"addresses": [{"name": "BAMA Ar-Ge", "email": "bilgi@bamateknoloji.com", "phone1": "+90 312 284 23 85", "address": "Üniversiteler Mah. İhsan Doğramacı Bulvarı Galyum Blok No:27/Z02 ODTÜ Teknokent-ÇANKAYA/ANKARA", "position": {"lat": 39.89, "lng": 32.77}, "whatsapp": "+90 532 714 95 12"}, {"name": "BAMA Fabrika", "email": "bilgi@bamateknoloji.com", "phone1": "+90 312 354 69 31", "address": "OSTİM Mahallesi, 1213. Sokak. No: 15 Ostim Organize Sanayi Bölgesi Yenimahalle, Ankara, 06374", "position": {"lat": 39.89, "lng": 32.77}}]}	tr
\.


--
-- Data for Name: contact_us_page_addresses_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contact_us_page_addresses_localizations_links (id, contact_us_page_address_id, inv_contact_us_page_address_id, contact_us_page_address_order) FROM stdin;
3	3	1	1
4	3	2	2
5	1	3	1
2	1	2	2
7	2	3	1
1	2	1	2
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contacts (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-10-06 11:11:58.98	2023-10-06 12:44:09.046	2023-10-06 12:44:09.042	1	1
\.


--
-- Data for Name: content_homes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.content_homes (id, hero, footer, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	{"title": "Yürümeyi yeniden öğretiyoruz.", "button1": "Ürünleri Keşfedin", "button2": "İletişime Geçin", "content": "On yılı aşkın süredir yenilikçi cihazlar, son teknoloji hizmetler ve ezber bozan tedaviler yaratma konusunda öncü olan BAMA Teknoloji’yi keşfedin.", "subtitle": "Robotik rehabilitasyon sistemleri"}	\N	2023-10-06 11:15:30.852	2023-10-06 11:18:04.674	2023-10-06 11:16:22.32	1	1	tr
3	{"title": "Lernen, wieder einen Schritt", "button1": "Entdecken Sie die Produkte", "button2": "Kontaktieren", "content": "Entdecken Sie BAMA Teknoloji, seit über einem Jahrzehnt ein visionärer Pionier in der Entwicklung innovativer Geräte, innovativer Dienstleistungen und bahnbrechender Therapien.", "subtitle": "Robotergestützte Rehabilitationssysteme"}	\N	2023-10-06 12:15:18.251	2023-10-06 12:15:19.859	2023-10-06 12:15:19.849	1	1	de
2	{"title": "Learning to take a step again.", "button1": "Discover the Products", "button2": "Contact", "content": "Discover BAMA Teknoloji, a visionary pioneer in the development of innovative devices, cutting-edge services, and ground-breaking therapies for over a decade.", "subtitle": "Robotic Rehabilitation Systems"}	\N	2023-10-06 12:12:30.826	2023-10-06 12:15:56.144	2023-10-06 12:15:56.139	1	1	en
\.


--
-- Data for Name: content_homes_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.content_homes_localizations_links (id, content_home_id, inv_content_home_id, content_home_order) FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
64	accessories3.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_accessories3_9422cb38b9.png", "hash": "thumbnail_accessories3_9422cb38b9", "mime": "image/png", "name": "thumbnail_accessories3.png", "path": null, "size": 16.57, "width": 178, "height": 156}}	accessories3_9422cb38b9	.png	image/png	12.72	https://bama-trial.s3.eu-central-1.amazonaws.com/accessories3_9422cb38b9.png	\N	aws-s3	\N	/	2023-07-26 09:16:01.222	2023-07-26 09:16:01.222	1	1
74	highlight2.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlight2_caea82bf0e.png", "hash": "thumbnail_highlight2_caea82bf0e", "mime": "image/png", "name": "thumbnail_highlight2.png", "path": null, "size": 19.04, "width": 178, "height": 156}}	highlight2_caea82bf0e	.png	image/png	16.36	https://bama-trial.s3.eu-central-1.amazonaws.com/highlight2_caea82bf0e.png	\N	aws-s3	\N	/	2023-07-26 09:17:37.471	2023-07-26 09:17:37.471	1	1
63	accessories1.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_accessories1_5ca96b6676.png", "hash": "thumbnail_accessories1_5ca96b6676", "mime": "image/png", "name": "thumbnail_accessories1.png", "path": null, "size": 25.39, "width": 178, "height": 156}}	accessories1_5ca96b6676	.png	image/png	15.91	https://bama-trial.s3.eu-central-1.amazonaws.com/accessories1_5ca96b6676.png	\N	aws-s3	\N	/	2023-07-26 09:16:00.998	2023-07-26 09:16:00.998	1	1
89	product2.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product2_494453da50.png", "hash": "thumbnail_product2_494453da50", "mime": "image/png", "name": "thumbnail_product2.png", "path": null, "size": 24.66, "width": 169, "height": 156}}	product2_494453da50	.png	image/png	30.07	https://bama-trial.s3.eu-central-1.amazonaws.com/product2_494453da50.png	\N	aws-s3	\N	/	2023-07-26 09:18:29.807	2023-07-26 09:18:29.807	1	1
82	accessories3.png	\N	\N	368	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_accessories3_4dd7dd7e39.png", "hash": "thumbnail_accessories3_4dd7dd7e39", "mime": "image/png", "name": "thumbnail_accessories3.png", "path": null, "size": 24.65, "width": 190, "height": 156}}	accessories3_4dd7dd7e39	.png	image/png	17.80	https://bama-trial.s3.eu-central-1.amazonaws.com/accessories3_4dd7dd7e39.png	\N	aws-s3	\N	/	2023-07-26 09:18:27.229	2023-07-26 09:18:27.229	1	1
75	product.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product_8372679911.png", "hash": "thumbnail_product_8372679911", "mime": "image/png", "name": "thumbnail_product.png", "path": null, "size": 14.74, "width": 169, "height": 156}}	product_8372679911	.png	image/png	17.83	https://bama-trial.s3.eu-central-1.amazonaws.com/product_8372679911.png	\N	aws-s3	\N	/	2023-07-26 09:17:38.036	2023-07-26 09:17:38.036	1	1
76	highlight3.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlight3_0e947a7bf5.png", "hash": "thumbnail_highlight3_0e947a7bf5", "mime": "image/png", "name": "thumbnail_highlight3.png", "path": null, "size": 32.01, "width": 178, "height": 156}}	highlight3_0e947a7bf5	.png	image/png	20.11	https://bama-trial.s3.eu-central-1.amazonaws.com/highlight3_0e947a7bf5.png	\N	aws-s3	\N	/	2023-07-26 09:17:38.189	2023-07-26 09:17:38.189	1	1
78	product1.png	\N	\N	680	560	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_product1_06a7fa1bf9.png", "hash": "small_product1_06a7fa1bf9", "mime": "image/png", "name": "small_product1.png", "path": null, "size": 114.08, "width": 500, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product1_06a7fa1bf9.png", "hash": "thumbnail_product1_06a7fa1bf9", "mime": "image/png", "name": "thumbnail_product1.png", "path": null, "size": 21.97, "width": 189, "height": 156}}	product1_06a7fa1bf9	.png	image/png	36.89	https://bama-trial.s3.eu-central-1.amazonaws.com/product1_06a7fa1bf9.png	\N	aws-s3	\N	/	2023-07-26 09:17:42.218	2023-07-26 09:17:42.218	1	1
107	procardia.svg	\N	\N	200	64	\N	procardia_855492015a	.svg	image/svg+xml	17.50	https://bama-trial.s3.eu-central-1.amazonaws.com/procardia_855492015a.svg	\N	aws-s3	\N	/	2023-07-26 09:23:42.065	2023-07-26 09:23:42.065	1	1
108	technomex.svg	\N	\N	236	64	\N	technomex_90fbc935a0	.svg	image/svg+xml	80.70	https://bama-trial.s3.eu-central-1.amazonaws.com/technomex_90fbc935a0.svg	\N	aws-s3	\N	/	2023-07-26 09:23:43.074	2023-07-26 09:23:43.074	1	1
77	banner.png	\N	\N	1120	436	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_banner_b2fae69ffb.png", "hash": "large_banner_b2fae69ffb", "mime": "image/png", "name": "large_banner.png", "path": null, "size": 581.03, "width": 1000, "height": 389}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_banner_b2fae69ffb.png", "hash": "small_banner_b2fae69ffb", "mime": "image/png", "name": "small_banner.png", "path": null, "size": 165.38, "width": 500, "height": 195}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_banner_b2fae69ffb.png", "hash": "medium_banner_b2fae69ffb", "mime": "image/png", "name": "medium_banner.png", "path": null, "size": 347.38, "width": 750, "height": 292}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_banner_b2fae69ffb.png", "hash": "thumbnail_banner_b2fae69ffb", "mime": "image/png", "name": "thumbnail_banner.png", "path": null, "size": 46.56, "width": 245, "height": 95}}	banner_b2fae69ffb	.png	image/png	156.35	https://bama-trial.s3.eu-central-1.amazonaws.com/banner_b2fae69ffb.png	\N	aws-s3	\N	/	2023-07-26 09:17:41.525	2023-07-26 09:17:41.525	1	1
296	CTL-B0112-EN-rev.03-Digital-.pdf	\N	\N	\N	\N	\N	CTL_B0112_EN_rev_03_Digital_736f7849c0	.pdf	application/pdf	564.87	https://bama-trial.s3.eu-central-1.amazonaws.com/CTL_B0112_EN_rev_03_Digital_736f7849c0.pdf	\N	aws-s3	\N	/	2023-10-11 13:46:18.358	2023-10-11 13:46:18.358	5	5
93	visiogait.png	\N	\N	195	248	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_visiogait_b8e56caa01.png", "hash": "thumbnail_visiogait_b8e56caa01", "mime": "image/png", "name": "thumbnail_visiogait.png", "path": null, "size": 17.25, "width": 123, "height": 156}}	visiogait_b8e56caa01	.png	image/png	10.28	https://bama-trial.s3.eu-central-1.amazonaws.com/visiogait_b8e56caa01.png	\N	aws-s3	\N	/	2023-07-26 09:18:55.55	2023-07-26 09:18:55.55	1	1
94	freegait.png	\N	\N	205	223	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_374397d87d.png", "hash": "thumbnail_freegait_374397d87d", "mime": "image/png", "name": "thumbnail_freegait.png", "path": null, "size": 30.07, "width": 143, "height": 156}}	freegait_374397d87d	.png	image/png	14.76	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_374397d87d.png	\N	aws-s3	\N	/	2023-07-26 09:18:55.913	2023-07-26 09:18:55.913	1	1
101	about.png	\N	\N	1120	415	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_about_d673e5db43.png", "hash": "large_about_d673e5db43", "mime": "image/png", "name": "large_about.png", "path": null, "size": 317.57, "width": 1000, "height": 371}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_about_d673e5db43.png", "hash": "small_about_d673e5db43", "mime": "image/png", "name": "small_about.png", "path": null, "size": 86.53, "width": 500, "height": 185}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_about_d673e5db43.png", "hash": "medium_about_d673e5db43", "mime": "image/png", "name": "medium_about.png", "path": null, "size": 185.79, "width": 750, "height": 278}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_about_d673e5db43.png", "hash": "thumbnail_about_d673e5db43", "mime": "image/png", "name": "thumbnail_about.png", "path": null, "size": 24.03, "width": 245, "height": 91}}	about_d673e5db43	.png	image/png	94.76	https://bama-trial.s3.eu-central-1.amazonaws.com/about_d673e5db43.png	\N	aws-s3	\N	/	2023-07-26 09:19:50.935	2023-07-26 09:19:50.935	1	1
97	product1.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product1_9527007041.png", "hash": "thumbnail_product1_9527007041", "mime": "image/png", "name": "thumbnail_product1.png", "path": null, "size": 23.18, "width": 169, "height": 156}}	product1_9527007041	.png	image/png	28.48	https://bama-trial.s3.eu-central-1.amazonaws.com/product1_9527007041.png	\N	aws-s3	\N	/	2023-07-26 09:19:19.894	2023-07-26 09:19:19.894	1	1
98	joinUs.png	\N	\N	369	300	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_join_Us_1465f2b696.png", "hash": "thumbnail_join_Us_1465f2b696", "mime": "image/png", "name": "thumbnail_joinUs.png", "path": null, "size": 76.02, "width": 192, "height": 156}}	join_Us_1465f2b696	.png	image/png	70.00	https://bama-trial.s3.eu-central-1.amazonaws.com/join_Us_1465f2b696.png	\N	aws-s3	\N	/	2023-07-26 09:19:20.741	2023-07-26 09:19:20.741	1	1
99	banner2.png	\N	\N	369	372	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_banner2_e919cba576.png", "hash": "thumbnail_banner2_e919cba576", "mime": "image/png", "name": "thumbnail_banner2.png", "path": null, "size": 61.11, "width": 155, "height": 156}}	banner2_e919cba576	.png	image/png	80.99	https://bama-trial.s3.eu-central-1.amazonaws.com/banner2_e919cba576.png	\N	aws-s3	\N	/	2023-07-26 09:19:21.085	2023-07-26 09:19:21.085	1	1
100	banner.png	\N	\N	369	640	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_banner_4824f4b63c.png", "hash": "small_banner_4824f4b63c", "mime": "image/png", "name": "small_banner.png", "path": null, "size": 282.97, "width": 288, "height": 500}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_banner_4824f4b63c.png", "hash": "thumbnail_banner_4824f4b63c", "mime": "image/png", "name": "thumbnail_banner.png", "path": null, "size": 33.32, "width": 90, "height": 156}}	banner_4824f4b63c	.png	image/png	109.49	https://bama-trial.s3.eu-central-1.amazonaws.com/banner_4824f4b63c.png	\N	aws-s3	\N	/	2023-07-26 09:19:21.459	2023-07-26 09:19:21.459	1	1
65	accessories2.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_accessories2_59dbb87f67.png", "hash": "thumbnail_accessories2_59dbb87f67", "mime": "image/png", "name": "thumbnail_accessories2.png", "path": null, "size": 28.43, "width": 178, "height": 156}}	accessories2_59dbb87f67	.png	image/png	26.59	https://bama-trial.s3.eu-central-1.amazonaws.com/accessories2_59dbb87f67.png	\N	aws-s3	\N	/	2023-07-26 09:16:03.987	2023-07-26 09:16:03.987	1	1
66	highlight1.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlight1_381538b597.png", "hash": "thumbnail_highlight1_381538b597", "mime": "image/png", "name": "thumbnail_highlight1.png", "path": null, "size": 32.7, "width": 178, "height": 156}}	highlight1_381538b597	.png	image/png	30.13	https://bama-trial.s3.eu-central-1.amazonaws.com/highlight1_381538b597.png	\N	aws-s3	\N	/	2023-07-26 09:16:08.038	2023-07-26 09:16:08.038	1	1
109	solomed.svg	\N	\N	236	64	\N	solomed_3e664360bc	.svg	image/svg+xml	119.56	https://bama-trial.s3.eu-central-1.amazonaws.com/solomed_3e664360bc.svg	\N	aws-s3	\N	/	2023-07-26 09:23:43.696	2023-07-26 09:23:43.696	1	1
106	product.png	\N	\N	374	240	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product_13efcb7a29.png", "hash": "thumbnail_product_13efcb7a29", "mime": "image/png", "name": "thumbnail_product.png", "path": null, "size": 48.39, "width": 243, "height": 156}}	product_13efcb7a29	.png	image/png	29.73	https://bama-trial.s3.eu-central-1.amazonaws.com/product_13efcb7a29.png	\N	aws-s3	\N	/	2023-07-26 09:21:46.806	2023-07-26 09:21:46.806	1	1
104	robogait.png	\N	\N	1120	480	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_robogait_6912b7b60a.png", "hash": "large_robogait_6912b7b60a", "mime": "image/png", "name": "large_robogait.png", "path": null, "size": 500.41, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_robogait_6912b7b60a.png", "hash": "small_robogait_6912b7b60a", "mime": "image/png", "name": "small_robogait.png", "path": null, "size": 141.08, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_robogait_6912b7b60a.png", "hash": "medium_robogait_6912b7b60a", "mime": "image/png", "name": "medium_robogait.png", "path": null, "size": 293.68, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_robogait_6912b7b60a.png", "hash": "thumbnail_robogait_6912b7b60a", "mime": "image/png", "name": "thumbnail_robogait.png", "path": null, "size": 41.91, "width": 245, "height": 105}}	robogait_6912b7b60a	.png	image/png	131.85	https://bama-trial.s3.eu-central-1.amazonaws.com/robogait_6912b7b60a.png	\N	aws-s3	\N	/	2023-07-26 09:19:57.166	2023-07-26 09:19:57.166	1	1
105	visiogait.png	\N	\N	1120	480	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_visiogait_392a77f8a8.png", "hash": "large_visiogait_392a77f8a8", "mime": "image/png", "name": "large_visiogait.png", "path": null, "size": 564.58, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_visiogait_392a77f8a8.png", "hash": "small_visiogait_392a77f8a8", "mime": "image/png", "name": "small_visiogait.png", "path": null, "size": 159.81, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_visiogait_392a77f8a8.png", "hash": "medium_visiogait_392a77f8a8", "mime": "image/png", "name": "medium_visiogait.png", "path": null, "size": 333.96, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_visiogait_392a77f8a8.png", "hash": "thumbnail_visiogait_392a77f8a8", "mime": "image/png", "name": "thumbnail_visiogait.png", "path": null, "size": 46.23, "width": 245, "height": 105}}	visiogait_392a77f8a8	.png	image/png	149.09	https://bama-trial.s3.eu-central-1.amazonaws.com/visiogait_392a77f8a8.png	\N	aws-s3	\N	/	2023-07-26 09:19:57.913	2023-07-26 09:19:57.913	1	1
113	104_Assignment3_2023-Updated.pdf	\N	\N	\N	\N	\N	104_Assignment3_2023_Updated_ca159b12d3	.pdf	application/pdf	206.63	https://bama-trial.s3.eu-central-1.amazonaws.com/104_Assignment3_2023_Updated_ca159b12d3.pdf	\N	aws-s3	\N	/	2023-07-26 10:14:45.056	2023-07-26 10:14:45.056	1	1
297	CTL-B0112-DE-Rev.03-Digital-.pdf	\N	\N	\N	\N	\N	CTL_B0112_DE_Rev_03_Digital_c7e4eeb43d	.pdf	application/pdf	563.50	https://bama-trial.s3.eu-central-1.amazonaws.com/CTL_B0112_DE_Rev_03_Digital_c7e4eeb43d.pdf	\N	aws-s3	\N	/	2023-10-11 14:14:09.905	2023-10-11 14:14:09.905	5	5
67	highlight2.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlight2_c7232039db.png", "hash": "thumbnail_highlight2_c7232039db", "mime": "image/png", "name": "thumbnail_highlight2.png", "path": null, "size": 36.57, "width": 178, "height": 156}}	highlight2_c7232039db	.png	image/png	30.40	https://bama-trial.s3.eu-central-1.amazonaws.com/highlight2_c7232039db.png	\N	aws-s3	\N	/	2023-07-26 09:16:09.599	2023-07-26 09:16:09.599	1	1
68	highlight3.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlight3_5e2e4a7850.png", "hash": "thumbnail_highlight3_5e2e4a7850", "mime": "image/png", "name": "thumbnail_highlight3.png", "path": null, "size": 33.91, "width": 178, "height": 156}}	highlight3_5e2e4a7850	.png	image/png	26.22	https://bama-trial.s3.eu-central-1.amazonaws.com/highlight3_5e2e4a7850.png	\N	aws-s3	\N	/	2023-07-26 09:16:10.833	2023-07-26 09:16:10.833	1	1
69	product.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product_f4b2bb0838.png", "hash": "thumbnail_product_f4b2bb0838", "mime": "image/png", "name": "thumbnail_product.png", "path": null, "size": 50.34, "width": 169, "height": 156}}	product_f4b2bb0838	.png	image/png	61.35	https://bama-trial.s3.eu-central-1.amazonaws.com/product_f4b2bb0838.png	\N	aws-s3	\N	/	2023-07-26 09:16:17.678	2023-07-26 09:16:17.678	1	1
70	product2.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product2_77a2428ac1.png", "hash": "thumbnail_product2_77a2428ac1", "mime": "image/png", "name": "thumbnail_product2.png", "path": null, "size": 28.72, "width": 169, "height": 156}}	product2_77a2428ac1	.png	image/png	48.44	https://bama-trial.s3.eu-central-1.amazonaws.com/product2_77a2428ac1.png	\N	aws-s3	\N	/	2023-07-26 09:16:17.991	2023-07-26 09:16:17.991	1	1
71	product5.png	\N	\N	650	465	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_product5_d56a31bc79.png", "hash": "small_product5_d56a31bc79", "mime": "image/png", "name": "small_product5.png", "path": null, "size": 113.34, "width": 500, "height": 358}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product5_d56a31bc79.png", "hash": "thumbnail_product5_d56a31bc79", "mime": "image/png", "name": "thumbnail_product5.png", "path": null, "size": 25.44, "width": 218, "height": 156}}	product5_d56a31bc79	.png	image/png	35.89	https://bama-trial.s3.eu-central-1.amazonaws.com/product5_d56a31bc79.png	\N	aws-s3	\N	/	2023-07-26 09:16:18.363	2023-07-26 09:16:18.363	1	1
72	product4.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product4_4a69c94f8a.png", "hash": "thumbnail_product4_4a69c94f8a", "mime": "image/png", "name": "thumbnail_product4.png", "path": null, "size": 16.83, "width": 169, "height": 156}}	product4_4a69c94f8a	.png	image/png	20.79	https://bama-trial.s3.eu-central-1.amazonaws.com/product4_4a69c94f8a.png	\N	aws-s3	\N	/	2023-07-26 09:16:18.714	2023-07-26 09:16:18.714	1	1
73	product3.png	\N	\N	680	560	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_product3_065d547d88.png", "hash": "small_product3_065d547d88", "mime": "image/png", "name": "small_product3.png", "path": null, "size": 178.2, "width": 500, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product3_065d547d88.png", "hash": "thumbnail_product3_065d547d88", "mime": "image/png", "name": "thumbnail_product3.png", "path": null, "size": 32.3, "width": 189, "height": 156}}	product3_065d547d88	.png	image/png	65.09	https://bama-trial.s3.eu-central-1.amazonaws.com/product3_065d547d88.png	\N	aws-s3	\N	/	2023-07-26 09:16:21.196	2023-07-26 09:16:21.196	1	1
83	highlight2.png	\N	\N	374	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlight2_f008e326f8.png", "hash": "thumbnail_highlight2_f008e326f8", "mime": "image/png", "name": "thumbnail_highlight2.png", "path": null, "size": 21.16, "width": 193, "height": 156}}	highlight2_f008e326f8	.png	image/png	13.67	https://bama-trial.s3.eu-central-1.amazonaws.com/highlight2_f008e326f8.png	\N	aws-s3	\N	/	2023-07-26 09:18:27.466	2023-07-26 09:18:27.466	1	1
84	accessories2.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_accessories2_bef5cfb952.png", "hash": "thumbnail_accessories2_bef5cfb952", "mime": "image/png", "name": "thumbnail_accessories2.png", "path": null, "size": 43.06, "width": 178, "height": 156}}	accessories2_bef5cfb952	.png	image/png	28.19	https://bama-trial.s3.eu-central-1.amazonaws.com/accessories2_bef5cfb952.png	\N	aws-s3	\N	/	2023-07-26 09:18:28.193	2023-07-26 09:18:28.193	1	1
85	accessories1.png	\N	\N	368	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_accessories1_09a6aea677.png", "hash": "thumbnail_accessories1_09a6aea677", "mime": "image/png", "name": "thumbnail_accessories1.png", "path": null, "size": 42.22, "width": 190, "height": 156}}	accessories1_09a6aea677	.png	image/png	26.53	https://bama-trial.s3.eu-central-1.amazonaws.com/accessories1_09a6aea677.png	\N	aws-s3	\N	/	2023-07-26 09:18:28.267	2023-07-26 09:18:28.267	1	1
86	highlight1.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlight1_2eedff16c3.png", "hash": "thumbnail_highlight1_2eedff16c3", "mime": "image/png", "name": "thumbnail_highlight1.png", "path": null, "size": 38.46, "width": 178, "height": 156}}	highlight1_2eedff16c3	.png	image/png	34.76	https://bama-trial.s3.eu-central-1.amazonaws.com/highlight1_2eedff16c3.png	\N	aws-s3	\N	/	2023-07-26 09:18:28.341	2023-07-26 09:18:28.341	1	1
87	highlight3.png	\N	\N	374	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlight3_4d7fc992df.png", "hash": "thumbnail_highlight3_4d7fc992df", "mime": "image/png", "name": "thumbnail_highlight3.png", "path": null, "size": 38.92, "width": 193, "height": 156}}	highlight3_4d7fc992df	.png	image/png	33.53	https://bama-trial.s3.eu-central-1.amazonaws.com/highlight3_4d7fc992df.png	\N	aws-s3	\N	/	2023-07-26 09:18:28.667	2023-07-26 09:18:28.667	1	1
88	product.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product_a8c2bbd12c.png", "hash": "thumbnail_product_a8c2bbd12c", "mime": "image/png", "name": "thumbnail_product.png", "path": null, "size": 38.52, "width": 169, "height": 156}}	product_a8c2bbd12c	.png	image/png	53.51	https://bama-trial.s3.eu-central-1.amazonaws.com/product_a8c2bbd12c.png	\N	aws-s3	\N	/	2023-07-26 09:18:29.079	2023-07-26 09:18:29.079	1	1
186	dummy.pdf	\N	\N	\N	\N	\N	dummy_0b1edb5d3a	.pdf	application/pdf	13.26	https://bama-trial.s3.eu-central-1.amazonaws.com/dummy_0b1edb5d3a.pdf	\N	aws-s3	\N	/	2023-08-09 10:06:22.309	2023-08-09 10:06:50.629	1	1
90	banner.png	\N	\N	1120	456	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_banner_2c638cf673.png", "hash": "large_banner_2c638cf673", "mime": "image/png", "name": "large_banner.png", "path": null, "size": 577.63, "width": 1000, "height": 407}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_banner_2c638cf673.png", "hash": "small_banner_2c638cf673", "mime": "image/png", "name": "small_banner.png", "path": null, "size": 150.36, "width": 500, "height": 204}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_banner_2c638cf673.png", "hash": "medium_banner_2c638cf673", "mime": "image/png", "name": "medium_banner.png", "path": null, "size": 325.07, "width": 750, "height": 305}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_banner_2c638cf673.png", "hash": "thumbnail_banner_2c638cf673", "mime": "image/png", "name": "thumbnail_banner.png", "path": null, "size": 43.62, "width": 245, "height": 100}}	banner_2c638cf673	.png	image/png	123.63	https://bama-trial.s3.eu-central-1.amazonaws.com/banner_2c638cf673.png	\N	aws-s3	\N	/	2023-07-26 09:18:30.252	2023-07-26 09:18:30.252	1	1
91	product4.png	\N	\N	512	478	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_product4_9268b463a7.png", "hash": "small_product4_9268b463a7", "mime": "image/png", "name": "small_product4.png", "path": null, "size": 157.65, "width": 500, "height": 467}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product4_9268b463a7.png", "hash": "thumbnail_product4_9268b463a7", "mime": "image/png", "name": "thumbnail_product4.png", "path": null, "size": 27.37, "width": 167, "height": 156}}	product4_9268b463a7	.png	image/png	47.22	https://bama-trial.s3.eu-central-1.amazonaws.com/product4_9268b463a7.png	\N	aws-s3	\N	/	2023-07-26 09:18:30.609	2023-07-26 09:18:30.609	1	1
92	product3.png	\N	\N	680	560	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_product3_0b05460852.png", "hash": "small_product3_0b05460852", "mime": "image/png", "name": "small_product3.png", "path": null, "size": 144.95, "width": 500, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product3_0b05460852.png", "hash": "thumbnail_product3_0b05460852", "mime": "image/png", "name": "thumbnail_product3.png", "path": null, "size": 27.66, "width": 189, "height": 156}}	product3_0b05460852	.png	image/png	64.97	https://bama-trial.s3.eu-central-1.amazonaws.com/product3_0b05460852.png	\N	aws-s3	\N	/	2023-07-26 09:18:30.919	2023-07-26 09:18:30.919	1	1
110	product.png	\N	\N	645	560	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_product_461e8ea5e8.png", "hash": "small_product_461e8ea5e8", "mime": "image/png", "name": "small_product.png", "path": null, "size": 172.59, "width": 500, "height": 434}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product_461e8ea5e8.png", "hash": "thumbnail_product_461e8ea5e8", "mime": "image/png", "name": "thumbnail_product.png", "path": null, "size": 30.39, "width": 180, "height": 156}}	product_461e8ea5e8	.png	image/png	73.47	https://bama-trial.s3.eu-central-1.amazonaws.com/product_461e8ea5e8.png	\N	aws-s3	\N	/	2023-07-26 09:23:45.368	2023-07-26 09:23:45.368	1	1
111	splitContentImage.png	\N	\N	725	482	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_split_Content_Image_7c80732790.png", "hash": "small_split_Content_Image_7c80732790", "mime": "image/png", "name": "small_splitContentImage.png", "path": null, "size": 234.9, "width": 500, "height": 332}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_split_Content_Image_7c80732790.png", "hash": "thumbnail_split_Content_Image_7c80732790", "mime": "image/png", "name": "thumbnail_splitContentImage.png", "path": null, "size": 55.75, "width": 235, "height": 156}}	split_Content_Image_7c80732790	.png	image/png	113.75	https://bama-trial.s3.eu-central-1.amazonaws.com/split_Content_Image_7c80732790.png	\N	aws-s3	\N	/	2023-07-26 09:23:49.091	2023-07-26 09:23:49.091	1	1
112	hero.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_hero_3d0594f2d8.png", "hash": "large_hero_3d0594f2d8", "mime": "image/png", "name": "large_hero.png", "path": null, "size": 469.35, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_hero_3d0594f2d8.png", "hash": "small_hero_3d0594f2d8", "mime": "image/png", "name": "small_hero.png", "path": null, "size": 138.73, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_hero_3d0594f2d8.png", "hash": "medium_hero_3d0594f2d8", "mime": "image/png", "name": "medium_hero.png", "path": null, "size": 280.45, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_hero_3d0594f2d8.png", "hash": "thumbnail_hero_3d0594f2d8", "mime": "image/png", "name": "thumbnail_hero.png", "path": null, "size": 42.59, "width": 245, "height": 105}}	hero_3d0594f2d8	.png	image/png	1745.36	https://bama-trial.s3.eu-central-1.amazonaws.com/hero_3d0594f2d8.png	\N	aws-s3	\N	/	2023-07-26 09:24:22.661	2023-07-26 09:24:22.661	1	1
95	freegait-middle.png	\N	\N	360	329	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_middle_ee096c210d.png", "hash": "thumbnail_freegait_middle_ee096c210d", "mime": "image/png", "name": "thumbnail_freegait-middle.png", "path": null, "size": 38.39, "width": 171, "height": 156}}	freegait_middle_ee096c210d	.png	image/png	39.06	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_middle_ee096c210d.png	\N	aws-s3	\N	/	2023-07-26 09:18:56.764	2023-07-26 09:18:56.764	1	1
96	robogait.png	\N	\N	360	526	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_robogait_9d344bf4de.png", "hash": "small_robogait_9d344bf4de", "mime": "image/png", "name": "small_robogait.png", "path": null, "size": 158.8, "width": 342, "height": 500}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_robogait_9d344bf4de.png", "hash": "thumbnail_robogait_9d344bf4de", "mime": "image/png", "name": "thumbnail_robogait.png", "path": null, "size": 23.11, "width": 107, "height": 156}}	robogait_9d344bf4de	.png	image/png	56.37	https://bama-trial.s3.eu-central-1.amazonaws.com/robogait_9d344bf4de.png	\N	aws-s3	\N	/	2023-07-26 09:18:57.125	2023-07-26 09:18:57.125	1	1
79	highlight1.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlight1_52b12c3afa.png", "hash": "thumbnail_highlight1_52b12c3afa", "mime": "image/png", "name": "thumbnail_highlight1.png", "path": null, "size": 27.67, "width": 178, "height": 156}}	highlight1_52b12c3afa	.png	image/png	21.74	https://bama-trial.s3.eu-central-1.amazonaws.com/highlight1_52b12c3afa.png	\N	aws-s3	\N	/	2023-07-26 09:17:42.348	2023-07-26 09:17:42.348	1	1
80	product3.png	\N	\N	716	482	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_product3_15b1b6d0d2.png", "hash": "small_product3_15b1b6d0d2", "mime": "image/png", "name": "small_product3.png", "path": null, "size": 99.58, "width": 500, "height": 337}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product3_15b1b6d0d2.png", "hash": "thumbnail_product3_15b1b6d0d2", "mime": "image/png", "name": "thumbnail_product3.png", "path": null, "size": 27.04, "width": 232, "height": 156}}	product3_15b1b6d0d2	.png	image/png	53.96	https://bama-trial.s3.eu-central-1.amazonaws.com/product3_15b1b6d0d2.png	\N	aws-s3	\N	/	2023-07-26 09:17:42.616	2023-07-26 09:17:42.616	1	1
81	product2.png	\N	\N	680	560	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_product2_c9f6a7d7ef.png", "hash": "small_product2_c9f6a7d7ef", "mime": "image/png", "name": "small_product2.png", "path": null, "size": 114.08, "width": 500, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_product2_c9f6a7d7ef.png", "hash": "thumbnail_product2_c9f6a7d7ef", "mime": "image/png", "name": "thumbnail_product2.png", "path": null, "size": 21.97, "width": 189, "height": 156}}	product2_c9f6a7d7ef	.png	image/png	36.89	https://bama-trial.s3.eu-central-1.amazonaws.com/product2_c9f6a7d7ef.png	\N	aws-s3	\N	/	2023-07-26 09:17:42.712	2023-07-26 09:17:42.712	1	1
102	home.png	\N	\N	1120	420	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_home_b5fdf9c813.png", "hash": "large_home_b5fdf9c813", "mime": "image/png", "name": "large_home.png", "path": null, "size": 456.88, "width": 1000, "height": 375}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_home_b5fdf9c813.png", "hash": "small_home_b5fdf9c813", "mime": "image/png", "name": "small_home.png", "path": null, "size": 132.61, "width": 500, "height": 187}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_home_b5fdf9c813.png", "hash": "medium_home_b5fdf9c813", "mime": "image/png", "name": "medium_home.png", "path": null, "size": 273.52, "width": 750, "height": 281}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_home_b5fdf9c813.png", "hash": "thumbnail_home_b5fdf9c813", "mime": "image/png", "name": "thumbnail_home.png", "path": null, "size": 38.07, "width": 245, "height": 92}}	home_b5fdf9c813	.png	image/png	127.61	https://bama-trial.s3.eu-central-1.amazonaws.com/home_b5fdf9c813.png	\N	aws-s3	\N	/	2023-07-26 09:19:54.765	2023-07-26 09:19:54.765	1	1
103	freegait.png	\N	\N	1120	480	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_freegait_c4efaa9b05.png", "hash": "large_freegait_c4efaa9b05", "mime": "image/png", "name": "large_freegait.png", "path": null, "size": 594.26, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_freegait_c4efaa9b05.png", "hash": "small_freegait_c4efaa9b05", "mime": "image/png", "name": "small_freegait.png", "path": null, "size": 164.8, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_freegait_c4efaa9b05.png", "hash": "medium_freegait_c4efaa9b05", "mime": "image/png", "name": "medium_freegait.png", "path": null, "size": 346.59, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_c4efaa9b05.png", "hash": "thumbnail_freegait_c4efaa9b05", "mime": "image/png", "name": "thumbnail_freegait.png", "path": null, "size": 47.89, "width": 245, "height": 105}}	freegait_c4efaa9b05	.png	image/png	153.43	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_c4efaa9b05.png	\N	aws-s3	\N	/	2023-07-26 09:19:56.435	2023-07-26 09:19:56.435	1	1
114	Hakkımızda 1.png	\N	\N	3080	1656	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Hakkimizda_1_2d11b0ca52.png", "hash": "large_Hakkimizda_1_2d11b0ca52", "mime": "image/png", "name": "large_Hakkımızda 1.png", "path": null, "size": 292.62, "width": 1000, "height": 538}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Hakkimizda_1_2d11b0ca52.png", "hash": "small_Hakkimizda_1_2d11b0ca52", "mime": "image/png", "name": "small_Hakkımızda 1.png", "path": null, "size": 89.01, "width": 500, "height": 269}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Hakkimizda_1_2d11b0ca52.png", "hash": "medium_Hakkimizda_1_2d11b0ca52", "mime": "image/png", "name": "medium_Hakkımızda 1.png", "path": null, "size": 176.89, "width": 750, "height": 403}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Hakkimizda_1_2d11b0ca52.png", "hash": "thumbnail_Hakkimizda_1_2d11b0ca52", "mime": "image/png", "name": "thumbnail_Hakkımızda 1.png", "path": null, "size": 26.63, "width": 245, "height": 132}}	Hakkimizda_1_2d11b0ca52	.png	image/png	502.37	https://bama-trial.s3.eu-central-1.amazonaws.com/Hakkimizda_1_2d11b0ca52.png	\N	aws-s3	\N	/	2023-08-02 07:36:29.889	2023-08-02 07:36:29.889	1	1
115	Hakkımızda 2.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Hakkimizda_2_c1fc4249f1.png", "hash": "large_Hakkimizda_2_c1fc4249f1", "mime": "image/png", "name": "large_Hakkımızda 2.png", "path": null, "size": 1006.15, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Hakkimizda_2_c1fc4249f1.png", "hash": "small_Hakkimizda_2_c1fc4249f1", "mime": "image/png", "name": "small_Hakkımızda 2.png", "path": null, "size": 273.93, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Hakkimizda_2_c1fc4249f1.png", "hash": "medium_Hakkimizda_2_c1fc4249f1", "mime": "image/png", "name": "medium_Hakkımızda 2.png", "path": null, "size": 588.29, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Hakkimizda_2_c1fc4249f1.png", "hash": "thumbnail_Hakkimizda_2_c1fc4249f1", "mime": "image/png", "name": "thumbnail_Hakkımızda 2.png", "path": null, "size": 36.75, "width": 169, "height": 156}}	Hakkimizda_2_c1fc4249f1	.png	image/png	708.47	https://bama-trial.s3.eu-central-1.amazonaws.com/Hakkimizda_2_c1fc4249f1.png	\N	aws-s3	\N	/	2023-08-02 07:36:46.937	2023-08-02 07:36:46.937	1	1
187	dummy.pdf	\N	\N	\N	\N	\N	dummy_9005ab13cf	.pdf	application/pdf	13.26	https://bama-trial.s3.eu-central-1.amazonaws.com/dummy_9005ab13cf.pdf	\N	aws-s3	\N	/	2023-08-09 10:06:43.663	2023-08-09 10:07:22.02	1	1
276	Anasayfa 2.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_2_a4484842b9.png", "hash": "thumbnail_Anasayfa_2_a4484842b9", "mime": "image/png", "name": "thumbnail_Anasayfa 2.png", "path": null, "size": 43.39, "width": 169, "height": 156}}	Anasayfa_2_a4484842b9	.png	image/png	57.15	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_2_a4484842b9.png	\N	aws-s3	\N	/	2023-08-31 13:00:36.65	2023-08-31 13:00:36.65	1	1
116	İletisim 1.png	\N	\N	2200	1608	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Iletisim_1_8d03d52407.png", "hash": "large_Iletisim_1_8d03d52407", "mime": "image/png", "name": "large_İletisim 1.png", "path": null, "size": 815.31, "width": 1000, "height": 731}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Iletisim_1_8d03d52407.png", "hash": "small_Iletisim_1_8d03d52407", "mime": "image/png", "name": "small_İletisim 1.png", "path": null, "size": 223.37, "width": 500, "height": 365}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Iletisim_1_8d03d52407.png", "hash": "medium_Iletisim_1_8d03d52407", "mime": "image/png", "name": "medium_İletisim 1.png", "path": null, "size": 477.13, "width": 750, "height": 548}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Iletisim_1_8d03d52407.png", "hash": "thumbnail_Iletisim_1_8d03d52407", "mime": "image/png", "name": "thumbnail_İletisim 1.png", "path": null, "size": 45.18, "width": 213, "height": 156}}	Iletisim_1_8d03d52407	.png	image/png	848.75	https://bama-trial.s3.eu-central-1.amazonaws.com/Iletisim_1_8d03d52407.png	\N	aws-s3	\N	/	2023-08-02 07:37:09.069	2023-08-02 07:37:09.069	1	1
117	Visiogait 1.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_1_4976340832.png", "hash": "large_Visiogait_1_4976340832", "mime": "image/png", "name": "large_Visiogait 1.png", "path": null, "size": 504.7, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_1_4976340832.png", "hash": "small_Visiogait_1_4976340832", "mime": "image/png", "name": "small_Visiogait 1.png", "path": null, "size": 149.47, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_1_4976340832.png", "hash": "medium_Visiogait_1_4976340832", "mime": "image/png", "name": "medium_Visiogait 1.png", "path": null, "size": 302.92, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_1_4976340832.png", "hash": "thumbnail_Visiogait_1_4976340832", "mime": "image/png", "name": "thumbnail_Visiogait 1.png", "path": null, "size": 43.38, "width": 245, "height": 105}}	Visiogait_1_4976340832	.png	image/png	1828.95	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_1_4976340832.png	\N	aws-s3	\N	/	2023-08-02 07:43:04.153	2023-08-02 07:43:04.153	1	1
118	Visiogait 2.png	\N	\N	4480	1744	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_2_135d37e707.png", "hash": "large_Visiogait_2_135d37e707", "mime": "image/png", "name": "large_Visiogait 2.png", "path": null, "size": 553.72, "width": 1000, "height": 389}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_2_135d37e707.png", "hash": "small_Visiogait_2_135d37e707", "mime": "image/png", "name": "small_Visiogait 2.png", "path": null, "size": 158.2, "width": 500, "height": 195}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_2_135d37e707.png", "hash": "medium_Visiogait_2_135d37e707", "mime": "image/png", "name": "medium_Visiogait 2.png", "path": null, "size": 328.97, "width": 750, "height": 292}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_2_135d37e707.png", "hash": "thumbnail_Visiogait_2_135d37e707", "mime": "image/png", "name": "thumbnail_Visiogait 2.png", "path": null, "size": 43.82, "width": 245, "height": 95}}	Visiogait_2_135d37e707	.png	image/png	2133.47	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_2_135d37e707.png	\N	aws-s3	\N	/	2023-08-02 07:46:59.459	2023-08-02 07:46:59.459	1	1
119	Visiogait Footer.png	\N	\N	2556	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Footer_eb266f042f.png", "hash": "large_Visiogait_Footer_eb266f042f", "mime": "image/png", "name": "large_Visiogait Footer.png", "path": null, "size": 386.1, "width": 1000, "height": 754}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Footer_eb266f042f.png", "hash": "small_Visiogait_Footer_eb266f042f", "mime": "image/png", "name": "small_Visiogait Footer.png", "path": null, "size": 112.41, "width": 500, "height": 377}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Footer_eb266f042f.png", "hash": "medium_Visiogait_Footer_eb266f042f", "mime": "image/png", "name": "medium_Visiogait Footer.png", "path": null, "size": 230.46, "width": 750, "height": 566}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Footer_eb266f042f.png", "hash": "thumbnail_Visiogait_Footer_eb266f042f", "mime": "image/png", "name": "thumbnail_Visiogait Footer.png", "path": null, "size": 26.45, "width": 207, "height": 156}}	Visiogait_Footer_eb266f042f	.png	image/png	553.88	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Footer_eb266f042f.png	\N	aws-s3	\N	/	2023-08-02 07:47:12.304	2023-08-02 07:47:12.304	1	1
120	Visiogait Urun Detaylari.png	\N	\N	2720	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Urun_Detaylari_a6407c5e61.png", "hash": "large_Visiogait_Urun_Detaylari_a6407c5e61", "mime": "image/png", "name": "large_Visiogait Urun Detaylari.png", "path": null, "size": 379.84, "width": 1000, "height": 824}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Urun_Detaylari_a6407c5e61.png", "hash": "small_Visiogait_Urun_Detaylari_a6407c5e61", "mime": "image/png", "name": "small_Visiogait Urun Detaylari.png", "path": null, "size": 113.92, "width": 500, "height": 412}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Urun_Detaylari_a6407c5e61.png", "hash": "medium_Visiogait_Urun_Detaylari_a6407c5e61", "mime": "image/png", "name": "medium_Visiogait Urun Detaylari.png", "path": null, "size": 228.49, "width": 750, "height": 618}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Urun_Detaylari_a6407c5e61.png", "hash": "thumbnail_Visiogait_Urun_Detaylari_a6407c5e61", "mime": "image/png", "name": "thumbnail_Visiogait Urun Detaylari.png", "path": null, "size": 24.34, "width": 189, "height": 156}}	Visiogait_Urun_Detaylari_a6407c5e61	.png	image/png	559.32	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Urun_Detaylari_a6407c5e61.png	\N	aws-s3	\N	/	2023-08-02 07:47:35.182	2023-08-02 07:47:35.182	1	1
262	KF Photo (1).png	\N	\N	360	360	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_KF_Photo_1_574bed75be.png", "hash": "thumbnail_KF_Photo_1_574bed75be", "mime": "image/png", "name": "thumbnail_KF Photo (1).png", "path": null, "size": 24.94, "width": 156, "height": 156}}	KF_Photo_1_574bed75be	.png	image/png	28.34	https://bama-trial.s3.eu-central-1.amazonaws.com/KF_Photo_1_574bed75be.png	\N	aws-s3	\N	/	2023-08-31 10:36:36.378	2023-08-31 10:36:36.378	1	1
121	Robogait 1.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_1_13599c37af.png", "hash": "large_Robogait_1_13599c37af", "mime": "image/png", "name": "large_Robogait 1.png", "path": null, "size": 460.58, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_1_13599c37af.png", "hash": "small_Robogait_1_13599c37af", "mime": "image/png", "name": "small_Robogait 1.png", "path": null, "size": 136.63, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_1_13599c37af.png", "hash": "medium_Robogait_1_13599c37af", "mime": "image/png", "name": "medium_Robogait 1.png", "path": null, "size": 274.76, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_1_13599c37af.png", "hash": "thumbnail_Robogait_1_13599c37af", "mime": "image/png", "name": "thumbnail_Robogait 1.png", "path": null, "size": 41.86, "width": 245, "height": 105}}	Robogait_1_13599c37af	.png	image/png	1730.64	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_1_13599c37af.png	\N	aws-s3	\N	/	2023-08-02 07:48:03.996	2023-08-02 07:48:03.996	1	1
122	Robogait 2.png	\N	\N	4480	1824	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_2_f1633b748a.png", "hash": "large_Robogait_2_f1633b748a", "mime": "image/png", "name": "large_Robogait 2.png", "path": null, "size": 518.51, "width": 1000, "height": 407}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_2_f1633b748a.png", "hash": "small_Robogait_2_f1633b748a", "mime": "image/png", "name": "small_Robogait 2.png", "path": null, "size": 145.62, "width": 500, "height": 204}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_2_f1633b748a.png", "hash": "medium_Robogait_2_f1633b748a", "mime": "image/png", "name": "medium_Robogait 2.png", "path": null, "size": 302.44, "width": 750, "height": 305}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_2_f1633b748a.png", "hash": "thumbnail_Robogait_2_f1633b748a", "mime": "image/png", "name": "thumbnail_Robogait 2.png", "path": null, "size": 43.52, "width": 245, "height": 100}}	Robogait_2_f1633b748a	.png	image/png	1883.74	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_2_f1633b748a.png	\N	aws-s3	\N	/	2023-08-02 07:49:31.031	2023-08-02 07:49:31.031	1	1
123	Robogait Aksesuar 1.png	\N	\N	663	606	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_1_8f0eb1071a.png", "hash": "small_Robogait_Aksesuar_1_8f0eb1071a", "mime": "image/png", "name": "small_Robogait Aksesuar 1.png", "path": null, "size": 151.91, "width": 500, "height": 457}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_1_8f0eb1071a.png", "hash": "thumbnail_Robogait_Aksesuar_1_8f0eb1071a", "mime": "image/png", "name": "thumbnail_Robogait Aksesuar 1.png", "path": null, "size": 20.73, "width": 171, "height": 156}}	Robogait_Aksesuar_1_8f0eb1071a	.png	image/png	72.52	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_1_8f0eb1071a.png	\N	aws-s3	\N	/	2023-08-02 07:49:41.57	2023-08-02 07:49:41.57	1	1
124	Robogait Aksesuar 2.png	\N	\N	334	591	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_2_7c27caf7f2.png", "hash": "small_Robogait_Aksesuar_2_7c27caf7f2", "mime": "image/png", "name": "small_Robogait Aksesuar 2.png", "path": null, "size": 83.74, "width": 283, "height": 500}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_2_7c27caf7f2.png", "hash": "thumbnail_Robogait_Aksesuar_2_7c27caf7f2", "mime": "image/png", "name": "thumbnail_Robogait Aksesuar 2.png", "path": null, "size": 12.83, "width": 88, "height": 156}}	Robogait_Aksesuar_2_7c27caf7f2	.png	image/png	32.27	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_2_7c27caf7f2.png	\N	aws-s3	\N	/	2023-08-02 07:49:50.461	2023-08-02 07:49:50.461	1	1
125	Robogait Aksesuar 3.jpg	\N	\N	1226	866	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Aksesuar_3_e066d6e3c7.jpg", "hash": "large_Robogait_Aksesuar_3_e066d6e3c7", "mime": "image/jpeg", "name": "large_Robogait Aksesuar 3.jpg", "path": null, "size": 61.14, "width": 1000, "height": 706}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_3_e066d6e3c7.jpg", "hash": "small_Robogait_Aksesuar_3_e066d6e3c7", "mime": "image/jpeg", "name": "small_Robogait Aksesuar 3.jpg", "path": null, "size": 20.56, "width": 500, "height": 353}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Aksesuar_3_e066d6e3c7.jpg", "hash": "medium_Robogait_Aksesuar_3_e066d6e3c7", "mime": "image/jpeg", "name": "medium_Robogait Aksesuar 3.jpg", "path": null, "size": 38.53, "width": 750, "height": 530}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_3_e066d6e3c7.jpg", "hash": "thumbnail_Robogait_Aksesuar_3_e066d6e3c7", "mime": "image/jpeg", "name": "thumbnail_Robogait Aksesuar 3.jpg", "path": null, "size": 6.87, "width": 221, "height": 156}}	Robogait_Aksesuar_3_e066d6e3c7	.jpg	image/jpeg	90.49	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_3_e066d6e3c7.jpg	\N	aws-s3	\N	/	2023-08-02 07:49:56.972	2023-08-02 07:49:56.972	1	1
126	Robogait Footer.png	\N	\N	2048	1912	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Footer_9fce1cc32a.png", "hash": "large_Robogait_Footer_9fce1cc32a", "mime": "image/png", "name": "large_Robogait Footer.png", "path": null, "size": 542.16, "width": 1000, "height": 934}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Footer_9fce1cc32a.png", "hash": "small_Robogait_Footer_9fce1cc32a", "mime": "image/png", "name": "small_Robogait Footer.png", "path": null, "size": 163.5, "width": 500, "height": 467}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Footer_9fce1cc32a.png", "hash": "medium_Robogait_Footer_9fce1cc32a", "mime": "image/png", "name": "medium_Robogait Footer.png", "path": null, "size": 327.38, "width": 750, "height": 700}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Footer_9fce1cc32a.png", "hash": "thumbnail_Robogait_Footer_9fce1cc32a", "mime": "image/png", "name": "thumbnail_Robogait Footer.png", "path": null, "size": 27.52, "width": 167, "height": 156}}	Robogait_Footer_9fce1cc32a	.png	image/png	555.63	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Footer_9fce1cc32a.png	\N	aws-s3	\N	/	2023-08-02 07:50:08.851	2023-08-02 07:50:08.851	1	1
281	procardia.svg	\N	\N	200	64	\N	procardia_f2624dfa3b	.svg	image/svg+xml	17.50	https://bama-trial.s3.eu-central-1.amazonaws.com/procardia_f2624dfa3b.svg	\N	aws-s3	\N	/	2023-09-26 06:02:45.113	2023-09-26 06:02:45.113	1	1
127	Robogait Ozellik 3.png	\N	\N	1375	1021	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_3_6bb497b9f9.png", "hash": "large_Robogait_Ozellik_3_6bb497b9f9", "mime": "image/png", "name": "large_Robogait Ozellik 3.png", "path": null, "size": 584.93, "width": 1000, "height": 743}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_3_6bb497b9f9.png", "hash": "small_Robogait_Ozellik_3_6bb497b9f9", "mime": "image/png", "name": "small_Robogait Ozellik 3.png", "path": null, "size": 141.3, "width": 500, "height": 371}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_3_6bb497b9f9.png", "hash": "medium_Robogait_Ozellik_3_6bb497b9f9", "mime": "image/png", "name": "medium_Robogait Ozellik 3.png", "path": null, "size": 317.54, "width": 750, "height": 557}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_3_6bb497b9f9.png", "hash": "thumbnail_Robogait_Ozellik_3_6bb497b9f9", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 3.png", "path": null, "size": 30.72, "width": 210, "height": 156}}	Robogait_Ozellik_3_6bb497b9f9	.png	image/png	250.30	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_3_6bb497b9f9.png	\N	aws-s3	\N	/	2023-08-02 07:50:47.851	2023-08-02 07:50:47.851	1	1
128	Robogait Ozellik 4.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_4_c3e7f1ecd3.png", "hash": "large_Robogait_Ozellik_4_c3e7f1ecd3", "mime": "image/png", "name": "large_Robogait Ozellik 4.png", "path": null, "size": 259.76, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_4_c3e7f1ecd3.png", "hash": "small_Robogait_Ozellik_4_c3e7f1ecd3", "mime": "image/png", "name": "small_Robogait Ozellik 4.png", "path": null, "size": 81.12, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_4_c3e7f1ecd3.png", "hash": "medium_Robogait_Ozellik_4_c3e7f1ecd3", "mime": "image/png", "name": "medium_Robogait Ozellik 4.png", "path": null, "size": 158.22, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_4_c3e7f1ecd3.png", "hash": "thumbnail_Robogait_Ozellik_4_c3e7f1ecd3", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 4.png", "path": null, "size": 25.39, "width": 245, "height": 135}}	Robogait_Ozellik_4_c3e7f1ecd3	.png	image/png	158.18	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_4_c3e7f1ecd3.png	\N	aws-s3	\N	/	2023-08-02 07:50:59.156	2023-08-02 07:50:59.156	1	1
130	Robogait Ozellik 4.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_4_215a1c307f.png", "hash": "large_Robogait_Ozellik_4_215a1c307f", "mime": "image/png", "name": "large_Robogait Ozellik 4.png", "path": null, "size": 259.76, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_4_215a1c307f.png", "hash": "small_Robogait_Ozellik_4_215a1c307f", "mime": "image/png", "name": "small_Robogait Ozellik 4.png", "path": null, "size": 81.12, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_4_215a1c307f.png", "hash": "medium_Robogait_Ozellik_4_215a1c307f", "mime": "image/png", "name": "medium_Robogait Ozellik 4.png", "path": null, "size": 158.22, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_4_215a1c307f.png", "hash": "thumbnail_Robogait_Ozellik_4_215a1c307f", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 4.png", "path": null, "size": 25.39, "width": 245, "height": 135}}	Robogait_Ozellik_4_215a1c307f	.png	image/png	158.18	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_4_215a1c307f.png	\N	aws-s3	\N	/	2023-08-02 07:51:35.22	2023-08-02 07:51:35.22	1	1
132	Robogait Urun Detaylari.png	\N	\N	2720	2476	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Urun_Detaylari_e1529b87ce.png", "hash": "large_Robogait_Urun_Detaylari_e1529b87ce", "mime": "image/png", "name": "large_Robogait Urun Detaylari.png", "path": null, "size": 623.71, "width": 1000, "height": 910}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Urun_Detaylari_e1529b87ce.png", "hash": "small_Robogait_Urun_Detaylari_e1529b87ce", "mime": "image/png", "name": "small_Robogait Urun Detaylari.png", "path": null, "size": 185.75, "width": 500, "height": 455}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Urun_Detaylari_e1529b87ce.png", "hash": "medium_Robogait_Urun_Detaylari_e1529b87ce", "mime": "image/png", "name": "medium_Robogait Urun Detaylari.png", "path": null, "size": 375.76, "width": 750, "height": 683}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Urun_Detaylari_e1529b87ce.png", "hash": "thumbnail_Robogait_Urun_Detaylari_e1529b87ce", "mime": "image/png", "name": "thumbnail_Robogait Urun Detaylari.png", "path": null, "size": 31.36, "width": 171, "height": 156}}	Robogait_Urun_Detaylari_e1529b87ce	.png	image/png	1094.30	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Urun_Detaylari_e1529b87ce.png	\N	aws-s3	\N	/	2023-08-02 07:51:58.602	2023-08-02 07:51:58.602	1	1
137	Freegait 1.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_1_c5997c1d82.png", "hash": "large_Freegait_1_c5997c1d82", "mime": "image/png", "name": "large_Freegait 1.png", "path": null, "size": 539.35, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_1_c5997c1d82.png", "hash": "small_Freegait_1_c5997c1d82", "mime": "image/png", "name": "small_Freegait 1.png", "path": null, "size": 156.13, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_1_c5997c1d82.png", "hash": "medium_Freegait_1_c5997c1d82", "mime": "image/png", "name": "medium_Freegait 1.png", "path": null, "size": 319.13, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_1_c5997c1d82.png", "hash": "thumbnail_Freegait_1_c5997c1d82", "mime": "image/png", "name": "thumbnail_Freegait 1.png", "path": null, "size": 45.37, "width": 245, "height": 105}}	Freegait_1_c5997c1d82	.png	image/png	2117.59	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_1_c5997c1d82.png	\N	aws-s3	\N	/	2023-08-02 07:53:29.72	2023-08-02 07:53:29.72	1	1
129	Robogait Ozellik 2.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_2_16c7f03f5e.png", "hash": "large_Robogait_Ozellik_2_16c7f03f5e", "mime": "image/png", "name": "large_Robogait Ozellik 2.png", "path": null, "size": 460.5, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_2_16c7f03f5e.png", "hash": "small_Robogait_Ozellik_2_16c7f03f5e", "mime": "image/png", "name": "small_Robogait Ozellik 2.png", "path": null, "size": 137.13, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_2_16c7f03f5e.png", "hash": "medium_Robogait_Ozellik_2_16c7f03f5e", "mime": "image/png", "name": "medium_Robogait Ozellik 2.png", "path": null, "size": 277.11, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_2_16c7f03f5e.png", "hash": "thumbnail_Robogait_Ozellik_2_16c7f03f5e", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 2.png", "path": null, "size": 41.28, "width": 245, "height": 135}}	Robogait_Ozellik_2_16c7f03f5e	.png	image/png	504.74	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_2_16c7f03f5e.png	\N	aws-s3	\N	/	2023-08-02 07:51:18.071	2023-08-02 07:51:18.071	1	1
131	Robogait Ozellik 5.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_5_da3be7b7cf.png", "hash": "large_Robogait_Ozellik_5_da3be7b7cf", "mime": "image/png", "name": "large_Robogait Ozellik 5.png", "path": null, "size": 901.45, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_5_da3be7b7cf.png", "hash": "small_Robogait_Ozellik_5_da3be7b7cf", "mime": "image/png", "name": "small_Robogait Ozellik 5.png", "path": null, "size": 251.27, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_5_da3be7b7cf.png", "hash": "medium_Robogait_Ozellik_5_da3be7b7cf", "mime": "image/png", "name": "medium_Robogait Ozellik 5.png", "path": null, "size": 528.76, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_5_da3be7b7cf.png", "hash": "thumbnail_Robogait_Ozellik_5_da3be7b7cf", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 5.png", "path": null, "size": 69.16, "width": 245, "height": 135}}	Robogait_Ozellik_5_da3be7b7cf	.png	image/png	782.20	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_5_da3be7b7cf.png	\N	aws-s3	\N	/	2023-08-02 07:51:45.009	2023-08-02 07:51:45.009	1	1
133	Anasayfa 1.png	\N	\N	1120	480	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_1_30fabd2c20.png", "hash": "large_Anasayfa_1_30fabd2c20", "mime": "image/png", "name": "large_Anasayfa 1.png", "path": null, "size": 497.47, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_1_30fabd2c20.png", "hash": "small_Anasayfa_1_30fabd2c20", "mime": "image/png", "name": "small_Anasayfa 1.png", "path": null, "size": 136.1, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_1_30fabd2c20.png", "hash": "medium_Anasayfa_1_30fabd2c20", "mime": "image/png", "name": "medium_Anasayfa 1.png", "path": null, "size": 288.55, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_1_30fabd2c20.png", "hash": "thumbnail_Anasayfa_1_30fabd2c20", "mime": "image/png", "name": "thumbnail_Anasayfa 1.png", "path": null, "size": 40.24, "width": 245, "height": 105}}	Anasayfa_1_30fabd2c20	.png	image/png	130.16	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_1_30fabd2c20.png	\N	aws-s3	\N	/	2023-08-02 07:52:24.259	2023-08-02 07:52:24.259	1	1
134	Anasayfa 2.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_2_2ad54960a4.png", "hash": "thumbnail_Anasayfa_2_2ad54960a4", "mime": "image/png", "name": "thumbnail_Anasayfa 2.png", "path": null, "size": 43.39, "width": 169, "height": 156}}	Anasayfa_2_2ad54960a4	.png	image/png	57.15	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_2_2ad54960a4.png	\N	aws-s3	\N	/	2023-08-02 07:52:31.486	2023-08-02 07:52:31.486	1	1
135	Anasayfa 3.png	\N	\N	1120	420	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_3_4fb8daf8b6.png", "hash": "large_Anasayfa_3_4fb8daf8b6", "mime": "image/png", "name": "large_Anasayfa 3.png", "path": null, "size": 463.03, "width": 1000, "height": 375}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_3_4fb8daf8b6.png", "hash": "small_Anasayfa_3_4fb8daf8b6", "mime": "image/png", "name": "small_Anasayfa 3.png", "path": null, "size": 132.73, "width": 500, "height": 187}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_3_4fb8daf8b6.png", "hash": "medium_Anasayfa_3_4fb8daf8b6", "mime": "image/png", "name": "medium_Anasayfa 3.png", "path": null, "size": 275.71, "width": 750, "height": 281}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_3_4fb8daf8b6.png", "hash": "thumbnail_Anasayfa_3_4fb8daf8b6", "mime": "image/png", "name": "thumbnail_Anasayfa 3.png", "path": null, "size": 38.35, "width": 245, "height": 92}}	Anasayfa_3_4fb8daf8b6	.png	image/png	131.46	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_3_4fb8daf8b6.png	\N	aws-s3	\N	/	2023-08-02 07:52:39.511	2023-08-02 07:52:39.511	1	1
136	Anasayfa footer.png	\N	\N	2860	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_footer_c50d41df4c.png", "hash": "large_Anasayfa_footer_c50d41df4c", "mime": "image/png", "name": "large_Anasayfa footer.png", "path": null, "size": 869.43, "width": 1000, "height": 674}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_footer_c50d41df4c.png", "hash": "small_Anasayfa_footer_c50d41df4c", "mime": "image/png", "name": "small_Anasayfa footer.png", "path": null, "size": 236.5, "width": 500, "height": 337}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_footer_c50d41df4c.png", "hash": "medium_Anasayfa_footer_c50d41df4c", "mime": "image/png", "name": "medium_Anasayfa footer.png", "path": null, "size": 505.04, "width": 750, "height": 506}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_footer_c50d41df4c.png", "hash": "thumbnail_Anasayfa_footer_c50d41df4c", "mime": "image/png", "name": "thumbnail_Anasayfa footer.png", "path": null, "size": 55.88, "width": 231, "height": 156}}	Anasayfa_footer_c50d41df4c	.png	image/png	1379.21	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_footer_c50d41df4c.png	\N	aws-s3	\N	/	2023-08-02 07:52:54.85	2023-08-02 07:52:54.85	1	1
138	Freegait 2.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_2_a4f25ab638.png", "hash": "large_Freegait_2_a4f25ab638", "mime": "image/png", "name": "large_Freegait 2.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_2_a4f25ab638.png", "hash": "small_Freegait_2_a4f25ab638", "mime": "image/png", "name": "small_Freegait 2.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_2_a4f25ab638.png", "hash": "medium_Freegait_2_a4f25ab638", "mime": "image/png", "name": "medium_Freegait 2.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_2_a4f25ab638.png", "hash": "thumbnail_Freegait_2_a4f25ab638", "mime": "image/png", "name": "thumbnail_Freegait 2.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	Freegait_2_a4f25ab638	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_2_a4f25ab638.png	\N	aws-s3	\N	/	2023-08-02 07:53:41.791	2023-08-02 07:53:41.791	1	1
139	Freegait Aksesuarlar 1.jpg	\N	\N	5000	3333	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_1_80930bf009.jpg", "hash": "large_Freegait_Aksesuarlar_1_80930bf009", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 1.jpg", "path": null, "size": 62.59, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_1_80930bf009.jpg", "hash": "small_Freegait_Aksesuarlar_1_80930bf009", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 1.jpg", "path": null, "size": 19.2, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_1_80930bf009.jpg", "hash": "medium_Freegait_Aksesuarlar_1_80930bf009", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 1.jpg", "path": null, "size": 37.59, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_1_80930bf009.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_1_80930bf009", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 1.jpg", "path": null, "size": 6.03, "width": 234, "height": 156}}	Freegait_Aksesuarlar_1_80930bf009	.jpg	image/jpeg	1039.81	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_1_80930bf009.jpg	\N	aws-s3	\N	/	2023-08-02 07:53:56.577	2023-08-02 07:53:56.577	1	1
142	Freegait Aksesuarlar 4.jpg	\N	\N	1715	1233	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_4_f971872792.jpg", "hash": "large_Freegait_Aksesuarlar_4_f971872792", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 4.jpg", "path": null, "size": 117.46, "width": 1000, "height": 719}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_4_f971872792.jpg", "hash": "small_Freegait_Aksesuarlar_4_f971872792", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 4.jpg", "path": null, "size": 41.19, "width": 500, "height": 359}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_4_f971872792.jpg", "hash": "medium_Freegait_Aksesuarlar_4_f971872792", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 4.jpg", "path": null, "size": 76.26, "width": 750, "height": 539}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_4_f971872792.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_4_f971872792", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 4.jpg", "path": null, "size": 10.59, "width": 217, "height": 156}}	Freegait_Aksesuarlar_4_f971872792	.jpg	image/jpeg	256.26	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_4_f971872792.jpg	\N	aws-s3	\N	/	2023-08-02 07:54:37.321	2023-08-02 07:54:37.321	1	1
140	Freegait Aksesuarlar 2.jpg	\N	\N	5000	3333	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_2_a52396df31.jpg", "hash": "large_Freegait_Aksesuarlar_2_a52396df31", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 2.jpg", "path": null, "size": 40.5, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_2_a52396df31.jpg", "hash": "small_Freegait_Aksesuarlar_2_a52396df31", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 2.jpg", "path": null, "size": 12.21, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_2_a52396df31.jpg", "hash": "medium_Freegait_Aksesuarlar_2_a52396df31", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 2.jpg", "path": null, "size": 25.15, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_2_a52396df31.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_2_a52396df31", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 2.jpg", "path": null, "size": 3.83, "width": 234, "height": 156}}	Freegait_Aksesuarlar_2_a52396df31	.jpg	image/jpeg	653.36	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_2_a52396df31.jpg	\N	aws-s3	\N	/	2023-08-02 07:54:07.746	2023-08-02 07:54:07.746	1	1
141	Freegait Aksesuarlar 3.jpg	\N	\N	5000	3333	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_3_8c2a1d9787.jpg", "hash": "large_Freegait_Aksesuarlar_3_8c2a1d9787", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 3.jpg", "path": null, "size": 42.86, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_3_8c2a1d9787.jpg", "hash": "small_Freegait_Aksesuarlar_3_8c2a1d9787", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 3.jpg", "path": null, "size": 14.8, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_3_8c2a1d9787.jpg", "hash": "medium_Freegait_Aksesuarlar_3_8c2a1d9787", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 3.jpg", "path": null, "size": 27.41, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_3_8c2a1d9787.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_3_8c2a1d9787", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 3.jpg", "path": null, "size": 5.05, "width": 234, "height": 156}}	Freegait_Aksesuarlar_3_8c2a1d9787	.jpg	image/jpeg	718.22	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_3_8c2a1d9787.jpg	\N	aws-s3	\N	/	2023-08-02 07:54:28.404	2023-08-02 07:54:28.404	1	1
143	Freegait Footer.png	\N	\N	1872	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Footer_dfcab37e1b.png", "hash": "large_Freegait_Footer_dfcab37e1b", "mime": "image/png", "name": "large_Freegait Footer.png", "path": null, "size": 501.06, "width": 971, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Footer_dfcab37e1b.png", "hash": "small_Freegait_Footer_dfcab37e1b", "mime": "image/png", "name": "small_Freegait Footer.png", "path": null, "size": 143.37, "width": 485, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Footer_dfcab37e1b.png", "hash": "medium_Freegait_Footer_dfcab37e1b", "mime": "image/png", "name": "medium_Freegait Footer.png", "path": null, "size": 300.73, "width": 728, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Footer_dfcab37e1b.png", "hash": "thumbnail_Freegait_Footer_dfcab37e1b", "mime": "image/png", "name": "thumbnail_Freegait Footer.png", "path": null, "size": 18.13, "width": 151, "height": 156}}	Freegait_Footer_dfcab37e1b	.png	image/png	355.21	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Footer_dfcab37e1b.png	\N	aws-s3	\N	/	2023-08-02 07:54:48.148	2023-08-02 07:54:48.148	1	1
144	Freegait Urun Detaylari.png	\N	\N	2720	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Urun_Detaylari_fac3c0b8cc.png", "hash": "large_Freegait_Urun_Detaylari_fac3c0b8cc", "mime": "image/png", "name": "large_Freegait Urun Detaylari.png", "path": null, "size": 394.85, "width": 1000, "height": 824}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Urun_Detaylari_fac3c0b8cc.png", "hash": "small_Freegait_Urun_Detaylari_fac3c0b8cc", "mime": "image/png", "name": "small_Freegait Urun Detaylari.png", "path": null, "size": 114.35, "width": 500, "height": 412}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Urun_Detaylari_fac3c0b8cc.png", "hash": "medium_Freegait_Urun_Detaylari_fac3c0b8cc", "mime": "image/png", "name": "medium_Freegait Urun Detaylari.png", "path": null, "size": 238.25, "width": 750, "height": 618}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Urun_Detaylari_fac3c0b8cc.png", "hash": "thumbnail_Freegait_Urun_Detaylari_fac3c0b8cc", "mime": "image/png", "name": "thumbnail_Freegait Urun Detaylari.png", "path": null, "size": 22.1, "width": 189, "height": 156}}	Freegait_Urun_Detaylari_fac3c0b8cc	.png	image/png	572.00	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Urun_Detaylari_fac3c0b8cc.png	\N	aws-s3	\N	/	2023-08-02 07:54:59.153	2023-08-02 07:54:59.153	1	1
145	Anasayfa Ürünler Freegait.png	\N	\N	1944	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Freegait_65cfc06267.png", "hash": "large_Anasayfa_Ueruenler_Freegait_65cfc06267", "mime": "image/png", "name": "large_Anasayfa Ürünler Freegait.png", "path": null, "size": 558.76, "width": 868, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Freegait_65cfc06267.png", "hash": "small_Anasayfa_Ueruenler_Freegait_65cfc06267", "mime": "image/png", "name": "small_Anasayfa Ürünler Freegait.png", "path": null, "size": 158.44, "width": 434, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Freegait_65cfc06267.png", "hash": "medium_Anasayfa_Ueruenler_Freegait_65cfc06267", "mime": "image/png", "name": "medium_Anasayfa Ürünler Freegait.png", "path": null, "size": 327.67, "width": 651, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Freegait_65cfc06267.png", "hash": "thumbnail_Anasayfa_Ueruenler_Freegait_65cfc06267", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Freegait.png", "path": null, "size": 20.67, "width": 135, "height": 156}}	Anasayfa_Ueruenler_Freegait_65cfc06267	.png	image/png	527.48	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Freegait_65cfc06267.png	\N	aws-s3	\N	/	2023-08-02 08:47:20.578	2023-08-02 08:47:20.578	1	1
146	Anasayfa Ürünler Visiogait.png	\N	\N	2262	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Visiogait_bcb687963d.png", "hash": "large_Anasayfa_Ueruenler_Visiogait_bcb687963d", "mime": "image/png", "name": "large_Anasayfa Ürünler Visiogait.png", "path": null, "size": 475.26, "width": 1000, "height": 990}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Visiogait_bcb687963d.png", "hash": "small_Anasayfa_Ueruenler_Visiogait_bcb687963d", "mime": "image/png", "name": "small_Anasayfa Ürünler Visiogait.png", "path": null, "size": 140.83, "width": 500, "height": 495}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Visiogait_bcb687963d.png", "hash": "medium_Anasayfa_Ueruenler_Visiogait_bcb687963d", "mime": "image/png", "name": "medium_Anasayfa Ürünler Visiogait.png", "path": null, "size": 283.24, "width": 750, "height": 743}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Visiogait_bcb687963d.png", "hash": "thumbnail_Anasayfa_Ueruenler_Visiogait_bcb687963d", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Visiogait.png", "path": null, "size": 22.09, "width": 158, "height": 156}}	Anasayfa_Ueruenler_Visiogait_bcb687963d	.png	image/png	486.70	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Visiogait_bcb687963d.png	\N	aws-s3	\N	/	2023-08-02 08:48:48.342	2023-08-02 08:48:48.342	1	1
147	Anasayfa Ürünler Freegait.png	\N	\N	1944	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Freegait_4fa37cbb6a.png", "hash": "large_Anasayfa_Ueruenler_Freegait_4fa37cbb6a", "mime": "image/png", "name": "large_Anasayfa Ürünler Freegait.png", "path": null, "size": 558.76, "width": 868, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Freegait_4fa37cbb6a.png", "hash": "small_Anasayfa_Ueruenler_Freegait_4fa37cbb6a", "mime": "image/png", "name": "small_Anasayfa Ürünler Freegait.png", "path": null, "size": 158.44, "width": 434, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Freegait_4fa37cbb6a.png", "hash": "medium_Anasayfa_Ueruenler_Freegait_4fa37cbb6a", "mime": "image/png", "name": "medium_Anasayfa Ürünler Freegait.png", "path": null, "size": 327.67, "width": 651, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Freegait_4fa37cbb6a.png", "hash": "thumbnail_Anasayfa_Ueruenler_Freegait_4fa37cbb6a", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Freegait.png", "path": null, "size": 20.67, "width": 135, "height": 156}}	Anasayfa_Ueruenler_Freegait_4fa37cbb6a	.png	image/png	527.48	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Freegait_4fa37cbb6a.png	\N	aws-s3	\N	/	2023-08-02 08:48:48.666	2023-08-02 08:48:48.666	1	1
148	Anasayfa Ürünler Robogait.png	\N	\N	2578	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Robogait_ad7925edcf.png", "hash": "large_Anasayfa_Ueruenler_Robogait_ad7925edcf", "mime": "image/png", "name": "large_Anasayfa Ürünler Robogait.png", "path": null, "size": 589.75, "width": 1000, "height": 869}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Robogait_ad7925edcf.png", "hash": "small_Anasayfa_Ueruenler_Robogait_ad7925edcf", "mime": "image/png", "name": "small_Anasayfa Ürünler Robogait.png", "path": null, "size": 174.89, "width": 500, "height": 434}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Robogait_ad7925edcf.png", "hash": "medium_Anasayfa_Ueruenler_Robogait_ad7925edcf", "mime": "image/png", "name": "medium_Anasayfa Ürünler Robogait.png", "path": null, "size": 351.16, "width": 750, "height": 652}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Robogait_ad7925edcf.png", "hash": "thumbnail_Anasayfa_Ueruenler_Robogait_ad7925edcf", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Robogait.png", "path": null, "size": 31.29, "width": 180, "height": 156}}	Anasayfa_Ueruenler_Robogait_ad7925edcf	.png	image/png	939.04	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Robogait_ad7925edcf.png	\N	aws-s3	\N	/	2023-08-02 08:48:50.76	2023-08-02 08:49:19.24	1	1
263	KF Photo.png	\N	\N	360	360	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_KF_Photo_7b3e265e73.png", "hash": "thumbnail_KF_Photo_7b3e265e73", "mime": "image/png", "name": "thumbnail_KF Photo.png", "path": null, "size": 26.44, "width": 156, "height": 156}}	KF_Photo_7b3e265e73	.png	image/png	29.81	https://bama-trial.s3.eu-central-1.amazonaws.com/KF_Photo_7b3e265e73.png	\N	aws-s3	\N	/	2023-08-31 10:36:36.529	2023-08-31 10:36:36.529	1	1
264	Key Feature Card 7.png	\N	\N	360	438	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Key_Feature_Card_7_4207fe2b84.png", "hash": "thumbnail_Key_Feature_Card_7_4207fe2b84", "mime": "image/png", "name": "thumbnail_Key Feature Card 7.png", "path": null, "size": 20.18, "width": 128, "height": 156}}	Key_Feature_Card_7_4207fe2b84	.png	image/png	29.19	https://bama-trial.s3.eu-central-1.amazonaws.com/Key_Feature_Card_7_4207fe2b84.png	\N	aws-s3	\N	/	2023-08-31 10:36:36.577	2023-08-31 10:36:36.577	1	1
275	VG1-golgeli 1 (4th copy).png	\N	\N	295	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_VG_1_golgeli_1_4th_copy_d77fad44dd.png", "hash": "thumbnail_VG_1_golgeli_1_4th_copy_d77fad44dd", "mime": "image/png", "name": "thumbnail_VG1-golgeli 1 (4th copy).png", "path": null, "size": 19.37, "width": 152, "height": 156}}	VG_1_golgeli_1_4th_copy_d77fad44dd	.png	image/png	16.01	https://bama-trial.s3.eu-central-1.amazonaws.com/VG_1_golgeli_1_4th_copy_d77fad44dd.png	\N	aws-s3	\N	/	2023-08-31 10:46:59.752	2023-08-31 10:46:59.752	1	1
282	solomed.svg	\N	\N	236	64	\N	solomed_367c1175fb	.svg	image/svg+xml	119.56	https://bama-trial.s3.eu-central-1.amazonaws.com/solomed_367c1175fb.svg	\N	aws-s3	\N	/	2023-09-26 06:02:45.322	2023-09-26 06:02:45.322	1	1
284	SNVVJgq.jpg	\N	\N	971	120	{"small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_SNVV_Jgq_52c84a9101.jpg", "hash": "small_SNVV_Jgq_52c84a9101", "mime": "image/jpeg", "name": "small_SNVVJgq.jpg", "path": null, "size": 11.02, "width": 500, "height": 62}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_SNVV_Jgq_52c84a9101.jpg", "hash": "medium_SNVV_Jgq_52c84a9101", "mime": "image/jpeg", "name": "medium_SNVVJgq.jpg", "path": null, "size": 20.45, "width": 750, "height": 93}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_SNVV_Jgq_52c84a9101.jpg", "hash": "thumbnail_SNVV_Jgq_52c84a9101", "mime": "image/jpeg", "name": "thumbnail_SNVVJgq.jpg", "path": null, "size": 3.43, "width": 245, "height": 30}}	SNVV_Jgq_52c84a9101	.jpg	image/jpeg	27.28	https://bama-trial.s3.eu-central-1.amazonaws.com/SNVV_Jgq_52c84a9101.jpg	\N	aws-s3	\N	/	2023-09-26 08:13:31.063	2023-09-28 09:06:24.463	1	5
287	CTL-B0112-TR-Rev.03-Digital-1-.pdf	\N	\N	\N	\N	\N	CTL_B0112_TR_Rev_03_Digital_1_sikistirildi_d431b1053c	.pdf	application/pdf	617.63	https://bama-trial.s3.eu-central-1.amazonaws.com/CTL_B0112_TR_Rev_03_Digital_1_sikistirildi_d431b1053c.pdf	\N	aws-s3	\N	/	2023-10-11 10:17:04.213	2023-10-11 10:17:25.76	5	5
149	Freegait Aksesuarlar 4.jpg	\N	\N	1715	1233	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_4_a11afac9c8.jpg", "hash": "large_Freegait_Aksesuarlar_4_a11afac9c8", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 4.jpg", "path": null, "size": 117.46, "width": 1000, "height": 719}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_4_a11afac9c8.jpg", "hash": "small_Freegait_Aksesuarlar_4_a11afac9c8", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 4.jpg", "path": null, "size": 41.19, "width": 500, "height": 359}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_4_a11afac9c8.jpg", "hash": "medium_Freegait_Aksesuarlar_4_a11afac9c8", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 4.jpg", "path": null, "size": 76.26, "width": 750, "height": 539}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_4_a11afac9c8.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_4_a11afac9c8", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 4.jpg", "path": null, "size": 10.59, "width": 217, "height": 156}}	Freegait_Aksesuarlar_4_a11afac9c8	.jpg	image/jpeg	256.26	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_4_a11afac9c8.jpg	\N	aws-s3	\N	/	2023-08-02 10:41:07.557	2023-08-02 10:41:07.557	1	1
150	Freegait Aksesuarlar 2.jpg	\N	\N	5000	3333	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_2_ce15aeefd0.jpg", "hash": "large_Freegait_Aksesuarlar_2_ce15aeefd0", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 2.jpg", "path": null, "size": 40.5, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_2_ce15aeefd0.jpg", "hash": "small_Freegait_Aksesuarlar_2_ce15aeefd0", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 2.jpg", "path": null, "size": 12.21, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_2_ce15aeefd0.jpg", "hash": "medium_Freegait_Aksesuarlar_2_ce15aeefd0", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 2.jpg", "path": null, "size": 25.15, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_2_ce15aeefd0.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_2_ce15aeefd0", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 2.jpg", "path": null, "size": 3.83, "width": 234, "height": 156}}	Freegait_Aksesuarlar_2_ce15aeefd0	.jpg	image/jpeg	653.36	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_2_ce15aeefd0.jpg	\N	aws-s3	\N	/	2023-08-02 10:41:18.977	2023-08-02 10:41:18.977	1	1
151	Freegait Aksesuarlar 3.jpg	\N	\N	5000	3333	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_3_a7778d9231.jpg", "hash": "large_Freegait_Aksesuarlar_3_a7778d9231", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 3.jpg", "path": null, "size": 42.86, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_3_a7778d9231.jpg", "hash": "small_Freegait_Aksesuarlar_3_a7778d9231", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 3.jpg", "path": null, "size": 14.8, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_3_a7778d9231.jpg", "hash": "medium_Freegait_Aksesuarlar_3_a7778d9231", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 3.jpg", "path": null, "size": 27.41, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_3_a7778d9231.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_3_a7778d9231", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 3.jpg", "path": null, "size": 5.05, "width": 234, "height": 156}}	Freegait_Aksesuarlar_3_a7778d9231	.jpg	image/jpeg	718.22	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_3_a7778d9231.jpg	\N	aws-s3	\N	/	2023-08-02 10:41:23.67	2023-08-02 10:41:23.67	1	1
152	Freegait Footer.png	\N	\N	1872	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Footer_749ca4fa26.png", "hash": "large_Freegait_Footer_749ca4fa26", "mime": "image/png", "name": "large_Freegait Footer.png", "path": null, "size": 501.06, "width": 971, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Footer_749ca4fa26.png", "hash": "small_Freegait_Footer_749ca4fa26", "mime": "image/png", "name": "small_Freegait Footer.png", "path": null, "size": 143.37, "width": 485, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Footer_749ca4fa26.png", "hash": "medium_Freegait_Footer_749ca4fa26", "mime": "image/png", "name": "medium_Freegait Footer.png", "path": null, "size": 300.73, "width": 728, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Footer_749ca4fa26.png", "hash": "thumbnail_Freegait_Footer_749ca4fa26", "mime": "image/png", "name": "thumbnail_Freegait Footer.png", "path": null, "size": 18.13, "width": 151, "height": 156}}	Freegait_Footer_749ca4fa26	.png	image/png	355.21	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Footer_749ca4fa26.png	\N	aws-s3	\N	/	2023-08-02 10:41:25.058	2023-08-02 10:41:25.058	1	1
153	Freegait 2.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_2_804d4618bc.png", "hash": "large_Freegait_2_804d4618bc", "mime": "image/png", "name": "large_Freegait 2.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_2_804d4618bc.png", "hash": "small_Freegait_2_804d4618bc", "mime": "image/png", "name": "small_Freegait 2.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_2_804d4618bc.png", "hash": "medium_Freegait_2_804d4618bc", "mime": "image/png", "name": "medium_Freegait 2.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_2_804d4618bc.png", "hash": "thumbnail_Freegait_2_804d4618bc", "mime": "image/png", "name": "thumbnail_Freegait 2.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	Freegait_2_804d4618bc	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_2_804d4618bc.png	\N	aws-s3	\N	/	2023-08-02 10:41:27.037	2023-08-02 10:41:27.037	1	1
154	Freegait Aksesuarlar 1.jpg	\N	\N	5000	3333	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_1_443c835d83.jpg", "hash": "large_Freegait_Aksesuarlar_1_443c835d83", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 1.jpg", "path": null, "size": 62.59, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_1_443c835d83.jpg", "hash": "small_Freegait_Aksesuarlar_1_443c835d83", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 1.jpg", "path": null, "size": 19.2, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_1_443c835d83.jpg", "hash": "medium_Freegait_Aksesuarlar_1_443c835d83", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 1.jpg", "path": null, "size": 37.59, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_1_443c835d83.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_1_443c835d83", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 1.jpg", "path": null, "size": 6.03, "width": 234, "height": 156}}	Freegait_Aksesuarlar_1_443c835d83	.jpg	image/jpeg	1039.81	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_1_443c835d83.jpg	\N	aws-s3	\N	/	2023-08-02 10:41:27.086	2023-08-02 10:41:27.086	1	1
155	Freegait Urun Detaylari.png	\N	\N	2720	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Urun_Detaylari_66ebc14ea2.png", "hash": "large_Freegait_Urun_Detaylari_66ebc14ea2", "mime": "image/png", "name": "large_Freegait Urun Detaylari.png", "path": null, "size": 394.85, "width": 1000, "height": 824}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Urun_Detaylari_66ebc14ea2.png", "hash": "small_Freegait_Urun_Detaylari_66ebc14ea2", "mime": "image/png", "name": "small_Freegait Urun Detaylari.png", "path": null, "size": 114.35, "width": 500, "height": 412}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Urun_Detaylari_66ebc14ea2.png", "hash": "medium_Freegait_Urun_Detaylari_66ebc14ea2", "mime": "image/png", "name": "medium_Freegait Urun Detaylari.png", "path": null, "size": 238.25, "width": 750, "height": 618}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Urun_Detaylari_66ebc14ea2.png", "hash": "thumbnail_Freegait_Urun_Detaylari_66ebc14ea2", "mime": "image/png", "name": "thumbnail_Freegait Urun Detaylari.png", "path": null, "size": 22.1, "width": 189, "height": 156}}	Freegait_Urun_Detaylari_66ebc14ea2	.png	image/png	572.00	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Urun_Detaylari_66ebc14ea2.png	\N	aws-s3	\N	/	2023-08-02 10:41:31.251	2023-08-02 10:41:31.251	1	1
156	Freegait 1.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_1_f213f06fe3.png", "hash": "large_Freegait_1_f213f06fe3", "mime": "image/png", "name": "large_Freegait 1.png", "path": null, "size": 539.35, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_1_f213f06fe3.png", "hash": "small_Freegait_1_f213f06fe3", "mime": "image/png", "name": "small_Freegait 1.png", "path": null, "size": 156.13, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_1_f213f06fe3.png", "hash": "medium_Freegait_1_f213f06fe3", "mime": "image/png", "name": "medium_Freegait 1.png", "path": null, "size": 319.13, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_1_f213f06fe3.png", "hash": "thumbnail_Freegait_1_f213f06fe3", "mime": "image/png", "name": "thumbnail_Freegait 1.png", "path": null, "size": 45.37, "width": 245, "height": 105}}	Freegait_1_f213f06fe3	.png	image/png	2117.59	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_1_f213f06fe3.png	\N	aws-s3	\N	/	2023-08-02 10:41:34.764	2023-08-02 10:41:34.764	1	1
157	Anasayfa 2.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_2_dc7ba727e0.png", "hash": "thumbnail_Anasayfa_2_dc7ba727e0", "mime": "image/png", "name": "thumbnail_Anasayfa 2.png", "path": null, "size": 43.39, "width": 169, "height": 156}}	Anasayfa_2_dc7ba727e0	.png	image/png	57.15	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_2_dc7ba727e0.png	\N	aws-s3	\N	/	2023-08-02 10:41:52.503	2023-08-02 10:41:52.503	1	1
158	Anasayfa 3.png	\N	\N	1120	420	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_3_26e177a3d3.png", "hash": "large_Anasayfa_3_26e177a3d3", "mime": "image/png", "name": "large_Anasayfa 3.png", "path": null, "size": 463.03, "width": 1000, "height": 375}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_3_26e177a3d3.png", "hash": "small_Anasayfa_3_26e177a3d3", "mime": "image/png", "name": "small_Anasayfa 3.png", "path": null, "size": 132.73, "width": 500, "height": 187}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_3_26e177a3d3.png", "hash": "medium_Anasayfa_3_26e177a3d3", "mime": "image/png", "name": "medium_Anasayfa 3.png", "path": null, "size": 275.71, "width": 750, "height": 281}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_3_26e177a3d3.png", "hash": "thumbnail_Anasayfa_3_26e177a3d3", "mime": "image/png", "name": "thumbnail_Anasayfa 3.png", "path": null, "size": 38.35, "width": 245, "height": 92}}	Anasayfa_3_26e177a3d3	.png	image/png	131.46	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_3_26e177a3d3.png	\N	aws-s3	\N	/	2023-08-02 10:41:55.122	2023-08-02 10:41:55.122	1	1
159	Anasayfa 1.png	\N	\N	1120	480	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_1_bbd627452e.png", "hash": "large_Anasayfa_1_bbd627452e", "mime": "image/png", "name": "large_Anasayfa 1.png", "path": null, "size": 497.47, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_1_bbd627452e.png", "hash": "small_Anasayfa_1_bbd627452e", "mime": "image/png", "name": "small_Anasayfa 1.png", "path": null, "size": 136.1, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_1_bbd627452e.png", "hash": "medium_Anasayfa_1_bbd627452e", "mime": "image/png", "name": "medium_Anasayfa 1.png", "path": null, "size": 288.55, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_1_bbd627452e.png", "hash": "thumbnail_Anasayfa_1_bbd627452e", "mime": "image/png", "name": "thumbnail_Anasayfa 1.png", "path": null, "size": 40.24, "width": 245, "height": 105}}	Anasayfa_1_bbd627452e	.png	image/png	130.16	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_1_bbd627452e.png	\N	aws-s3	\N	/	2023-08-02 10:41:56.121	2023-08-02 10:41:56.121	1	1
160	Anasayfa Ürünler Freegait.png	\N	\N	1944	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Freegait_4a225ee771.png", "hash": "large_Anasayfa_Ueruenler_Freegait_4a225ee771", "mime": "image/png", "name": "large_Anasayfa Ürünler Freegait.png", "path": null, "size": 558.76, "width": 868, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Freegait_4a225ee771.png", "hash": "small_Anasayfa_Ueruenler_Freegait_4a225ee771", "mime": "image/png", "name": "small_Anasayfa Ürünler Freegait.png", "path": null, "size": 158.44, "width": 434, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Freegait_4a225ee771.png", "hash": "medium_Anasayfa_Ueruenler_Freegait_4a225ee771", "mime": "image/png", "name": "medium_Anasayfa Ürünler Freegait.png", "path": null, "size": 327.67, "width": 651, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Freegait_4a225ee771.png", "hash": "thumbnail_Anasayfa_Ueruenler_Freegait_4a225ee771", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Freegait.png", "path": null, "size": 20.67, "width": 135, "height": 156}}	Anasayfa_Ueruenler_Freegait_4a225ee771	.png	image/png	527.48	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Freegait_4a225ee771.png	\N	aws-s3	\N	/	2023-08-02 10:42:06.309	2023-08-02 10:42:06.309	1	1
161	Anasayfa Ürünler Visiogait.png	\N	\N	2262	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Visiogait_6837f07326.png", "hash": "large_Anasayfa_Ueruenler_Visiogait_6837f07326", "mime": "image/png", "name": "large_Anasayfa Ürünler Visiogait.png", "path": null, "size": 475.26, "width": 1000, "height": 990}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Visiogait_6837f07326.png", "hash": "small_Anasayfa_Ueruenler_Visiogait_6837f07326", "mime": "image/png", "name": "small_Anasayfa Ürünler Visiogait.png", "path": null, "size": 140.83, "width": 500, "height": 495}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Visiogait_6837f07326.png", "hash": "medium_Anasayfa_Ueruenler_Visiogait_6837f07326", "mime": "image/png", "name": "medium_Anasayfa Ürünler Visiogait.png", "path": null, "size": 283.24, "width": 750, "height": 743}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Visiogait_6837f07326.png", "hash": "thumbnail_Anasayfa_Ueruenler_Visiogait_6837f07326", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Visiogait.png", "path": null, "size": 22.09, "width": 158, "height": 156}}	Anasayfa_Ueruenler_Visiogait_6837f07326	.png	image/png	486.70	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Visiogait_6837f07326.png	\N	aws-s3	\N	/	2023-08-02 10:42:09.004	2023-08-02 10:42:09.004	1	1
162	Anasayfa Ürünler Robogait.png	\N	\N	2578	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Robogait_59d5fec293.png", "hash": "large_Anasayfa_Ueruenler_Robogait_59d5fec293", "mime": "image/png", "name": "large_Anasayfa Ürünler Robogait.png", "path": null, "size": 589.75, "width": 1000, "height": 869}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Robogait_59d5fec293.png", "hash": "small_Anasayfa_Ueruenler_Robogait_59d5fec293", "mime": "image/png", "name": "small_Anasayfa Ürünler Robogait.png", "path": null, "size": 174.89, "width": 500, "height": 434}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Robogait_59d5fec293.png", "hash": "medium_Anasayfa_Ueruenler_Robogait_59d5fec293", "mime": "image/png", "name": "medium_Anasayfa Ürünler Robogait.png", "path": null, "size": 351.16, "width": 750, "height": 652}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Robogait_59d5fec293.png", "hash": "thumbnail_Anasayfa_Ueruenler_Robogait_59d5fec293", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Robogait.png", "path": null, "size": 31.29, "width": 180, "height": 156}}	Anasayfa_Ueruenler_Robogait_59d5fec293	.png	image/png	939.04	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Robogait_59d5fec293.png	\N	aws-s3	\N	/	2023-08-02 10:42:12.512	2023-08-02 10:42:12.512	1	1
163	Anasayfa footer.png	\N	\N	2860	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_footer_1af1ee1ac9.png", "hash": "large_Anasayfa_footer_1af1ee1ac9", "mime": "image/png", "name": "large_Anasayfa footer.png", "path": null, "size": 869.43, "width": 1000, "height": 674}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_footer_1af1ee1ac9.png", "hash": "small_Anasayfa_footer_1af1ee1ac9", "mime": "image/png", "name": "small_Anasayfa footer.png", "path": null, "size": 236.5, "width": 500, "height": 337}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_footer_1af1ee1ac9.png", "hash": "medium_Anasayfa_footer_1af1ee1ac9", "mime": "image/png", "name": "medium_Anasayfa footer.png", "path": null, "size": 505.04, "width": 750, "height": 506}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_footer_1af1ee1ac9.png", "hash": "thumbnail_Anasayfa_footer_1af1ee1ac9", "mime": "image/png", "name": "thumbnail_Anasayfa footer.png", "path": null, "size": 55.88, "width": 231, "height": 156}}	Anasayfa_footer_1af1ee1ac9	.png	image/png	1379.21	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_footer_1af1ee1ac9.png	\N	aws-s3	\N	/	2023-08-02 10:42:14.508	2023-08-02 10:42:14.508	1	1
164	Robogait Aksesuar 2.png	\N	\N	334	591	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_2_08602f9386.png", "hash": "small_Robogait_Aksesuar_2_08602f9386", "mime": "image/png", "name": "small_Robogait Aksesuar 2.png", "path": null, "size": 83.74, "width": 283, "height": 500}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_2_08602f9386.png", "hash": "thumbnail_Robogait_Aksesuar_2_08602f9386", "mime": "image/png", "name": "thumbnail_Robogait Aksesuar 2.png", "path": null, "size": 12.83, "width": 88, "height": 156}}	Robogait_Aksesuar_2_08602f9386	.png	image/png	32.27	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_2_08602f9386.png	\N	aws-s3	\N	/	2023-08-02 10:42:31.678	2023-08-02 10:42:31.678	1	1
265	freegait-86.png	\N	\N	344	248	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_86_f5d1f89be1.png", "hash": "thumbnail_freegait_86_f5d1f89be1", "mime": "image/png", "name": "thumbnail_freegait-86.png", "path": null, "size": 45.91, "width": 216, "height": 156}}	freegait_86_f5d1f89be1	.png	image/png	27.55	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_86_f5d1f89be1.png	\N	aws-s3	\N	/	2023-08-31 10:42:24.983	2023-08-31 10:42:24.983	1	1
165	Robogait Aksesuar 3.jpg	\N	\N	1226	866	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Aksesuar_3_2a0d5957e5.jpg", "hash": "large_Robogait_Aksesuar_3_2a0d5957e5", "mime": "image/jpeg", "name": "large_Robogait Aksesuar 3.jpg", "path": null, "size": 61.14, "width": 1000, "height": 706}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_3_2a0d5957e5.jpg", "hash": "small_Robogait_Aksesuar_3_2a0d5957e5", "mime": "image/jpeg", "name": "small_Robogait Aksesuar 3.jpg", "path": null, "size": 20.56, "width": 500, "height": 353}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Aksesuar_3_2a0d5957e5.jpg", "hash": "medium_Robogait_Aksesuar_3_2a0d5957e5", "mime": "image/jpeg", "name": "medium_Robogait Aksesuar 3.jpg", "path": null, "size": 38.53, "width": 750, "height": 530}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_3_2a0d5957e5.jpg", "hash": "thumbnail_Robogait_Aksesuar_3_2a0d5957e5", "mime": "image/jpeg", "name": "thumbnail_Robogait Aksesuar 3.jpg", "path": null, "size": 6.87, "width": 221, "height": 156}}	Robogait_Aksesuar_3_2a0d5957e5	.jpg	image/jpeg	90.49	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_3_2a0d5957e5.jpg	\N	aws-s3	\N	/	2023-08-02 10:42:32.113	2023-08-02 10:42:32.113	1	1
166	Robogait Aksesuar 1.png	\N	\N	663	606	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_1_36da230e81.png", "hash": "small_Robogait_Aksesuar_1_36da230e81", "mime": "image/png", "name": "small_Robogait Aksesuar 1.png", "path": null, "size": 151.91, "width": 500, "height": 457}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_1_36da230e81.png", "hash": "thumbnail_Robogait_Aksesuar_1_36da230e81", "mime": "image/png", "name": "thumbnail_Robogait Aksesuar 1.png", "path": null, "size": 20.73, "width": 171, "height": 156}}	Robogait_Aksesuar_1_36da230e81	.png	image/png	72.52	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_1_36da230e81.png	\N	aws-s3	\N	/	2023-08-02 10:42:33.271	2023-08-02 10:42:33.271	1	1
167	Robogait Ozellik 4.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_4_0dfc416a72.png", "hash": "large_Robogait_Ozellik_4_0dfc416a72", "mime": "image/png", "name": "large_Robogait Ozellik 4.png", "path": null, "size": 259.76, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_4_0dfc416a72.png", "hash": "small_Robogait_Ozellik_4_0dfc416a72", "mime": "image/png", "name": "small_Robogait Ozellik 4.png", "path": null, "size": 81.12, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_4_0dfc416a72.png", "hash": "medium_Robogait_Ozellik_4_0dfc416a72", "mime": "image/png", "name": "medium_Robogait Ozellik 4.png", "path": null, "size": 158.22, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_4_0dfc416a72.png", "hash": "thumbnail_Robogait_Ozellik_4_0dfc416a72", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 4.png", "path": null, "size": 25.39, "width": 245, "height": 135}}	Robogait_Ozellik_4_0dfc416a72	.png	image/png	158.18	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_4_0dfc416a72.png	\N	aws-s3	\N	/	2023-08-02 10:42:38.609	2023-08-02 10:42:38.609	1	1
168	Robogait Footer.png	\N	\N	2048	1912	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Footer_c6516de0f6.png", "hash": "large_Robogait_Footer_c6516de0f6", "mime": "image/png", "name": "large_Robogait Footer.png", "path": null, "size": 542.16, "width": 1000, "height": 934}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Footer_c6516de0f6.png", "hash": "small_Robogait_Footer_c6516de0f6", "mime": "image/png", "name": "small_Robogait Footer.png", "path": null, "size": 163.5, "width": 500, "height": 467}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Footer_c6516de0f6.png", "hash": "medium_Robogait_Footer_c6516de0f6", "mime": "image/png", "name": "medium_Robogait Footer.png", "path": null, "size": 327.38, "width": 750, "height": 700}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Footer_c6516de0f6.png", "hash": "thumbnail_Robogait_Footer_c6516de0f6", "mime": "image/png", "name": "thumbnail_Robogait Footer.png", "path": null, "size": 27.52, "width": 167, "height": 156}}	Robogait_Footer_c6516de0f6	.png	image/png	555.63	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Footer_c6516de0f6.png	\N	aws-s3	\N	/	2023-08-02 10:42:46.762	2023-08-02 10:42:46.762	1	1
169	Robogait Ozellik 2.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_2_1af575336b.png", "hash": "large_Robogait_Ozellik_2_1af575336b", "mime": "image/png", "name": "large_Robogait Ozellik 2.png", "path": null, "size": 460.5, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_2_1af575336b.png", "hash": "small_Robogait_Ozellik_2_1af575336b", "mime": "image/png", "name": "small_Robogait Ozellik 2.png", "path": null, "size": 137.13, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_2_1af575336b.png", "hash": "medium_Robogait_Ozellik_2_1af575336b", "mime": "image/png", "name": "medium_Robogait Ozellik 2.png", "path": null, "size": 277.11, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_2_1af575336b.png", "hash": "thumbnail_Robogait_Ozellik_2_1af575336b", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 2.png", "path": null, "size": 41.28, "width": 245, "height": 135}}	Robogait_Ozellik_2_1af575336b	.png	image/png	504.74	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_2_1af575336b.png	\N	aws-s3	\N	/	2023-08-02 10:42:48.972	2023-08-02 10:42:48.972	1	1
170	Robogait Ozellik 3.png	\N	\N	1375	1021	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_3_633296ad46.png", "hash": "large_Robogait_Ozellik_3_633296ad46", "mime": "image/png", "name": "large_Robogait Ozellik 3.png", "path": null, "size": 584.93, "width": 1000, "height": 743}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_3_633296ad46.png", "hash": "small_Robogait_Ozellik_3_633296ad46", "mime": "image/png", "name": "small_Robogait Ozellik 3.png", "path": null, "size": 141.3, "width": 500, "height": 371}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_3_633296ad46.png", "hash": "medium_Robogait_Ozellik_3_633296ad46", "mime": "image/png", "name": "medium_Robogait Ozellik 3.png", "path": null, "size": 317.54, "width": 750, "height": 557}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_3_633296ad46.png", "hash": "thumbnail_Robogait_Ozellik_3_633296ad46", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 3.png", "path": null, "size": 30.72, "width": 210, "height": 156}}	Robogait_Ozellik_3_633296ad46	.png	image/png	250.30	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_3_633296ad46.png	\N	aws-s3	\N	/	2023-08-02 10:42:49.365	2023-08-02 10:42:49.365	1	1
171	Robogait Ozellik 5.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_5_1d0e654c45.png", "hash": "large_Robogait_Ozellik_5_1d0e654c45", "mime": "image/png", "name": "large_Robogait Ozellik 5.png", "path": null, "size": 901.45, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_5_1d0e654c45.png", "hash": "small_Robogait_Ozellik_5_1d0e654c45", "mime": "image/png", "name": "small_Robogait Ozellik 5.png", "path": null, "size": 251.27, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_5_1d0e654c45.png", "hash": "medium_Robogait_Ozellik_5_1d0e654c45", "mime": "image/png", "name": "medium_Robogait Ozellik 5.png", "path": null, "size": 528.76, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_5_1d0e654c45.png", "hash": "thumbnail_Robogait_Ozellik_5_1d0e654c45", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 5.png", "path": null, "size": 69.16, "width": 245, "height": 135}}	Robogait_Ozellik_5_1d0e654c45	.png	image/png	782.20	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_5_1d0e654c45.png	\N	aws-s3	\N	/	2023-08-02 10:42:51.894	2023-08-02 10:42:51.894	1	1
172	Robogait 1.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_1_5a6c0d8b63.png", "hash": "large_Robogait_1_5a6c0d8b63", "mime": "image/png", "name": "large_Robogait 1.png", "path": null, "size": 460.58, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_1_5a6c0d8b63.png", "hash": "small_Robogait_1_5a6c0d8b63", "mime": "image/png", "name": "small_Robogait 1.png", "path": null, "size": 136.63, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_1_5a6c0d8b63.png", "hash": "medium_Robogait_1_5a6c0d8b63", "mime": "image/png", "name": "medium_Robogait 1.png", "path": null, "size": 274.76, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_1_5a6c0d8b63.png", "hash": "thumbnail_Robogait_1_5a6c0d8b63", "mime": "image/png", "name": "thumbnail_Robogait 1.png", "path": null, "size": 41.86, "width": 245, "height": 105}}	Robogait_1_5a6c0d8b63	.png	image/png	1730.64	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_1_5a6c0d8b63.png	\N	aws-s3	\N	/	2023-08-02 10:43:04.647	2023-08-02 10:43:04.647	1	1
285	dummy.pdf	\N	\N	\N	\N	\N	dummy_c08d5c2609	.pdf	application/pdf	13.26	https://bama-trial.s3.eu-central-1.amazonaws.com/dummy_c08d5c2609.pdf	\N	aws-s3	\N	/	2023-10-04 14:08:25.923	2023-10-04 14:08:25.923	1	1
286	dummy-2.pdf	\N	\N	\N	\N	\N	dummy_2_511cc957c3	.pdf	application/pdf	50.31	https://bama-trial.s3.eu-central-1.amazonaws.com/dummy_2_511cc957c3.pdf	\N	aws-s3	\N	/	2023-10-04 14:15:44.967	2023-10-04 14:15:44.967	1	1
298	CTL-B0610-TR-Rev.04-Digital-1-sıkıştırıldı.pdf	\N	\N	\N	\N	\N	CTL_B0610_TR_Rev_04_Digital_1_sikistirildi_627579ea62	.pdf	application/pdf	646.36	https://bama-trial.s3.eu-central-1.amazonaws.com/CTL_B0610_TR_Rev_04_Digital_1_sikistirildi_627579ea62.pdf	\N	aws-s3	\N	/	2023-10-30 13:09:54.268	2023-10-30 13:09:54.268	5	5
174	Robogait 2.png	\N	\N	4480	1824	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_2_b477930870.png", "hash": "large_Robogait_2_b477930870", "mime": "image/png", "name": "large_Robogait 2.png", "path": null, "size": 518.51, "width": 1000, "height": 407}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_2_b477930870.png", "hash": "small_Robogait_2_b477930870", "mime": "image/png", "name": "small_Robogait 2.png", "path": null, "size": 145.62, "width": 500, "height": 204}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_2_b477930870.png", "hash": "medium_Robogait_2_b477930870", "mime": "image/png", "name": "medium_Robogait 2.png", "path": null, "size": 302.44, "width": 750, "height": 305}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_2_b477930870.png", "hash": "thumbnail_Robogait_2_b477930870", "mime": "image/png", "name": "thumbnail_Robogait 2.png", "path": null, "size": 43.52, "width": 245, "height": 100}}	Robogait_2_b477930870	.png	image/png	1883.74	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_2_b477930870.png	\N	aws-s3	\N	/	2023-08-02 10:43:07.39	2023-08-02 10:43:07.39	1	1
175	Visiogait Footer.png	\N	\N	2556	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Footer_04644ea933.png", "hash": "large_Visiogait_Footer_04644ea933", "mime": "image/png", "name": "large_Visiogait Footer.png", "path": null, "size": 386.1, "width": 1000, "height": 754}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Footer_04644ea933.png", "hash": "small_Visiogait_Footer_04644ea933", "mime": "image/png", "name": "small_Visiogait Footer.png", "path": null, "size": 112.41, "width": 500, "height": 377}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Footer_04644ea933.png", "hash": "medium_Visiogait_Footer_04644ea933", "mime": "image/png", "name": "medium_Visiogait Footer.png", "path": null, "size": 230.46, "width": 750, "height": 566}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Footer_04644ea933.png", "hash": "thumbnail_Visiogait_Footer_04644ea933", "mime": "image/png", "name": "thumbnail_Visiogait Footer.png", "path": null, "size": 26.45, "width": 207, "height": 156}}	Visiogait_Footer_04644ea933	.png	image/png	553.88	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Footer_04644ea933.png	\N	aws-s3	\N	/	2023-08-02 10:43:33.288	2023-08-02 10:43:33.288	1	1
176	Visiogait Urun Detaylari.png	\N	\N	2720	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Urun_Detaylari_bf53d75f6b.png", "hash": "large_Visiogait_Urun_Detaylari_bf53d75f6b", "mime": "image/png", "name": "large_Visiogait Urun Detaylari.png", "path": null, "size": 379.84, "width": 1000, "height": 824}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Urun_Detaylari_bf53d75f6b.png", "hash": "small_Visiogait_Urun_Detaylari_bf53d75f6b", "mime": "image/png", "name": "small_Visiogait Urun Detaylari.png", "path": null, "size": 113.92, "width": 500, "height": 412}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Urun_Detaylari_bf53d75f6b.png", "hash": "medium_Visiogait_Urun_Detaylari_bf53d75f6b", "mime": "image/png", "name": "medium_Visiogait Urun Detaylari.png", "path": null, "size": 228.49, "width": 750, "height": 618}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Urun_Detaylari_bf53d75f6b.png", "hash": "thumbnail_Visiogait_Urun_Detaylari_bf53d75f6b", "mime": "image/png", "name": "thumbnail_Visiogait Urun Detaylari.png", "path": null, "size": 24.34, "width": 189, "height": 156}}	Visiogait_Urun_Detaylari_bf53d75f6b	.png	image/png	559.32	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Urun_Detaylari_bf53d75f6b.png	\N	aws-s3	\N	/	2023-08-02 10:43:35.226	2023-08-02 10:43:35.226	1	1
177	Visiogait 1.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_1_632c0f50ed.png", "hash": "large_Visiogait_1_632c0f50ed", "mime": "image/png", "name": "large_Visiogait 1.png", "path": null, "size": 504.7, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_1_632c0f50ed.png", "hash": "small_Visiogait_1_632c0f50ed", "mime": "image/png", "name": "small_Visiogait 1.png", "path": null, "size": 149.47, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_1_632c0f50ed.png", "hash": "medium_Visiogait_1_632c0f50ed", "mime": "image/png", "name": "medium_Visiogait 1.png", "path": null, "size": 302.92, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_1_632c0f50ed.png", "hash": "thumbnail_Visiogait_1_632c0f50ed", "mime": "image/png", "name": "thumbnail_Visiogait 1.png", "path": null, "size": 43.38, "width": 245, "height": 105}}	Visiogait_1_632c0f50ed	.png	image/png	1828.95	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_1_632c0f50ed.png	\N	aws-s3	\N	/	2023-08-02 10:43:45.467	2023-08-02 10:43:45.467	1	1
178	Visiogait 2.png	\N	\N	4480	1744	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_2_12c2f4c900.png", "hash": "large_Visiogait_2_12c2f4c900", "mime": "image/png", "name": "large_Visiogait 2.png", "path": null, "size": 553.72, "width": 1000, "height": 389}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_2_12c2f4c900.png", "hash": "small_Visiogait_2_12c2f4c900", "mime": "image/png", "name": "small_Visiogait 2.png", "path": null, "size": 158.2, "width": 500, "height": 195}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_2_12c2f4c900.png", "hash": "medium_Visiogait_2_12c2f4c900", "mime": "image/png", "name": "medium_Visiogait 2.png", "path": null, "size": 328.97, "width": 750, "height": 292}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_2_12c2f4c900.png", "hash": "thumbnail_Visiogait_2_12c2f4c900", "mime": "image/png", "name": "thumbnail_Visiogait 2.png", "path": null, "size": 43.82, "width": 245, "height": 95}}	Visiogait_2_12c2f4c900	.png	image/png	2133.47	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_2_12c2f4c900.png	\N	aws-s3	\N	/	2023-08-02 10:43:47.347	2023-08-02 10:43:47.347	1	1
266	freegait-17.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_17_cc5c2672ca.png", "hash": "thumbnail_freegait_17_cc5c2672ca", "mime": "image/png", "name": "thumbnail_freegait-17.png", "path": null, "size": 34.85, "width": 178, "height": 156}}	freegait_17_cc5c2672ca	.png	image/png	28.24	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_17_cc5c2672ca.png	\N	aws-s3	\N	/	2023-08-31 10:42:25.099	2023-08-31 10:42:25.099	1	1
179	Ürünlerimiz Visiogait.png	\N	\N	1276	1564	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ueruenlerimiz_Visiogait_00aaca1924.png", "hash": "large_Ueruenlerimiz_Visiogait_00aaca1924", "mime": "image/png", "name": "large_Ürünlerimiz Visiogait.png", "path": null, "size": 385.12, "width": 816, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ueruenlerimiz_Visiogait_00aaca1924.png", "hash": "small_Ueruenlerimiz_Visiogait_00aaca1924", "mime": "image/png", "name": "small_Ürünlerimiz Visiogait.png", "path": null, "size": 113.26, "width": 408, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ueruenlerimiz_Visiogait_00aaca1924.png", "hash": "medium_Ueruenlerimiz_Visiogait_00aaca1924", "mime": "image/png", "name": "medium_Ürünlerimiz Visiogait.png", "path": null, "size": 230.71, "width": 612, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ueruenlerimiz_Visiogait_00aaca1924.png", "hash": "thumbnail_Ueruenlerimiz_Visiogait_00aaca1924", "mime": "image/png", "name": "thumbnail_Ürünlerimiz Visiogait.png", "path": null, "size": 17.67, "width": 127, "height": 156}}	Ueruenlerimiz_Visiogait_00aaca1924	.png	image/png	235.84	https://bama-trial.s3.eu-central-1.amazonaws.com/Ueruenlerimiz_Visiogait_00aaca1924.png	\N	aws-s3	\N	/	2023-08-02 12:34:53.873	2023-08-02 12:34:53.873	1	1
180	Ürünlerimiz Freegait.png	\N	\N	844	1324	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ueruenlerimiz_Freegait_dae6fd0dec.png", "hash": "large_Ueruenlerimiz_Freegait_dae6fd0dec", "mime": "image/png", "name": "large_Ürünlerimiz Freegait.png", "path": null, "size": 412.47, "width": 637, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ueruenlerimiz_Freegait_dae6fd0dec.png", "hash": "small_Ueruenlerimiz_Freegait_dae6fd0dec", "mime": "image/png", "name": "small_Ürünlerimiz Freegait.png", "path": null, "size": 114.79, "width": 319, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ueruenlerimiz_Freegait_dae6fd0dec.png", "hash": "medium_Ueruenlerimiz_Freegait_dae6fd0dec", "mime": "image/png", "name": "medium_Ürünlerimiz Freegait.png", "path": null, "size": 242.19, "width": 478, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ueruenlerimiz_Freegait_dae6fd0dec.png", "hash": "thumbnail_Ueruenlerimiz_Freegait_dae6fd0dec", "mime": "image/png", "name": "thumbnail_Ürünlerimiz Freegait.png", "path": null, "size": 15.65, "width": 99, "height": 156}}	Ueruenlerimiz_Freegait_dae6fd0dec	.png	image/png	141.18	https://bama-trial.s3.eu-central-1.amazonaws.com/Ueruenlerimiz_Freegait_dae6fd0dec.png	\N	aws-s3	\N	/	2023-08-02 12:34:55.011	2023-08-02 12:34:55.011	1	1
181	Ürünlerimiz Robogait.png	\N	\N	1372	1232	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ueruenlerimiz_Robogait_4604435356.png", "hash": "large_Ueruenlerimiz_Robogait_4604435356", "mime": "image/png", "name": "large_Ürünlerimiz Robogait.png", "path": null, "size": 494.44, "width": 1000, "height": 898}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ueruenlerimiz_Robogait_4604435356.png", "hash": "small_Ueruenlerimiz_Robogait_4604435356", "mime": "image/png", "name": "small_Ürünlerimiz Robogait.png", "path": null, "size": 148.9, "width": 500, "height": 449}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ueruenlerimiz_Robogait_4604435356.png", "hash": "medium_Ueruenlerimiz_Robogait_4604435356", "mime": "image/png", "name": "medium_Ürünlerimiz Robogait.png", "path": null, "size": 300.25, "width": 750, "height": 673}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ueruenlerimiz_Robogait_4604435356.png", "hash": "thumbnail_Ueruenlerimiz_Robogait_4604435356", "mime": "image/png", "name": "thumbnail_Ürünlerimiz Robogait.png", "path": null, "size": 27.03, "width": 174, "height": 156}}	Ueruenlerimiz_Robogait_4604435356	.png	image/png	249.05	https://bama-trial.s3.eu-central-1.amazonaws.com/Ueruenlerimiz_Robogait_4604435356.png	\N	aws-s3	\N	/	2023-08-02 12:34:56.286	2023-08-02 12:34:56.286	1	1
182	rg2 3 (1).png	\N	\N	2720	2476	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_rg2_3_1_6027022d2f.png", "hash": "large_rg2_3_1_6027022d2f", "mime": "image/png", "name": "large_rg2 3 (1).png", "path": null, "size": 614.99, "width": 1000, "height": 910}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_rg2_3_1_6027022d2f.png", "hash": "small_rg2_3_1_6027022d2f", "mime": "image/png", "name": "small_rg2 3 (1).png", "path": null, "size": 181.69, "width": 500, "height": 455}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_rg2_3_1_6027022d2f.png", "hash": "medium_rg2_3_1_6027022d2f", "mime": "image/png", "name": "medium_rg2 3 (1).png", "path": null, "size": 369.21, "width": 750, "height": 683}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_rg2_3_1_6027022d2f.png", "hash": "thumbnail_rg2_3_1_6027022d2f", "mime": "image/png", "name": "thumbnail_rg2 3 (1).png", "path": null, "size": 30.53, "width": 171, "height": 156}}	rg2_3_1_6027022d2f	.png	image/png	1067.31	https://bama-trial.s3.eu-central-1.amazonaws.com/rg2_3_1_6027022d2f.png	\N	aws-s3	\N	/	2023-08-03 08:17:34.82	2023-08-03 08:17:34.82	1	1
183	Anasayfa 1 high res.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_1_high_res_60c09f1b0a.png", "hash": "large_Anasayfa_1_high_res_60c09f1b0a", "mime": "image/png", "name": "large_Anasayfa 1 high res.png", "path": null, "size": 436.36, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_1_high_res_60c09f1b0a.png", "hash": "small_Anasayfa_1_high_res_60c09f1b0a", "mime": "image/png", "name": "small_Anasayfa 1 high res.png", "path": null, "size": 131.16, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_1_high_res_60c09f1b0a.png", "hash": "medium_Anasayfa_1_high_res_60c09f1b0a", "mime": "image/png", "name": "medium_Anasayfa 1 high res.png", "path": null, "size": 262.76, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_1_high_res_60c09f1b0a.png", "hash": "thumbnail_Anasayfa_1_high_res_60c09f1b0a", "mime": "image/png", "name": "thumbnail_Anasayfa 1 high res.png", "path": null, "size": 39.77, "width": 245, "height": 105}}	Anasayfa_1_high_res_60c09f1b0a	.png	image/png	1741.68	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_1_high_res_60c09f1b0a.png	\N	aws-s3	\N	/	2023-08-08 13:53:34.233	2023-08-08 13:53:34.233	1	1
283	technomex.svg	\N	\N	236	64	\N	technomex_faf38b26f8	.svg	image/svg+xml	80.70	https://bama-trial.s3.eu-central-1.amazonaws.com/technomex_faf38b26f8.svg	\N	aws-s3	\N	/	2023-09-26 06:02:45.336	2023-10-06 10:38:13.672	1	1
184	Ana Görsel 2 high res.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ana_Goersel_2_high_res_09c68e5489.png", "hash": "large_Ana_Goersel_2_high_res_09c68e5489", "mime": "image/png", "name": "large_Ana Görsel 2 high res.png", "path": null, "size": 1058.71, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ana_Goersel_2_high_res_09c68e5489.png", "hash": "small_Ana_Goersel_2_high_res_09c68e5489", "mime": "image/png", "name": "small_Ana Görsel 2 high res.png", "path": null, "size": 287.35, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ana_Goersel_2_high_res_09c68e5489.png", "hash": "medium_Ana_Goersel_2_high_res_09c68e5489", "mime": "image/png", "name": "medium_Ana Görsel 2 high res.png", "path": null, "size": 609.82, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ana_Goersel_2_high_res_09c68e5489.png", "hash": "thumbnail_Ana_Goersel_2_high_res_09c68e5489", "mime": "image/png", "name": "thumbnail_Ana Görsel 2 high res.png", "path": null, "size": 44.24, "width": 169, "height": 156}}	Ana_Goersel_2_high_res_09c68e5489	.png	image/png	697.25	https://bama-trial.s3.eu-central-1.amazonaws.com/Ana_Goersel_2_high_res_09c68e5489.png	\N	aws-s3	\N	/	2023-08-08 13:55:18.674	2023-08-08 13:55:18.674	1	1
185	Ana Görsel 3 high res.png	\N	\N	4480	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ana_Goersel_3_high_res_3ac64ef0be.png", "hash": "large_Ana_Goersel_3_high_res_3ac64ef0be", "mime": "image/png", "name": "large_Ana Görsel 3 high res.png", "path": null, "size": 456.92, "width": 1000, "height": 375}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ana_Goersel_3_high_res_3ac64ef0be.png", "hash": "small_Ana_Goersel_3_high_res_3ac64ef0be", "mime": "image/png", "name": "small_Ana Görsel 3 high res.png", "path": null, "size": 134.9, "width": 500, "height": 187}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ana_Goersel_3_high_res_3ac64ef0be.png", "hash": "medium_Ana_Goersel_3_high_res_3ac64ef0be", "mime": "image/png", "name": "medium_Ana Görsel 3 high res.png", "path": null, "size": 274.47, "width": 750, "height": 281}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ana_Goersel_3_high_res_3ac64ef0be.png", "hash": "thumbnail_Ana_Goersel_3_high_res_3ac64ef0be", "mime": "image/png", "name": "thumbnail_Ana Görsel 3 high res.png", "path": null, "size": 38.7, "width": 245, "height": 92}}	Ana_Goersel_3_high_res_3ac64ef0be	.png	image/png	1675.96	https://bama-trial.s3.eu-central-1.amazonaws.com/Ana_Goersel_3_high_res_3ac64ef0be.png	\N	aws-s3	\N	/	2023-08-08 13:57:42.4	2023-08-08 13:57:42.4	1	1
188	Freegait Kullanım 1.png	\N	\N	1440	1440	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Kullanim_1_f1abf5e827.png", "hash": "large_Freegait_Kullanim_1_f1abf5e827", "mime": "image/png", "name": "large_Freegait Kullanım 1.png", "path": null, "size": 716.08, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Kullanim_1_f1abf5e827.png", "hash": "small_Freegait_Kullanim_1_f1abf5e827", "mime": "image/png", "name": "small_Freegait Kullanım 1.png", "path": null, "size": 197.56, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Kullanim_1_f1abf5e827.png", "hash": "medium_Freegait_Kullanim_1_f1abf5e827", "mime": "image/png", "name": "medium_Freegait Kullanım 1.png", "path": null, "size": 417.47, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Kullanim_1_f1abf5e827.png", "hash": "thumbnail_Freegait_Kullanim_1_f1abf5e827", "mime": "image/png", "name": "thumbnail_Freegait Kullanım 1.png", "path": null, "size": 25.28, "width": 156, "height": 156}}	Freegait_Kullanim_1_f1abf5e827	.png	image/png	306.01	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Kullanim_1_f1abf5e827.png	\N	aws-s3	\N	/	2023-08-15 09:00:44.672	2023-08-15 09:00:44.672	1	1
189	Freegait Kullanım 3.png	\N	\N	1440	1440	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Kullanim_3_b939b13727.png", "hash": "large_Freegait_Kullanim_3_b939b13727", "mime": "image/png", "name": "large_Freegait Kullanım 3.png", "path": null, "size": 628.09, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Kullanim_3_b939b13727.png", "hash": "small_Freegait_Kullanim_3_b939b13727", "mime": "image/png", "name": "small_Freegait Kullanım 3.png", "path": null, "size": 173.52, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Kullanim_3_b939b13727.png", "hash": "medium_Freegait_Kullanim_3_b939b13727", "mime": "image/png", "name": "medium_Freegait Kullanım 3.png", "path": null, "size": 365.46, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Kullanim_3_b939b13727.png", "hash": "thumbnail_Freegait_Kullanim_3_b939b13727", "mime": "image/png", "name": "thumbnail_Freegait Kullanım 3.png", "path": null, "size": 23.57, "width": 156, "height": 156}}	Freegait_Kullanim_3_b939b13727	.png	image/png	288.48	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Kullanim_3_b939b13727.png	\N	aws-s3	\N	/	2023-08-15 09:00:46.267	2023-08-15 09:00:46.267	1	1
190	Freegait Kullanım 2.png	\N	\N	1440	1440	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Kullanim_2_f297eac9b1.png", "hash": "large_Freegait_Kullanim_2_f297eac9b1", "mime": "image/png", "name": "large_Freegait Kullanım 2.png", "path": null, "size": 672.57, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Kullanim_2_f297eac9b1.png", "hash": "small_Freegait_Kullanim_2_f297eac9b1", "mime": "image/png", "name": "small_Freegait Kullanım 2.png", "path": null, "size": 188.57, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Kullanim_2_f297eac9b1.png", "hash": "medium_Freegait_Kullanim_2_f297eac9b1", "mime": "image/png", "name": "medium_Freegait Kullanım 2.png", "path": null, "size": 396.61, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Kullanim_2_f297eac9b1.png", "hash": "thumbnail_Freegait_Kullanim_2_f297eac9b1", "mime": "image/png", "name": "thumbnail_Freegait Kullanım 2.png", "path": null, "size": 24.25, "width": 156, "height": 156}}	Freegait_Kullanim_2_f297eac9b1	.png	image/png	277.18	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Kullanim_2_f297eac9b1.png	\N	aws-s3	\N	/	2023-08-15 09:00:46.907	2023-08-15 09:00:46.907	1	1
191	highlights_3.png	\N	\N	2556	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_3_20962a0aec.png", "hash": "large_highlights_3_20962a0aec", "mime": "image/png", "name": "large_highlights_3.png", "path": null, "size": 386.1, "width": 1000, "height": 754}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_3_20962a0aec.png", "hash": "small_highlights_3_20962a0aec", "mime": "image/png", "name": "small_highlights_3.png", "path": null, "size": 112.41, "width": 500, "height": 377}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_3_20962a0aec.png", "hash": "medium_highlights_3_20962a0aec", "mime": "image/png", "name": "medium_highlights_3.png", "path": null, "size": 230.46, "width": 750, "height": 566}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_3_20962a0aec.png", "hash": "thumbnail_highlights_3_20962a0aec", "mime": "image/png", "name": "thumbnail_highlights_3.png", "path": null, "size": 26.45, "width": 207, "height": 156}}	highlights_3_20962a0aec	.png	image/png	553.88	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_3_20962a0aec.png	\N	aws-s3	\N	/	2023-08-16 12:17:37.294	2023-08-16 12:17:37.294	1	1
192	highlights_4.png	\N	\N	2556	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_4_ea5f088c8b.png", "hash": "large_highlights_4_ea5f088c8b", "mime": "image/png", "name": "large_highlights_4.png", "path": null, "size": 386.1, "width": 1000, "height": 754}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_4_ea5f088c8b.png", "hash": "small_highlights_4_ea5f088c8b", "mime": "image/png", "name": "small_highlights_4.png", "path": null, "size": 112.41, "width": 500, "height": 377}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_4_ea5f088c8b.png", "hash": "medium_highlights_4_ea5f088c8b", "mime": "image/png", "name": "medium_highlights_4.png", "path": null, "size": 230.46, "width": 750, "height": 566}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_4_ea5f088c8b.png", "hash": "thumbnail_highlights_4_ea5f088c8b", "mime": "image/png", "name": "thumbnail_highlights_4.png", "path": null, "size": 26.45, "width": 207, "height": 156}}	highlights_4_ea5f088c8b	.png	image/png	553.88	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_4_ea5f088c8b.png	\N	aws-s3	\N	/	2023-08-16 12:17:39.081	2023-08-16 12:17:39.081	1	1
193	highlights_1.png	\N	\N	2556	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_1_c0087aad1d.png", "hash": "large_highlights_1_c0087aad1d", "mime": "image/png", "name": "large_highlights_1.png", "path": null, "size": 386.1, "width": 1000, "height": 754}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_1_c0087aad1d.png", "hash": "small_highlights_1_c0087aad1d", "mime": "image/png", "name": "small_highlights_1.png", "path": null, "size": 112.41, "width": 500, "height": 377}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_1_c0087aad1d.png", "hash": "medium_highlights_1_c0087aad1d", "mime": "image/png", "name": "medium_highlights_1.png", "path": null, "size": 230.46, "width": 750, "height": 566}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_1_c0087aad1d.png", "hash": "thumbnail_highlights_1_c0087aad1d", "mime": "image/png", "name": "thumbnail_highlights_1.png", "path": null, "size": 26.45, "width": 207, "height": 156}}	highlights_1_c0087aad1d	.png	image/png	553.88	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_1_c0087aad1d.png	\N	aws-s3	\N	/	2023-08-16 12:17:40.583	2023-08-16 12:17:40.583	1	1
194	highlights_2.png	\N	\N	2556	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_2_565c97cfd0.png", "hash": "large_highlights_2_565c97cfd0", "mime": "image/png", "name": "large_highlights_2.png", "path": null, "size": 386.1, "width": 1000, "height": 754}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_2_565c97cfd0.png", "hash": "small_highlights_2_565c97cfd0", "mime": "image/png", "name": "small_highlights_2.png", "path": null, "size": 112.41, "width": 500, "height": 377}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_2_565c97cfd0.png", "hash": "medium_highlights_2_565c97cfd0", "mime": "image/png", "name": "medium_highlights_2.png", "path": null, "size": 230.46, "width": 750, "height": 566}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_2_565c97cfd0.png", "hash": "thumbnail_highlights_2_565c97cfd0", "mime": "image/png", "name": "thumbnail_highlights_2.png", "path": null, "size": 26.45, "width": 207, "height": 156}}	highlights_2_565c97cfd0	.png	image/png	553.88	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_2_565c97cfd0.png	\N	aws-s3	\N	/	2023-08-16 12:17:41.274	2023-08-16 12:17:41.274	1	1
195	highlights_4.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_4_203a7bb9b7.png", "hash": "large_highlights_4_203a7bb9b7", "mime": "image/png", "name": "large_highlights_4.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_4_203a7bb9b7.png", "hash": "small_highlights_4_203a7bb9b7", "mime": "image/png", "name": "small_highlights_4.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_4_203a7bb9b7.png", "hash": "medium_highlights_4_203a7bb9b7", "mime": "image/png", "name": "medium_highlights_4.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_4_203a7bb9b7.png", "hash": "thumbnail_highlights_4_203a7bb9b7", "mime": "image/png", "name": "thumbnail_highlights_4.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_4_203a7bb9b7	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_4_203a7bb9b7.png	\N	aws-s3	\N	/	2023-08-16 12:51:15.219	2023-08-16 12:51:15.219	1	1
267	freegait-76.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_76_9c06c2f815.png", "hash": "thumbnail_freegait_76_9c06c2f815", "mime": "image/png", "name": "thumbnail_freegait-76.png", "path": null, "size": 35.41, "width": 178, "height": 156}}	freegait_76_9c06c2f815	.png	image/png	24.45	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_76_9c06c2f815.png	\N	aws-s3	\N	/	2023-08-31 10:42:25.188	2023-08-31 10:42:25.188	1	1
196	highlights_2.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_2_5cf98cbf0f.png", "hash": "large_highlights_2_5cf98cbf0f", "mime": "image/png", "name": "large_highlights_2.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_2_5cf98cbf0f.png", "hash": "small_highlights_2_5cf98cbf0f", "mime": "image/png", "name": "small_highlights_2.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_2_5cf98cbf0f.png", "hash": "medium_highlights_2_5cf98cbf0f", "mime": "image/png", "name": "medium_highlights_2.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_2_5cf98cbf0f.png", "hash": "thumbnail_highlights_2_5cf98cbf0f", "mime": "image/png", "name": "thumbnail_highlights_2.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_2_5cf98cbf0f	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_2_5cf98cbf0f.png	\N	aws-s3	\N	/	2023-08-16 12:51:28.841	2023-08-16 12:51:28.841	1	1
197	highlights_5.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_5_7f496087fc.png", "hash": "large_highlights_5_7f496087fc", "mime": "image/png", "name": "large_highlights_5.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_5_7f496087fc.png", "hash": "small_highlights_5_7f496087fc", "mime": "image/png", "name": "small_highlights_5.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_5_7f496087fc.png", "hash": "medium_highlights_5_7f496087fc", "mime": "image/png", "name": "medium_highlights_5.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_5_7f496087fc.png", "hash": "thumbnail_highlights_5_7f496087fc", "mime": "image/png", "name": "thumbnail_highlights_5.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_5_7f496087fc	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_5_7f496087fc.png	\N	aws-s3	\N	/	2023-08-16 12:51:30.126	2023-08-16 12:51:30.126	1	1
198	highlights_3.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_3_ff2e74a2a6.png", "hash": "large_highlights_3_ff2e74a2a6", "mime": "image/png", "name": "large_highlights_3.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_3_ff2e74a2a6.png", "hash": "small_highlights_3_ff2e74a2a6", "mime": "image/png", "name": "small_highlights_3.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_3_ff2e74a2a6.png", "hash": "medium_highlights_3_ff2e74a2a6", "mime": "image/png", "name": "medium_highlights_3.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_3_ff2e74a2a6.png", "hash": "thumbnail_highlights_3_ff2e74a2a6", "mime": "image/png", "name": "thumbnail_highlights_3.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_3_ff2e74a2a6	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_3_ff2e74a2a6.png	\N	aws-s3	\N	/	2023-08-16 12:51:31.314	2023-08-16 12:51:31.314	1	1
199	highlights_6.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_6_40a3d69ec1.png", "hash": "large_highlights_6_40a3d69ec1", "mime": "image/png", "name": "large_highlights_6.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_6_40a3d69ec1.png", "hash": "small_highlights_6_40a3d69ec1", "mime": "image/png", "name": "small_highlights_6.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_6_40a3d69ec1.png", "hash": "medium_highlights_6_40a3d69ec1", "mime": "image/png", "name": "medium_highlights_6.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_6_40a3d69ec1.png", "hash": "thumbnail_highlights_6_40a3d69ec1", "mime": "image/png", "name": "thumbnail_highlights_6.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_6_40a3d69ec1	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_6_40a3d69ec1.png	\N	aws-s3	\N	/	2023-08-16 12:51:32.417	2023-08-16 12:51:32.417	1	1
200	highlights_1.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_1_e58faef09c.png", "hash": "large_highlights_1_e58faef09c", "mime": "image/png", "name": "large_highlights_1.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_1_e58faef09c.png", "hash": "small_highlights_1_e58faef09c", "mime": "image/png", "name": "small_highlights_1.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_1_e58faef09c.png", "hash": "medium_highlights_1_e58faef09c", "mime": "image/png", "name": "medium_highlights_1.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_1_e58faef09c.png", "hash": "thumbnail_highlights_1_e58faef09c", "mime": "image/png", "name": "thumbnail_highlights_1.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_1_e58faef09c	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_1_e58faef09c.png	\N	aws-s3	\N	/	2023-08-16 12:51:33.453	2023-08-16 12:51:33.453	1	1
268	KF Photo (1).png	\N	\N	360	360	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_KF_Photo_1_1aa144c2ab.png", "hash": "thumbnail_KF_Photo_1_1aa144c2ab", "mime": "image/png", "name": "thumbnail_KF Photo (1).png", "path": null, "size": 24.94, "width": 156, "height": 156}}	KF_Photo_1_1aa144c2ab	.png	image/png	28.34	https://bama-trial.s3.eu-central-1.amazonaws.com/KF_Photo_1_1aa144c2ab.png	\N	aws-s3	\N	/	2023-08-31 10:43:07.154	2023-08-31 10:43:07.154	1	1
201	highlights_2.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_2_66571d3f3b.png", "hash": "large_highlights_2_66571d3f3b", "mime": "image/png", "name": "large_highlights_2.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_2_66571d3f3b.png", "hash": "small_highlights_2_66571d3f3b", "mime": "image/png", "name": "small_highlights_2.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_2_66571d3f3b.png", "hash": "medium_highlights_2_66571d3f3b", "mime": "image/png", "name": "medium_highlights_2.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_2_66571d3f3b.png", "hash": "thumbnail_highlights_2_66571d3f3b", "mime": "image/png", "name": "thumbnail_highlights_2.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_2_66571d3f3b	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_2_66571d3f3b.png	\N	aws-s3	\N	/	2023-08-16 12:52:36.724	2023-08-16 12:52:36.724	1	1
202	highlights_5.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_5_80ff5dccfc.png", "hash": "large_highlights_5_80ff5dccfc", "mime": "image/png", "name": "large_highlights_5.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_5_80ff5dccfc.png", "hash": "small_highlights_5_80ff5dccfc", "mime": "image/png", "name": "small_highlights_5.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_5_80ff5dccfc.png", "hash": "medium_highlights_5_80ff5dccfc", "mime": "image/png", "name": "medium_highlights_5.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_5_80ff5dccfc.png", "hash": "thumbnail_highlights_5_80ff5dccfc", "mime": "image/png", "name": "thumbnail_highlights_5.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_5_80ff5dccfc	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_5_80ff5dccfc.png	\N	aws-s3	\N	/	2023-08-16 12:52:38.193	2023-08-16 12:52:38.193	1	1
203	highlights_3.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_3_fb17acbc8e.png", "hash": "large_highlights_3_fb17acbc8e", "mime": "image/png", "name": "large_highlights_3.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_3_fb17acbc8e.png", "hash": "small_highlights_3_fb17acbc8e", "mime": "image/png", "name": "small_highlights_3.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_3_fb17acbc8e.png", "hash": "medium_highlights_3_fb17acbc8e", "mime": "image/png", "name": "medium_highlights_3.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_3_fb17acbc8e.png", "hash": "thumbnail_highlights_3_fb17acbc8e", "mime": "image/png", "name": "thumbnail_highlights_3.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_3_fb17acbc8e	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_3_fb17acbc8e.png	\N	aws-s3	\N	/	2023-08-16 12:52:40.131	2023-08-16 12:52:40.131	1	1
204	highlights_4.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_4_074bd94c94.png", "hash": "large_highlights_4_074bd94c94", "mime": "image/png", "name": "large_highlights_4.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_4_074bd94c94.png", "hash": "small_highlights_4_074bd94c94", "mime": "image/png", "name": "small_highlights_4.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_4_074bd94c94.png", "hash": "medium_highlights_4_074bd94c94", "mime": "image/png", "name": "medium_highlights_4.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_4_074bd94c94.png", "hash": "thumbnail_highlights_4_074bd94c94", "mime": "image/png", "name": "thumbnail_highlights_4.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_4_074bd94c94	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_4_074bd94c94.png	\N	aws-s3	\N	/	2023-08-16 12:52:40.421	2023-08-16 12:52:40.421	1	1
205	highlights_6.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_6_9726fd9040.png", "hash": "large_highlights_6_9726fd9040", "mime": "image/png", "name": "large_highlights_6.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_6_9726fd9040.png", "hash": "small_highlights_6_9726fd9040", "mime": "image/png", "name": "small_highlights_6.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_6_9726fd9040.png", "hash": "medium_highlights_6_9726fd9040", "mime": "image/png", "name": "medium_highlights_6.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_6_9726fd9040.png", "hash": "thumbnail_highlights_6_9726fd9040", "mime": "image/png", "name": "thumbnail_highlights_6.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_6_9726fd9040	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_6_9726fd9040.png	\N	aws-s3	\N	/	2023-08-16 12:52:41.261	2023-08-16 12:52:41.261	1	1
269	Key Feature Card 7.png	\N	\N	360	438	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Key_Feature_Card_7_7d43c71555.png", "hash": "thumbnail_Key_Feature_Card_7_7d43c71555", "mime": "image/png", "name": "thumbnail_Key Feature Card 7.png", "path": null, "size": 20.18, "width": 128, "height": 156}}	Key_Feature_Card_7_7d43c71555	.png	image/png	29.19	https://bama-trial.s3.eu-central-1.amazonaws.com/Key_Feature_Card_7_7d43c71555.png	\N	aws-s3	\N	/	2023-08-31 10:43:07.183	2023-08-31 10:43:07.183	1	1
206	highlights_1.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_1_6bc4d6e5ae.png", "hash": "large_highlights_1_6bc4d6e5ae", "mime": "image/png", "name": "large_highlights_1.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_1_6bc4d6e5ae.png", "hash": "small_highlights_1_6bc4d6e5ae", "mime": "image/png", "name": "small_highlights_1.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_1_6bc4d6e5ae.png", "hash": "medium_highlights_1_6bc4d6e5ae", "mime": "image/png", "name": "medium_highlights_1.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_1_6bc4d6e5ae.png", "hash": "thumbnail_highlights_1_6bc4d6e5ae", "mime": "image/png", "name": "thumbnail_highlights_1.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_1_6bc4d6e5ae	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_1_6bc4d6e5ae.png	\N	aws-s3	\N	/	2023-08-16 12:52:42.539	2023-08-16 12:52:42.539	1	1
207	highlights_1.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_1_119c38dae0.png", "hash": "large_highlights_1_119c38dae0", "mime": "image/png", "name": "large_highlights_1.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_1_119c38dae0.png", "hash": "small_highlights_1_119c38dae0", "mime": "image/png", "name": "small_highlights_1.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_1_119c38dae0.png", "hash": "medium_highlights_1_119c38dae0", "mime": "image/png", "name": "medium_highlights_1.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_1_119c38dae0.png", "hash": "thumbnail_highlights_1_119c38dae0", "mime": "image/png", "name": "thumbnail_highlights_1.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_1_119c38dae0	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_1_119c38dae0.png	\N	aws-s3	\N	/	2023-08-16 12:53:54.855	2023-08-16 12:53:54.855	1	1
208	highlights_6.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_6_044efb6458.png", "hash": "large_highlights_6_044efb6458", "mime": "image/png", "name": "large_highlights_6.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_6_044efb6458.png", "hash": "small_highlights_6_044efb6458", "mime": "image/png", "name": "small_highlights_6.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_6_044efb6458.png", "hash": "medium_highlights_6_044efb6458", "mime": "image/png", "name": "medium_highlights_6.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_6_044efb6458.png", "hash": "thumbnail_highlights_6_044efb6458", "mime": "image/png", "name": "thumbnail_highlights_6.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_6_044efb6458	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_6_044efb6458.png	\N	aws-s3	\N	/	2023-08-16 12:54:02.486	2023-08-16 12:54:02.486	1	1
209	highlights_3.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_3_88363d0d85.png", "hash": "large_highlights_3_88363d0d85", "mime": "image/png", "name": "large_highlights_3.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_3_88363d0d85.png", "hash": "small_highlights_3_88363d0d85", "mime": "image/png", "name": "small_highlights_3.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_3_88363d0d85.png", "hash": "medium_highlights_3_88363d0d85", "mime": "image/png", "name": "medium_highlights_3.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_3_88363d0d85.png", "hash": "thumbnail_highlights_3_88363d0d85", "mime": "image/png", "name": "thumbnail_highlights_3.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_3_88363d0d85	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_3_88363d0d85.png	\N	aws-s3	\N	/	2023-08-16 12:54:06.039	2023-08-16 12:54:06.039	1	1
210	highlights_5.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_5_d5e9bc074c.png", "hash": "large_highlights_5_d5e9bc074c", "mime": "image/png", "name": "large_highlights_5.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_5_d5e9bc074c.png", "hash": "small_highlights_5_d5e9bc074c", "mime": "image/png", "name": "small_highlights_5.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_5_d5e9bc074c.png", "hash": "medium_highlights_5_d5e9bc074c", "mime": "image/png", "name": "medium_highlights_5.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_5_d5e9bc074c.png", "hash": "thumbnail_highlights_5_d5e9bc074c", "mime": "image/png", "name": "thumbnail_highlights_5.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_5_d5e9bc074c	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_5_d5e9bc074c.png	\N	aws-s3	\N	/	2023-08-16 12:54:07.657	2023-08-16 12:54:07.657	1	1
270	KF Photo.png	\N	\N	360	360	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_KF_Photo_19aa4a77c7.png", "hash": "thumbnail_KF_Photo_19aa4a77c7", "mime": "image/png", "name": "thumbnail_KF Photo.png", "path": null, "size": 26.44, "width": 156, "height": 156}}	KF_Photo_19aa4a77c7	.png	image/png	29.81	https://bama-trial.s3.eu-central-1.amazonaws.com/KF_Photo_19aa4a77c7.png	\N	aws-s3	\N	/	2023-08-31 10:43:07.196	2023-08-31 10:43:07.196	1	1
299	CTL-B0610-EN-Rev.04-Digital_compressed.pdf	\N	\N	\N	\N	\N	CTL_B0610_EN_Rev_04_Digital_compressed_c673876793	.pdf	application/pdf	585.91	https://bama-trial.s3.eu-central-1.amazonaws.com/CTL_B0610_EN_Rev_04_Digital_compressed_c673876793.pdf	\N	aws-s3	\N	/	2023-10-30 13:13:00.217	2023-10-30 13:13:00.217	5	5
211	highlights_2.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_2_dbcd2a72aa.png", "hash": "large_highlights_2_dbcd2a72aa", "mime": "image/png", "name": "large_highlights_2.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_2_dbcd2a72aa.png", "hash": "small_highlights_2_dbcd2a72aa", "mime": "image/png", "name": "small_highlights_2.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_2_dbcd2a72aa.png", "hash": "medium_highlights_2_dbcd2a72aa", "mime": "image/png", "name": "medium_highlights_2.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_2_dbcd2a72aa.png", "hash": "thumbnail_highlights_2_dbcd2a72aa", "mime": "image/png", "name": "thumbnail_highlights_2.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_2_dbcd2a72aa	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_2_dbcd2a72aa.png	\N	aws-s3	\N	/	2023-08-16 12:54:08.658	2023-08-16 12:54:08.658	1	1
212	highlights_4.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_highlights_4_662311737e.png", "hash": "large_highlights_4_662311737e", "mime": "image/png", "name": "large_highlights_4.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_highlights_4_662311737e.png", "hash": "small_highlights_4_662311737e", "mime": "image/png", "name": "small_highlights_4.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_highlights_4_662311737e.png", "hash": "medium_highlights_4_662311737e", "mime": "image/png", "name": "medium_highlights_4.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_highlights_4_662311737e.png", "hash": "thumbnail_highlights_4_662311737e", "mime": "image/png", "name": "thumbnail_highlights_4.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	highlights_4_662311737e	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/highlights_4_662311737e.png	\N	aws-s3	\N	/	2023-08-16 12:54:09.548	2023-08-16 12:54:09.548	1	1
213	Visiogait Footer.png	\N	\N	2556	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Footer_a0752cd419.png", "hash": "large_Visiogait_Footer_a0752cd419", "mime": "image/png", "name": "large_Visiogait Footer.png", "path": null, "size": 386.1, "width": 1000, "height": 754}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Footer_a0752cd419.png", "hash": "small_Visiogait_Footer_a0752cd419", "mime": "image/png", "name": "small_Visiogait Footer.png", "path": null, "size": 112.41, "width": 500, "height": 377}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Footer_a0752cd419.png", "hash": "medium_Visiogait_Footer_a0752cd419", "mime": "image/png", "name": "medium_Visiogait Footer.png", "path": null, "size": 230.46, "width": 750, "height": 566}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Footer_a0752cd419.png", "hash": "thumbnail_Visiogait_Footer_a0752cd419", "mime": "image/png", "name": "thumbnail_Visiogait Footer.png", "path": null, "size": 26.45, "width": 207, "height": 156}}	Visiogait_Footer_a0752cd419	.png	image/png	553.88	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Footer_a0752cd419.png	\N	aws-s3	\N	/	2023-08-31 07:35:18.961	2023-08-31 07:35:18.961	1	1
214	Visiogait Urun Detaylari.png	\N	\N	2720	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Urun_Detaylari_2ce1cc349f.png", "hash": "large_Visiogait_Urun_Detaylari_2ce1cc349f", "mime": "image/png", "name": "large_Visiogait Urun Detaylari.png", "path": null, "size": 379.84, "width": 1000, "height": 824}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Urun_Detaylari_2ce1cc349f.png", "hash": "small_Visiogait_Urun_Detaylari_2ce1cc349f", "mime": "image/png", "name": "small_Visiogait Urun Detaylari.png", "path": null, "size": 113.92, "width": 500, "height": 412}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Urun_Detaylari_2ce1cc349f.png", "hash": "medium_Visiogait_Urun_Detaylari_2ce1cc349f", "mime": "image/png", "name": "medium_Visiogait Urun Detaylari.png", "path": null, "size": 228.49, "width": 750, "height": 618}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Urun_Detaylari_2ce1cc349f.png", "hash": "thumbnail_Visiogait_Urun_Detaylari_2ce1cc349f", "mime": "image/png", "name": "thumbnail_Visiogait Urun Detaylari.png", "path": null, "size": 24.34, "width": 189, "height": 156}}	Visiogait_Urun_Detaylari_2ce1cc349f	.png	image/png	559.32	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Urun_Detaylari_2ce1cc349f.png	\N	aws-s3	\N	/	2023-08-31 07:35:59.103	2023-08-31 07:35:59.103	1	1
215	Visiogait 1.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_1_f56554f842.png", "hash": "large_Visiogait_1_f56554f842", "mime": "image/png", "name": "large_Visiogait 1.png", "path": null, "size": 504.7, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_1_f56554f842.png", "hash": "small_Visiogait_1_f56554f842", "mime": "image/png", "name": "small_Visiogait 1.png", "path": null, "size": 149.47, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_1_f56554f842.png", "hash": "medium_Visiogait_1_f56554f842", "mime": "image/png", "name": "medium_Visiogait 1.png", "path": null, "size": 302.92, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_1_f56554f842.png", "hash": "thumbnail_Visiogait_1_f56554f842", "mime": "image/png", "name": "thumbnail_Visiogait 1.png", "path": null, "size": 43.38, "width": 245, "height": 105}}	Visiogait_1_f56554f842	.png	image/png	1828.95	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_1_f56554f842.png	\N	aws-s3	\N	/	2023-08-31 07:42:41.539	2023-08-31 07:42:41.539	1	1
271	VG1-golgeli 1.png	\N	\N	295	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_VG_1_golgeli_1_0767860a66.png", "hash": "thumbnail_VG_1_golgeli_1_0767860a66", "mime": "image/png", "name": "thumbnail_VG1-golgeli 1.png", "path": null, "size": 19.37, "width": 152, "height": 156}}	VG_1_golgeli_1_0767860a66	.png	image/png	16.01	https://bama-trial.s3.eu-central-1.amazonaws.com/VG_1_golgeli_1_0767860a66.png	\N	aws-s3	\N	/	2023-08-31 10:46:17.388	2023-08-31 10:46:17.388	1	1
216	Visiogait Urun Detaylari.png	\N	\N	2720	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Urun_Detaylari_0b6bd57843.png", "hash": "large_Visiogait_Urun_Detaylari_0b6bd57843", "mime": "image/png", "name": "large_Visiogait Urun Detaylari.png", "path": null, "size": 379.84, "width": 1000, "height": 824}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Urun_Detaylari_0b6bd57843.png", "hash": "small_Visiogait_Urun_Detaylari_0b6bd57843", "mime": "image/png", "name": "small_Visiogait Urun Detaylari.png", "path": null, "size": 113.92, "width": 500, "height": 412}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Urun_Detaylari_0b6bd57843.png", "hash": "medium_Visiogait_Urun_Detaylari_0b6bd57843", "mime": "image/png", "name": "medium_Visiogait Urun Detaylari.png", "path": null, "size": 228.49, "width": 750, "height": 618}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Urun_Detaylari_0b6bd57843.png", "hash": "thumbnail_Visiogait_Urun_Detaylari_0b6bd57843", "mime": "image/png", "name": "thumbnail_Visiogait Urun Detaylari.png", "path": null, "size": 24.34, "width": 189, "height": 156}}	Visiogait_Urun_Detaylari_0b6bd57843	.png	image/png	559.32	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Urun_Detaylari_0b6bd57843.png	\N	aws-s3	\N	/	2023-08-31 07:50:16.91	2023-08-31 07:50:48.57	1	1
217	Visiogait Footer.png	\N	\N	2556	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Footer_b1b532bd39.png", "hash": "large_Visiogait_Footer_b1b532bd39", "mime": "image/png", "name": "large_Visiogait Footer.png", "path": null, "size": 386.1, "width": 1000, "height": 754}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Footer_b1b532bd39.png", "hash": "small_Visiogait_Footer_b1b532bd39", "mime": "image/png", "name": "small_Visiogait Footer.png", "path": null, "size": 112.41, "width": 500, "height": 377}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Footer_b1b532bd39.png", "hash": "medium_Visiogait_Footer_b1b532bd39", "mime": "image/png", "name": "medium_Visiogait Footer.png", "path": null, "size": 230.46, "width": 750, "height": 566}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Footer_b1b532bd39.png", "hash": "thumbnail_Visiogait_Footer_b1b532bd39", "mime": "image/png", "name": "thumbnail_Visiogait Footer.png", "path": null, "size": 26.45, "width": 207, "height": 156}}	Visiogait_Footer_b1b532bd39	.png	image/png	553.88	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Footer_b1b532bd39.png	\N	aws-s3	\N	/	2023-08-31 08:27:25.76	2023-08-31 08:27:25.76	1	1
218	Visiogait 2.png	\N	\N	4480	1744	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_2_6b40cab2b8.png", "hash": "large_Visiogait_2_6b40cab2b8", "mime": "image/png", "name": "large_Visiogait 2.png", "path": null, "size": 553.72, "width": 1000, "height": 389}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_2_6b40cab2b8.png", "hash": "small_Visiogait_2_6b40cab2b8", "mime": "image/png", "name": "small_Visiogait 2.png", "path": null, "size": 158.2, "width": 500, "height": 195}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_2_6b40cab2b8.png", "hash": "medium_Visiogait_2_6b40cab2b8", "mime": "image/png", "name": "medium_Visiogait 2.png", "path": null, "size": 328.97, "width": 750, "height": 292}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_2_6b40cab2b8.png", "hash": "thumbnail_Visiogait_2_6b40cab2b8", "mime": "image/png", "name": "thumbnail_Visiogait 2.png", "path": null, "size": 43.82, "width": 245, "height": 95}}	Visiogait_2_6b40cab2b8	.png	image/png	2133.47	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_2_6b40cab2b8.png	\N	aws-s3	\N	/	2023-08-31 09:02:51.835	2023-08-31 09:02:51.835	1	1
219	Visiogait Urun Detaylari.png	\N	\N	2720	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Urun_Detaylari_c38d2b63b4.png", "hash": "large_Visiogait_Urun_Detaylari_c38d2b63b4", "mime": "image/png", "name": "large_Visiogait Urun Detaylari.png", "path": null, "size": 379.84, "width": 1000, "height": 824}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Urun_Detaylari_c38d2b63b4.png", "hash": "small_Visiogait_Urun_Detaylari_c38d2b63b4", "mime": "image/png", "name": "small_Visiogait Urun Detaylari.png", "path": null, "size": 113.92, "width": 500, "height": 412}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Urun_Detaylari_c38d2b63b4.png", "hash": "medium_Visiogait_Urun_Detaylari_c38d2b63b4", "mime": "image/png", "name": "medium_Visiogait Urun Detaylari.png", "path": null, "size": 228.49, "width": 750, "height": 618}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Urun_Detaylari_c38d2b63b4.png", "hash": "thumbnail_Visiogait_Urun_Detaylari_c38d2b63b4", "mime": "image/png", "name": "thumbnail_Visiogait Urun Detaylari.png", "path": null, "size": 24.34, "width": 189, "height": 156}}	Visiogait_Urun_Detaylari_c38d2b63b4	.png	image/png	559.32	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Urun_Detaylari_c38d2b63b4.png	\N	aws-s3	\N	/	2023-08-31 09:03:17.774	2023-08-31 09:03:17.774	1	1
220	Robogait 1.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_1_6ee71ad93e.png", "hash": "large_Robogait_1_6ee71ad93e", "mime": "image/png", "name": "large_Robogait 1.png", "path": null, "size": 460.58, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_1_6ee71ad93e.png", "hash": "small_Robogait_1_6ee71ad93e", "mime": "image/png", "name": "small_Robogait 1.png", "path": null, "size": 136.63, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_1_6ee71ad93e.png", "hash": "medium_Robogait_1_6ee71ad93e", "mime": "image/png", "name": "medium_Robogait 1.png", "path": null, "size": 274.76, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_1_6ee71ad93e.png", "hash": "thumbnail_Robogait_1_6ee71ad93e", "mime": "image/png", "name": "thumbnail_Robogait 1.png", "path": null, "size": 41.86, "width": 245, "height": 105}}	Robogait_1_6ee71ad93e	.png	image/png	1730.64	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_1_6ee71ad93e.png	\N	aws-s3	\N	/	2023-08-31 09:03:47.674	2023-08-31 09:03:47.674	1	1
300	CTL-B0610-DE-Rev.04-Digital-1_compressed.pdf	\N	\N	\N	\N	\N	CTL_B0610_DE_Rev_04_Digital_1_compressed_c8054065b1	.pdf	application/pdf	600.26	https://bama-trial.s3.eu-central-1.amazonaws.com/CTL_B0610_DE_Rev_04_Digital_1_compressed_c8054065b1.pdf	\N	aws-s3	\N	/	2023-10-30 13:15:26.785	2023-10-30 13:15:26.785	5	5
221	Robogait Footer.png	\N	\N	2048	1912	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Footer_f4e3196ec7.png", "hash": "large_Robogait_Footer_f4e3196ec7", "mime": "image/png", "name": "large_Robogait Footer.png", "path": null, "size": 542.16, "width": 1000, "height": 934}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Footer_f4e3196ec7.png", "hash": "small_Robogait_Footer_f4e3196ec7", "mime": "image/png", "name": "small_Robogait Footer.png", "path": null, "size": 163.5, "width": 500, "height": 467}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Footer_f4e3196ec7.png", "hash": "medium_Robogait_Footer_f4e3196ec7", "mime": "image/png", "name": "medium_Robogait Footer.png", "path": null, "size": 327.38, "width": 750, "height": 700}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Footer_f4e3196ec7.png", "hash": "thumbnail_Robogait_Footer_f4e3196ec7", "mime": "image/png", "name": "thumbnail_Robogait Footer.png", "path": null, "size": 27.52, "width": 167, "height": 156}}	Robogait_Footer_f4e3196ec7	.png	image/png	555.63	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Footer_f4e3196ec7.png	\N	aws-s3	\N	/	2023-08-31 09:04:25.002	2023-08-31 09:04:25.002	1	1
222	Robogait Urun Detaylari.png	\N	\N	2720	2476	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Urun_Detaylari_c5af063467.png", "hash": "large_Robogait_Urun_Detaylari_c5af063467", "mime": "image/png", "name": "large_Robogait Urun Detaylari.png", "path": null, "size": 623.71, "width": 1000, "height": 910}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Urun_Detaylari_c5af063467.png", "hash": "small_Robogait_Urun_Detaylari_c5af063467", "mime": "image/png", "name": "small_Robogait Urun Detaylari.png", "path": null, "size": 185.75, "width": 500, "height": 455}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Urun_Detaylari_c5af063467.png", "hash": "medium_Robogait_Urun_Detaylari_c5af063467", "mime": "image/png", "name": "medium_Robogait Urun Detaylari.png", "path": null, "size": 375.76, "width": 750, "height": 683}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Urun_Detaylari_c5af063467.png", "hash": "thumbnail_Robogait_Urun_Detaylari_c5af063467", "mime": "image/png", "name": "thumbnail_Robogait Urun Detaylari.png", "path": null, "size": 31.36, "width": 171, "height": 156}}	Robogait_Urun_Detaylari_c5af063467	.png	image/png	1094.30	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Urun_Detaylari_c5af063467.png	\N	aws-s3	\N	/	2023-08-31 09:05:00.652	2023-08-31 09:05:00.652	1	1
223	Robogait Aksesuar 1.png	\N	\N	663	606	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_1_9ddc65cd8a.png", "hash": "small_Robogait_Aksesuar_1_9ddc65cd8a", "mime": "image/png", "name": "small_Robogait Aksesuar 1.png", "path": null, "size": 151.91, "width": 500, "height": 457}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_1_9ddc65cd8a.png", "hash": "thumbnail_Robogait_Aksesuar_1_9ddc65cd8a", "mime": "image/png", "name": "thumbnail_Robogait Aksesuar 1.png", "path": null, "size": 20.73, "width": 171, "height": 156}}	Robogait_Aksesuar_1_9ddc65cd8a	.png	image/png	72.52	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_1_9ddc65cd8a.png	\N	aws-s3	\N	/	2023-08-31 09:59:51.004	2023-08-31 09:59:51.004	1	1
224	Robogait Aksesuar 2.png	\N	\N	334	591	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_2_0fef55bf96.png", "hash": "small_Robogait_Aksesuar_2_0fef55bf96", "mime": "image/png", "name": "small_Robogait Aksesuar 2.png", "path": null, "size": 83.74, "width": 283, "height": 500}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_2_0fef55bf96.png", "hash": "thumbnail_Robogait_Aksesuar_2_0fef55bf96", "mime": "image/png", "name": "thumbnail_Robogait Aksesuar 2.png", "path": null, "size": 12.83, "width": 88, "height": 156}}	Robogait_Aksesuar_2_0fef55bf96	.png	image/png	32.27	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_2_0fef55bf96.png	\N	aws-s3	\N	/	2023-08-31 10:00:36.163	2023-08-31 10:00:36.163	1	1
225	Robogait Aksesuar 3.jpg	\N	\N	1226	866	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Aksesuar_3_603b32b880.jpg", "hash": "large_Robogait_Aksesuar_3_603b32b880", "mime": "image/jpeg", "name": "large_Robogait Aksesuar 3.jpg", "path": null, "size": 61.14, "width": 1000, "height": 706}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_3_603b32b880.jpg", "hash": "small_Robogait_Aksesuar_3_603b32b880", "mime": "image/jpeg", "name": "small_Robogait Aksesuar 3.jpg", "path": null, "size": 20.56, "width": 500, "height": 353}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Aksesuar_3_603b32b880.jpg", "hash": "medium_Robogait_Aksesuar_3_603b32b880", "mime": "image/jpeg", "name": "medium_Robogait Aksesuar 3.jpg", "path": null, "size": 38.53, "width": 750, "height": 530}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_3_603b32b880.jpg", "hash": "thumbnail_Robogait_Aksesuar_3_603b32b880", "mime": "image/jpeg", "name": "thumbnail_Robogait Aksesuar 3.jpg", "path": null, "size": 6.87, "width": 221, "height": 156}}	Robogait_Aksesuar_3_603b32b880	.jpg	image/jpeg	90.49	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_3_603b32b880.jpg	\N	aws-s3	\N	/	2023-08-31 10:00:36.751	2023-08-31 10:00:36.751	1	1
226	Robogait Aksesuar 1.png	\N	\N	663	606	{"small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Aksesuar_1_3c333f9ace.png", "hash": "small_Robogait_Aksesuar_1_3c333f9ace", "mime": "image/png", "name": "small_Robogait Aksesuar 1.png", "path": null, "size": 151.91, "width": 500, "height": 457}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Aksesuar_1_3c333f9ace.png", "hash": "thumbnail_Robogait_Aksesuar_1_3c333f9ace", "mime": "image/png", "name": "thumbnail_Robogait Aksesuar 1.png", "path": null, "size": 20.73, "width": 171, "height": 156}}	Robogait_Aksesuar_1_3c333f9ace	.png	image/png	72.52	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Aksesuar_1_3c333f9ace.png	\N	aws-s3	\N	/	2023-08-31 10:00:37.438	2023-08-31 10:00:37.438	1	1
272	VG1-golgeli 1 (3rd copy).png	\N	\N	295	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_VG_1_golgeli_1_3rd_copy_8b8df991d6.png", "hash": "thumbnail_VG_1_golgeli_1_3rd_copy_8b8df991d6", "mime": "image/png", "name": "thumbnail_VG1-golgeli 1 (3rd copy).png", "path": null, "size": 19.37, "width": 152, "height": 156}}	VG_1_golgeli_1_3rd_copy_8b8df991d6	.png	image/png	16.01	https://bama-trial.s3.eu-central-1.amazonaws.com/VG_1_golgeli_1_3rd_copy_8b8df991d6.png	\N	aws-s3	\N	/	2023-08-31 10:46:52.43	2023-08-31 10:46:52.43	1	1
227	Robogait Ozellik 4.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_4_5bf9b79b21.png", "hash": "large_Robogait_Ozellik_4_5bf9b79b21", "mime": "image/png", "name": "large_Robogait Ozellik 4.png", "path": null, "size": 259.76, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_4_5bf9b79b21.png", "hash": "small_Robogait_Ozellik_4_5bf9b79b21", "mime": "image/png", "name": "small_Robogait Ozellik 4.png", "path": null, "size": 81.12, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_4_5bf9b79b21.png", "hash": "medium_Robogait_Ozellik_4_5bf9b79b21", "mime": "image/png", "name": "medium_Robogait Ozellik 4.png", "path": null, "size": 158.22, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_4_5bf9b79b21.png", "hash": "thumbnail_Robogait_Ozellik_4_5bf9b79b21", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 4.png", "path": null, "size": 25.39, "width": 245, "height": 135}}	Robogait_Ozellik_4_5bf9b79b21	.png	image/png	158.18	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_4_5bf9b79b21.png	\N	aws-s3	\N	/	2023-08-31 10:01:02.047	2023-08-31 10:01:02.047	1	1
228	Robogait Ozellik 5.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_5_a1a51e8164.png", "hash": "large_Robogait_Ozellik_5_a1a51e8164", "mime": "image/png", "name": "large_Robogait Ozellik 5.png", "path": null, "size": 901.45, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_5_a1a51e8164.png", "hash": "small_Robogait_Ozellik_5_a1a51e8164", "mime": "image/png", "name": "small_Robogait Ozellik 5.png", "path": null, "size": 251.27, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_5_a1a51e8164.png", "hash": "medium_Robogait_Ozellik_5_a1a51e8164", "mime": "image/png", "name": "medium_Robogait Ozellik 5.png", "path": null, "size": 528.76, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_5_a1a51e8164.png", "hash": "thumbnail_Robogait_Ozellik_5_a1a51e8164", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 5.png", "path": null, "size": 69.16, "width": 245, "height": 135}}	Robogait_Ozellik_5_a1a51e8164	.png	image/png	782.20	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_5_a1a51e8164.png	\N	aws-s3	\N	/	2023-08-31 10:01:04.94	2023-08-31 10:01:04.94	1	1
229	Robogait Ozellik 3.png	\N	\N	1375	1021	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_3_94a962be09.png", "hash": "large_Robogait_Ozellik_3_94a962be09", "mime": "image/png", "name": "large_Robogait Ozellik 3.png", "path": null, "size": 584.93, "width": 1000, "height": 743}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_3_94a962be09.png", "hash": "small_Robogait_Ozellik_3_94a962be09", "mime": "image/png", "name": "small_Robogait Ozellik 3.png", "path": null, "size": 141.3, "width": 500, "height": 371}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_3_94a962be09.png", "hash": "medium_Robogait_Ozellik_3_94a962be09", "mime": "image/png", "name": "medium_Robogait Ozellik 3.png", "path": null, "size": 317.54, "width": 750, "height": 557}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_3_94a962be09.png", "hash": "thumbnail_Robogait_Ozellik_3_94a962be09", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 3.png", "path": null, "size": 30.72, "width": 210, "height": 156}}	Robogait_Ozellik_3_94a962be09	.png	image/png	250.30	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_3_94a962be09.png	\N	aws-s3	\N	/	2023-08-31 10:01:10.737	2023-08-31 10:01:10.737	1	1
230	Robogait Ozellik 2.png	\N	\N	2200	1208	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_2_5c8f139658.png", "hash": "large_Robogait_Ozellik_2_5c8f139658", "mime": "image/png", "name": "large_Robogait Ozellik 2.png", "path": null, "size": 460.5, "width": 1000, "height": 549}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_2_5c8f139658.png", "hash": "small_Robogait_Ozellik_2_5c8f139658", "mime": "image/png", "name": "small_Robogait Ozellik 2.png", "path": null, "size": 137.13, "width": 500, "height": 275}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_2_5c8f139658.png", "hash": "medium_Robogait_Ozellik_2_5c8f139658", "mime": "image/png", "name": "medium_Robogait Ozellik 2.png", "path": null, "size": 277.11, "width": 750, "height": 412}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_2_5c8f139658.png", "hash": "thumbnail_Robogait_Ozellik_2_5c8f139658", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 2.png", "path": null, "size": 41.28, "width": 245, "height": 135}}	Robogait_Ozellik_2_5c8f139658	.png	image/png	504.74	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_2_5c8f139658.png	\N	aws-s3	\N	/	2023-08-31 10:01:12.836	2023-08-31 10:01:12.836	1	1
231	Freegait 1.png	\N	\N	4480	1920	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_1_c5522d1834.png", "hash": "large_Freegait_1_c5522d1834", "mime": "image/png", "name": "large_Freegait 1.png", "path": null, "size": 539.35, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_1_c5522d1834.png", "hash": "small_Freegait_1_c5522d1834", "mime": "image/png", "name": "small_Freegait 1.png", "path": null, "size": 156.13, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_1_c5522d1834.png", "hash": "medium_Freegait_1_c5522d1834", "mime": "image/png", "name": "medium_Freegait 1.png", "path": null, "size": 319.13, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_1_c5522d1834.png", "hash": "thumbnail_Freegait_1_c5522d1834", "mime": "image/png", "name": "thumbnail_Freegait 1.png", "path": null, "size": 45.37, "width": 245, "height": 105}}	Freegait_1_c5522d1834	.png	image/png	2117.59	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_1_c5522d1834.png	\N	aws-s3	\N	/	2023-08-31 10:03:07.612	2023-08-31 10:03:07.612	1	1
288	CTL-B0112-TR-Rev.03-Digital-1-.pdf	\N	\N	\N	\N	\N	CTL_B0112_TR_Rev_03_Digital_1_7deaa23b27	.pdf	application/pdf	617.63	https://bama-trial.s3.eu-central-1.amazonaws.com/CTL_B0112_TR_Rev_03_Digital_1_7deaa23b27.pdf	\N	aws-s3	\N	/	2023-10-11 10:18:43.209	2023-10-11 10:18:43.209	5	5
232	Freegait Footer.png	\N	\N	1872	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Footer_4daba8d4a6.png", "hash": "large_Freegait_Footer_4daba8d4a6", "mime": "image/png", "name": "large_Freegait Footer.png", "path": null, "size": 501.06, "width": 971, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Footer_4daba8d4a6.png", "hash": "small_Freegait_Footer_4daba8d4a6", "mime": "image/png", "name": "small_Freegait Footer.png", "path": null, "size": 143.37, "width": 485, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Footer_4daba8d4a6.png", "hash": "medium_Freegait_Footer_4daba8d4a6", "mime": "image/png", "name": "medium_Freegait Footer.png", "path": null, "size": 300.73, "width": 728, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Footer_4daba8d4a6.png", "hash": "thumbnail_Freegait_Footer_4daba8d4a6", "mime": "image/png", "name": "thumbnail_Freegait Footer.png", "path": null, "size": 18.13, "width": 151, "height": 156}}	Freegait_Footer_4daba8d4a6	.png	image/png	355.21	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Footer_4daba8d4a6.png	\N	aws-s3	\N	/	2023-08-31 10:03:42.363	2023-08-31 10:03:42.363	1	1
233	Freegait Urun Detaylari.png	\N	\N	2720	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Urun_Detaylari_4e3081f470.png", "hash": "large_Freegait_Urun_Detaylari_4e3081f470", "mime": "image/png", "name": "large_Freegait Urun Detaylari.png", "path": null, "size": 394.85, "width": 1000, "height": 824}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Urun_Detaylari_4e3081f470.png", "hash": "small_Freegait_Urun_Detaylari_4e3081f470", "mime": "image/png", "name": "small_Freegait Urun Detaylari.png", "path": null, "size": 114.35, "width": 500, "height": 412}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Urun_Detaylari_4e3081f470.png", "hash": "medium_Freegait_Urun_Detaylari_4e3081f470", "mime": "image/png", "name": "medium_Freegait Urun Detaylari.png", "path": null, "size": 238.25, "width": 750, "height": 618}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Urun_Detaylari_4e3081f470.png", "hash": "thumbnail_Freegait_Urun_Detaylari_4e3081f470", "mime": "image/png", "name": "thumbnail_Freegait Urun Detaylari.png", "path": null, "size": 22.1, "width": 189, "height": 156}}	Freegait_Urun_Detaylari_4e3081f470	.png	image/png	572.00	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Urun_Detaylari_4e3081f470.png	\N	aws-s3	\N	/	2023-08-31 10:04:10.038	2023-08-31 10:04:10.038	1	1
234	Freegait 2.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_2_e59f340586.png", "hash": "large_Freegait_2_e59f340586", "mime": "image/png", "name": "large_Freegait 2.png", "path": null, "size": 761.6, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_2_e59f340586.png", "hash": "small_Freegait_2_e59f340586", "mime": "image/png", "name": "small_Freegait 2.png", "path": null, "size": 202.25, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_2_e59f340586.png", "hash": "medium_Freegait_2_e59f340586", "mime": "image/png", "name": "medium_Freegait 2.png", "path": null, "size": 440.11, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_2_e59f340586.png", "hash": "thumbnail_Freegait_2_e59f340586", "mime": "image/png", "name": "thumbnail_Freegait 2.png", "path": null, "size": 27.46, "width": 169, "height": 156}}	Freegait_2_e59f340586	.png	image/png	626.15	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_2_e59f340586.png	\N	aws-s3	\N	/	2023-08-31 10:04:47.524	2023-08-31 10:04:47.524	1	1
235	Freegait Aksesuarlar 4.jpg	\N	\N	1715	1233	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_4_191ba59f2d.jpg", "hash": "large_Freegait_Aksesuarlar_4_191ba59f2d", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 4.jpg", "path": null, "size": 117.46, "width": 1000, "height": 719}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_4_191ba59f2d.jpg", "hash": "small_Freegait_Aksesuarlar_4_191ba59f2d", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 4.jpg", "path": null, "size": 41.19, "width": 500, "height": 359}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_4_191ba59f2d.jpg", "hash": "medium_Freegait_Aksesuarlar_4_191ba59f2d", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 4.jpg", "path": null, "size": 76.26, "width": 750, "height": 539}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_4_191ba59f2d.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_4_191ba59f2d", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 4.jpg", "path": null, "size": 10.59, "width": 217, "height": 156}}	Freegait_Aksesuarlar_4_191ba59f2d	.jpg	image/jpeg	256.26	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_4_191ba59f2d.jpg	\N	aws-s3	\N	/	2023-08-31 10:06:40.994	2023-08-31 10:06:40.994	1	1
236	Freegait Aksesuarlar 2.jpg	\N	\N	5000	3333	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_2_5299636f16.jpg", "hash": "large_Freegait_Aksesuarlar_2_5299636f16", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 2.jpg", "path": null, "size": 40.5, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_2_5299636f16.jpg", "hash": "small_Freegait_Aksesuarlar_2_5299636f16", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 2.jpg", "path": null, "size": 12.21, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_2_5299636f16.jpg", "hash": "medium_Freegait_Aksesuarlar_2_5299636f16", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 2.jpg", "path": null, "size": 25.15, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_2_5299636f16.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_2_5299636f16", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 2.jpg", "path": null, "size": 3.83, "width": 234, "height": 156}}	Freegait_Aksesuarlar_2_5299636f16	.jpg	image/jpeg	653.36	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_2_5299636f16.jpg	\N	aws-s3	\N	/	2023-08-31 10:07:01.354	2023-08-31 10:07:01.354	1	1
237	Freegait Aksesuarlar 3.jpg	\N	\N	5000	3333	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_3_b2c195f93f.jpg", "hash": "large_Freegait_Aksesuarlar_3_b2c195f93f", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 3.jpg", "path": null, "size": 42.86, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_3_b2c195f93f.jpg", "hash": "small_Freegait_Aksesuarlar_3_b2c195f93f", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 3.jpg", "path": null, "size": 14.8, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_3_b2c195f93f.jpg", "hash": "medium_Freegait_Aksesuarlar_3_b2c195f93f", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 3.jpg", "path": null, "size": 27.41, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_3_b2c195f93f.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_3_b2c195f93f", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 3.jpg", "path": null, "size": 5.05, "width": 234, "height": 156}}	Freegait_Aksesuarlar_3_b2c195f93f	.jpg	image/jpeg	718.22	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_3_b2c195f93f.jpg	\N	aws-s3	\N	/	2023-08-31 10:07:01.905	2023-08-31 10:07:01.905	1	1
238	Freegait Aksesuarlar 1.jpg	\N	\N	5000	3333	{"large": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Freegait_Aksesuarlar_1_0c3d87f3b4.jpg", "hash": "large_Freegait_Aksesuarlar_1_0c3d87f3b4", "mime": "image/jpeg", "name": "large_Freegait Aksesuarlar 1.jpg", "path": null, "size": 62.59, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Freegait_Aksesuarlar_1_0c3d87f3b4.jpg", "hash": "small_Freegait_Aksesuarlar_1_0c3d87f3b4", "mime": "image/jpeg", "name": "small_Freegait Aksesuarlar 1.jpg", "path": null, "size": 19.2, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Freegait_Aksesuarlar_1_0c3d87f3b4.jpg", "hash": "medium_Freegait_Aksesuarlar_1_0c3d87f3b4", "mime": "image/jpeg", "name": "medium_Freegait Aksesuarlar 1.jpg", "path": null, "size": 37.59, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Freegait_Aksesuarlar_1_0c3d87f3b4.jpg", "hash": "thumbnail_Freegait_Aksesuarlar_1_0c3d87f3b4", "mime": "image/jpeg", "name": "thumbnail_Freegait Aksesuarlar 1.jpg", "path": null, "size": 6.03, "width": 234, "height": 156}}	Freegait_Aksesuarlar_1_0c3d87f3b4	.jpg	image/jpeg	1039.81	https://bama-trial.s3.eu-central-1.amazonaws.com/Freegait_Aksesuarlar_1_0c3d87f3b4.jpg	\N	aws-s3	\N	/	2023-08-31 10:07:09.129	2023-08-31 10:07:09.129	1	1
239	Robogait Footer.png	\N	\N	2048	1912	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Footer_83898c448c.png", "hash": "large_Robogait_Footer_83898c448c", "mime": "image/png", "name": "large_Robogait Footer.png", "path": null, "size": 542.16, "width": 1000, "height": 934}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Footer_83898c448c.png", "hash": "small_Robogait_Footer_83898c448c", "mime": "image/png", "name": "small_Robogait Footer.png", "path": null, "size": 163.5, "width": 500, "height": 467}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Footer_83898c448c.png", "hash": "medium_Robogait_Footer_83898c448c", "mime": "image/png", "name": "medium_Robogait Footer.png", "path": null, "size": 327.38, "width": 750, "height": 700}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Footer_83898c448c.png", "hash": "thumbnail_Robogait_Footer_83898c448c", "mime": "image/png", "name": "thumbnail_Robogait Footer.png", "path": null, "size": 27.52, "width": 167, "height": 156}}	Robogait_Footer_83898c448c	.png	image/png	555.63	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Footer_83898c448c.png	\N	aws-s3	\N	/	2023-08-31 10:12:42.142	2023-08-31 10:12:42.142	1	1
240	Robogait Ozellik 3.png	\N	\N	1375	1021	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Robogait_Ozellik_3_d016a3a4ad.png", "hash": "large_Robogait_Ozellik_3_d016a3a4ad", "mime": "image/png", "name": "large_Robogait Ozellik 3.png", "path": null, "size": 584.93, "width": 1000, "height": 743}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Robogait_Ozellik_3_d016a3a4ad.png", "hash": "small_Robogait_Ozellik_3_d016a3a4ad", "mime": "image/png", "name": "small_Robogait Ozellik 3.png", "path": null, "size": 141.3, "width": 500, "height": 371}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Robogait_Ozellik_3_d016a3a4ad.png", "hash": "medium_Robogait_Ozellik_3_d016a3a4ad", "mime": "image/png", "name": "medium_Robogait Ozellik 3.png", "path": null, "size": 317.54, "width": 750, "height": 557}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Robogait_Ozellik_3_d016a3a4ad.png", "hash": "thumbnail_Robogait_Ozellik_3_d016a3a4ad", "mime": "image/png", "name": "thumbnail_Robogait Ozellik 3.png", "path": null, "size": 30.72, "width": 210, "height": 156}}	Robogait_Ozellik_3_d016a3a4ad	.png	image/png	250.30	https://bama-trial.s3.eu-central-1.amazonaws.com/Robogait_Ozellik_3_d016a3a4ad.png	\N	aws-s3	\N	/	2023-08-31 10:13:23.789	2023-08-31 10:13:23.789	1	1
241	rg2 3.png	\N	\N	2720	2476	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_rg2_3_258e513012.png", "hash": "large_rg2_3_258e513012", "mime": "image/png", "name": "large_rg2 3.png", "path": null, "size": 614.99, "width": 1000, "height": 910}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_rg2_3_258e513012.png", "hash": "small_rg2_3_258e513012", "mime": "image/png", "name": "small_rg2 3.png", "path": null, "size": 181.69, "width": 500, "height": 455}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_rg2_3_258e513012.png", "hash": "medium_rg2_3_258e513012", "mime": "image/png", "name": "medium_rg2 3.png", "path": null, "size": 369.21, "width": 750, "height": 683}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_rg2_3_258e513012.png", "hash": "thumbnail_rg2_3_258e513012", "mime": "image/png", "name": "thumbnail_rg2 3.png", "path": null, "size": 30.53, "width": 171, "height": 156}}	rg2_3_258e513012	.png	image/png	1067.31	https://bama-trial.s3.eu-central-1.amazonaws.com/rg2_3_258e513012.png	\N	aws-s3	\N	/	2023-08-31 10:14:53.418	2023-08-31 10:14:53.418	1	1
242	Visiogait Urun Detaylari.png	\N	\N	2720	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Visiogait_Urun_Detaylari_252bc0103b.png", "hash": "large_Visiogait_Urun_Detaylari_252bc0103b", "mime": "image/png", "name": "large_Visiogait Urun Detaylari.png", "path": null, "size": 379.84, "width": 1000, "height": 824}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Visiogait_Urun_Detaylari_252bc0103b.png", "hash": "small_Visiogait_Urun_Detaylari_252bc0103b", "mime": "image/png", "name": "small_Visiogait Urun Detaylari.png", "path": null, "size": 113.92, "width": 500, "height": 412}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Visiogait_Urun_Detaylari_252bc0103b.png", "hash": "medium_Visiogait_Urun_Detaylari_252bc0103b", "mime": "image/png", "name": "medium_Visiogait Urun Detaylari.png", "path": null, "size": 228.49, "width": 750, "height": 618}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Visiogait_Urun_Detaylari_252bc0103b.png", "hash": "thumbnail_Visiogait_Urun_Detaylari_252bc0103b", "mime": "image/png", "name": "thumbnail_Visiogait Urun Detaylari.png", "path": null, "size": 24.34, "width": 189, "height": 156}}	Visiogait_Urun_Detaylari_252bc0103b	.png	image/png	559.32	https://bama-trial.s3.eu-central-1.amazonaws.com/Visiogait_Urun_Detaylari_252bc0103b.png	\N	aws-s3	\N	/	2023-08-31 10:17:28.433	2023-08-31 10:17:28.433	1	1
243	Hakkımızda 1.png	\N	\N	3080	1656	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Hakkimizda_1_28e9d9b445.png", "hash": "large_Hakkimizda_1_28e9d9b445", "mime": "image/png", "name": "large_Hakkımızda 1.png", "path": null, "size": 292.62, "width": 1000, "height": 538}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Hakkimizda_1_28e9d9b445.png", "hash": "small_Hakkimizda_1_28e9d9b445", "mime": "image/png", "name": "small_Hakkımızda 1.png", "path": null, "size": 89.01, "width": 500, "height": 269}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Hakkimizda_1_28e9d9b445.png", "hash": "medium_Hakkimizda_1_28e9d9b445", "mime": "image/png", "name": "medium_Hakkımızda 1.png", "path": null, "size": 176.89, "width": 750, "height": 403}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Hakkimizda_1_28e9d9b445.png", "hash": "thumbnail_Hakkimizda_1_28e9d9b445", "mime": "image/png", "name": "thumbnail_Hakkımızda 1.png", "path": null, "size": 26.63, "width": 245, "height": 132}}	Hakkimizda_1_28e9d9b445	.png	image/png	502.37	https://bama-trial.s3.eu-central-1.amazonaws.com/Hakkimizda_1_28e9d9b445.png	\N	aws-s3	\N	/	2023-08-31 10:19:51.302	2023-08-31 10:19:51.302	1	1
244	Hakkımızda 2.png	\N	\N	1820	1680	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Hakkimizda_2_f40a899d1b.png", "hash": "large_Hakkimizda_2_f40a899d1b", "mime": "image/png", "name": "large_Hakkımızda 2.png", "path": null, "size": 1006.15, "width": 1000, "height": 923}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Hakkimizda_2_f40a899d1b.png", "hash": "small_Hakkimizda_2_f40a899d1b", "mime": "image/png", "name": "small_Hakkımızda 2.png", "path": null, "size": 273.93, "width": 500, "height": 462}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Hakkimizda_2_f40a899d1b.png", "hash": "medium_Hakkimizda_2_f40a899d1b", "mime": "image/png", "name": "medium_Hakkımızda 2.png", "path": null, "size": 588.29, "width": 750, "height": 692}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Hakkimizda_2_f40a899d1b.png", "hash": "thumbnail_Hakkimizda_2_f40a899d1b", "mime": "image/png", "name": "thumbnail_Hakkımızda 2.png", "path": null, "size": 36.75, "width": 169, "height": 156}}	Hakkimizda_2_f40a899d1b	.png	image/png	708.47	https://bama-trial.s3.eu-central-1.amazonaws.com/Hakkimizda_2_f40a899d1b.png	\N	aws-s3	\N	/	2023-08-31 10:20:09.878	2023-08-31 10:20:09.878	1	1
245	Ürünlerimiz Robogait.png	\N	\N	1372	1232	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ueruenlerimiz_Robogait_cb90164763.png", "hash": "large_Ueruenlerimiz_Robogait_cb90164763", "mime": "image/png", "name": "large_Ürünlerimiz Robogait.png", "path": null, "size": 494.44, "width": 1000, "height": 898}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ueruenlerimiz_Robogait_cb90164763.png", "hash": "small_Ueruenlerimiz_Robogait_cb90164763", "mime": "image/png", "name": "small_Ürünlerimiz Robogait.png", "path": null, "size": 148.9, "width": 500, "height": 449}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ueruenlerimiz_Robogait_cb90164763.png", "hash": "medium_Ueruenlerimiz_Robogait_cb90164763", "mime": "image/png", "name": "medium_Ürünlerimiz Robogait.png", "path": null, "size": 300.25, "width": 750, "height": 673}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ueruenlerimiz_Robogait_cb90164763.png", "hash": "thumbnail_Ueruenlerimiz_Robogait_cb90164763", "mime": "image/png", "name": "thumbnail_Ürünlerimiz Robogait.png", "path": null, "size": 27.03, "width": 174, "height": 156}}	Ueruenlerimiz_Robogait_cb90164763	.png	image/png	249.05	https://bama-trial.s3.eu-central-1.amazonaws.com/Ueruenlerimiz_Robogait_cb90164763.png	\N	aws-s3	\N	/	2023-08-31 10:21:49.341	2023-08-31 10:21:49.341	1	1
246	Ürünlerimiz Visiogait.png	\N	\N	1276	1564	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ueruenlerimiz_Visiogait_cd148c5942.png", "hash": "large_Ueruenlerimiz_Visiogait_cd148c5942", "mime": "image/png", "name": "large_Ürünlerimiz Visiogait.png", "path": null, "size": 385.12, "width": 816, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ueruenlerimiz_Visiogait_cd148c5942.png", "hash": "small_Ueruenlerimiz_Visiogait_cd148c5942", "mime": "image/png", "name": "small_Ürünlerimiz Visiogait.png", "path": null, "size": 113.26, "width": 408, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ueruenlerimiz_Visiogait_cd148c5942.png", "hash": "medium_Ueruenlerimiz_Visiogait_cd148c5942", "mime": "image/png", "name": "medium_Ürünlerimiz Visiogait.png", "path": null, "size": 230.71, "width": 612, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ueruenlerimiz_Visiogait_cd148c5942.png", "hash": "thumbnail_Ueruenlerimiz_Visiogait_cd148c5942", "mime": "image/png", "name": "thumbnail_Ürünlerimiz Visiogait.png", "path": null, "size": 17.67, "width": 127, "height": 156}}	Ueruenlerimiz_Visiogait_cd148c5942	.png	image/png	235.84	https://bama-trial.s3.eu-central-1.amazonaws.com/Ueruenlerimiz_Visiogait_cd148c5942.png	\N	aws-s3	\N	/	2023-08-31 10:22:07.343	2023-08-31 10:22:07.343	1	1
247	Ürünlerimiz Freegait.png	\N	\N	844	1324	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ueruenlerimiz_Freegait_fa8ce38ad8.png", "hash": "large_Ueruenlerimiz_Freegait_fa8ce38ad8", "mime": "image/png", "name": "large_Ürünlerimiz Freegait.png", "path": null, "size": 412.47, "width": 637, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ueruenlerimiz_Freegait_fa8ce38ad8.png", "hash": "small_Ueruenlerimiz_Freegait_fa8ce38ad8", "mime": "image/png", "name": "small_Ürünlerimiz Freegait.png", "path": null, "size": 114.79, "width": 319, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ueruenlerimiz_Freegait_fa8ce38ad8.png", "hash": "medium_Ueruenlerimiz_Freegait_fa8ce38ad8", "mime": "image/png", "name": "medium_Ürünlerimiz Freegait.png", "path": null, "size": 242.19, "width": 478, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ueruenlerimiz_Freegait_fa8ce38ad8.png", "hash": "thumbnail_Ueruenlerimiz_Freegait_fa8ce38ad8", "mime": "image/png", "name": "thumbnail_Ürünlerimiz Freegait.png", "path": null, "size": 15.65, "width": 99, "height": 156}}	Ueruenlerimiz_Freegait_fa8ce38ad8	.png	image/png	141.18	https://bama-trial.s3.eu-central-1.amazonaws.com/Ueruenlerimiz_Freegait_fa8ce38ad8.png	\N	aws-s3	\N	/	2023-08-31 10:22:20.183	2023-08-31 10:22:20.183	1	1
248	Anasayfa 1.png	\N	\N	1120	480	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_1_6403c154e0.png", "hash": "large_Anasayfa_1_6403c154e0", "mime": "image/png", "name": "large_Anasayfa 1.png", "path": null, "size": 497.47, "width": 1000, "height": 429}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_1_6403c154e0.png", "hash": "small_Anasayfa_1_6403c154e0", "mime": "image/png", "name": "small_Anasayfa 1.png", "path": null, "size": 136.1, "width": 500, "height": 214}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_1_6403c154e0.png", "hash": "medium_Anasayfa_1_6403c154e0", "mime": "image/png", "name": "medium_Anasayfa 1.png", "path": null, "size": 288.55, "width": 750, "height": 321}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_1_6403c154e0.png", "hash": "thumbnail_Anasayfa_1_6403c154e0", "mime": "image/png", "name": "thumbnail_Anasayfa 1.png", "path": null, "size": 40.24, "width": 245, "height": 105}}	Anasayfa_1_6403c154e0	.png	image/png	130.16	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_1_6403c154e0.png	\N	aws-s3	\N	/	2023-08-31 10:23:22.467	2023-08-31 10:23:22.467	1	1
249	Anasayfa 2.png	\N	\N	455	420	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_2_77ecbe675f.png", "hash": "thumbnail_Anasayfa_2_77ecbe675f", "mime": "image/png", "name": "thumbnail_Anasayfa 2.png", "path": null, "size": 43.39, "width": 169, "height": 156}}	Anasayfa_2_77ecbe675f	.png	image/png	57.15	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_2_77ecbe675f.png	\N	aws-s3	\N	/	2023-08-31 10:23:30.326	2023-08-31 10:23:30.326	1	1
250	Anasayfa 3.png	\N	\N	1120	420	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_3_e2e955ec3f.png", "hash": "large_Anasayfa_3_e2e955ec3f", "mime": "image/png", "name": "large_Anasayfa 3.png", "path": null, "size": 463.03, "width": 1000, "height": 375}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_3_e2e955ec3f.png", "hash": "small_Anasayfa_3_e2e955ec3f", "mime": "image/png", "name": "small_Anasayfa 3.png", "path": null, "size": 132.73, "width": 500, "height": 187}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_3_e2e955ec3f.png", "hash": "medium_Anasayfa_3_e2e955ec3f", "mime": "image/png", "name": "medium_Anasayfa 3.png", "path": null, "size": 275.71, "width": 750, "height": 281}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_3_e2e955ec3f.png", "hash": "thumbnail_Anasayfa_3_e2e955ec3f", "mime": "image/png", "name": "thumbnail_Anasayfa 3.png", "path": null, "size": 38.35, "width": 245, "height": 92}}	Anasayfa_3_e2e955ec3f	.png	image/png	131.46	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_3_e2e955ec3f.png	\N	aws-s3	\N	/	2023-08-31 10:23:56.799	2023-08-31 10:23:56.799	1	1
252	Anasayfa Ürünler Visiogait.png	\N	\N	2262	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Visiogait_8a24a4f2ee.png", "hash": "large_Anasayfa_Ueruenler_Visiogait_8a24a4f2ee", "mime": "image/png", "name": "large_Anasayfa Ürünler Visiogait.png", "path": null, "size": 475.26, "width": 1000, "height": 990}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Visiogait_8a24a4f2ee.png", "hash": "small_Anasayfa_Ueruenler_Visiogait_8a24a4f2ee", "mime": "image/png", "name": "small_Anasayfa Ürünler Visiogait.png", "path": null, "size": 140.83, "width": 500, "height": 495}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Visiogait_8a24a4f2ee.png", "hash": "medium_Anasayfa_Ueruenler_Visiogait_8a24a4f2ee", "mime": "image/png", "name": "medium_Anasayfa Ürünler Visiogait.png", "path": null, "size": 283.24, "width": 750, "height": 743}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Visiogait_8a24a4f2ee.png", "hash": "thumbnail_Anasayfa_Ueruenler_Visiogait_8a24a4f2ee", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Visiogait.png", "path": null, "size": 22.09, "width": 158, "height": 156}}	Anasayfa_Ueruenler_Visiogait_8a24a4f2ee	.png	image/png	486.70	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Visiogait_8a24a4f2ee.png	\N	aws-s3	\N	/	2023-08-31 10:24:39.776	2023-08-31 10:24:39.776	1	1
273	VG1-golgeli 1 (4th copy).png	\N	\N	295	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_VG_1_golgeli_1_4th_copy_3d3e3f0cac.png", "hash": "thumbnail_VG_1_golgeli_1_4th_copy_3d3e3f0cac", "mime": "image/png", "name": "thumbnail_VG1-golgeli 1 (4th copy).png", "path": null, "size": 19.37, "width": 152, "height": 156}}	VG_1_golgeli_1_4th_copy_3d3e3f0cac	.png	image/png	16.01	https://bama-trial.s3.eu-central-1.amazonaws.com/VG_1_golgeli_1_4th_copy_3d3e3f0cac.png	\N	aws-s3	\N	/	2023-08-31 10:46:52.582	2023-08-31 10:46:52.582	1	1
274	VG1-golgeli 1 (copy).png	\N	\N	295	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_VG_1_golgeli_1_copy_be23889f6e.png", "hash": "thumbnail_VG_1_golgeli_1_copy_be23889f6e", "mime": "image/png", "name": "thumbnail_VG1-golgeli 1 (copy).png", "path": null, "size": 19.37, "width": 152, "height": 156}}	VG_1_golgeli_1_copy_be23889f6e	.png	image/png	16.01	https://bama-trial.s3.eu-central-1.amazonaws.com/VG_1_golgeli_1_copy_be23889f6e.png	\N	aws-s3	\N	/	2023-08-31 10:46:52.607	2023-08-31 10:46:52.607	1	1
254	Anasayfa footer.png	\N	\N	2860	1928	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_footer_58fa4bce2f.png", "hash": "large_Anasayfa_footer_58fa4bce2f", "mime": "image/png", "name": "large_Anasayfa footer.png", "path": null, "size": 869.43, "width": 1000, "height": 674}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_footer_58fa4bce2f.png", "hash": "small_Anasayfa_footer_58fa4bce2f", "mime": "image/png", "name": "small_Anasayfa footer.png", "path": null, "size": 236.5, "width": 500, "height": 337}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_footer_58fa4bce2f.png", "hash": "medium_Anasayfa_footer_58fa4bce2f", "mime": "image/png", "name": "medium_Anasayfa footer.png", "path": null, "size": 505.04, "width": 750, "height": 506}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_footer_58fa4bce2f.png", "hash": "thumbnail_Anasayfa_footer_58fa4bce2f", "mime": "image/png", "name": "thumbnail_Anasayfa footer.png", "path": null, "size": 55.88, "width": 231, "height": 156}}	Anasayfa_footer_58fa4bce2f	.png	image/png	1379.21	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_footer_58fa4bce2f.png	\N	aws-s3	\N	/	2023-08-31 10:25:42.742	2023-08-31 10:25:42.742	1	1
255	freegait-86.png	\N	\N	344	248	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_86_2bf4270a5c.png", "hash": "thumbnail_freegait_86_2bf4270a5c", "mime": "image/png", "name": "thumbnail_freegait-86.png", "path": null, "size": 45.91, "width": 216, "height": 156}}	freegait_86_2bf4270a5c	.png	image/png	27.55	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_86_2bf4270a5c.png	\N	aws-s3	\N	/	2023-08-31 10:30:58.018	2023-08-31 10:30:58.018	1	1
256	freegait-76.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_76_91942a9f77.png", "hash": "thumbnail_freegait_76_91942a9f77", "mime": "image/png", "name": "thumbnail_freegait-76.png", "path": null, "size": 35.41, "width": 178, "height": 156}}	freegait_76_91942a9f77	.png	image/png	24.45	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_76_91942a9f77.png	\N	aws-s3	\N	/	2023-08-31 10:30:58.062	2023-08-31 10:30:58.062	1	1
257	freegait-17.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_17_5c5700303a.png", "hash": "thumbnail_freegait_17_5c5700303a", "mime": "image/png", "name": "thumbnail_freegait-17.png", "path": null, "size": 34.85, "width": 178, "height": 156}}	freegait_17_5c5700303a	.png	image/png	28.24	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_17_5c5700303a.png	\N	aws-s3	\N	/	2023-08-31 10:30:58.109	2023-08-31 10:30:58.109	1	1
258	İletisim 1.png	\N	\N	2200	1608	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Iletisim_1_d818d420ff.png", "hash": "large_Iletisim_1_d818d420ff", "mime": "image/png", "name": "large_İletisim 1.png", "path": null, "size": 815.31, "width": 1000, "height": 731}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Iletisim_1_d818d420ff.png", "hash": "small_Iletisim_1_d818d420ff", "mime": "image/png", "name": "small_İletisim 1.png", "path": null, "size": 223.37, "width": 500, "height": 365}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Iletisim_1_d818d420ff.png", "hash": "medium_Iletisim_1_d818d420ff", "mime": "image/png", "name": "medium_İletisim 1.png", "path": null, "size": 477.13, "width": 750, "height": 548}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Iletisim_1_d818d420ff.png", "hash": "thumbnail_Iletisim_1_d818d420ff", "mime": "image/png", "name": "thumbnail_İletisim 1.png", "path": null, "size": 45.18, "width": 213, "height": 156}}	Iletisim_1_d818d420ff	.png	image/png	848.75	https://bama-trial.s3.eu-central-1.amazonaws.com/Iletisim_1_d818d420ff.png	\N	aws-s3	\N	/	2023-08-31 10:31:31.741	2023-08-31 10:31:31.741	1	1
259	freegait-86.png	\N	\N	344	248	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_86_a2c73649d3.png", "hash": "thumbnail_freegait_86_a2c73649d3", "mime": "image/png", "name": "thumbnail_freegait-86.png", "path": null, "size": 45.91, "width": 216, "height": 156}}	freegait_86_a2c73649d3	.png	image/png	27.55	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_86_a2c73649d3.png	\N	aws-s3	\N	/	2023-08-31 10:31:44.239	2023-08-31 10:31:44.239	1	1
260	freegait-76.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_76_5ad4ca299d.png", "hash": "thumbnail_freegait_76_5ad4ca299d", "mime": "image/png", "name": "thumbnail_freegait-76.png", "path": null, "size": 35.41, "width": 178, "height": 156}}	freegait_76_5ad4ca299d	.png	image/png	24.45	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_76_5ad4ca299d.png	\N	aws-s3	\N	/	2023-08-31 10:31:44.284	2023-08-31 10:31:44.284	1	1
261	freegait-17.png	\N	\N	344	302	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_freegait_17_baff16c021.png", "hash": "thumbnail_freegait_17_baff16c021", "mime": "image/png", "name": "thumbnail_freegait-17.png", "path": null, "size": 34.85, "width": 178, "height": 156}}	freegait_17_baff16c021	.png	image/png	28.24	https://bama-trial.s3.eu-central-1.amazonaws.com/freegait_17_baff16c021.png	\N	aws-s3	\N	/	2023-08-31 10:31:44.326	2023-08-31 10:31:44.326	1	1
277	Anasayfa 3.png	\N	\N	1120	420	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_3_79c38a575f.png", "hash": "large_Anasayfa_3_79c38a575f", "mime": "image/png", "name": "large_Anasayfa 3.png", "path": null, "size": 463.03, "width": 1000, "height": 375}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_3_79c38a575f.png", "hash": "small_Anasayfa_3_79c38a575f", "mime": "image/png", "name": "small_Anasayfa 3.png", "path": null, "size": 132.73, "width": 500, "height": 187}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_3_79c38a575f.png", "hash": "medium_Anasayfa_3_79c38a575f", "mime": "image/png", "name": "medium_Anasayfa 3.png", "path": null, "size": 275.71, "width": 750, "height": 281}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_3_79c38a575f.png", "hash": "thumbnail_Anasayfa_3_79c38a575f", "mime": "image/png", "name": "thumbnail_Anasayfa 3.png", "path": null, "size": 38.35, "width": 245, "height": 92}}	Anasayfa_3_79c38a575f	.png	image/png	131.46	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_3_79c38a575f.png	\N	aws-s3	\N	/	2023-08-31 13:01:08.796	2023-08-31 13:01:08.796	1	1
278	Ürünlerimiz Robogait.png	\N	\N	1372	1232	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ueruenlerimiz_Robogait_ddbee71cef.png", "hash": "large_Ueruenlerimiz_Robogait_ddbee71cef", "mime": "image/png", "name": "large_Ürünlerimiz Robogait.png", "path": null, "size": 494.44, "width": 1000, "height": 898}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ueruenlerimiz_Robogait_ddbee71cef.png", "hash": "small_Ueruenlerimiz_Robogait_ddbee71cef", "mime": "image/png", "name": "small_Ürünlerimiz Robogait.png", "path": null, "size": 148.9, "width": 500, "height": 449}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ueruenlerimiz_Robogait_ddbee71cef.png", "hash": "medium_Ueruenlerimiz_Robogait_ddbee71cef", "mime": "image/png", "name": "medium_Ürünlerimiz Robogait.png", "path": null, "size": 300.25, "width": 750, "height": 673}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ueruenlerimiz_Robogait_ddbee71cef.png", "hash": "thumbnail_Ueruenlerimiz_Robogait_ddbee71cef", "mime": "image/png", "name": "thumbnail_Ürünlerimiz Robogait.png", "path": null, "size": 27.03, "width": 174, "height": 156}}	Ueruenlerimiz_Robogait_ddbee71cef	.png	image/png	249.05	https://bama-trial.s3.eu-central-1.amazonaws.com/Ueruenlerimiz_Robogait_ddbee71cef.png	\N	aws-s3	\N	/	2023-08-31 13:05:38.999	2023-08-31 13:05:38.999	1	1
279	Ürünlerimiz Visiogait.png	\N	\N	1276	1564	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ueruenlerimiz_Visiogait_40552d7a4e.png", "hash": "large_Ueruenlerimiz_Visiogait_40552d7a4e", "mime": "image/png", "name": "large_Ürünlerimiz Visiogait.png", "path": null, "size": 385.12, "width": 816, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ueruenlerimiz_Visiogait_40552d7a4e.png", "hash": "small_Ueruenlerimiz_Visiogait_40552d7a4e", "mime": "image/png", "name": "small_Ürünlerimiz Visiogait.png", "path": null, "size": 113.26, "width": 408, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ueruenlerimiz_Visiogait_40552d7a4e.png", "hash": "medium_Ueruenlerimiz_Visiogait_40552d7a4e", "mime": "image/png", "name": "medium_Ürünlerimiz Visiogait.png", "path": null, "size": 230.71, "width": 612, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ueruenlerimiz_Visiogait_40552d7a4e.png", "hash": "thumbnail_Ueruenlerimiz_Visiogait_40552d7a4e", "mime": "image/png", "name": "thumbnail_Ürünlerimiz Visiogait.png", "path": null, "size": 17.67, "width": 127, "height": 156}}	Ueruenlerimiz_Visiogait_40552d7a4e	.png	image/png	235.84	https://bama-trial.s3.eu-central-1.amazonaws.com/Ueruenlerimiz_Visiogait_40552d7a4e.png	\N	aws-s3	\N	/	2023-08-31 13:05:59.957	2023-09-25 14:29:52.374	1	1
251	Anasayfa Ürünler Freegait.png	\N	\N	1944	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Freegait_7572e1c9cc.png", "hash": "large_Anasayfa_Ueruenler_Freegait_7572e1c9cc", "mime": "image/png", "name": "large_Anasayfa Ürünler Freegait.png", "path": null, "size": 558.76, "width": 868, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Freegait_7572e1c9cc.png", "hash": "small_Anasayfa_Ueruenler_Freegait_7572e1c9cc", "mime": "image/png", "name": "small_Anasayfa Ürünler Freegait.png", "path": null, "size": 158.44, "width": 434, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Freegait_7572e1c9cc.png", "hash": "medium_Anasayfa_Ueruenler_Freegait_7572e1c9cc", "mime": "image/png", "name": "medium_Anasayfa Ürünler Freegait.png", "path": null, "size": 327.67, "width": 651, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Freegait_7572e1c9cc.png", "hash": "thumbnail_Anasayfa_Ueruenler_Freegait_7572e1c9cc", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Freegait.png", "path": null, "size": 20.67, "width": 135, "height": 156}}	Anasayfa_Ueruenler_Freegait_7572e1c9cc	.png	image/png	527.48	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Freegait_7572e1c9cc.png	\N	aws-s3	\N	/	2023-08-31 10:24:19.137	2023-10-11 10:50:21.552	1	5
280	Ürünlerimiz Freegait.png	\N	\N	844	1324	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Ueruenlerimiz_Freegait_589c99b36a.png", "hash": "large_Ueruenlerimiz_Freegait_589c99b36a", "mime": "image/png", "name": "large_Ürünlerimiz Freegait.png", "path": null, "size": 412.47, "width": 637, "height": 1000}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Ueruenlerimiz_Freegait_589c99b36a.png", "hash": "small_Ueruenlerimiz_Freegait_589c99b36a", "mime": "image/png", "name": "small_Ürünlerimiz Freegait.png", "path": null, "size": 114.79, "width": 319, "height": 500}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Ueruenlerimiz_Freegait_589c99b36a.png", "hash": "medium_Ueruenlerimiz_Freegait_589c99b36a", "mime": "image/png", "name": "medium_Ürünlerimiz Freegait.png", "path": null, "size": 242.19, "width": 478, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Ueruenlerimiz_Freegait_589c99b36a.png", "hash": "thumbnail_Ueruenlerimiz_Freegait_589c99b36a", "mime": "image/png", "name": "thumbnail_Ürünlerimiz Freegait.png", "path": null, "size": 15.65, "width": 99, "height": 156}}	Ueruenlerimiz_Freegait_589c99b36a	.png	image/png	141.18	https://bama-trial.s3.eu-central-1.amazonaws.com/Ueruenlerimiz_Freegait_589c99b36a.png	\N	aws-s3	\N	/	2023-08-31 13:06:16.612	2023-10-11 12:29:38.339	1	1
294	CTL-B0112-DE-Rev.03-Digital-.pdf	\N	\N	\N	\N	\N	CTL_B0112_DE_Rev_03_Digital_75ae4403e1	.pdf	application/pdf	563.50	https://bama-trial.s3.eu-central-1.amazonaws.com/CTL_B0112_DE_Rev_03_Digital_75ae4403e1.pdf	\N	aws-s3	\N	/	2023-10-11 13:39:14.922	2023-10-11 13:46:42.508	5	5
290	CTL-B0210-EN-Rev.04-Digital.pdf	\N	\N	\N	\N	\N	CTL_B0210_EN_Rev_04_Digital_75e390ebdb	.pdf	application/pdf	864.20	https://bama-trial.s3.eu-central-1.amazonaws.com/CTL_B0210_EN_Rev_04_Digital_75e390ebdb.pdf	\N	aws-s3	\N	/	2023-10-11 10:43:53.065	2023-10-11 13:47:12.406	5	5
253	Anasayfa Ürünler Robogait.png	\N	\N	2578	2240	{"large": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/large_Anasayfa_Ueruenler_Robogait_2775243ac9.png", "hash": "large_Anasayfa_Ueruenler_Robogait_2775243ac9", "mime": "image/png", "name": "large_Anasayfa Ürünler Robogait.png", "path": null, "size": 589.75, "width": 1000, "height": 869}, "small": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/small_Anasayfa_Ueruenler_Robogait_2775243ac9.png", "hash": "small_Anasayfa_Ueruenler_Robogait_2775243ac9", "mime": "image/png", "name": "small_Anasayfa Ürünler Robogait.png", "path": null, "size": 174.89, "width": 500, "height": 434}, "medium": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/medium_Anasayfa_Ueruenler_Robogait_2775243ac9.png", "hash": "medium_Anasayfa_Ueruenler_Robogait_2775243ac9", "mime": "image/png", "name": "medium_Anasayfa Ürünler Robogait.png", "path": null, "size": 351.16, "width": 750, "height": 652}, "thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_Anasayfa_Ueruenler_Robogait_2775243ac9.png", "hash": "thumbnail_Anasayfa_Ueruenler_Robogait_2775243ac9", "mime": "image/png", "name": "thumbnail_Anasayfa Ürünler Robogait.png", "path": null, "size": 31.29, "width": 180, "height": 156}}	Anasayfa_Ueruenler_Robogait_2775243ac9	.png	image/png	939.04	https://bama-trial.s3.eu-central-1.amazonaws.com/Anasayfa_Ueruenler_Robogait_2775243ac9.png	\N	aws-s3	\N	/	2023-08-31 10:25:12.502	2023-10-11 12:33:26.307	1	1
292	KF Photo (1).png	\N	\N	360	360	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_KF_Photo_1_9ef783b0f5.png", "hash": "thumbnail_KF_Photo_1_9ef783b0f5", "mime": "image/png", "name": "thumbnail_KF Photo (1).png", "path": null, "size": 43.31, "width": 156, "height": 156}}	KF_Photo_1_9ef783b0f5	.png	image/png	42.22	https://bama-trial.s3.eu-central-1.amazonaws.com/KF_Photo_1_9ef783b0f5.png	\N	aws-s3	\N	/	2023-10-11 13:07:22.289	2023-10-11 13:07:22.289	1	1
293	KF_Photo__1_-removebg-preview.png	\N	\N	360	360	{"thumbnail": {"ext": ".png", "url": "https://bama-trial.s3.eu-central-1.amazonaws.com/thumbnail_KF_Photo_1_removebg_preview_febad82e36.png", "hash": "thumbnail_KF_Photo_1_removebg_preview_febad82e36", "mime": "image/png", "name": "thumbnail_KF_Photo__1_-removebg-preview.png", "path": null, "size": 27.67, "width": 156, "height": 156}}	KF_Photo_1_removebg_preview_febad82e36	.png	image/png	34.12	https://bama-trial.s3.eu-central-1.amazonaws.com/KF_Photo_1_removebg_preview_febad82e36.png	\N	aws-s3	\N	/	2023-10-11 13:16:49.048	2023-10-11 13:16:49.048	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
513	148	38	api::product.product	product_image	1
717	253	42	api::product.product	product_image	1
718	297	42	api::product.product	product_catalog	1
517	187	3	api::product.product	product_technical_details	1
519	146	40	api::product.product	product_image	1
723	251	43	api::product.product	product_image	1
724	299	43	api::product.product	product_catalog	1
416	245	1	api::our-product.our-product	Product1	1
417	246	1	api::our-product.our-product	Product2	1
418	247	1	api::our-product.our-product	Product3	1
653	148	1	api::product.product	product_image	1
302	175	1	api::visiogait.visiogait	Visiogait	1
164	116	1	api::contact.contact	contact	1
165	117	1	api::visiogait.visiogait	Visiogait1	1
166	118	1	api::visiogait.visiogait	Visiogait2	1
167	119	1	api::visiogait.visiogait	VisiogaitFooter	1
168	120	1	api::visiogait.visiogait	VisiogaitDetails	1
169	121	1	api::robogait.robogait	Robogait1	1
170	122	1	api::robogait.robogait	Robogait2	1
171	123	1	api::robogait.robogait	RobogaitAcs1	1
172	124	1	api::robogait.robogait	RobogaitAcs2	1
173	125	1	api::robogait.robogait	RobogaitAcs3	1
174	126	1	api::robogait.robogait	RobogaitFooter	1
175	129	1	api::robogait.robogait	RobogaitFeatures1	1
303	176	1	api::visiogait.visiogait	Visiogait	2
304	177	1	api::visiogait.visiogait	Visiogait	3
305	178	1	api::visiogait.visiogait	Visiogait	4
306	193	1	api::visiogait.visiogait	Visiogait	5
176	127	1	api::robogait.robogait	RobogaitFeatures2	1
177	130	1	api::robogait.robogait	RobogaitFeatures3	1
178	131	1	api::robogait.robogait	RobogaitFeatures4	1
179	132	1	api::robogait.robogait	RobogaitDetails	1
307	194	1	api::visiogait.visiogait	Visiogait	6
308	191	1	api::visiogait.visiogait	Visiogait	7
309	192	1	api::visiogait.visiogait	Visiogait	8
310	149	1	api::freegait.freegait	Freegait	1
311	150	1	api::freegait.freegait	Freegait	2
312	151	1	api::freegait.freegait	Freegait	3
313	152	1	api::freegait.freegait	Freegait	4
654	288	1	api::product.product	product_catalog	1
180	133	1	api::home.home	MainBanner	1
181	134	1	api::home.home	ClinicInfo	1
182	135	1	api::home.home	SingleBanner	1
183	136	1	api::home.home	BottomImage	1
184	137	1	api::freegait.freegait	Freegait1	1
185	138	1	api::freegait.freegait	Freegait2	1
186	139	1	api::freegait.freegait	FreegaitAcs1	1
187	140	1	api::freegait.freegait	FreegaitAcs2	1
188	141	1	api::freegait.freegait	FreegaitAcs3	1
189	142	1	api::freegait.freegait	FreegaitAcs4	1
190	143	1	api::freegait.freegait	FreegaitFooter	1
191	144	1	api::freegait.freegait	FreegaitDetails	1
664	146	3	api::product.product	product_image	1
665	290	3	api::product.product	product_catalog	1
203	114	1	api::about-us.about-us	AboutUs1	1
204	115	1	api::about-us.about-us	AboutUs2	1
205	147	1	api::about-us.about-us	test	1
206	148	1	api::about-us.about-us	test	2
207	114	1	api::about-us.about-us	About	1
208	115	1	api::about-us.about-us	About	2
570	283	3	api::content-home.content-home	partners	1
571	281	3	api::content-home.content-home	partners	2
572	282	3	api::content-home.content-home	partners	3
577	284	8	api::announcement.announcement	image	1
600	248	1	api::home.home	Banner1	1
602	283	1	api::visiogait.visiogait	Banner1	1
604	283	1	api::our-product.our-product	Robogait	1
605	243	1	api::about-us.about-us	Banner1	1
607	283	1	api::content-home.content-home	partners	1
608	281	1	api::content-home.content-home	partners	2
609	282	1	api::content-home.content-home	partners	3
239	179	1	api::our-product.our-product	OurProducts	1
240	180	1	api::our-product.our-product	OurProducts	2
241	181	1	api::our-product.our-product	OurProducts	3
242	164	1	api::robogait.robogait	Robogait	1
243	165	1	api::robogait.robogait	Robogait	2
244	166	1	api::robogait.robogait	Robogait	3
245	167	1	api::robogait.robogait	Robogait	4
246	168	1	api::robogait.robogait	Robogait	5
247	169	1	api::robogait.robogait	Robogait	6
248	170	1	api::robogait.robogait	Robogait	7
249	171	1	api::robogait.robogait	Robogait	8
250	172	1	api::robogait.robogait	Robogait	9
251	182	1	api::robogait.robogait	Robogait	10
252	174	1	api::robogait.robogait	Robogait	11
274	184	1	api::home.home	Home	1
275	185	1	api::home.home	Home	2
276	183	1	api::home.home	Home	3
277	160	1	api::home.home	Home	4
278	161	1	api::home.home	Home	5
279	162	1	api::home.home	Home	6
280	163	1	api::home.home	Home	7
314	153	1	api::freegait.freegait	Freegait	5
315	154	1	api::freegait.freegait	Freegait	6
316	155	1	api::freegait.freegait	Freegait	7
317	156	1	api::freegait.freegait	Freegait	8
318	188	1	api::freegait.freegait	Freegait	9
319	190	1	api::freegait.freegait	Freegait	10
320	189	1	api::freegait.freegait	Freegait	11
321	207	1	api::freegait.freegait	Freegait	12
322	211	1	api::freegait.freegait	Freegait	13
323	209	1	api::freegait.freegait	Freegait	14
324	212	1	api::freegait.freegait	Freegait	15
325	210	1	api::freegait.freegait	Freegait	16
326	208	1	api::freegait.freegait	Freegait	17
719	252	45	api::product.product	product_image	1
415	244	1	api::about-us.about-us	Footer1	1
720	290	45	api::product.product	product_catalog	1
725	251	44	api::product.product	product_image	1
421	250	1	api::home.home	Banner3	1
726	300	44	api::product.product	product_catalog	1
518	146	37	api::product.product	product_image	1
527	278	1	api::our-product.our-product	Robogait	1
528	279	1	api::our-product.our-product	Visiogait	1
340	214	1	api::visiogait.visiogait	ProductDetails	1
529	280	1	api::our-product.our-product	Freegait	1
545	248	1	api::home.home	Banner1	1
546	276	1	api::home.home	Split1	1
547	277	1	api::home.home	Banner2	1
548	251	1	api::home.home	Freegait	1
549	252	1	api::home.home	Visiogait	1
550	253	1	api::home.home	Robogait	1
437	258	1	api::contact.contact	Split1	1
551	254	1	api::home.home	Footer	1
469	215	1	api::visiogait.visiogait	Banner1	1
470	274	1	api::visiogait.visiogait	Slider1	1
471	272	1	api::visiogait.visiogait	Slider1	2
472	273	1	api::visiogait.visiogait	Slider1	3
397	220	1	api::robogait.robogait	Banner1	1
398	239	1	api::robogait.robogait	Slider1	1
399	230	1	api::robogait.robogait	Slider1	2
400	240	1	api::robogait.robogait	Slider1	3
401	227	1	api::robogait.robogait	Slider1	4
402	228	1	api::robogait.robogait	Slider1	5
403	241	1	api::robogait.robogait	ProductDetail	1
404	226	1	api::robogait.robogait	Slider2	1
405	224	1	api::robogait.robogait	Slider2	2
406	225	1	api::robogait.robogait	Slider2	3
407	221	1	api::robogait.robogait	Footer	1
473	275	1	api::visiogait.visiogait	Slider1	4
474	218	1	api::visiogait.visiogait	Banner2	1
475	242	1	api::visiogait.visiogait	ProductDetail	1
476	213	1	api::visiogait.visiogait	Footer	1
597	148	35	api::product.product	product_image	1
599	284	2	api::announcement.announcement	image	1
603	283	1	api::robogait.robogait	Banner1	1
606	279	1	api::contact.contact	Split1	1
610	283	2	api::content-home.content-home	partners	1
611	281	2	api::content-home.content-home	partners	2
612	282	2	api::content-home.content-home	partners	3
496	187	2	api::product.product	product_technical_details	1
504	147	36	api::product.product	product_image	1
508	147	39	api::product.product	product_image	1
511	187	1	api::product.product	product_technical_details	1
512	187	1	api::product.product	product_article	1
721	147	2	api::product.product	product_image	1
722	298	2	api::product.product	product_catalog	1
685	231	1	api::freegait.freegait	Banner1	1
686	265	1	api::freegait.freegait	Slider1	1
687	266	1	api::freegait.freegait	Slider1	2
688	267	1	api::freegait.freegait	Slider1	3
689	255	1	api::freegait.freegait	Slider1	4
690	257	1	api::freegait.freegait	Slider1	5
691	256	1	api::freegait.freegait	Slider1	6
692	234	1	api::freegait.freegait	Split1	1
693	270	1	api::freegait.freegait	Slider2	1
694	268	1	api::freegait.freegait	Slider2	2
695	293	1	api::freegait.freegait	Slider2	3
696	233	1	api::freegait.freegait	ProductDetail	1
697	235	1	api::freegait.freegait	Slider3	1
698	236	1	api::freegait.freegait	Slider3	2
699	237	1	api::freegait.freegait	Slider3	3
700	238	1	api::freegait.freegait	Slider3	4
701	232	1	api::freegait.freegait	Footer	1
713	242	46	api::product.product	product_image	1
714	290	46	api::product.product	product_catalog	1
715	253	41	api::product.product	product_image	1
716	296	41	api::product.product	product_catalog	1
\.


--
-- Data for Name: freegaits; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.freegaits (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-10-06 10:38:20.011	2023-10-11 13:16:56.28	2023-10-06 10:38:23.504	1	1
\.


--
-- Data for Name: homes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homes (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-10-06 10:23:50.309	2023-10-06 10:23:52.194	2023-10-06 10:23:52.19	1	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2023-07-06 12:16:41.24	2023-07-06 12:16:41.24	\N	\N
2	Turkish (tr)	tr	2023-07-06 13:34:08.103	2023-07-06 13:34:08.103	1	1
3	German (de)	de	2023-07-06 13:34:54.214	2023-07-06 13:34:54.214	1	1
\.


--
-- Data for Name: our_products; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.our_products (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-10-06 10:39:14.216	2023-10-06 10:39:15.093	2023-10-06 10:39:15.089	1	1
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.products (id, product_name, product_desc, created_at, updated_at, published_at, created_by_id, updated_by_id, click_href, product_tags, promotion_video_url, locale) FROM stdin;
44	FreeGait®	FreeGait® ist ein Exoskelett, das für die Mobilisierung von Personen mit Gehbehinderungen und die Wiederherstellung verlorener motorischer Funktionen entwickelt wurde.	2023-10-06 12:22:14.003	2023-10-30 13:15:36.97	2023-10-11 12:39:39.459	1	5	/freegait	{"tag": ["Exoskelett", "Robotergestützter Rehabilitationstherapie", "Überirdische Gangart"]}	https://www.youtube.com/watch?v=-gBRswYnOcg	de
3	VisioGait®	VisioGait®, interaktif ve eğlenceli bir şekilde üst ekstremite tedavisi gerçekleştiren vücut ağırlık destekli bir yürüyüş terapi sistemidir. 	2023-07-07 09:31:04.071	2023-10-11 12:50:04.377	2023-07-07 09:39:21.762	1	1	/visiogait	{"tag": ["İnteraktif Rehabilitasyon", "Hareket Takibi", "Lokomotor Terapi"]}	https://www.youtube.com/watch?v=gXnhthDdIVc&t=4s	tr
46	VisioGait®	VisioGait® ist ein körpergewichtsunterstütztes Gangtherapiesystem, das die Therapie der oberen Gliedmaßen 	2023-10-06 12:22:32.511	2023-10-11 13:47:39.308	2023-10-11 12:39:57.32	1	5	/visiogait	{"tag": ["Interaktive Rehabilitation", "Bewegungsverfolgung", "Lokomotorische Therapie"]}	\N	de
41	RoboGait®	RoboGait® is a robot-assisted gait system that aims to provide an effective and rapid motor learning.	2023-10-06 12:19:27.68	2023-10-11 14:12:01.056	2023-10-11 12:55:52.89	1	5	/robogait	{"tag": ["Robotic Rehabilitation Therapy", "Treadmill Based ", "Locomotor Therapy", "Counter-Weight System"]}	https://www.youtube.com/watch?v=KrmI_YT8V2I	en
42	RoboGait®	RoboGait® ist ein robotergestütztes Gangsystem, das ein effektives und schnelles motorisches Lernen ermöglichen soll. 	2023-10-06 12:19:34.492	2023-10-11 14:14:12.568	2023-10-11 12:39:44.543	1	5	/robogait	{"tag": ["Robotergestützter Rehabilitationstherapie", "Auf dem Laufband", "Lokomotorische Therapie", "Gegengewichts-System"]}	https://www.youtube.com/watch?v=KrmI_YT8V2I	de
45	VisioGait®	VisioGait® is a body-weight supported gait therapy system that performs upper limb therapy in an interactive and entertaining way. 	2023-10-06 12:22:26.168	2023-10-13 05:39:08.528	2023-10-11 12:55:56.783	1	5	/visiogait	{"tag": ["Interactive Rehabilitation", "Motion Tracking", "Locomotor Therapy"]}	\N	en
2	FreeGait®	FreeGait® yürüme engeli bulunan bireylerin mobilizasyonunun sağlanması ve kayıp motor\nfonksiyonlarının yeniden kazandırılması için tasarlanmış bir dış iskelet cihazıdır. \n	2023-07-07 09:30:11.397	2023-10-30 13:11:43.299	2023-07-07 09:30:13.015	1	5	/freegait	{"tag": ["Dış İskelet Sistemi", "Robotik Yürüme Terapisi", "Zeminde Yürüyüş"]}	https://www.youtube.com/watch?v=-gBRswYnOcg	tr
1	RoboGait®	RoboGait®, motor öğrenmenin etkili ve hızlı bir şekilde gerçekleşmesini hedefleyen robot destekli bir yürüyüş sistemidir.	2023-07-06 13:46:30.692	2023-10-11 12:44:02.782	2023-07-06 13:46:36.973	1	1	/robogait	{"tag": ["Robotik Yürüme Terapisi", "Yürüyüş Bandı Tabanlı", "Lokomotor Terapi", "Karşı Ağırlık Sistemi"]}	https://www.youtube.com/watch?v=KrmI_YT8V2I	tr
43	FreeGait®	FreeGait® is an exoskeleton device designed for the mobilization of individuals with walking disabilities and the restoration of lost motor functions.	2023-10-06 12:19:44.337	2023-10-30 13:14:45.062	2023-10-11 12:55:48.317	1	5	/freegait	{"tag": ["Exoskeleton", "Robotic Rehabilitation Therapy", "Over-Ground Gait"]}	https://www.youtube.com/watch?v=-gBRswYnOcg	en
\.


--
-- Data for Name: products_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.products_localizations_links (id, product_id, inv_product_id, product_order) FROM stdin;
3	42	41	1
4	42	1	2
5	41	42	1
1	41	1	2
7	1	42	1
2	1	41	2
11	44	43	1
12	44	2	2
13	43	44	1
9	43	2	2
15	2	44	1
10	2	43	2
19	46	45	1
20	46	3	2
21	45	46	1
17	45	3	2
23	3	46	1
18	3	45	2
\.


--
-- Data for Name: robogaits; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.robogaits (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-10-06 10:39:04.816	2023-10-06 10:39:06.738	2023-10-06 10:39:06.734	1	1
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Full Access	test	full-access	d2f76fb43e677a074a790d6d53a26b4849194fe6820abbba2ae1e3b6e885042aaa7abd1eed5810eaddf25b7f2c6d76e91da3633b9d78b0778a7200496ebfd159	\N	\N	\N	2023-07-06 14:50:27.001	2023-07-06 14:50:27.001	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::transfer-token	{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::about-us.about-us":{"kind":"collectionType","collectionName":"about_uses","info":{"singularName":"about-us","pluralName":"about-uses","displayName":"About Us Page Images","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"about_uses","info":{"singularName":"about-us","pluralName":"about-uses","displayName":"About Us Page Images","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]}},"kind":"collectionType"},"modelType":"contentType","modelName":"about-us","connection":"default","uid":"api::about-us.about-us","apiName":"about-us","globalId":"AboutUs","actions":{},"lifecycles":{}},"api::announcement.announcement":{"kind":"collectionType","collectionName":"announcements","info":{"singularName":"announcement","pluralName":"announcements","displayName":"Announcement","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"image":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"announcements","info":{"singularName":"announcement","pluralName":"announcements","displayName":"Announcement","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"image":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelType":"contentType","modelName":"announcement","connection":"default","uid":"api::announcement.announcement","apiName":"announcement","globalId":"Announcement","actions":{},"lifecycles":{}},"api::article-freegait.article-freegait":{"kind":"collectionType","collectionName":"article_freegaits","info":{"singularName":"article-freegait","pluralName":"article-freegaits","displayName":"Article Freegait","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"article_title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_subtitle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_text":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"chip":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::article-freegait.article-freegait"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"article_freegaits","info":{"singularName":"article-freegait","pluralName":"article-freegaits","displayName":"Article Freegait","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"article_title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_subtitle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_text":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"chip":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"article-freegait","connection":"default","uid":"api::article-freegait.article-freegait","apiName":"article-freegait","globalId":"ArticleFreegait","actions":{},"lifecycles":{}},"api::article-robogait.article-robogait":{"kind":"collectionType","collectionName":"article_robogaits","info":{"singularName":"article-robogait","pluralName":"article-robogaits","displayName":"Article Robogait"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"article_title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_subtitle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_text":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"chip":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::article-robogait.article-robogait"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"article_robogaits","info":{"singularName":"article-robogait","pluralName":"article-robogaits","displayName":"Article Robogait"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"article_title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_subtitle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_text":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"chip":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"article-robogait","connection":"default","uid":"api::article-robogait.article-robogait","apiName":"article-robogait","globalId":"ArticleRobogait","actions":{},"lifecycles":{}},"api::article-visiogait.article-visiogait":{"kind":"collectionType","collectionName":"article_visiogaits","info":{"singularName":"article-visiogait","pluralName":"article-visiogaits","displayName":"Article Visiogait"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"article_title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_subtitle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_text":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"chip":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::article-visiogait.article-visiogait"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"article_visiogaits","info":{"singularName":"article-visiogait","pluralName":"article-visiogaits","displayName":"Article Visiogait"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"article_title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_subtitle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"article_text":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"chip":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"article-visiogait","connection":"default","uid":"api::article-visiogait.article-visiogait","apiName":"article-visiogait","globalId":"ArticleVisiogait","actions":{},"lifecycles":{}},"api::contact.contact":{"kind":"collectionType","collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact Page Images","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Split1":{"allowedTypes":["images"],"type":"media","multiple":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact Page Images","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Split1":{"allowedTypes":["images"],"type":"media","multiple":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"contact","connection":"default","uid":"api::contact.contact","apiName":"contact","globalId":"Contact","actions":{},"lifecycles":{}},"api::contact-form.contact-form":{"kind":"collectionType","collectionName":"contact_forms","info":{"singularName":"contact-form","pluralName":"contact-forms","displayName":"Contact Form","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"lastName":{"type":"string"},"company":{"type":"string"},"email":{"type":"string"},"message":{"type":"text"},"phone":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"contact_forms","info":{"singularName":"contact-form","pluralName":"contact-forms","displayName":"Contact Form","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"lastName":{"type":"string"},"company":{"type":"string"},"email":{"type":"string"},"message":{"type":"text"},"phone":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"contact-form","connection":"default","uid":"api::contact-form.contact-form","apiName":"contact-form","globalId":"ContactForm","actions":{},"lifecycles":{}},"api::contact-us-page-address.contact-us-page-address":{"kind":"collectionType","collectionName":"contact_us_page_addresses","info":{"singularName":"contact-us-page-address","pluralName":"contact-us-page-addresses","displayName":"Contact Us Page Address","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"addresses":{"type":"json","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::contact-us-page-address.contact-us-page-address"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"contact_us_page_addresses","info":{"singularName":"contact-us-page-address","pluralName":"contact-us-page-addresses","displayName":"Contact Us Page Address","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"addresses":{"type":"json","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"contact-us-page-address","connection":"default","uid":"api::contact-us-page-address.contact-us-page-address","apiName":"contact-us-page-address","globalId":"ContactUsPageAddress","actions":{},"lifecycles":{}},"api::content-home.content-home":{"kind":"collectionType","collectionName":"content_homes","info":{"singularName":"content-home","pluralName":"content-homes","displayName":"Content Home","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"hero":{"type":"json","pluginOptions":{"i18n":{"localized":true}}},"partners":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"],"pluginOptions":{"i18n":{"localized":true}}},"footer":{"type":"json","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::content-home.content-home"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"content_homes","info":{"singularName":"content-home","pluralName":"content-homes","displayName":"Content Home","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"hero":{"type":"json","pluginOptions":{"i18n":{"localized":true}}},"partners":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"],"pluginOptions":{"i18n":{"localized":true}}},"footer":{"type":"json","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"content-home","connection":"default","uid":"api::content-home.content-home","apiName":"content-home","globalId":"ContentHome","actions":{},"lifecycles":{}},"api::freegait.freegait":{"kind":"collectionType","collectionName":"freegaits","info":{"singularName":"freegait","pluralName":"freegaits","displayName":"Freegait Page Images","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider1":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Split1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider2":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"ProductDetail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider3":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"freegaits","info":{"singularName":"freegait","pluralName":"freegaits","displayName":"Freegait Page Images","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider1":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Split1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider2":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"ProductDetail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider3":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]}},"kind":"collectionType"},"modelType":"contentType","modelName":"freegait","connection":"default","uid":"api::freegait.freegait","apiName":"freegait","globalId":"Freegait","actions":{},"lifecycles":{}},"api::home.home":{"kind":"collectionType","collectionName":"homes","info":{"singularName":"home","pluralName":"homes","displayName":"Home","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Split1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Banner2":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Freegait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Visiogait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Robogait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"homes","info":{"singularName":"home","pluralName":"homes","displayName":"Home","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Split1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Banner2":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Freegait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Visiogait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Robogait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{}}},"kind":"collectionType"},"modelType":"contentType","modelName":"home","connection":"default","uid":"api::home.home","apiName":"home","globalId":"Home","actions":{},"lifecycles":{}},"api::our-product.our-product":{"kind":"collectionType","collectionName":"our_products","info":{"singularName":"our-product","pluralName":"our-products","displayName":"Our Product","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Robogait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Visiogait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Freegait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"our_products","info":{"singularName":"our-product","pluralName":"our-products","displayName":"Our Product","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Robogait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Visiogait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Freegait":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]}},"kind":"collectionType"},"modelType":"contentType","modelName":"our-product","connection":"default","uid":"api::our-product.our-product","apiName":"our-product","globalId":"OurProduct","actions":{},"lifecycles":{}},"api::product.product":{"kind":"collectionType","collectionName":"products","info":{"singularName":"product","pluralName":"products","displayName":"All Products","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"product_name":{"type":"string","required":true,"unique":false,"pluginOptions":{"i18n":{"localized":true}}},"product_desc":{"type":"richtext","required":true,"pluginOptions":{"i18n":{"localized":true}}},"product_image":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"product_catalog":{"type":"media","multiple":false,"required":false,"allowedTypes":["files"],"pluginOptions":{"i18n":{"localized":true}}},"clickHref":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"product_tags":{"pluginOptions":{"i18n":{"localized":true}},"type":"json"},"promotion_video_url":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"product_manual":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::product.product"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"products","info":{"singularName":"product","pluralName":"products","displayName":"All Products","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"product_name":{"type":"string","required":true,"unique":false,"pluginOptions":{"i18n":{"localized":true}}},"product_desc":{"type":"richtext","required":true,"pluginOptions":{"i18n":{"localized":true}}},"product_image":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"product_catalog":{"type":"media","multiple":false,"required":false,"allowedTypes":["files"],"pluginOptions":{"i18n":{"localized":true}}},"clickHref":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"product_tags":{"pluginOptions":{"i18n":{"localized":true}},"type":"json"},"promotion_video_url":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"product_manual":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"product","connection":"default","uid":"api::product.product","apiName":"product","globalId":"Product","actions":{},"lifecycles":{}},"api::robogait.robogait":{"kind":"collectionType","collectionName":"robogaits","info":{"singularName":"robogait","pluralName":"robogaits","displayName":"Robogait","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider1":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"ProductDetail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider2":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"robogaits","info":{"singularName":"robogait","pluralName":"robogaits","displayName":"Robogait","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider1":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"ProductDetail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider2":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]}},"kind":"collectionType"},"modelType":"contentType","modelName":"robogait","connection":"default","uid":"api::robogait.robogait","apiName":"robogait","globalId":"Robogait","actions":{},"lifecycles":{}},"api::test.test":{"kind":"singleType","collectionName":"tests","info":{"singularName":"test","pluralName":"tests","displayName":"test"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"test2":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"tests","info":{"singularName":"test","pluralName":"tests","displayName":"test"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"test2":{"type":"text"}},"kind":"singleType"},"modelType":"contentType","modelName":"test","connection":"default","uid":"api::test.test","apiName":"test","globalId":"Test","actions":{},"lifecycles":{}},"api::visiogait.visiogait":{"kind":"collectionType","collectionName":"visiogaits","info":{"singularName":"visiogait","pluralName":"visiogaits","displayName":"Visiogait","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider1":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Banner2":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"ProductDetail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"visiogaits","info":{"singularName":"visiogait","pluralName":"visiogaits","displayName":"Visiogait","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Banner1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Slider1":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Banner2":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"ProductDetail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Footer":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]}},"kind":"collectionType"},"modelType":"contentType","modelName":"visiogait","connection":"default","uid":"api::visiogait.visiogait","apiName":"visiogait","globalId":"Visiogait","actions":{},"lifecycles":{}}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]}}	object	\N	\N
15	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
16	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
55	plugin_content_manager_configuration_content_types::api::home.home	{"uid":"api::home.home","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Banner1":{"edit":{"label":"Banner1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner1","searchable":false,"sortable":false}},"Split1":{"edit":{"label":"Split1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Split1","searchable":false,"sortable":false}},"Banner2":{"edit":{"label":"Banner2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner2","searchable":false,"sortable":false}},"Freegait":{"edit":{"label":"Freegait","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Freegait","searchable":false,"sortable":false}},"Visiogait":{"edit":{"label":"Visiogait","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Visiogait","searchable":false,"sortable":false}},"Robogait":{"edit":{"label":"Robogait","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Robogait","searchable":false,"sortable":false}},"Footer":{"edit":{"label":"Footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Footer","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Banner1","Split1","Banner2"],"edit":[[{"name":"Banner1","size":6},{"name":"Split1","size":6}],[{"name":"Banner2","size":6},{"name":"Freegait","size":6}],[{"name":"Visiogait","size":6},{"name":"Robogait","size":6}],[{"name":"Footer","size":6}]]}}	object	\N	\N
42	plugin_content_manager_configuration_content_types::api::about-us.about-us	{"uid":"api::about-us.about-us","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Banner1":{"edit":{"label":"Banner1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner1","searchable":false,"sortable":false}},"Footer":{"edit":{"label":"Footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Footer","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Banner1","Footer","createdAt"],"edit":[[{"name":"Banner1","size":6},{"name":"Footer","size":6}]]}}	object	\N	\N
17	plugin_upload_metrics	{"weeklySchedule":"41 21 12 * * 4","lastWeeklyUpdate":1698927701020}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
43	plugin_content_manager_configuration_content_types::api::announcement.announcement	{"uid":"api::announcement.announcement","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","createdAt","updatedAt"],"edit":[[{"name":"image","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
44	plugin_content_manager_configuration_content_types::api::article-freegait.article-freegait	{"uid":"api::article-freegait.article-freegait","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"article_title","defaultSortBy":"article_title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"article_title":{"edit":{"label":"article_title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"article_title","searchable":true,"sortable":true}},"article_subtitle":{"edit":{"label":"article_subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"article_subtitle","searchable":true,"sortable":true}},"article_text":{"edit":{"label":"article_text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"article_text","searchable":true,"sortable":true}},"chip":{"edit":{"label":"chip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"chip","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","article_title","article_subtitle","article_text"],"edit":[[{"name":"article_title","size":6},{"name":"article_subtitle","size":6}],[{"name":"article_text","size":6},{"name":"chip","size":6}]]}}	object	\N	\N
51	plugin_content_manager_configuration_content_types::api::our-product.our-product	{"uid":"api::our-product.our-product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Robogait":{"edit":{"label":"Robogait","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Robogait","searchable":false,"sortable":false}},"Visiogait":{"edit":{"label":"Visiogait","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Visiogait","searchable":false,"sortable":false}},"Freegait":{"edit":{"label":"Freegait","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Freegait","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Robogait","Visiogait","Freegait"],"edit":[[{"name":"Robogait","size":6},{"name":"Visiogait","size":6}],[{"name":"Freegait","size":6}]]}}	object	\N	\N
45	plugin_content_manager_configuration_content_types::api::article-robogait.article-robogait	{"uid":"api::article-robogait.article-robogait","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"article_title","defaultSortBy":"article_title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"article_title":{"edit":{"label":"article_title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"article_title","searchable":true,"sortable":true}},"article_subtitle":{"edit":{"label":"article_subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"article_subtitle","searchable":true,"sortable":true}},"article_text":{"edit":{"label":"article_text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"article_text","searchable":true,"sortable":true}},"chip":{"edit":{"label":"chip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"chip","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","article_title","article_subtitle","article_text"],"edit":[[{"name":"article_title","size":6},{"name":"article_subtitle","size":6}],[{"name":"article_text","size":6},{"name":"chip","size":6}]]}}	object	\N	\N
52	plugin_content_manager_configuration_content_types::api::robogait.robogait	{"uid":"api::robogait.robogait","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Banner1":{"edit":{"label":"Banner1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner1","searchable":false,"sortable":false}},"Slider1":{"edit":{"label":"Slider1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slider1","searchable":false,"sortable":false}},"ProductDetail":{"edit":{"label":"ProductDetail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ProductDetail","searchable":false,"sortable":false}},"Slider2":{"edit":{"label":"Slider2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slider2","searchable":false,"sortable":false}},"Footer":{"edit":{"label":"Footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Footer","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Banner1","Slider1","ProductDetail"],"edit":[[{"name":"Banner1","size":6},{"name":"Slider1","size":6}],[{"name":"ProductDetail","size":6},{"name":"Slider2","size":6}],[{"name":"Footer","size":6}]]}}	object	\N	\N
22	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
24	plugin_documentation_config	{"restrictedAccess":false}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::product.product	{"uid":"api::product.product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"product_name","defaultSortBy":"product_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"product_name":{"edit":{"label":"product_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product_name","searchable":true,"sortable":true}},"product_desc":{"edit":{"label":"product_desc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product_desc","searchable":false,"sortable":false}},"product_image":{"edit":{"label":"product_image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product_image","searchable":false,"sortable":false}},"product_catalog":{"edit":{"label":"product_catalog","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product_catalog","searchable":false,"sortable":false}},"clickHref":{"edit":{"label":"clickHref","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"clickHref","searchable":true,"sortable":true}},"product_tags":{"edit":{"label":"product_tags","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product_tags","searchable":false,"sortable":false}},"promotion_video_url":{"edit":{"label":"promotion_video_url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"promotion_video_url","searchable":true,"sortable":true}},"product_manual":{"edit":{"label":"product_manual","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product_manual","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","product_name","product_image","product_catalog"],"edit":[[{"name":"product_name","size":6}],[{"name":"product_desc","size":12}],[{"name":"product_image","size":6},{"name":"product_catalog","size":6}],[{"name":"clickHref","size":6}],[{"name":"product_tags","size":12}],[{"name":"promotion_video_url","size":6},{"name":"product_manual","size":6}]]}}	object	\N	\N
46	plugin_content_manager_configuration_content_types::api::article-visiogait.article-visiogait	{"uid":"api::article-visiogait.article-visiogait","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"article_title","defaultSortBy":"article_title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"article_title":{"edit":{"label":"article_title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"article_title","searchable":true,"sortable":true}},"article_subtitle":{"edit":{"label":"article_subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"article_subtitle","searchable":true,"sortable":true}},"article_text":{"edit":{"label":"article_text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"article_text","searchable":true,"sortable":true}},"chip":{"edit":{"label":"chip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"chip","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","article_title","article_subtitle","article_text"],"edit":[[{"name":"article_title","size":6},{"name":"article_subtitle","size":6}],[{"name":"article_text","size":6},{"name":"chip","size":6}]]}}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::test.test	{"uid":"api::test.test","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"test2":{"edit":{"label":"test2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"test2","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","test2","createdAt","updatedAt"],"edit":[[{"name":"test2","size":6}]]}}	object	\N	\N
26	core_admin_project-settings	{"menuLogo":{},"authLogo":{}}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::contact.contact	{"uid":"api::contact.contact","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Split1":{"edit":{"label":"Split1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Split1","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Split1","createdAt","updatedAt"],"edit":[[{"name":"Split1","size":6}]]}}	object	\N	\N
49	plugin_content_manager_configuration_content_types::api::freegait.freegait	{"uid":"api::freegait.freegait","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Banner1":{"edit":{"label":"Banner1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner1","searchable":false,"sortable":false}},"Slider1":{"edit":{"label":"Slider1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slider1","searchable":false,"sortable":false}},"Split1":{"edit":{"label":"Split1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Split1","searchable":false,"sortable":false}},"Slider2":{"edit":{"label":"Slider2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slider2","searchable":false,"sortable":false}},"ProductDetail":{"edit":{"label":"ProductDetail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ProductDetail","searchable":false,"sortable":false}},"Slider3":{"edit":{"label":"Slider3","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slider3","searchable":false,"sortable":false}},"Footer":{"edit":{"label":"Footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Footer","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Banner1","Slider1","Split1"],"edit":[[{"name":"Banner1","size":6},{"name":"Slider1","size":6}],[{"name":"Split1","size":6},{"name":"Slider2","size":6}],[{"name":"ProductDetail","size":6},{"name":"Slider3","size":6}],[{"name":"Footer","size":6}]]}}	object	\N	\N
50	plugin_content_manager_configuration_content_types::api::content-home.content-home	{"uid":"api::content-home.content-home","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"hero":{"edit":{"label":"hero","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hero","searchable":false,"sortable":false}},"partners":{"edit":{"label":"partners","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"partners","searchable":false,"sortable":false}},"footer":{"edit":{"label":"footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"footer","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","partners","createdAt","updatedAt"],"edit":[[{"name":"hero","size":12}],[{"name":"partners","size":6}],[{"name":"footer","size":12}]]}}	object	\N	\N
54	plugin_content_manager_configuration_content_types::api::visiogait.visiogait	{"uid":"api::visiogait.visiogait","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Banner1":{"edit":{"label":"Banner1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner1","searchable":false,"sortable":false}},"Slider1":{"edit":{"label":"Slider1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slider1","searchable":false,"sortable":false}},"Banner2":{"edit":{"label":"Banner2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner2","searchable":false,"sortable":false}},"ProductDetail":{"edit":{"label":"ProductDetail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ProductDetail","searchable":false,"sortable":false}},"Footer":{"edit":{"label":"Footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Footer","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Banner1","Slider1","Banner2"],"edit":[[{"name":"Banner1","size":6},{"name":"Slider1","size":6}],[{"name":"Banner2","size":6},{"name":"ProductDetail","size":6}],[{"name":"Footer","size":6}]]}}	object	\N	\N
48	plugin_content_manager_configuration_content_types::api::contact-form.contact-form	{"uid":"api::contact-form.contact-form","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"lastName":{"edit":{"label":"lastName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastName","searchable":true,"sortable":true}},"company":{"edit":{"label":"company","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","lastName","company"],"edit":[[{"name":"name","size":6},{"name":"lastName","size":6}],[{"name":"company","size":6},{"name":"email","size":6}],[{"name":"message","size":6},{"name":"phone","size":6}]]}}	object	\N	\N
56	plugin_content_manager_configuration_content_types::api::contact-us-page-address.contact-us-page-address	{"uid":"api::contact-us-page-address.contact-us-page-address","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"addresses":{"edit":{"label":"addresses","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"addresses","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt"],"edit":[[{"name":"addresses","size":12}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
19	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
20	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
21	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
18	plugin_i18n_default_locale	"tr"	string	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
42	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses","indexes":[{"name":"about_uses_created_by_id_fk","columns":["created_by_id"]},{"name":"about_uses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"about_uses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"about_uses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"announcements","indexes":[{"name":"announcements_created_by_id_fk","columns":["created_by_id"]},{"name":"announcements_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"announcements_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"announcements_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"article_freegaits","indexes":[{"name":"article_freegaits_created_by_id_fk","columns":["created_by_id"]},{"name":"article_freegaits_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"article_freegaits_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"article_freegaits_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"article_subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"article_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"chip","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"article_robogaits","indexes":[{"name":"article_robogaits_created_by_id_fk","columns":["created_by_id"]},{"name":"article_robogaits_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"article_robogaits_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"article_robogaits_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"article_subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"article_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"chip","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"article_visiogaits","indexes":[{"name":"article_visiogaits_created_by_id_fk","columns":["created_by_id"]},{"name":"article_visiogaits_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"article_visiogaits_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"article_visiogaits_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"article_subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"article_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"chip","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"contacts","indexes":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"]},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contact_forms","indexes":[{"name":"contact_forms_created_by_id_fk","columns":["created_by_id"]},{"name":"contact_forms_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contact_forms_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contact_forms_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"company","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contact_us_page_addresses","indexes":[{"name":"contact_us_page_addresses_created_by_id_fk","columns":["created_by_id"]},{"name":"contact_us_page_addresses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contact_us_page_addresses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contact_us_page_addresses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"addresses","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"content_homes","indexes":[{"name":"content_homes_created_by_id_fk","columns":["created_by_id"]},{"name":"content_homes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"content_homes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"content_homes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"hero","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"footer","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"freegaits","indexes":[{"name":"freegaits_created_by_id_fk","columns":["created_by_id"]},{"name":"freegaits_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"freegaits_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"freegaits_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"homes","indexes":[{"name":"homes_created_by_id_fk","columns":["created_by_id"]},{"name":"homes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"homes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"homes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"our_products","indexes":[{"name":"our_products_created_by_id_fk","columns":["created_by_id"]},{"name":"our_products_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"our_products_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"our_products_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"products","indexes":[{"name":"products_created_by_id_fk","columns":["created_by_id"]},{"name":"products_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"products_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"products_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"product_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"product_desc","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"click_href","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"product_tags","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"promotion_video_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"robogaits","indexes":[{"name":"robogaits_created_by_id_fk","columns":["created_by_id"]},{"name":"robogaits_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"robogaits_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"robogaits_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tests","indexes":[{"name":"tests_created_by_id_fk","columns":["created_by_id"]},{"name":"tests_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"tests_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"tests_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"test_2","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"visiogaits","indexes":[{"name":"visiogaits_created_by_id_fk","columns":["created_by_id"]},{"name":"visiogaits_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"visiogaits_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"visiogaits_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"],"type":null},{"name":"files_related_morphs_id_column_index","columns":["related_id"],"type":null}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"article_freegaits_localizations_links","indexes":[{"name":"article_freegaits_localizations_links_fk","columns":["article_freegait_id"]},{"name":"article_freegaits_localizations_links_inv_fk","columns":["inv_article_freegait_id"]},{"name":"article_freegaits_localizations_links_unique","columns":["article_freegait_id","inv_article_freegait_id"],"type":"unique"},{"name":"article_freegaits_localizations_links_order_fk","columns":["article_freegait_order"]}],"foreignKeys":[{"name":"article_freegaits_localizations_links_fk","columns":["article_freegait_id"],"referencedColumns":["id"],"referencedTable":"article_freegaits","onDelete":"CASCADE"},{"name":"article_freegaits_localizations_links_inv_fk","columns":["inv_article_freegait_id"],"referencedColumns":["id"],"referencedTable":"article_freegaits","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_freegait_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_article_freegait_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_freegait_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"article_robogaits_localizations_links","indexes":[{"name":"article_robogaits_localizations_links_fk","columns":["article_robogait_id"]},{"name":"article_robogaits_localizations_links_inv_fk","columns":["inv_article_robogait_id"]},{"name":"article_robogaits_localizations_links_unique","columns":["article_robogait_id","inv_article_robogait_id"],"type":"unique"},{"name":"article_robogaits_localizations_links_order_fk","columns":["article_robogait_order"]}],"foreignKeys":[{"name":"article_robogaits_localizations_links_fk","columns":["article_robogait_id"],"referencedColumns":["id"],"referencedTable":"article_robogaits","onDelete":"CASCADE"},{"name":"article_robogaits_localizations_links_inv_fk","columns":["inv_article_robogait_id"],"referencedColumns":["id"],"referencedTable":"article_robogaits","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_robogait_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_article_robogait_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_robogait_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"article_visiogaits_localizations_links","indexes":[{"name":"article_visiogaits_localizations_links_fk","columns":["article_visiogait_id"]},{"name":"article_visiogaits_localizations_links_inv_fk","columns":["inv_article_visiogait_id"]},{"name":"article_visiogaits_localizations_links_unique","columns":["article_visiogait_id","inv_article_visiogait_id"],"type":"unique"},{"name":"article_visiogaits_localizations_links_order_fk","columns":["article_visiogait_order"]}],"foreignKeys":[{"name":"article_visiogaits_localizations_links_fk","columns":["article_visiogait_id"],"referencedColumns":["id"],"referencedTable":"article_visiogaits","onDelete":"CASCADE"},{"name":"article_visiogaits_localizations_links_inv_fk","columns":["inv_article_visiogait_id"],"referencedColumns":["id"],"referencedTable":"article_visiogaits","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_visiogait_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_article_visiogait_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_visiogait_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contact_us_page_addresses_localizations_links","indexes":[{"name":"contact_us_page_addresses_localizations_links_fk","columns":["contact_us_page_address_id"]},{"name":"contact_us_page_addresses_localizations_links_inv_fk","columns":["inv_contact_us_page_address_id"]},{"name":"contact_us_page_addresses_localizations_links_unique","columns":["contact_us_page_address_id","inv_contact_us_page_address_id"],"type":"unique"},{"name":"contact_us_page_addresses_localizations_links_order_fk","columns":["contact_us_page_address_order"]}],"foreignKeys":[{"name":"contact_us_page_addresses_localizations_links_fk","columns":["contact_us_page_address_id"],"referencedColumns":["id"],"referencedTable":"contact_us_page_addresses","onDelete":"CASCADE"},{"name":"contact_us_page_addresses_localizations_links_inv_fk","columns":["inv_contact_us_page_address_id"],"referencedColumns":["id"],"referencedTable":"contact_us_page_addresses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"contact_us_page_address_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_contact_us_page_address_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"contact_us_page_address_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"content_homes_localizations_links","indexes":[{"name":"content_homes_localizations_links_fk","columns":["content_home_id"]},{"name":"content_homes_localizations_links_inv_fk","columns":["inv_content_home_id"]},{"name":"content_homes_localizations_links_unique","columns":["content_home_id","inv_content_home_id"],"type":"unique"},{"name":"content_homes_localizations_links_order_fk","columns":["content_home_order"]}],"foreignKeys":[{"name":"content_homes_localizations_links_fk","columns":["content_home_id"],"referencedColumns":["id"],"referencedTable":"content_homes","onDelete":"CASCADE"},{"name":"content_homes_localizations_links_inv_fk","columns":["inv_content_home_id"],"referencedColumns":["id"],"referencedTable":"content_homes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_home_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_content_home_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"content_home_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"products_localizations_links","indexes":[{"name":"products_localizations_links_fk","columns":["product_id"]},{"name":"products_localizations_links_inv_fk","columns":["inv_product_id"]},{"name":"products_localizations_links_unique","columns":["product_id","inv_product_id"],"type":"unique"},{"name":"products_localizations_links_order_fk","columns":["product_order"]}],"foreignKeys":[{"name":"products_localizations_links_fk","columns":["product_id"],"referencedColumns":["id"],"referencedTable":"products","onDelete":"CASCADE"},{"name":"products_localizations_links_inv_fk","columns":["inv_product_id"],"referencedColumns":["id"],"referencedTable":"products","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"product_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_product_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-10-12 06:16:10.078	4aed6d2fa95fcd5d683a936146902970
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: tests; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.tests (id, test_2, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2023-07-06 12:16:41.325	2023-07-06 12:16:41.325	\N	\N
2	plugin::users-permissions.auth.changePassword	2023-07-06 12:16:41.325	2023-07-06 12:16:41.325	\N	\N
3	plugin::users-permissions.auth.callback	2023-07-06 12:16:41.347	2023-07-06 12:16:41.347	\N	\N
4	plugin::users-permissions.auth.connect	2023-07-06 12:16:41.347	2023-07-06 12:16:41.347	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2023-07-06 12:16:41.347	2023-07-06 12:16:41.347	\N	\N
6	plugin::users-permissions.auth.resetPassword	2023-07-06 12:16:41.347	2023-07-06 12:16:41.347	\N	\N
7	plugin::users-permissions.auth.register	2023-07-06 12:16:41.347	2023-07-06 12:16:41.347	\N	\N
8	plugin::users-permissions.auth.sendEmailConfirmation	2023-07-06 12:16:41.347	2023-07-06 12:16:41.347	\N	\N
9	plugin::users-permissions.auth.emailConfirmation	2023-07-06 12:16:41.347	2023-07-06 12:16:41.347	\N	\N
10	api::product.product.find	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
11	api::product.product.findOne	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
12	api::product.product.create	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
13	api::product.product.update	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
14	plugin::content-type-builder.components.getComponents	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
15	api::product.product.delete	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
16	plugin::content-type-builder.components.getComponent	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
17	plugin::content-type-builder.content-types.getContentTypes	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
18	plugin::content-type-builder.content-types.getContentType	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
19	plugin::email.email.send	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
20	plugin::upload.content-api.find	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
21	plugin::upload.content-api.findOne	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
22	plugin::upload.content-api.destroy	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
23	plugin::upload.content-api.upload	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
24	plugin::i18n.locales.listLocales	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
25	plugin::users-permissions.auth.callback	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
26	plugin::users-permissions.auth.connect	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
27	plugin::users-permissions.auth.resetPassword	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
28	plugin::users-permissions.auth.changePassword	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
29	plugin::users-permissions.auth.forgotPassword	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
30	plugin::users-permissions.user.create	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
31	plugin::users-permissions.auth.sendEmailConfirmation	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
32	plugin::users-permissions.user.find	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
33	plugin::users-permissions.user.update	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
34	plugin::users-permissions.user.count	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
35	plugin::users-permissions.user.findOne	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
36	plugin::users-permissions.user.destroy	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
37	plugin::users-permissions.user.me	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
38	plugin::users-permissions.role.find	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
39	plugin::users-permissions.role.findOne	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
40	plugin::users-permissions.role.updateRole	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
41	plugin::users-permissions.auth.emailConfirmation	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
42	plugin::users-permissions.auth.register	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
43	plugin::users-permissions.role.createRole	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
44	plugin::users-permissions.role.deleteRole	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
45	plugin::users-permissions.permissions.getPermissions	2023-07-06 14:21:36.923	2023-07-06 14:21:36.923	\N	\N
46	api::product.product.findOne	2023-07-06 14:52:43.805	2023-07-06 14:52:43.805	\N	\N
47	api::product.product.find	2023-07-06 14:52:43.805	2023-07-06 14:52:43.805	\N	\N
147	api::about-us.about-us.findOne	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
148	api::about-us.about-us.create	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
150	api::about-us.about-us.delete	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
152	api::announcement.announcement.create	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
154	api::announcement.announcement.delete	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
156	api::article-freegait.article-freegait.findOne	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
158	api::article-freegait.article-freegait.update	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
160	api::article-freegait.article-freegait.createLocalization	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
161	api::article-robogait.article-robogait.create	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
164	api::article-robogait.article-robogait.createLocalization	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
166	api::article-visiogait.article-visiogait.findOne	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
169	api::article-visiogait.article-visiogait.delete	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
172	api::contact.contact.findOne	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
174	api::contact.contact.update	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
176	api::article-robogait.article-robogait.delete	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
177	api::contact-form.contact-form.update	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
181	api::content-home.content-home.update	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
185	api::content-home.content-home.delete	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
186	api::contact.contact.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
190	api::contact.contact.delete	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
191	api::freegait.freegait.update	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
69	api::product.product.create	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
70	api::product.product.update	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
71	api::product.product.delete	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
194	api::home.home.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
200	api::our-product.our-product.findOne	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
204	api::robogait.robogait.find	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
205	api::robogait.robogait.findOne	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
207	api::robogait.robogait.update	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
213	api::visiogait.visiogait.findOne	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
214	api::visiogait.visiogait.create	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
216	api::visiogait.visiogait.delete	2023-10-06 10:11:35.125	2023-10-06 10:11:35.125	\N	\N
82	plugin::content-type-builder.components.getComponents	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
83	plugin::content-type-builder.components.getComponent	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
84	plugin::email.email.send	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
85	plugin::upload.content-api.find	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
86	plugin::upload.content-api.findOne	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
87	plugin::content-type-builder.content-types.getContentTypes	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
88	plugin::upload.content-api.destroy	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
91	plugin::i18n.locales.listLocales	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
92	plugin::upload.content-api.upload	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
90	plugin::content-type-builder.content-types.getContentType	2023-08-02 10:29:23.003	2023-08-02 10:29:23.003	\N	\N
146	api::about-us.about-us.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
149	api::about-us.about-us.update	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
151	api::announcement.announcement.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
153	api::announcement.announcement.update	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
155	api::article-freegait.article-freegait.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
157	api::article-freegait.article-freegait.create	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
159	api::article-freegait.article-freegait.delete	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
162	api::article-robogait.article-robogait.update	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
165	api::article-visiogait.article-visiogait.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
167	api::article-visiogait.article-visiogait.create	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
168	api::article-visiogait.article-visiogait.update	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
171	api::article-visiogait.article-visiogait.createLocalization	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
173	api::contact.contact.create	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
175	api::contact-form.contact-form.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
179	api::contact-form.contact-form.delete	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
180	api::content-home.content-home.findOne	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
184	api::content-home.content-home.createLocalization	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
187	api::freegait.freegait.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
188	api::contact-form.contact-form.create	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
192	api::freegait.freegait.create	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
197	api::freegait.freegait.delete	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
198	api::home.home.delete	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
202	api::our-product.our-product.update	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
206	api::robogait.robogait.create	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
209	api::test.test.find	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
211	api::test.test.delete	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
215	api::visiogait.visiogait.update	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
218	api::contact-us-page-address.contact-us-page-address.findOne	2023-10-12 06:25:15.363	2023-10-12 06:25:15.363	\N	\N
219	api::contact-us-page-address.contact-us-page-address.create	2023-10-12 06:25:15.363	2023-10-12 06:25:15.363	\N	\N
221	api::contact-us-page-address.contact-us-page-address.delete	2023-10-12 06:25:15.363	2023-10-12 06:25:15.363	\N	\N
163	api::article-robogait.article-robogait.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
178	api::contact-form.contact-form.findOne	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
182	api::content-home.content-home.create	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
183	api::content-home.content-home.find	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
170	api::article-robogait.article-robogait.findOne	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
189	api::freegait.freegait.findOne	2023-10-06 10:11:35.123	2023-10-06 10:11:35.123	\N	\N
193	api::home.home.findOne	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
195	api::home.home.create	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
196	api::home.home.update	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
199	api::our-product.our-product.find	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
201	api::our-product.our-product.create	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
203	api::our-product.our-product.delete	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
208	api::robogait.robogait.delete	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
210	api::test.test.update	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
212	api::visiogait.visiogait.find	2023-10-06 10:11:35.124	2023-10-06 10:11:35.124	\N	\N
217	api::contact-us-page-address.contact-us-page-address.find	2023-10-12 06:25:15.363	2023-10-12 06:25:15.363	\N	\N
220	api::contact-us-page-address.contact-us-page-address.update	2023-10-12 06:25:15.363	2023-10-12 06:25:15.363	\N	\N
222	api::contact-us-page-address.contact-us-page-address.createLocalization	2023-10-12 06:25:15.363	2023-10-12 06:25:15.363	\N	\N
126	api::announcement.announcement.find	2023-09-25 07:54:59.105	2023-09-25 07:54:59.105	\N	\N
127	api::announcement.announcement.find	2023-09-25 07:55:37.412	2023-09-25 07:55:37.412	\N	\N
129	api::announcement.announcement.findOne	2023-09-25 08:38:00.645	2023-09-25 08:38:00.645	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	2
3	6	2	1
4	5	2	1
5	4	2	1
6	3	2	1
7	7	2	1
8	8	2	2
9	9	2	2
10	11	3	1
11	10	3	1
12	12	3	1
13	13	3	1
14	18	3	2
15	20	3	2
16	14	3	2
17	15	3	2
18	17	3	2
19	21	3	3
20	16	3	2
21	25	3	3
22	22	3	2
23	24	3	4
24	23	3	4
25	19	3	3
26	26	3	4
27	27	3	5
28	28	3	5
29	30	3	6
30	32	3	6
31	31	3	6
32	34	3	6
33	33	3	6
34	29	3	6
35	35	3	6
36	39	3	6
37	38	3	7
38	36	3	7
39	44	3	7
40	37	3	7
41	43	3	8
42	40	3	8
43	42	3	8
44	45	3	8
45	41	3	8
46	46	2	3
47	47	2	3
146	147	2	26
147	148	2	26
148	146	2	26
149	149	2	26
150	151	2	26
151	150	2	26
152	155	2	27
153	154	2	26
154	156	2	27
155	157	2	27
156	153	2	26
157	152	2	26
158	158	2	28
159	160	2	28
160	159	2	29
161	161	2	29
162	162	2	30
163	164	2	30
164	165	2	30
67	69	2	8
165	167	2	30
166	166	2	30
70	70	2	9
71	71	2	9
167	168	2	30
168	169	2	30
169	171	2	30
170	172	2	30
171	173	2	31
172	163	2	31
173	174	2	31
174	175	2	32
175	178	2	32
176	177	2	32
82	86	2	11
83	84	2	11
84	85	2	11
85	82	2	11
86	91	2	11
87	87	2	11
88	83	2	12
89	88	2	12
177	181	2	32
91	92	2	12
92	90	2	12
178	180	2	32
179	184	2	32
180	182	2	32
181	187	2	32
182	185	2	33
183	179	2	33
184	191	2	33
185	189	2	33
186	170	2	33
187	193	2	33
188	192	2	34
189	183	2	34
190	176	2	34
191	196	2	34
192	198	2	34
193	199	2	34
194	194	2	35
195	186	2	35
196	188	2	35
197	190	2	35
198	195	2	35
199	197	2	36
200	201	2	36
201	202	2	36
202	203	2	36
203	204	2	36
204	205	2	36
205	206	2	36
206	207	2	36
207	208	2	36
208	200	2	37
209	210	2	37
210	211	2	37
126	126	3	9
127	127	1	3
211	212	2	37
212	213	2	38
213	214	2	38
131	129	2	25
214	215	2	38
215	216	2	38
216	209	2	38
217	218	2	39
218	217	2	39
219	219	2	40
220	220	2	41
221	221	2	41
222	222	2	42
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2023-07-06 12:16:41.312	2023-09-25 07:55:37.406	\N	\N
3	Admin	Full Perm	admin	2023-07-06 14:21:36.915	2023-09-25 08:04:07.33	\N	\N
2	Public	Default role given to unauthenticated user.	public	2023-07-06 12:16:41.317	2023-10-12 06:27:10.824	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Larusa	test@gmail.com	local	$2a$10$GWGJCCMAMAn.dd9QuTryVOovtdV9tpC6zmY1A.9PtSby56x0C5zKW	\N	\N	t	f	2023-07-06 14:22:00.157	2023-07-06 14:22:00.157	1	1
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
1	1	3	1
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
6	freegait	1	/1	2023-07-26 09:15:39.78	2023-07-26 09:15:39.78	1	1
7	visiogait	2	/2	2023-07-26 09:17:29.892	2023-07-26 09:17:29.892	1	1
8	robogait	3	/3	2023-07-26 09:18:15.805	2023-07-26 09:18:15.805	1	1
9	ourProducts	4	/4	2023-07-26 09:18:46.447	2023-07-26 09:18:46.447	1	1
10	about	5	/5	2023-07-26 09:19:05.474	2023-07-26 09:19:05.474	1	1
11	banners	6	/6	2023-07-26 09:19:37.879	2023-07-26 09:19:37.879	1	1
12	contact-us	7	/7	2023-07-26 09:21:30.393	2023-07-26 09:21:30.393	1	1
13	home	8	/8	2023-07-26 09:23:30.535	2023-07-26 09:23:30.535	1	1
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Data for Name: visiogaits; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.visiogaits (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-10-06 10:38:53.647	2023-10-06 10:38:55.455	2023-10-06 10:38:55.45	1	1
\.


--
-- Name: about_uses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.about_uses_id_seq', 1, true);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 381, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 381, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 5, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 6, true);


--
-- Name: announcements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.announcements_id_seq', 2, true);


--
-- Name: article_freegaits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_freegaits_id_seq', 1, true);


--
-- Name: article_freegaits_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_freegaits_localizations_links_id_seq', 1, false);


--
-- Name: article_robogaits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_robogaits_id_seq', 4, true);


--
-- Name: article_robogaits_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_robogaits_localizations_links_id_seq', 1, false);


--
-- Name: article_visiogaits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_visiogaits_id_seq', 1, false);


--
-- Name: article_visiogaits_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_visiogaits_localizations_links_id_seq', 1, false);


--
-- Name: contact_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contact_forms_id_seq', 16, true);


--
-- Name: contact_us_page_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contact_us_page_addresses_id_seq', 3, true);


--
-- Name: contact_us_page_addresses_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contact_us_page_addresses_localizations_links_id_seq', 8, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);


--
-- Name: content_homes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.content_homes_id_seq', 3, true);


--
-- Name: content_homes_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.content_homes_localizations_links_id_seq', 1, false);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 94, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 300, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 726, true);


--
-- Name: freegaits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.freegaits_id_seq', 1, true);


--
-- Name: homes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homes_id_seq', 1, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 4, true);


--
-- Name: our_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.our_products_id_seq', 1, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.products_id_seq', 46, true);


--
-- Name: products_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.products_localizations_links_id_seq', 24, true);


--
-- Name: robogaits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.robogaits_id_seq', 1, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 56, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 42, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.tests_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 222, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 222, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 3, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 13, true);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: visiogaits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.visiogaits_id_seq', 1, true);


--
-- Name: about_uses about_uses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: announcements announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);


--
-- Name: article_freegaits_localizations_links article_freegaits_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_freegaits_localizations_links
    ADD CONSTRAINT article_freegaits_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: article_freegaits_localizations_links article_freegaits_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_freegaits_localizations_links
    ADD CONSTRAINT article_freegaits_localizations_links_unique UNIQUE (article_freegait_id, inv_article_freegait_id);


--
-- Name: article_freegaits article_freegaits_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_freegaits
    ADD CONSTRAINT article_freegaits_pkey PRIMARY KEY (id);


--
-- Name: article_robogaits_localizations_links article_robogaits_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_robogaits_localizations_links
    ADD CONSTRAINT article_robogaits_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: article_robogaits_localizations_links article_robogaits_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_robogaits_localizations_links
    ADD CONSTRAINT article_robogaits_localizations_links_unique UNIQUE (article_robogait_id, inv_article_robogait_id);


--
-- Name: article_robogaits article_robogaits_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_robogaits
    ADD CONSTRAINT article_robogaits_pkey PRIMARY KEY (id);


--
-- Name: article_visiogaits_localizations_links article_visiogaits_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_visiogaits_localizations_links
    ADD CONSTRAINT article_visiogaits_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: article_visiogaits_localizations_links article_visiogaits_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_visiogaits_localizations_links
    ADD CONSTRAINT article_visiogaits_localizations_links_unique UNIQUE (article_visiogait_id, inv_article_visiogait_id);


--
-- Name: article_visiogaits article_visiogaits_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_visiogaits
    ADD CONSTRAINT article_visiogaits_pkey PRIMARY KEY (id);


--
-- Name: contact_forms contact_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_forms
    ADD CONSTRAINT contact_forms_pkey PRIMARY KEY (id);


--
-- Name: contact_us_page_addresses_localizations_links contact_us_page_addresses_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_us_page_addresses_localizations_links
    ADD CONSTRAINT contact_us_page_addresses_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: contact_us_page_addresses_localizations_links contact_us_page_addresses_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_us_page_addresses_localizations_links
    ADD CONSTRAINT contact_us_page_addresses_localizations_links_unique UNIQUE (contact_us_page_address_id, inv_contact_us_page_address_id);


--
-- Name: contact_us_page_addresses contact_us_page_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_us_page_addresses
    ADD CONSTRAINT contact_us_page_addresses_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: content_homes_localizations_links content_homes_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.content_homes_localizations_links
    ADD CONSTRAINT content_homes_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: content_homes_localizations_links content_homes_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.content_homes_localizations_links
    ADD CONSTRAINT content_homes_localizations_links_unique UNIQUE (content_home_id, inv_content_home_id);


--
-- Name: content_homes content_homes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.content_homes
    ADD CONSTRAINT content_homes_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: freegaits freegaits_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.freegaits
    ADD CONSTRAINT freegaits_pkey PRIMARY KEY (id);


--
-- Name: homes homes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homes
    ADD CONSTRAINT homes_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: our_products our_products_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.our_products
    ADD CONSTRAINT our_products_pkey PRIMARY KEY (id);


--
-- Name: products_localizations_links products_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.products_localizations_links
    ADD CONSTRAINT products_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: products_localizations_links products_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.products_localizations_links
    ADD CONSTRAINT products_localizations_links_unique UNIQUE (product_id, inv_product_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: robogaits robogaits_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.robogaits
    ADD CONSTRAINT robogaits_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: tests tests_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: visiogaits visiogaits_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.visiogaits
    ADD CONSTRAINT visiogaits_pkey PRIMARY KEY (id);


--
-- Name: about_uses_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_created_by_id_fk ON public.about_uses USING btree (created_by_id);


--
-- Name: about_uses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_updated_by_id_fk ON public.about_uses USING btree (updated_by_id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: announcements_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX announcements_created_by_id_fk ON public.announcements USING btree (created_by_id);


--
-- Name: announcements_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX announcements_updated_by_id_fk ON public.announcements USING btree (updated_by_id);


--
-- Name: article_freegaits_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_freegaits_created_by_id_fk ON public.article_freegaits USING btree (created_by_id);


--
-- Name: article_freegaits_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_freegaits_localizations_links_fk ON public.article_freegaits_localizations_links USING btree (article_freegait_id);


--
-- Name: article_freegaits_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_freegaits_localizations_links_inv_fk ON public.article_freegaits_localizations_links USING btree (inv_article_freegait_id);


--
-- Name: article_freegaits_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_freegaits_localizations_links_order_fk ON public.article_freegaits_localizations_links USING btree (article_freegait_order);


--
-- Name: article_freegaits_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_freegaits_updated_by_id_fk ON public.article_freegaits USING btree (updated_by_id);


--
-- Name: article_robogaits_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_robogaits_created_by_id_fk ON public.article_robogaits USING btree (created_by_id);


--
-- Name: article_robogaits_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_robogaits_localizations_links_fk ON public.article_robogaits_localizations_links USING btree (article_robogait_id);


--
-- Name: article_robogaits_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_robogaits_localizations_links_inv_fk ON public.article_robogaits_localizations_links USING btree (inv_article_robogait_id);


--
-- Name: article_robogaits_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_robogaits_localizations_links_order_fk ON public.article_robogaits_localizations_links USING btree (article_robogait_order);


--
-- Name: article_robogaits_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_robogaits_updated_by_id_fk ON public.article_robogaits USING btree (updated_by_id);


--
-- Name: article_visiogaits_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_visiogaits_created_by_id_fk ON public.article_visiogaits USING btree (created_by_id);


--
-- Name: article_visiogaits_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_visiogaits_localizations_links_fk ON public.article_visiogaits_localizations_links USING btree (article_visiogait_id);


--
-- Name: article_visiogaits_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_visiogaits_localizations_links_inv_fk ON public.article_visiogaits_localizations_links USING btree (inv_article_visiogait_id);


--
-- Name: article_visiogaits_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_visiogaits_localizations_links_order_fk ON public.article_visiogaits_localizations_links USING btree (article_visiogait_order);


--
-- Name: article_visiogaits_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_visiogaits_updated_by_id_fk ON public.article_visiogaits USING btree (updated_by_id);


--
-- Name: contact_forms_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_forms_created_by_id_fk ON public.contact_forms USING btree (created_by_id);


--
-- Name: contact_forms_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_forms_updated_by_id_fk ON public.contact_forms USING btree (updated_by_id);


--
-- Name: contact_us_page_addresses_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_us_page_addresses_created_by_id_fk ON public.contact_us_page_addresses USING btree (created_by_id);


--
-- Name: contact_us_page_addresses_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_us_page_addresses_localizations_links_fk ON public.contact_us_page_addresses_localizations_links USING btree (contact_us_page_address_id);


--
-- Name: contact_us_page_addresses_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_us_page_addresses_localizations_links_inv_fk ON public.contact_us_page_addresses_localizations_links USING btree (inv_contact_us_page_address_id);


--
-- Name: contact_us_page_addresses_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_us_page_addresses_localizations_links_order_fk ON public.contact_us_page_addresses_localizations_links USING btree (contact_us_page_address_order);


--
-- Name: contact_us_page_addresses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_us_page_addresses_updated_by_id_fk ON public.contact_us_page_addresses USING btree (updated_by_id);


--
-- Name: contacts_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_created_by_id_fk ON public.contacts USING btree (created_by_id);


--
-- Name: contacts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_updated_by_id_fk ON public.contacts USING btree (updated_by_id);


--
-- Name: content_homes_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX content_homes_created_by_id_fk ON public.content_homes USING btree (created_by_id);


--
-- Name: content_homes_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX content_homes_localizations_links_fk ON public.content_homes_localizations_links USING btree (content_home_id);


--
-- Name: content_homes_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX content_homes_localizations_links_inv_fk ON public.content_homes_localizations_links USING btree (inv_content_home_id);


--
-- Name: content_homes_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX content_homes_localizations_links_order_fk ON public.content_homes_localizations_links USING btree (content_home_order);


--
-- Name: content_homes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX content_homes_updated_by_id_fk ON public.content_homes USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: freegaits_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX freegaits_created_by_id_fk ON public.freegaits USING btree (created_by_id);


--
-- Name: freegaits_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX freegaits_updated_by_id_fk ON public.freegaits USING btree (updated_by_id);


--
-- Name: homes_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homes_created_by_id_fk ON public.homes USING btree (created_by_id);


--
-- Name: homes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homes_updated_by_id_fk ON public.homes USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: our_products_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX our_products_created_by_id_fk ON public.our_products USING btree (created_by_id);


--
-- Name: our_products_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX our_products_updated_by_id_fk ON public.our_products USING btree (updated_by_id);


--
-- Name: products_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX products_created_by_id_fk ON public.products USING btree (created_by_id);


--
-- Name: products_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX products_localizations_links_fk ON public.products_localizations_links USING btree (product_id);


--
-- Name: products_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX products_localizations_links_inv_fk ON public.products_localizations_links USING btree (inv_product_id);


--
-- Name: products_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX products_localizations_links_order_fk ON public.products_localizations_links USING btree (product_order);


--
-- Name: products_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX products_updated_by_id_fk ON public.products USING btree (updated_by_id);


--
-- Name: robogaits_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX robogaits_created_by_id_fk ON public.robogaits USING btree (created_by_id);


--
-- Name: robogaits_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX robogaits_updated_by_id_fk ON public.robogaits USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: tests_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX tests_created_by_id_fk ON public.tests USING btree (created_by_id);


--
-- Name: tests_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX tests_updated_by_id_fk ON public.tests USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: visiogaits_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX visiogaits_created_by_id_fk ON public.visiogaits USING btree (created_by_id);


--
-- Name: visiogaits_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX visiogaits_updated_by_id_fk ON public.visiogaits USING btree (updated_by_id);


--
-- Name: about_uses about_uses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: about_uses about_uses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: announcements announcements_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: announcements announcements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_freegaits article_freegaits_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_freegaits
    ADD CONSTRAINT article_freegaits_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_freegaits_localizations_links article_freegaits_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_freegaits_localizations_links
    ADD CONSTRAINT article_freegaits_localizations_links_fk FOREIGN KEY (article_freegait_id) REFERENCES public.article_freegaits(id) ON DELETE CASCADE;


--
-- Name: article_freegaits_localizations_links article_freegaits_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_freegaits_localizations_links
    ADD CONSTRAINT article_freegaits_localizations_links_inv_fk FOREIGN KEY (inv_article_freegait_id) REFERENCES public.article_freegaits(id) ON DELETE CASCADE;


--
-- Name: article_freegaits article_freegaits_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_freegaits
    ADD CONSTRAINT article_freegaits_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_robogaits article_robogaits_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_robogaits
    ADD CONSTRAINT article_robogaits_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_robogaits_localizations_links article_robogaits_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_robogaits_localizations_links
    ADD CONSTRAINT article_robogaits_localizations_links_fk FOREIGN KEY (article_robogait_id) REFERENCES public.article_robogaits(id) ON DELETE CASCADE;


--
-- Name: article_robogaits_localizations_links article_robogaits_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_robogaits_localizations_links
    ADD CONSTRAINT article_robogaits_localizations_links_inv_fk FOREIGN KEY (inv_article_robogait_id) REFERENCES public.article_robogaits(id) ON DELETE CASCADE;


--
-- Name: article_robogaits article_robogaits_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_robogaits
    ADD CONSTRAINT article_robogaits_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_visiogaits article_visiogaits_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_visiogaits
    ADD CONSTRAINT article_visiogaits_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_visiogaits_localizations_links article_visiogaits_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_visiogaits_localizations_links
    ADD CONSTRAINT article_visiogaits_localizations_links_fk FOREIGN KEY (article_visiogait_id) REFERENCES public.article_visiogaits(id) ON DELETE CASCADE;


--
-- Name: article_visiogaits_localizations_links article_visiogaits_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_visiogaits_localizations_links
    ADD CONSTRAINT article_visiogaits_localizations_links_inv_fk FOREIGN KEY (inv_article_visiogait_id) REFERENCES public.article_visiogaits(id) ON DELETE CASCADE;


--
-- Name: article_visiogaits article_visiogaits_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_visiogaits
    ADD CONSTRAINT article_visiogaits_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contact_forms contact_forms_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_forms
    ADD CONSTRAINT contact_forms_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contact_forms contact_forms_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_forms
    ADD CONSTRAINT contact_forms_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contact_us_page_addresses contact_us_page_addresses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_us_page_addresses
    ADD CONSTRAINT contact_us_page_addresses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contact_us_page_addresses_localizations_links contact_us_page_addresses_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_us_page_addresses_localizations_links
    ADD CONSTRAINT contact_us_page_addresses_localizations_links_fk FOREIGN KEY (contact_us_page_address_id) REFERENCES public.contact_us_page_addresses(id) ON DELETE CASCADE;


--
-- Name: contact_us_page_addresses_localizations_links contact_us_page_addresses_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_us_page_addresses_localizations_links
    ADD CONSTRAINT contact_us_page_addresses_localizations_links_inv_fk FOREIGN KEY (inv_contact_us_page_address_id) REFERENCES public.contact_us_page_addresses(id) ON DELETE CASCADE;


--
-- Name: contact_us_page_addresses contact_us_page_addresses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_us_page_addresses
    ADD CONSTRAINT contact_us_page_addresses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts contacts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts contacts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: content_homes content_homes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.content_homes
    ADD CONSTRAINT content_homes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: content_homes_localizations_links content_homes_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.content_homes_localizations_links
    ADD CONSTRAINT content_homes_localizations_links_fk FOREIGN KEY (content_home_id) REFERENCES public.content_homes(id) ON DELETE CASCADE;


--
-- Name: content_homes_localizations_links content_homes_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.content_homes_localizations_links
    ADD CONSTRAINT content_homes_localizations_links_inv_fk FOREIGN KEY (inv_content_home_id) REFERENCES public.content_homes(id) ON DELETE CASCADE;


--
-- Name: content_homes content_homes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.content_homes
    ADD CONSTRAINT content_homes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: freegaits freegaits_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.freegaits
    ADD CONSTRAINT freegaits_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: freegaits freegaits_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.freegaits
    ADD CONSTRAINT freegaits_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: homes homes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homes
    ADD CONSTRAINT homes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: homes homes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homes
    ADD CONSTRAINT homes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: our_products our_products_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.our_products
    ADD CONSTRAINT our_products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: our_products our_products_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.our_products
    ADD CONSTRAINT our_products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: products products_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: products_localizations_links products_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.products_localizations_links
    ADD CONSTRAINT products_localizations_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products_localizations_links products_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.products_localizations_links
    ADD CONSTRAINT products_localizations_links_inv_fk FOREIGN KEY (inv_product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products products_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: robogaits robogaits_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.robogaits
    ADD CONSTRAINT robogaits_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: robogaits robogaits_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.robogaits
    ADD CONSTRAINT robogaits_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tests tests_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tests tests_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: visiogaits visiogaits_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.visiogaits
    ADD CONSTRAINT visiogaits_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: visiogaits visiogaits_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.visiogaits
    ADD CONSTRAINT visiogaits_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

