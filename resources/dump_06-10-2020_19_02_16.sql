--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE api;
DROP DATABASE pms;




--
-- Drop roles
--

DROP ROLE faraz;


--
-- Roles
--

CREATE ROLE faraz;
ALTER ROLE faraz WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md5f75c9d6c2f65a8b84bc3ea6eb3526c19';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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
-- Name: template1; Type: DATABASE; Schema: -; Owner: faraz
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO faraz;

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: faraz
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: faraz
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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: faraz
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "api" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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
-- Name: api; Type: DATABASE; Schema: -; Owner: faraz
--

CREATE DATABASE api WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE api OWNER TO faraz;

\connect api

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
-- Name: api; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.api (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    project_id integer NOT NULL,
    base_url character varying(255) NOT NULL,
    parameters character varying(255) NOT NULL,
    methods character varying(255) NOT NULL,
    version character varying(30) NOT NULL,
    protocol character varying(30) NOT NULL,
    creator_email character varying(200) NOT NULL,
    user_email character varying(200) NOT NULL,
    security_type character varying(255) NOT NULL,
    encryption_key character varying(255),
    active boolean NOT NULL,
    enc_id integer,
    public_key integer
);


ALTER TABLE public.api OWNER TO faraz;

--
-- Name: api_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.api_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_id_seq OWNER TO faraz;

--
-- Name: api_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.api_id_seq OWNED BY public.api.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO faraz;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO faraz;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO faraz;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO faraz;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO faraz;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO faraz;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO faraz;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO faraz;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO faraz;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO faraz;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO faraz;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO faraz;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blacklisted_ip; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.blacklisted_ip (
    id integer NOT NULL,
    ip character varying(20) NOT NULL,
    blacklisted_on integer NOT NULL
);


ALTER TABLE public.blacklisted_ip OWNER TO faraz;

--
-- Name: blacklisted_ip_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.blacklisted_ip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blacklisted_ip_id_seq OWNER TO faraz;

--
-- Name: blacklisted_ip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.blacklisted_ip_id_seq OWNED BY public.blacklisted_ip.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO faraz;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO faraz;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO faraz;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO faraz;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: email_recipient; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.email_recipient (
    id integer NOT NULL,
    resp_email character varying(50) NOT NULL,
    email_id integer
);


ALTER TABLE public.email_recipient OWNER TO faraz;

--
-- Name: email_recipient_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.email_recipient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_recipient_id_seq OWNER TO faraz;

--
-- Name: email_recipient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.email_recipient_id_seq OWNED BY public.email_recipient.id;


--
-- Name: emails; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.emails (
    id integer NOT NULL,
    "to" character varying(50) NOT NULL,
    subject character varying(250) NOT NULL,
    body text NOT NULL,
    type integer NOT NULL,
    sent boolean NOT NULL
);


ALTER TABLE public.emails OWNER TO faraz;

--
-- Name: emails_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emails_id_seq OWNER TO faraz;

--
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.emails_id_seq OWNED BY public.emails.id;


--
-- Name: enc_key; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.enc_key (
    id integer NOT NULL,
    label character varying(25) NOT NULL,
    enc_key character varying(100) NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.enc_key OWNER TO faraz;

--
-- Name: enc_key_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.enc_key_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enc_key_id_seq OWNER TO faraz;

--
-- Name: enc_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.enc_key_id_seq OWNED BY public.enc_key.id;


--
-- Name: exp_keys; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.exp_keys (
    id integer NOT NULL,
    public_key character varying(100) NOT NULL,
    expired_on integer NOT NULL
);


ALTER TABLE public.exp_keys OWNER TO faraz;

--
-- Name: exp_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.exp_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exp_keys_id_seq OWNER TO faraz;

--
-- Name: exp_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.exp_keys_id_seq OWNED BY public.exp_keys.id;


--
-- Name: key_usage; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.key_usage (
    id integer NOT NULL,
    hour integer,
    day date,
    weekday integer,
    weekday_name character varying(12),
    total integer,
    created_at integer NOT NULL,
    key_id integer NOT NULL
);


ALTER TABLE public.key_usage OWNER TO faraz;

--
-- Name: key_usage_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.key_usage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.key_usage_id_seq OWNER TO faraz;

--
-- Name: key_usage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.key_usage_id_seq OWNED BY public.key_usage.id;


--
-- Name: keypairs; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.keypairs (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    private_key character varying(100),
    public_key character varying(100) NOT NULL,
    "serialID" character varying(255) NOT NULL,
    active boolean NOT NULL,
    taken boolean NOT NULL,
    grace integer NOT NULL,
    expires_on integer NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    pkg_id integer
);


ALTER TABLE public.keypairs OWNER TO faraz;

--
-- Name: keypairs_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.keypairs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.keypairs_id_seq OWNER TO faraz;

--
-- Name: keypairs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.keypairs_id_seq OWNED BY public.keypairs.id;


--
-- Name: package; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.package (
    id integer NOT NULL,
    name character varying(25) NOT NULL,
    "serialID" character varying(255) NOT NULL,
    active boolean NOT NULL,
    funnel character varying(255) NOT NULL,
    created_at integer NOT NULL,
    update_at integer NOT NULL
);


ALTER TABLE public.package OWNER TO faraz;

--
-- Name: package_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.package_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.package_id_seq OWNER TO faraz;

--
-- Name: package_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.package_id_seq OWNED BY public.package.id;


--
-- Name: personal_pkg; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.personal_pkg (
    id integer NOT NULL,
    name character varying(25) NOT NULL,
    alias character varying(25) NOT NULL,
    "serialID" character varying(255) NOT NULL,
    active boolean NOT NULL,
    funnel character varying(255) NOT NULL,
    created_at integer NOT NULL,
    update_at integer NOT NULL
);


ALTER TABLE public.personal_pkg OWNER TO faraz;

--
-- Name: personal_pkg_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.personal_pkg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_pkg_id_seq OWNER TO faraz;

--
-- Name: personal_pkg_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.personal_pkg_id_seq OWNED BY public.personal_pkg.id;


--
-- Name: api id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.api ALTER COLUMN id SET DEFAULT nextval('public.api_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blacklisted_ip id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.blacklisted_ip ALTER COLUMN id SET DEFAULT nextval('public.blacklisted_ip_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: email_recipient id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.email_recipient ALTER COLUMN id SET DEFAULT nextval('public.email_recipient_id_seq'::regclass);


--
-- Name: emails id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.emails ALTER COLUMN id SET DEFAULT nextval('public.emails_id_seq'::regclass);


--
-- Name: enc_key id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.enc_key ALTER COLUMN id SET DEFAULT nextval('public.enc_key_id_seq'::regclass);


--
-- Name: exp_keys id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.exp_keys ALTER COLUMN id SET DEFAULT nextval('public.exp_keys_id_seq'::regclass);


--
-- Name: key_usage id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.key_usage ALTER COLUMN id SET DEFAULT nextval('public.key_usage_id_seq'::regclass);


--
-- Name: keypairs id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.keypairs ALTER COLUMN id SET DEFAULT nextval('public.keypairs_id_seq'::regclass);


--
-- Name: package id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.package ALTER COLUMN id SET DEFAULT nextval('public.package_id_seq'::regclass);


--
-- Name: personal_pkg id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.personal_pkg ALTER COLUMN id SET DEFAULT nextval('public.personal_pkg_id_seq'::regclass);


--
-- Data for Name: api; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.api (id, name, project_id, base_url, parameters, methods, version, protocol, creator_email, user_email, security_type, encryption_key, active, enc_id, public_key) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: blacklisted_ip; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.blacklisted_ip (id, ip, blacklisted_on) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	package	0001_initial	2020-09-09 07:43:09.972172+00
2	keys	0001_initial	2020-09-09 07:43:10.022386+00
3	api_management	0001_initial	2020-09-09 07:43:10.095164+00
4	api_management	0002_auto_20200901_1840	2020-09-09 07:43:10.11706+00
5	api_management	0003_auto_20200901_1841	2020-09-09 07:43:10.12677+00
6	api_management	0004_auto_20200903_1529	2020-09-09 07:43:10.134006+00
7	api_management	0005_auto_20200903_1658	2020-09-09 07:43:10.14012+00
8	api_management	0006_auto_20200903_1702	2020-09-09 07:43:10.144988+00
9	api_management	0007_auto_20200903_1714	2020-09-09 07:43:10.149758+00
10	api_management	0008_auto_20200904_0852	2020-09-09 07:43:10.15393+00
11	api_management	0009_auto_20200904_0854	2020-09-09 07:43:10.158074+00
12	api_management	0010_auto_20200904_0855	2020-09-09 07:43:10.162385+00
13	contenttypes	0001_initial	2020-09-09 07:43:10.172257+00
14	contenttypes	0002_remove_content_type_name	2020-09-09 07:43:10.182695+00
15	auth	0001_initial	2020-09-09 07:43:10.234356+00
16	auth	0002_alter_permission_name_max_length	2020-09-09 07:43:10.310245+00
17	auth	0003_alter_user_email_max_length	2020-09-09 07:43:10.323292+00
18	auth	0004_alter_user_username_opts	2020-09-09 07:43:10.333388+00
19	auth	0005_alter_user_last_login_null	2020-09-09 07:43:10.343114+00
20	auth	0006_require_contenttypes_0002	2020-09-09 07:43:10.346747+00
21	auth	0007_alter_validators_add_error_messages	2020-09-09 07:43:10.355382+00
22	auth	0008_alter_user_username_max_length	2020-09-09 07:43:10.370884+00
23	auth	0009_alter_user_last_name_max_length	2020-09-09 07:43:10.385435+00
24	auth	0010_alter_group_name_max_length	2020-09-09 07:43:10.398125+00
25	auth	0011_update_proxy_permissions	2020-09-09 07:43:10.410859+00
26	blocked_and_expired	0001_initial	2020-09-09 07:43:10.432108+00
27	emails	0001_initial	2020-09-25 06:55:04.377691+00
\.


--
-- Data for Name: email_recipient; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.email_recipient (id, resp_email, email_id) FROM stdin;
\.


--
-- Data for Name: emails; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.emails (id, "to", subject, body, type, sent) FROM stdin;
\.


--
-- Data for Name: enc_key; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.enc_key (id, label, enc_key, created_at) FROM stdin;
\.


--
-- Data for Name: exp_keys; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.exp_keys (id, public_key, expired_on) FROM stdin;
\.


--
-- Data for Name: key_usage; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.key_usage (id, hour, day, weekday, weekday_name, total, created_at, key_id) FROM stdin;
\.


--
-- Data for Name: keypairs; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.keypairs (id, name, private_key, public_key, "serialID", active, taken, grace, expires_on, created_at, updated_at, pkg_id) FROM stdin;
\.


--
-- Data for Name: package; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.package (id, name, "serialID", active, funnel, created_at, update_at) FROM stdin;
\.


--
-- Data for Name: personal_pkg; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.personal_pkg (id, name, alias, "serialID", active, funnel, created_at, update_at) FROM stdin;
\.


--
-- Name: api_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.api_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 1, false);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: blacklisted_ip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.blacklisted_ip_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 1, false);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: email_recipient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.email_recipient_id_seq', 1, false);


--
-- Name: emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.emails_id_seq', 1, false);


--
-- Name: enc_key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.enc_key_id_seq', 1, false);


--
-- Name: exp_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.exp_keys_id_seq', 1, false);


--
-- Name: key_usage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.key_usage_id_seq', 1, false);


--
-- Name: keypairs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.keypairs_id_seq', 1, false);


--
-- Name: package_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.package_id_seq', 1, false);


--
-- Name: personal_pkg_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.personal_pkg_id_seq', 1, false);


--
-- Name: api api_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.api
    ADD CONSTRAINT api_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blacklisted_ip blacklisted_ip_ip_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.blacklisted_ip
    ADD CONSTRAINT blacklisted_ip_ip_key UNIQUE (ip);


--
-- Name: blacklisted_ip blacklisted_ip_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.blacklisted_ip
    ADD CONSTRAINT blacklisted_ip_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: email_recipient email_recipient_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.email_recipient
    ADD CONSTRAINT email_recipient_pkey PRIMARY KEY (id);


--
-- Name: emails emails_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);


--
-- Name: enc_key enc_key_label_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.enc_key
    ADD CONSTRAINT enc_key_label_key UNIQUE (label);


--
-- Name: enc_key enc_key_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.enc_key
    ADD CONSTRAINT enc_key_pkey PRIMARY KEY (id);


--
-- Name: exp_keys exp_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.exp_keys
    ADD CONSTRAINT exp_keys_pkey PRIMARY KEY (id);


--
-- Name: exp_keys exp_keys_public_key_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.exp_keys
    ADD CONSTRAINT exp_keys_public_key_key UNIQUE (public_key);


--
-- Name: key_usage key_usage_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.key_usage
    ADD CONSTRAINT key_usage_pkey PRIMARY KEY (id);


--
-- Name: keypairs keypairs_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.keypairs
    ADD CONSTRAINT keypairs_name_key UNIQUE (name);


--
-- Name: keypairs keypairs_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.keypairs
    ADD CONSTRAINT keypairs_pkey PRIMARY KEY (id);


--
-- Name: keypairs keypairs_private_key_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.keypairs
    ADD CONSTRAINT keypairs_private_key_key UNIQUE (private_key);


--
-- Name: keypairs keypairs_public_key_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.keypairs
    ADD CONSTRAINT keypairs_public_key_key UNIQUE (public_key);


--
-- Name: package package_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.package
    ADD CONSTRAINT package_name_key UNIQUE (name);


--
-- Name: package package_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.package
    ADD CONSTRAINT package_pkey PRIMARY KEY (id);


--
-- Name: personal_pkg personal_pkg_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.personal_pkg
    ADD CONSTRAINT personal_pkg_pkey PRIMARY KEY (id);


--
-- Name: api_enc_id_8d145e52; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX api_enc_id_8d145e52 ON public.api USING btree (enc_id);


--
-- Name: api_public_key_26d61d5a; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX api_public_key_26d61d5a ON public.api USING btree (public_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blacklisted_ip_ip_60aa743e_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX blacklisted_ip_ip_60aa743e_like ON public.blacklisted_ip USING btree (ip varchar_pattern_ops);


--
-- Name: email_recipient_email_id_746fbcf3; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX email_recipient_email_id_746fbcf3 ON public.email_recipient USING btree (email_id);


--
-- Name: enc_key_label_60c1c692_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX enc_key_label_60c1c692_like ON public.enc_key USING btree (label varchar_pattern_ops);


--
-- Name: exp_keys_public_key_bae6401c_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX exp_keys_public_key_bae6401c_like ON public.exp_keys USING btree (public_key varchar_pattern_ops);


--
-- Name: key_usage_key_id_2be48f79; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX key_usage_key_id_2be48f79 ON public.key_usage USING btree (key_id);


--
-- Name: keypairs_name_0be69d7a_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX keypairs_name_0be69d7a_like ON public.keypairs USING btree (name varchar_pattern_ops);


--
-- Name: keypairs_pkg_id_e2af1b83; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX keypairs_pkg_id_e2af1b83 ON public.keypairs USING btree (pkg_id);


--
-- Name: keypairs_private_key_84df9544_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX keypairs_private_key_84df9544_like ON public.keypairs USING btree (private_key varchar_pattern_ops);


--
-- Name: keypairs_public_key_315e46a5_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX keypairs_public_key_315e46a5_like ON public.keypairs USING btree (public_key varchar_pattern_ops);


--
-- Name: package_name_4f2333d2_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX package_name_4f2333d2_like ON public.package USING btree (name varchar_pattern_ops);


--
-- Name: api api_enc_id_8d145e52_fk_enc_key_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.api
    ADD CONSTRAINT api_enc_id_8d145e52_fk_enc_key_id FOREIGN KEY (enc_id) REFERENCES public.enc_key(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api api_public_key_26d61d5a_fk_keypairs_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.api
    ADD CONSTRAINT api_public_key_26d61d5a_fk_keypairs_id FOREIGN KEY (public_key) REFERENCES public.keypairs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: email_recipient email_recipient_email_id_746fbcf3_fk_emails_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.email_recipient
    ADD CONSTRAINT email_recipient_email_id_746fbcf3_fk_emails_id FOREIGN KEY (email_id) REFERENCES public.emails(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: key_usage key_usage_key_id_2be48f79_fk_keypairs_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.key_usage
    ADD CONSTRAINT key_usage_key_id_2be48f79_fk_keypairs_id FOREIGN KEY (key_id) REFERENCES public.keypairs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: keypairs keypairs_pkg_id_e2af1b83_fk_personal_pkg_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.keypairs
    ADD CONSTRAINT keypairs_pkg_id_e2af1b83_fk_personal_pkg_id FOREIGN KEY (pkg_id) REFERENCES public.personal_pkg(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- Database "pms" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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
-- Name: pms; Type: DATABASE; Schema: -; Owner: faraz
--

CREATE DATABASE pms WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE pms OWNER TO faraz;

\connect pms

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO faraz;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO faraz;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO faraz;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO faraz;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO faraz;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO faraz;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO faraz;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO faraz;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO faraz;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO faraz;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO faraz;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO faraz;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO faraz;

--
-- Name: client; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.client (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    "serialID" character varying(50) NOT NULL,
    active boolean NOT NULL,
    deleted boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    email character varying(50) NOT NULL,
    mobile integer NOT NULL,
    phone integer NOT NULL,
    sec_mobile integer NOT NULL,
    website character varying(50) NOT NULL
);


ALTER TABLE public.client OWNER TO faraz;

--
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_seq OWNER TO faraz;

--
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- Name: component; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.component (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    "serialID" character varying(50) NOT NULL,
    active boolean NOT NULL,
    deleted boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.component OWNER TO faraz;

--
-- Name: component_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.component_id_seq OWNER TO faraz;

--
-- Name: component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.component_id_seq OWNED BY public.component.id;


--
-- Name: component_user_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.component_user_ref (
    id integer NOT NULL,
    component_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.component_user_ref OWNER TO faraz;

--
-- Name: component_user_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.component_user_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.component_user_ref_id_seq OWNER TO faraz;

--
-- Name: component_user_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.component_user_ref_id_seq OWNED BY public.component_user_ref.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO faraz;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO faraz;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO faraz;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO faraz;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO faraz;

--
-- Name: es_index; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.es_index (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    "serialID" character varying(50) NOT NULL,
    es_server character varying(15) NOT NULL,
    active boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.es_index OWNER TO faraz;

--
-- Name: es_index_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.es_index_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.es_index_id_seq OWNER TO faraz;

--
-- Name: es_index_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.es_index_id_seq OWNED BY public.es_index.id;


--
-- Name: es_index_project_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.es_index_project_ref (
    id integer NOT NULL,
    index_id integer NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public.es_index_project_ref OWNER TO faraz;

--
-- Name: es_index_project_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.es_index_project_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.es_index_project_ref_id_seq OWNER TO faraz;

--
-- Name: es_index_project_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.es_index_project_ref_id_seq OWNED BY public.es_index_project_ref.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    active boolean NOT NULL,
    "serialID" character varying(50) NOT NULL,
    deleted boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    client_id integer NOT NULL
);


ALTER TABLE public.project OWNER TO faraz;

--
-- Name: project_component_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_component_ref (
    id integer NOT NULL,
    component_id integer NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public.project_component_ref OWNER TO faraz;

--
-- Name: project_component_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_component_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_component_ref_id_seq OWNER TO faraz;

--
-- Name: project_component_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_component_ref_id_seq OWNED BY public.project_component_ref.id;


--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_id_seq OWNER TO faraz;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_id_seq OWNED BY public.project.id;


--
-- Name: project_role_project_user_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_role_project_user_ref (
    id integer NOT NULL,
    role_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.project_role_project_user_ref OWNER TO faraz;

--
-- Name: project_role_project_user_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_role_project_user_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_role_project_user_ref_id_seq OWNER TO faraz;

--
-- Name: project_role_project_user_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_role_project_user_ref_id_seq OWNED BY public.project_role_project_user_ref.id;


--
-- Name: project_roles; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_roles (
    id integer NOT NULL,
    role character varying(10) NOT NULL,
    "serialID" character varying(255) NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.project_roles OWNER TO faraz;

--
-- Name: project_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_roles_id_seq OWNER TO faraz;

--
-- Name: project_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_roles_id_seq OWNED BY public.project_roles.id;


--
-- Name: project_user; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_user (
    id integer NOT NULL,
    fname character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    "serialID" character varying(50) NOT NULL,
    active boolean NOT NULL,
    admin boolean NOT NULL,
    superadmin boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.project_user OWNER TO faraz;

--
-- Name: project_user_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_user_id_seq OWNER TO faraz;

--
-- Name: project_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_user_id_seq OWNED BY public.project_user.id;


--
-- Name: project_user_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_user_ref (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.project_user_ref OWNER TO faraz;

--
-- Name: project_user_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_user_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_user_ref_id_seq OWNER TO faraz;

--
-- Name: project_user_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_user_ref_id_seq OWNED BY public.project_user_ref.id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.role OWNER TO faraz;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO faraz;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- Name: salt; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.salt (
    id integer NOT NULL,
    salt character varying(50) NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.salt OWNER TO faraz;

--
-- Name: salt_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.salt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salt_id_seq OWNER TO faraz;

--
-- Name: salt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.salt_id_seq OWNED BY public.salt.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.tokens (
    id integer NOT NULL,
    token character varying(100) NOT NULL,
    ip inet NOT NULL,
    component character varying(50) NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.tokens OWNER TO faraz;

--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tokens_id_seq OWNER TO faraz;

--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    user_name character varying(255) NOT NULL,
    salt character varying(255) NOT NULL,
    hashed_password character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    is_superuser boolean NOT NULL,
    is_active boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public."user" OWNER TO faraz;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO faraz;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.user_roles (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_roles OWNER TO faraz;

--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.user_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_roles_id_seq OWNER TO faraz;

--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;


--
-- Name: user_roles_roles; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.user_roles_roles (
    id integer NOT NULL,
    user_role_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.user_roles_roles OWNER TO faraz;

--
-- Name: user_roles_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.user_roles_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_roles_roles_id_seq OWNER TO faraz;

--
-- Name: user_roles_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.user_roles_roles_id_seq OWNED BY public.user_roles_roles.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: client id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- Name: component id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component ALTER COLUMN id SET DEFAULT nextval('public.component_id_seq'::regclass);


--
-- Name: component_user_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component_user_ref ALTER COLUMN id SET DEFAULT nextval('public.component_user_ref_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: es_index id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index ALTER COLUMN id SET DEFAULT nextval('public.es_index_id_seq'::regclass);


--
-- Name: es_index_project_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index_project_ref ALTER COLUMN id SET DEFAULT nextval('public.es_index_project_ref_id_seq'::regclass);


--
-- Name: project id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project ALTER COLUMN id SET DEFAULT nextval('public.project_id_seq'::regclass);


--
-- Name: project_component_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_component_ref ALTER COLUMN id SET DEFAULT nextval('public.project_component_ref_id_seq'::regclass);


--
-- Name: project_role_project_user_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_role_project_user_ref ALTER COLUMN id SET DEFAULT nextval('public.project_role_project_user_ref_id_seq'::regclass);


--
-- Name: project_roles id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_roles ALTER COLUMN id SET DEFAULT nextval('public.project_roles_id_seq'::regclass);


--
-- Name: project_user id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user ALTER COLUMN id SET DEFAULT nextval('public.project_user_id_seq'::regclass);


--
-- Name: project_user_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user_ref ALTER COLUMN id SET DEFAULT nextval('public.project_user_ref_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- Name: salt id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.salt ALTER COLUMN id SET DEFAULT nextval('public.salt_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: user_roles id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);


--
-- Name: user_roles_roles id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_roles_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can view permission	1	view_permission
5	Can add group	2	add_group
6	Can change group	2	change_group
7	Can delete group	2	delete_group
8	Can view group	2	view_group
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Token	6	add_token
22	Can change Token	6	change_token
23	Can delete Token	6	delete_token
24	Can view Token	6	view_token
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add user_role	8	add_user_role
30	Can change user_role	8	change_user_role
31	Can delete user_role	8	delete_user_role
32	Can view user_role	8	view_user_role
33	Can add role	9	add_role
34	Can change role	9	change_role
35	Can delete role	9	delete_role
36	Can view role	9	view_role
37	Can add component	10	add_component
38	Can change component	10	change_component
39	Can delete component	10	delete_component
40	Can view component	10	view_component
41	Can add client	11	add_client
42	Can change client	11	change_client
43	Can delete client	11	delete_client
44	Can view client	11	view_client
45	Can add project	12	add_project
46	Can change project	12	change_project
47	Can delete project	12	delete_project
48	Can view project	12	view_project
49	Can add project_ component_ ref	13	add_project_component_ref
50	Can change project_ component_ ref	13	change_project_component_ref
51	Can delete project_ component_ ref	13	delete_project_component_ref
52	Can view project_ component_ ref	13	view_project_component_ref
53	Can add e s_index	14	add_es_index
54	Can change e s_index	14	change_es_index
55	Can delete e s_index	14	delete_es_index
56	Can view e s_index	14	view_es_index
57	Can add e s_index_ project_ ref	15	add_es_index_project_ref
58	Can change e s_index_ project_ ref	15	change_es_index_project_ref
59	Can delete e s_index_ project_ ref	15	delete_es_index_project_ref
60	Can view e s_index_ project_ ref	15	view_es_index_project_ref
61	Can add user	16	add_user
62	Can change user	16	change_user
63	Can delete user	16	delete_user
64	Can view user	16	view_user
65	Can add project_ user_ ref	17	add_project_user_ref
66	Can change project_ user_ ref	17	change_project_user_ref
67	Can delete project_ user_ ref	17	delete_project_user_ref
68	Can view project_ user_ ref	17	view_project_user_ref
69	Can add component_ user_ ref	18	add_component_user_ref
70	Can change component_ user_ ref	18	change_component_user_ref
71	Can delete component_ user_ ref	18	delete_component_user_ref
72	Can view component_ user_ ref	18	view_component_user_ref
73	Can add tokens	19	add_tokens
74	Can change tokens	19	change_tokens
75	Can delete tokens	19	delete_tokens
76	Can view tokens	19	view_tokens
77	Can add salt	20	add_salt
78	Can change salt	20	change_salt
79	Can delete salt	20	delete_salt
80	Can view salt	20	view_salt
81	Can add project_roles	21	add_project_roles
82	Can change project_roles	21	change_project_roles
83	Can delete project_roles	21	delete_project_roles
84	Can view project_roles	21	view_project_roles
85	Can add project_roles_project_users_ref	22	add_project_roles_project_users_ref
86	Can change project_roles_project_users_ref	22	change_project_roles_project_users_ref
87	Can delete project_roles_project_users_ref	22	delete_project_roles_project_users_ref
88	Can view project_roles_project_users_ref	22	view_project_roles_project_users_ref
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.client (id, name, "serialID", active, deleted, created_at, updated_at, email, mobile, phone, sec_mobile, website) FROM stdin;
1	bigmart	2d385906ab0642118337bd4c2f433101	t	f	1598442961	1598442961	test@test.com	0	0	0	www.test.com
2	yeti	644361fdfe514881a04181b64b5df84d	t	f	1598610674	1598610674	test@test.com	0	0	0	www.test.com
3	unplug	1c18ee09de124812a4b391acd3a00edd	t	f	1598610680	1598610680	test@test.com	0	0	0	www.test.com
4	merokinmel	d93eee9a84c649a0ac6100c1681d05b8	t	f	1598610686	1598610686	test@test.com	0	0	0	www.test.com
5	espo	d910f56ab9e040ea8fe0f2c19718e7b1	t	f	1598610696	1598610696	test@test.com	0	0	0	www.test.com
6	oa	fe430ed1f0274c0c8b6dda51b2bc636c	t	f	1598610702	1598610702	test@test.com	0	0	0	www.test.com
7	ekbana	96c9fa1369b243498b4217c16c470827	t	f	1598931359	1598931359	test@test.com	0	0	0	www.test.com
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.component (id, name, "serialID", active, deleted, created_at, updated_at) FROM stdin;
1	api	603f60ddcb584b219d23a3fd3b4ba064	t	f	1598442953	1598442953
2	log	773a0d432617490ab68b65db1609139c	t	f	1598610753	1598610753
3	kafka connectors	a37600b145c048b388d7596c8f850c58	t	f	1598610786	1598610786
4	service metrics	e4738a99daab42968aff16e632d9fc06	t	f	1598931386	1598931386
5	visualization	91256c4056d345218902321424466481	t	f	1598934100	1598934100
\.


--
-- Data for Name: component_user_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.component_user_ref (id, component_id, user_id) FROM stdin;
6	3	6
9	2	3
27	2	17
28	2	4
31	1	1
34	4	15
35	3	15
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	sessions	session
6	authtoken	token
7	account	user
8	account	user_role
9	roles	role
10	components	component
11	clients	client
12	projects	project
13	projects	project_component_ref
14	es_index	es_index
15	es_index	es_index_project_ref
16	project_user	user
17	project_user	project_user_ref
18	project_user	component_user_ref
19	tokens	tokens
20	tokens	salt
21	project_roles	project_roles
22	project_roles	project_roles_project_users_ref
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	roles	0001_initial	2020-08-26 10:42:07.901432+00
2	account	0001_initial	2020-08-26 10:42:07.947552+00
3	account	0002_auto_20200818_1653	2020-08-26 10:42:07.989834+00
4	account	0003_auto_20200818_1751	2020-08-26 10:42:08.000115+00
5	account	0004_auto_20200818_1755	2020-08-26 10:42:08.009279+00
6	account	0005_auto_20200818_1800	2020-08-26 10:42:08.017404+00
7	account	0006_auto_20200818_1805	2020-08-26 10:42:08.030618+00
8	account	0007_auto_20200818_1806	2020-08-26 10:42:08.051158+00
9	account	0008_auto_20200818_1806	2020-08-26 10:42:08.060289+00
10	account	0009_auto_20200818_1812	2020-08-26 10:42:08.067777+00
11	account	0010_auto_20200818_1818	2020-08-26 10:42:08.074403+00
12	contenttypes	0001_initial	2020-08-26 10:42:08.08464+00
13	contenttypes	0002_remove_content_type_name	2020-08-26 10:42:08.096677+00
14	auth	0001_initial	2020-08-26 10:42:08.156807+00
15	auth	0002_alter_permission_name_max_length	2020-08-26 10:42:08.236958+00
16	auth	0003_alter_user_email_max_length	2020-08-26 10:42:08.247073+00
17	auth	0004_alter_user_username_opts	2020-08-26 10:42:08.254728+00
18	auth	0005_alter_user_last_login_null	2020-08-26 10:42:08.262608+00
19	auth	0006_require_contenttypes_0002	2020-08-26 10:42:08.264805+00
20	auth	0007_alter_validators_add_error_messages	2020-08-26 10:42:08.271707+00
21	auth	0008_alter_user_username_max_length	2020-08-26 10:42:08.284354+00
22	auth	0009_alter_user_last_name_max_length	2020-08-26 10:42:08.291265+00
23	auth	0010_alter_group_name_max_length	2020-08-26 10:42:08.298782+00
24	auth	0011_update_proxy_permissions	2020-08-26 10:42:08.307111+00
25	authtoken	0001_initial	2020-08-26 10:42:08.32001+00
26	authtoken	0002_auto_20160226_1747	2020-08-26 10:42:08.369508+00
27	clients	0001_initial	2020-08-26 10:42:08.385582+00
28	clients	0002_auto_20200818_1653	2020-08-26 10:42:08.407596+00
29	clients	0003_auto_20200818_1751	2020-08-26 10:42:08.419433+00
30	clients	0004_auto_20200818_1755	2020-08-26 10:42:08.429196+00
31	clients	0005_auto_20200818_1800	2020-08-26 10:42:08.445889+00
32	clients	0006_auto_20200818_1805	2020-08-26 10:42:08.453109+00
33	clients	0007_auto_20200818_1806	2020-08-26 10:42:08.4593+00
34	clients	0008_auto_20200818_1806	2020-08-26 10:42:08.46617+00
35	clients	0009_auto_20200818_1812	2020-08-26 10:42:08.476316+00
36	clients	0010_auto_20200818_1818	2020-08-26 10:42:08.483036+00
37	clients	0011_auto_20200825_0425	2020-08-26 10:42:08.490181+00
38	clients	0012_auto_20200825_0438	2020-08-26 10:42:08.497347+00
39	clients	0013_auto_20200825_0505	2020-08-26 10:42:08.504729+00
40	clients	0014_auto_20200825_0506	2020-08-26 10:42:08.511719+00
41	components	0001_initial	2020-08-26 10:42:08.528548+00
42	components	0002_auto_20200818_1653	2020-08-26 10:42:08.547026+00
43	components	0003_auto_20200818_1751	2020-08-26 10:42:08.560119+00
44	components	0004_auto_20200818_1755	2020-08-26 10:42:08.569597+00
45	components	0005_auto_20200818_1800	2020-08-26 10:42:08.577049+00
46	projects	0001_initial	2020-08-26 10:42:08.601781+00
47	es_index	0001_initial	2020-08-26 10:42:08.658847+00
48	es_index	0002_auto_20200818_1653	2020-08-26 10:42:08.694034+00
49	es_index	0003_auto_20200818_1751	2020-08-26 10:42:08.714254+00
50	es_index	0004_auto_20200818_1755	2020-08-26 10:42:08.733567+00
51	es_index	0005_auto_20200818_1800	2020-08-26 10:42:08.746143+00
52	es_index	0006_auto_20200818_1805	2020-08-26 10:42:08.751914+00
53	es_index	0007_auto_20200818_1806	2020-08-26 10:42:08.757825+00
54	es_index	0008_auto_20200818_1806	2020-08-26 10:42:08.764548+00
55	es_index	0009_auto_20200818_1812	2020-08-26 10:42:08.775223+00
56	es_index	0010_auto_20200818_1818	2020-08-26 10:42:08.785698+00
57	es_index	0011_auto_20200825_0425	2020-08-26 10:42:08.794561+00
58	es_index	0012_auto_20200825_0438	2020-08-26 10:42:08.802985+00
59	es_index	0013_auto_20200825_0505	2020-08-26 10:42:08.814487+00
60	es_index	0014_auto_20200825_0506	2020-08-26 10:42:08.823544+00
61	project_user	0001_initial	2020-08-26 10:42:08.862792+00
62	project_user	0002_auto_20200818_1653	2020-08-26 10:42:08.89875+00
63	project_user	0003_auto_20200818_1751	2020-08-26 10:42:08.912078+00
64	project_user	0004_auto_20200818_1755	2020-08-26 10:42:08.923277+00
65	project_user	0005_auto_20200818_1800	2020-08-26 10:42:08.934118+00
66	project_user	0006_auto_20200818_1805	2020-08-26 10:42:08.939605+00
67	project_user	0007_auto_20200818_1806	2020-08-26 10:42:08.94488+00
68	project_user	0008_auto_20200818_1806	2020-08-26 10:42:08.951116+00
69	project_user	0009_auto_20200818_1812	2020-08-26 10:42:08.956857+00
70	project_user	0010_auto_20200818_1818	2020-08-26 10:42:08.962296+00
71	project_user	0011_auto_20200825_0425	2020-08-26 10:42:08.967758+00
72	project_user	0012_auto_20200825_0438	2020-08-26 10:42:08.972991+00
73	project_roles	0001_initial	2020-08-26 10:42:08.991334+00
74	project_roles	0002_auto_20200825_0505	2020-08-26 10:42:09.010131+00
75	project_roles	0003_auto_20200825_0506	2020-08-26 10:42:09.020777+00
76	project_user	0013_auto_20200825_0505	2020-08-26 10:42:09.027102+00
77	project_user	0014_auto_20200825_0506	2020-08-26 10:42:09.033363+00
78	projects	0002_auto_20200818_1653	2020-08-26 10:42:09.061224+00
79	projects	0003_auto_20200818_1751	2020-08-26 10:42:09.076002+00
80	projects	0004_auto_20200818_1755	2020-08-26 10:42:09.089578+00
81	projects	0005_auto_20200818_1800	2020-08-26 10:42:09.104491+00
82	projects	0006_auto_20200818_1805	2020-08-26 10:42:09.110442+00
83	projects	0007_auto_20200818_1806	2020-08-26 10:42:09.116594+00
84	projects	0008_auto_20200818_1806	2020-08-26 10:42:09.126514+00
85	projects	0009_auto_20200818_1812	2020-08-26 10:42:09.136427+00
86	projects	0010_auto_20200818_1818	2020-08-26 10:42:09.142751+00
87	projects	0011_auto_20200825_0425	2020-08-26 10:42:09.149174+00
88	projects	0012_auto_20200825_0438	2020-08-26 10:42:09.165554+00
89	projects	0013_auto_20200825_0505	2020-08-26 10:42:09.176545+00
90	projects	0014_auto_20200825_0506	2020-08-26 10:42:09.185174+00
91	roles	0002_auto_20200818_1653	2020-08-26 10:42:09.203151+00
92	roles	0003_auto_20200818_1751	2020-08-26 10:42:09.239079+00
93	roles	0004_auto_20200818_1755	2020-08-26 10:42:09.246667+00
94	roles	0005_auto_20200818_1800	2020-08-26 10:42:09.254022+00
95	roles	0006_auto_20200818_1805	2020-08-26 10:42:09.261051+00
96	roles	0007_auto_20200818_1806	2020-08-26 10:42:09.268299+00
97	roles	0008_auto_20200818_1806	2020-08-26 10:42:09.275471+00
98	roles	0009_auto_20200818_1812	2020-08-26 10:42:09.282532+00
99	roles	0010_auto_20200818_1818	2020-08-26 10:42:09.289515+00
100	roles	0011_auto_20200825_0425	2020-08-26 10:42:09.296531+00
101	roles	0012_auto_20200825_0438	2020-08-26 10:42:09.303684+00
102	roles	0013_auto_20200825_0505	2020-08-26 10:42:09.31227+00
103	roles	0014_auto_20200825_0506	2020-08-26 10:42:09.333214+00
104	sessions	0001_initial	2020-08-26 10:42:09.346997+00
105	tokens	0001_initial	2020-08-26 10:42:09.415281+00
106	tokens	0002_auto_20200818_1653	2020-08-26 10:42:09.475347+00
107	tokens	0003_auto_20200818_1751	2020-08-26 10:42:09.50341+00
108	tokens	0004_auto_20200818_1755	2020-08-26 10:42:09.528759+00
109	tokens	0005_auto_20200818_1800	2020-08-26 10:42:09.554646+00
110	tokens	0006_auto_20200818_1805	2020-08-26 10:42:09.570484+00
111	tokens	0007_auto_20200818_1806	2020-08-26 10:42:09.586957+00
112	tokens	0008_auto_20200818_1806	2020-08-26 10:42:09.605299+00
113	tokens	0009_auto_20200818_1812	2020-08-26 10:42:09.621026+00
114	tokens	0010_auto_20200818_1818	2020-08-26 10:42:09.637635+00
115	tokens	0011_auto_20200825_0425	2020-08-26 10:42:09.646507+00
116	tokens	0012_auto_20200825_0438	2020-08-26 10:42:09.655537+00
117	tokens	0013_auto_20200825_0505	2020-08-26 10:42:09.665495+00
118	tokens	0014_auto_20200825_0506	2020-08-26 10:42:09.67392+00
119	clients	0015_auto_20200911_0634	2020-09-11 08:32:44.980631+00
120	clients	0016_auto_20200911_0709	2020-09-11 08:32:45.102214+00
121	clients	0017_auto_20200911_0713	2020-09-11 08:32:45.118463+00
122	es_index	0015_auto_20200911_0634	2020-09-11 08:32:45.126739+00
123	es_index	0016_auto_20200911_0709	2020-09-11 08:32:45.131842+00
124	es_index	0017_auto_20200911_0713	2020-09-11 08:32:45.13671+00
125	project_user	0015_auto_20200911_0634	2020-09-11 08:32:45.143916+00
126	project_user	0016_auto_20200911_0709	2020-09-11 08:32:45.150978+00
127	project_user	0017_auto_20200911_0713	2020-09-11 08:32:45.157853+00
128	projects	0015_auto_20200911_0634	2020-09-11 08:32:45.164145+00
129	projects	0016_auto_20200911_0709	2020-09-11 08:32:45.170372+00
130	projects	0017_auto_20200911_0713	2020-09-11 08:32:45.176221+00
131	roles	0015_auto_20200911_0634	2020-09-11 08:32:45.184104+00
132	roles	0016_auto_20200911_0709	2020-09-11 08:32:45.191983+00
133	roles	0017_auto_20200911_0713	2020-09-11 08:32:45.199672+00
134	tokens	0015_auto_20200911_0634	2020-09-11 08:32:45.206776+00
135	tokens	0016_auto_20200911_0709	2020-09-11 08:32:45.221011+00
136	tokens	0017_auto_20200911_0713	2020-09-11 08:32:45.23016+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
72dwq6144jvrcqjhvzsedks3xu240doe	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-09 10:45:13.357681+00
shsg8feuoskehar6chq41eozx8uvk5qf	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-09 11:25:39.436026+00
42qz9mx5inlzz64xz0puj39reclwhx6j	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-09 20:04:45.574848+00
6guporrhn9qnwu4onxm3r3wqon6gg11r	NmRmOWZiNDhjZmFlZjhiNTVhYTIxOGFhNDBmNmM4MTA4NzQ4MDY5YTp7fQ==	2020-09-11 12:15:31.477401+00
etlocwagwy3n2vuyn539rqj9nj2b56je	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 04:29:04.192345+00
vxk2gszk6c0u0jf5ybk5yc4mzdl1j9r9	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 11:21:32.562458+00
12vu9m4vzxcm2rgwluvj442io9l7wqh4	NmRmOWZiNDhjZmFlZjhiNTVhYTIxOGFhNDBmNmM4MTA4NzQ4MDY5YTp7fQ==	2020-09-14 11:25:19.391795+00
9dkbl20zk51oj7krrfk8u9c50vanuhzj	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 11:25:29.274056+00
t7hmdl3yg4zkzbcnsxkvfwhqladpysrb	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 11:28:38.735922+00
wx6hlbmlictdd8j8466obenm68w6q3tr	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 11:31:36.465373+00
ge8ouyvifqqyqeu9gpt9whi53el7dhh0	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-18 03:09:29.824024+00
t2gpy2ntywxhzw93afp13cb1pwyqgzi2	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-24 03:37:21.265053+00
bzbrw8n1nxnhypn2etw4ygugunbc6dfk	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-29 06:20:34.517509+00
uz5j95bjur0a6mln41smohbmdautjyvh	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-30 16:19:43.742412+00
kat2yfi4shfqyeronns11skoqts7t0wg	NmRmOWZiNDhjZmFlZjhiNTVhYTIxOGFhNDBmNmM4MTA4NzQ4MDY5YTp7fQ==	2020-10-01 05:45:30.30325+00
ft96z9vk4bscu5qhhiq7sel7hhrcsxca	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-02 04:32:21.87482+00
snnlo5g91szsfywtikidh2sxzkciv31b	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-06 07:27:28.287711+00
33btdvkzf8rsbfr28nj19kkdqggbz9k7	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-13 06:47:31.211347+00
442odv58wla8l0mdia4wikyvm1pvodua	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-15 04:07:48.019814+00
gpjaakea468pmdb7v5ybhu3p0njunywg	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-16 05:54:30.311358+00
82ldzcukobwpk5z4lfczj1kw3mzmrmim	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-16 08:26:40.559661+00
\.


--
-- Data for Name: es_index; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.es_index (id, name, "serialID", es_server, active, created_at, updated_at) FROM stdin;
1	rp_analysis	8e107c9449394e29b99c15da126a4cdb	dev	t	1598934495	1598934495
4	rp_analytics_v2	6f98c4ff542946b2976ba23553189087	dev	t	1601018614	1601018614
2	eklogstash-bigmart	b30b68a2f94047dd87f0da403c39700b	prod	t	1601360414	1601360414
5	rp_platform	6f98c4ff542946b2976ba23553189087	dev	t	1601627325	1601627325
6	rp_bannertype	6f98c4ff542946b2976ba23553189087	dev	t	1601631978	1601631978
7	rp_advertisement	6f98c4ff542946b2976ba23553189087	dev	t	1601632020	1601632020
3	rp_analytics	6f98c4ff542946b2976ba23553189087	dev	t	1601637395	1601637395
\.


--
-- Data for Name: es_index_project_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.es_index_project_ref (id, index_id, project_id) FROM stdin;
1	1	9
7	4	9
8	2	9
9	5	2
10	6	2
11	7	2
12	3	2
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project (id, name, active, "serialID", deleted, created_at, updated_at, client_id) FROM stdin;
1	bigmart_sales	t	f3f035eb-853b-4e24-8c54-c0f3e2977ae4	f	1598442969	1598442969	1
3	Yeti	t	8193dae4-e9a8-4e68-86b5-e39b4ca08ef1	f	1598610889	1598874536	2
7	MeroKinmel	t	accf8724-76b1-45a4-9906-a15cd37d1466	f	1598610952	1598874668	4
5	OA	t	102925aa-a95c-4b4b-830d-a5ba4a58f4f7	f	1598610920	1598874673	6
6	Unplug	t	745e7b5a-6748-42b7-997f-60b426871481	f	1598610943	1598874677	3
8	Service Metrics	t	294524fe-1647-4d01-8eec-73e9bec2126e	f	1598931434	1598931630	7
9	visualization	t	3193f111-0dc2-461d-8df6-5d5536184353	f	1598934133	1598934133	7
2	Bigmart	t	32d49647-37fb-493e-b392-32fb1595ae2a	f	1598610824	1599125668	1
4	ESPO	t	aa8ac74b-a94f-4ec0-a1d5-4c32ae587ef8	f	1598610905	1599667205	5
\.


--
-- Data for Name: project_component_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_component_ref (id, component_id, project_id) FROM stdin;
1	1	1
26	3	3
27	2	3
32	3	7
33	2	7
34	3	5
35	2	5
36	3	6
37	2	6
39	4	8
40	5	9
44	3	2
45	2	2
46	3	4
47	2	4
48	1	4
\.


--
-- Data for Name: project_role_project_user_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_role_project_user_ref (id, role_id, user_id) FROM stdin;
3	2	2
6	3	6
7	3	3
\.


--
-- Data for Name: project_roles; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_roles (id, role, "serialID", created_at, updated_at) FROM stdin;
2	QA	e0863266dd2c4b91b32f23b1aad973ea	1598472358	1598472358
3	Ekbana	1834bb3c082844bbb91761ce076d9995	1598616010	1598616010
\.


--
-- Data for Name: project_user; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_user (id, fname, email, password, "serialID", active, admin, superadmin, created_at, updated_at) FROM stdin;
2	user_qa	user_qa@ekbana.info	048d7c564dd9d4fb53336eae5d8f8b51	1588e642b1444754b6422cb1fe248c99	t	f	f	1598611013	1598611013
13	faraz	faraz.khan@ekbana.info	193d759d8ecdb678b444137143f74eb0	fbe8c9395e3e47f2bb74bffbd402fd3d	t	f	f	1598932089	1600274361
5	gaurav	gaurav@ekbana.info	757bd4cb20dbada607940ac251b85361	c46286414bec4bc1ad3fb9fb7fe34f98	t	f	f	1598873018	1598873018
7	unplug_revamp	unplug@ekbana.info	a391edf548ed24a8bd84fe30fa4383d4	987df0c4d506453585c4cf1e65e6c0c8	t	f	f	1598873739	1598873739
8	arjun	arjun@ekbana.info	08f4e2dd21594bce47e88311f60ff0e2	b0a8b1116ee14d07929fa0931ba66b2c	t	f	f	1598873773	1598873773
9	prajwal	prajwal@ekbana.info	40a09dd2064fe7f305890f56872ff574	69e3b041737448e98999bcb497e8c1f9	t	f	f	1598873807	1598873807
10	pratik	pratik@ekbana.info	1b3bcf0bba67158798755297e616eb75	702f455d57b74234a876adbb2cb4b9db	t	f	f	1598874050	1598874050
12	suman	suman@ekbana.info	9b66d43dbee148118b274ab3507d0163	6654dcbbed484979ae621013e0609b82	t	f	f	1598874544	1598874544
16	Tchiring	tchiring@ekbana.info	4f8a8e5f76c977d6f5ba18916f8c08ac	6468ba30bac6457bbe3502d428e78ae0	t	f	f	1600321107	1600321107
14	rikee	r@m.com	132600defc55334ef221380b66d27dc4	2a4686322ec547269d63f515b17cb194	t	f	f	1598934221	1600682581
3	aashir	aashir@ekbana.info	af507b5e2b2d34ee14d7b04d6a9814ee	0e0e9b89425347af93cf7968ab6e910f	t	t	f	1598616058	1599026586
11	jeeten	jeeten@ekbana.info	0c7e2406e1f738f25ddee7c5dfb9082a	c7831fdb6bae4697a4effba2d7454324	t	f	f	1598874079	1599458819
17	shreeya	shreeya@ekbana.info	d56770f0f1e9ed6bd9f9b8e7a20cfdd8	93936aeafd3a4a04819a1f25b218c7a3	t	t	f	1600925914	1600925914
4	bibek	bibek.chaudhary@ekbana.info	c1c7806dd913ac472d0467366d206c5e	979bf523dc0f4c7791f57bc597a15eb9	t	t	f	1598872966	1601359270
1	saurab	d.saurab1@gmail.com	08b570474935408d65644343cff5c80c	c147f1d6d61a4c93ae32b63de7014c8b	t	t	f	1598442995	1601525298
6	salistha	salistha@gmail.com	b876822070efbf8aa7cf9341a8bacbee	9156a7181c384aa997822eb56e081b85	t	t	f	1598873624	1598873624
15	sajita	sajita.pathak@ekbana.info	1bb6cd2e4c85866209b6573524126b43	3525666b979b4abb8852a65b9c961b87	t	t	f	1599709178	1601618616
\.


--
-- Data for Name: project_user_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_user_ref (id, project_id, user_id) FROM stdin;
4	2	2
5	3	2
6	4	2
7	5	2
8	6	2
9	7	2
180	2	17
181	2	4
182	3	4
183	7	4
184	5	4
17	2	5
18	3	5
19	4	5
20	5	5
21	6	5
22	7	5
185	6	4
24	1	6
25	2	6
26	6	7
27	7	8
28	2	9
29	6	9
30	2	10
186	8	4
34	2	12
35	4	12
36	3	12
189	1	1
190	4	1
191	8	1
40	1	3
41	2	3
42	3	3
43	4	3
44	5	3
45	6	3
192	9	1
194	8	15
195	2	15
50	3	11
51	4	11
52	5	11
53	7	11
54	6	11
55	2	11
157	8	13
158	2	13
162	8	16
168	2	14
169	3	14
170	7	14
171	5	14
172	6	14
173	9	14
174	8	14
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.role (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: salt; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.salt (id, salt, created_at, updated_at, user_id) FROM stdin;
2	873ecd448be44be186019bb408abef8c	1598611013	1598611013	2
3	28ba20c8385d4b989a426c3557bc5902	1598616058	1598616058	3
4	fd670338a5294849abe993ca5ad49753	1598872966	1598872966	4
5	a5059c7e270942e3ab99836ebd8d69af	1598873018	1598873018	5
7	dc6e79d09391488e9ce80aa6290d621b	1598873739	1598873739	7
8	f1cc432382c7490c872e9b7b1d75b16e	1598873773	1598873773	8
9	e3a97702b6fb40cb82d0fe42b2e646d2	1598873807	1598873807	9
10	ce622eb53740480da00a696d94ab9c52	1598874050	1598874050	10
11	00bc9dd518c7431c91b582451557221e	1598874079	1598874079	11
12	8fd8fed52e8141b99ac10db4638cc361	1598874544	1598874544	12
13	ffd475af5cab4becbde4f41a3663b6dc	1598932089	1598932089	13
14	472604d27baa4df5a2b8ee7da02ffa9c	1598934221	1598934221	14
15	af572724ecb743469610a81c2311aa73	1599709178	1599709178	15
16	29eb730ce1e04c74bddfa49492af80e1	1600321107	1600321107	16
17	6248683b3b794c908e1b3ef44f4413a3	1600925914	1600925914	17
1	79a8da8ab7a34089b36d31fcd0259434	1598442995	1598442995	1
6	2388b1e76c43421e8a9de8943b833764	1598873625	1598873625	6
\.


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.tokens (id, token, ip, component, created_at, updated_at, user_id) FROM stdin;
142	5bdf63521e83413098a5d90769357020	110.44.123.47	773a0d432617490ab68b65db1609139c	1599450466	1599450466	5
497	ac5906f7f1f74edd918345b83a937a18	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601627200	1601627200	3
499	7423d427cbd14815aff88626e2bf4548	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601628102	1601628102	15
501	3efc46d99e88434fbd18d778e767f5a9	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601630960	1601630960	15
503	2bb58a323b47438f8e84b255e96a5c31	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1601631139	1601631139	1
505	79bb21b5ea304acdaa7a19bafc1145cb	110.44.123.47	773a0d432617490ab68b65db1609139c	1601635643	1601635643	17
507	388d370b78cb489cb50da6d5fd1185bf	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601638513	1601638513	3
509	cccd8029ddf744759c1d1cef1da5cec1	110.44.123.47	91256c4056d345218902321424466481	1601869232	1601869232	14
200	d9b4e77020e6439793383f2e76bdae4a	110.44.123.47	773a0d432617490ab68b65db1609139c	1599706592	1599706592	5
285	588b03b1a20c4fb39c0c27cb5ad88c1a	110.44.123.47	773a0d432617490ab68b65db1609139c	1600154195	1600154195	13
286	9fb081ca5a92472d89ee6de142f03004	110.44.123.47	773a0d432617490ab68b65db1609139c	1600154538	1600154538	4
287	674bf14cb4dd414f9a53e7b0e85b2eb4	110.44.123.47	a37600b145c048b388d7596c8f850c58	1600156044	1600156044	6
515	a6aefb96afd440f78e85e1a74b1d15a9	110.44.123.47	773a0d432617490ab68b65db1609139c	1601901214	1601901214	17
207	864140af2ce34d46992cc9277d2013e9	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1599709484	1599709484	13
208	3e3fd5a4b2464f3c8978f5f439032c3f	110.44.123.47	773a0d432617490ab68b65db1609139c	1599709534	1599709534	5
209	c7513ebdf82f42d0b473948d6005dc6d	110.44.123.47	773a0d432617490ab68b65db1609139c	1599709545	1599709545	5
210	1996d95e36604905899734a0bb9587ac	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1599709551	1599709551	13
168	bb90c6e41bcf48e3942535db95b1cf23	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1599541867	1599541867	1
297	6371c31138694b5bb9e664b95e81d03e	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1600321180	1600321180	16
473	d0e330460f8445ec9f657617152a60af	110.44.123.47	773a0d432617490ab68b65db1609139c	1601611754	1601611754	17
475	a4aa911dcfba4e5a895e227f9ec6f3ad	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601612208	1601612208	6
477	36c0c21a0b57424991a1f352ee47cd19	110.44.123.47	91256c4056d345218902321424466481	1601613863	1601613863	14
479	52d67efe974d4d5a8897de62746e93ff	110.44.123.47	91256c4056d345218902321424466481	1601614803	1601614803	14
481	19add647fb914d67bd035a25758c4390	110.44.123.47	773a0d432617490ab68b65db1609139c	1601617069	1601617069	17
485	3bedc7c6200b4150a0a6ff6a2ad3e5dd	110.44.123.47	773a0d432617490ab68b65db1609139c	1601618232	1601618232	17
487	eb8d0e17e6714ccfa56a41cab1f27aa4	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601618905	1601618905	6
106	b2fdf39ff6f84e19bccf0321663870bf	110.44.123.47	a37600b145c048b388d7596c8f850c58	1599128421	1599128421	6
229	ebf0f6405139424fa39bebc55ab14e8e	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1599727369	1599727369	13
305	8b44f6f120d441faa2338c18032222ab	110.44.123.47	a37600b145c048b388d7596c8f850c58	1600405268	1600405268	6
232	784a7d47e36e48ff8e47c9bccb3603c9	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1599728087	1599728087	13
312	425332556a6042fbb766580781fe54d9	110.44.123.47	a37600b145c048b388d7596c8f850c58	1600670090	1600670090	6
187	a80926b67be4444c9ded0e8322c19663	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1599633268	1599633268	13
125	ecece206f9de4ca5972e960b3ca0bf98	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1599217045	1599217045	1
245	6d90341cac2649e4a37681fc320ad52a	110.44.123.47	773a0d432617490ab68b65db1609139c	1599779492	1599779492	5
427	76379dcc279c4ed79d0a4620171963c0	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601357729	1601357729	6
251	65be8647f5424c8b86b52d98eebac823	110.44.123.47	773a0d432617490ab68b65db1609139c	1599817074	1599817074	13
258	debc8c6553314bdb9c3acd5ab9f635e8	110.44.123.47	773a0d432617490ab68b65db1609139c	1600060989	1600060989	11
259	73b3eaca26cf4174b5e1fd852b95685f	110.44.123.47	773a0d432617490ab68b65db1609139c	1600062311	1600062311	5
264	6e307a8a2be74960a4a31897a29868e3	110.44.123.47	773a0d432617490ab68b65db1609139c	1600076962	1600076962	5
272	871d66a2da8b4080bcabf52a96dd671d	110.44.123.47	773a0d432617490ab68b65db1609139c	1600151006	1600151006	4
360	b48128439a0e462289257e98c16c0a75	110.44.123.47	773a0d432617490ab68b65db1609139c	1600767820	1600767820	13
498	bf6fdf0eae504927a5a945b8d21f30b1	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601628092	1601628092	15
444	c21b79e312074259bb1ab5468bb84dc8	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601381839	1601381839	6
328	7fded623af154c88bddb2f15438355ae	110.44.123.47	773a0d432617490ab68b65db1609139c	1600684519	1600684519	4
500	4324ac9b49764f60b4f197b45ec82f75	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601630445	1601630445	15
502	4c28298b05ca40dd89cec52814df3cd7	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601630981	1601630981	15
376	247f1a827a0c4f4d8dc986b2deb47590	110.44.123.47	773a0d432617490ab68b65db1609139c	1600923388	1600923388	4
506	9e4ea284a5814df58343354b83b5f9aa	110.44.123.47	773a0d432617490ab68b65db1609139c	1601636391	1601636391	17
508	b178f570c78840089b91c3d83f67831d	110.44.123.47	773a0d432617490ab68b65db1609139c	1601855608	1601855608	5
335	b49095eab81143b18f51770ce244805e	110.44.123.47	773a0d432617490ab68b65db1609139c	1600694988	1600694988	5
510	ded5f538508c4476851ceb18131a23ff	110.44.123.47	91256c4056d345218902321424466481	1601869267	1601869267	14
337	ab98d7ac79574858842b096bd8c8d51c	110.44.123.47	773a0d432617490ab68b65db1609139c	1600750957	1600750957	4
512	1bbcaf4acf044965b0a510b6f185ba69	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601875128	1601875128	6
514	370053d314d54b28a988433d72205bd2	110.44.123.47	773a0d432617490ab68b65db1609139c	1601882967	1601882967	17
516	49adffd47b6a44ffbe7a3c336a950371	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1601969544	1601969544	1
518	5d1510c8988c41faae5fd9a83deb3ca5	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1601971023	1601971023	1
520	d64e5b003864424585351be480bebc6e	110.44.123.47	773a0d432617490ab68b65db1609139c	1601983320	1601983320	17
392	bdecd06cb7d84197b9125b0b6e5fbc13	110.44.123.47	773a0d432617490ab68b65db1609139c	1600937048	1600937048	4
462	37ec76c0577c47f9a0f29f5c3913eade	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1601545141	1601545141	1
351	1dd4f3f26a6e416bb243ae46a9109065	110.44.123.47	773a0d432617490ab68b65db1609139c	1600758951	1600758951	14
353	11b5aeceb70141e58ccfa4ec6526f234	110.44.123.47	773a0d432617490ab68b65db1609139c	1600761371	1600761371	4
466	d86286ec616141b495e4b59db6b84606	110.44.123.47	773a0d432617490ab68b65db1609139c	1601550139	1601550139	4
404	94bcf942b87b460e9f83788a6f7d09e4	110.44.123.47	91256c4056d345218902321424466481	1601014704	1601014704	14
408	5ee6217d42b64a00bca7f1029546823c	110.44.123.47	773a0d432617490ab68b65db1609139c	1601172999	1601172999	5
410	25bb2e1ab54a42cb9093263c4d893a3d	110.44.123.47	773a0d432617490ab68b65db1609139c	1601266232	1601266232	10
476	3e517ccc1abc4b349822957f7a7ebdb8	110.44.123.47	91256c4056d345218902321424466481	1601612891	1601612891	14
420	692df910a7174d7ba1fe9fc084acd094	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1601277258	1601277258	1
422	390629dfab4a42539ac1c88beb748322	110.44.123.47	773a0d432617490ab68b65db1609139c	1601281695	1601281695	14
480	90014fbcc7394728b34c76bce4000c93	110.44.123.47	773a0d432617490ab68b65db1609139c	1601616215	1601616215	17
432	4e1a1339e65d4b59ab9fe813057dba7f	110.44.123.47	91256c4056d345218902321424466481	1601362107	1601362107	14
490	33a3fd7480884fb4a96ccb74b218e5d0	110.44.123.47	a37600b145c048b388d7596c8f850c58	1601619150	1601619150	15
492	b4acfadf14914693b0379ff2e4a9fd10	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1601619470	1601619470	1
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public."user" (id, user_name, salt, hashed_password, first_name, last_name, email, is_superuser, is_active, created_at, updated_at) FROM stdin;
28	admin	1a38bdc029084ef9b8280837ab2785ae	0adb5a826b3c380fed40cb8ea2d2c383			admin@gmail.com	t	t	1	1
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.user_roles (id, user_id) FROM stdin;
\.


--
-- Data for Name: user_roles_roles; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.user_roles_roles (id, user_role_id, role_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 88, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.client_id_seq', 7, true);


--
-- Name: component_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.component_id_seq', 5, true);


--
-- Name: component_user_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.component_user_ref_id_seq', 35, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 136, true);


--
-- Name: es_index_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.es_index_id_seq', 8, true);


--
-- Name: es_index_project_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.es_index_project_ref_id_seq', 12, true);


--
-- Name: project_component_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_component_ref_id_seq', 48, true);


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_id_seq', 9, true);


--
-- Name: project_role_project_user_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_role_project_user_ref_id_seq', 9, true);


--
-- Name: project_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_roles_id_seq', 3, true);


--
-- Name: project_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_user_id_seq', 17, true);


--
-- Name: project_user_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_user_ref_id_seq', 195, true);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.role_id_seq', 1, false);


--
-- Name: salt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.salt_id_seq', 17, true);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.tokens_id_seq', 520, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.user_id_seq', 28, true);


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.user_roles_id_seq', 1, false);


--
-- Name: user_roles_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.user_roles_roles_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: client client_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_name_key UNIQUE (name);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- Name: component component_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT component_name_key UNIQUE (name);


--
-- Name: component component_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (id);


--
-- Name: component_user_ref component_user_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component_user_ref
    ADD CONSTRAINT component_user_ref_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: es_index es_index_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index
    ADD CONSTRAINT es_index_name_key UNIQUE (name);


--
-- Name: es_index es_index_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index
    ADD CONSTRAINT es_index_pkey PRIMARY KEY (id);


--
-- Name: es_index_project_ref es_index_project_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index_project_ref
    ADD CONSTRAINT es_index_project_ref_pkey PRIMARY KEY (id);


--
-- Name: project_component_ref project_component_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_component_ref
    ADD CONSTRAINT project_component_ref_pkey PRIMARY KEY (id);


--
-- Name: project project_name_client_id_ba2d4c32_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_name_client_id_ba2d4c32_uniq UNIQUE (name, client_id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: project_role_project_user_ref project_role_project_user_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_role_project_user_ref
    ADD CONSTRAINT project_role_project_user_ref_pkey PRIMARY KEY (id);


--
-- Name: project_roles project_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_roles
    ADD CONSTRAINT project_roles_pkey PRIMARY KEY (id);


--
-- Name: project_roles project_roles_role_898fb34b_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_roles
    ADD CONSTRAINT project_roles_role_898fb34b_uniq UNIQUE (role);


--
-- Name: project_user project_user_email_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_email_key UNIQUE (email);


--
-- Name: project_user project_user_fname_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_fname_key UNIQUE (fname);


--
-- Name: project_user project_user_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_pkey PRIMARY KEY (id);


--
-- Name: project_user_ref project_user_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user_ref
    ADD CONSTRAINT project_user_ref_pkey PRIMARY KEY (id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: salt salt_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.salt
    ADD CONSTRAINT salt_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: user_roles_roles user_roles_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles
    ADD CONSTRAINT user_roles_roles_pkey PRIMARY KEY (id);


--
-- Name: user_roles_roles user_roles_roles_user_role_id_role_id_9473c55e_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles
    ADD CONSTRAINT user_roles_roles_user_role_id_role_id_9473c55e_uniq UNIQUE (user_role_id, role_id);


--
-- Name: user user_user_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_user_name_key UNIQUE (user_name);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: client_name_f07dd19b_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX client_name_f07dd19b_like ON public.client USING btree (name varchar_pattern_ops);


--
-- Name: component_name_e850d9ab_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX component_name_e850d9ab_like ON public.component USING btree (name varchar_pattern_ops);


--
-- Name: component_user_ref_component_id_a7d04977; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX component_user_ref_component_id_a7d04977 ON public.component_user_ref USING btree (component_id);


--
-- Name: component_user_ref_user_id_e08f4b27; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX component_user_ref_user_id_e08f4b27 ON public.component_user_ref USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: es_index_name_0ace77e3_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX es_index_name_0ace77e3_like ON public.es_index USING btree (name varchar_pattern_ops);


--
-- Name: es_index_project_ref_index_id_e66c19c7; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX es_index_project_ref_index_id_e66c19c7 ON public.es_index_project_ref USING btree (index_id);


--
-- Name: es_index_project_ref_project_id_44adfd65; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX es_index_project_ref_project_id_44adfd65 ON public.es_index_project_ref USING btree (project_id);


--
-- Name: project_client_id_0696401f; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_client_id_0696401f ON public.project USING btree (client_id);


--
-- Name: project_component_ref_component_id_3024bc9f; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_component_ref_component_id_3024bc9f ON public.project_component_ref USING btree (component_id);


--
-- Name: project_component_ref_project_id_9ae0b009; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_component_ref_project_id_9ae0b009 ON public.project_component_ref USING btree (project_id);


--
-- Name: project_role_project_user_ref_role_id_3293ffec; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_role_project_user_ref_role_id_3293ffec ON public.project_role_project_user_ref USING btree (role_id);


--
-- Name: project_role_project_user_ref_user_id_33512ced; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_role_project_user_ref_user_id_33512ced ON public.project_role_project_user_ref USING btree (user_id);


--
-- Name: project_roles_role_898fb34b_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_roles_role_898fb34b_like ON public.project_roles USING btree (role varchar_pattern_ops);


--
-- Name: project_user_email_72825c25_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_user_email_72825c25_like ON public.project_user USING btree (email varchar_pattern_ops);


--
-- Name: project_user_fname_6e51e5ea_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_user_fname_6e51e5ea_like ON public.project_user USING btree (fname varchar_pattern_ops);


--
-- Name: project_user_ref_project_id_56a04787; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_user_ref_project_id_56a04787 ON public.project_user_ref USING btree (project_id);


--
-- Name: project_user_ref_user_id_da04e89a; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_user_ref_user_id_da04e89a ON public.project_user_ref USING btree (user_id);


--
-- Name: salt_user_id_ce8bb742; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX salt_user_id_ce8bb742 ON public.salt USING btree (user_id);


--
-- Name: tokens_user_id_9f60f1af; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX tokens_user_id_9f60f1af ON public.tokens USING btree (user_id);


--
-- Name: user_roles_roles_role_id_b0a8ac64; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX user_roles_roles_role_id_b0a8ac64 ON public.user_roles_roles USING btree (role_id);


--
-- Name: user_roles_roles_user_role_id_ca4c91b9; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX user_roles_roles_user_role_id_ca4c91b9 ON public.user_roles_roles USING btree (user_role_id);


--
-- Name: user_roles_user_id_9d9f8dbb; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX user_roles_user_id_9d9f8dbb ON public.user_roles USING btree (user_id);


--
-- Name: user_user_name_37cba673_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX user_user_name_37cba673_like ON public."user" USING btree (user_name varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: component_user_ref component_user_ref_component_id_a7d04977_fk_component_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component_user_ref
    ADD CONSTRAINT component_user_ref_component_id_a7d04977_fk_component_id FOREIGN KEY (component_id) REFERENCES public.component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: component_user_ref component_user_ref_user_id_e08f4b27_fk_project_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component_user_ref
    ADD CONSTRAINT component_user_ref_user_id_e08f4b27_fk_project_user_id FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: es_index_project_ref es_index_project_ref_index_id_e66c19c7_fk_es_index_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index_project_ref
    ADD CONSTRAINT es_index_project_ref_index_id_e66c19c7_fk_es_index_id FOREIGN KEY (index_id) REFERENCES public.es_index(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: es_index_project_ref es_index_project_ref_project_id_44adfd65_fk_project_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index_project_ref
    ADD CONSTRAINT es_index_project_ref_project_id_44adfd65_fk_project_id FOREIGN KEY (project_id) REFERENCES public.project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project project_client_id_0696401f_fk_client_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_client_id_0696401f_fk_client_id FOREIGN KEY (client_id) REFERENCES public.client(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_component_ref project_component_ref_component_id_3024bc9f_fk_component_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_component_ref
    ADD CONSTRAINT project_component_ref_component_id_3024bc9f_fk_component_id FOREIGN KEY (component_id) REFERENCES public.component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_component_ref project_component_ref_project_id_9ae0b009_fk_project_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_component_ref
    ADD CONSTRAINT project_component_ref_project_id_9ae0b009_fk_project_id FOREIGN KEY (project_id) REFERENCES public.project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_role_project_user_ref project_role_project_role_id_3293ffec_fk_project_r; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_role_project_user_ref
    ADD CONSTRAINT project_role_project_role_id_3293ffec_fk_project_r FOREIGN KEY (role_id) REFERENCES public.project_roles(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_role_project_user_ref project_role_project_user_id_33512ced_fk_project_u; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_role_project_user_ref
    ADD CONSTRAINT project_role_project_user_id_33512ced_fk_project_u FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_user_ref project_user_ref_project_id_56a04787_fk_project_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user_ref
    ADD CONSTRAINT project_user_ref_project_id_56a04787_fk_project_id FOREIGN KEY (project_id) REFERENCES public.project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_user_ref project_user_ref_user_id_da04e89a_fk_project_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user_ref
    ADD CONSTRAINT project_user_ref_user_id_da04e89a_fk_project_user_id FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: salt salt_user_id_ce8bb742_fk_project_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.salt
    ADD CONSTRAINT salt_user_id_ce8bb742_fk_project_user_id FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tokens tokens_user_id_9f60f1af_fk_project_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_9f60f1af_fk_project_user_id FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_roles_roles user_roles_roles_role_id_b0a8ac64_fk_role_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles
    ADD CONSTRAINT user_roles_roles_role_id_b0a8ac64_fk_role_id FOREIGN KEY (role_id) REFERENCES public.role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_roles_roles user_roles_roles_user_role_id_ca4c91b9_fk_user_roles_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles
    ADD CONSTRAINT user_roles_roles_user_role_id_ca4c91b9_fk_user_roles_id FOREIGN KEY (user_role_id) REFERENCES public.user_roles(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_roles user_roles_user_id_9d9f8dbb_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_9d9f8dbb_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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
-- Name: postgres; Type: DATABASE; Schema: -; Owner: faraz
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO faraz;

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: faraz
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

