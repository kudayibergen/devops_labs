--
-- PostgreSQL database dump
--

\restrict A0YlrFhNTe6vcVCwuwe8BZgpbFi26bvcg6lhhscgYgNNho4tjfM8uHUeb6FAFmE

-- Dumped from database version 16.13 (Debian 16.13-1.pgdg13+1)
-- Dumped by pg_dump version 16.13 (Debian 16.13-1.pgdg13+1)

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
-- Name: customers; Type: TABLE; Schema: public; Owner: orders_user
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.customers OWNER TO orders_user;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: orders_user
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO orders_user;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: orders_user
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: orders_user
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    amount numeric(10,2) NOT NULL,
    status text NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.orders OWNER TO orders_user;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: orders_user
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO orders_user;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: orders_user
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: orders_user
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: orders_user
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: orders_user
--

COPY public.customers (id, name) FROM stdin;
1	Temirlan
2	Aruzhan
3	Dias
4	Aigerim
5	Nursultan
6	Madina
7	Alibek
8	Dana
9	Miras
10	Asel
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: orders_user
--

COPY public.orders (id, customer_id, amount, status, created_at) FROM stdin;
1	1	1200.00	new	2026-05-19 14:22:23.634045
2	2	5400.50	paid	2026-05-19 14:22:23.634045
3	3	999.99	shipped	2026-05-19 14:22:23.634045
4	4	250.00	new	2026-05-19 14:22:23.634045
5	5	7800.00	paid	2026-05-19 14:22:23.634045
6	6	430.25	cancelled	2026-05-19 14:22:23.634045
7	7	1500.00	new	2026-05-19 14:22:23.634045
8	8	6200.10	paid	2026-05-19 14:22:23.634045
9	9	310.75	shipped	2026-05-19 14:22:23.634045
10	10	4500.00	new	2026-05-19 14:22:23.634045
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: orders_user
--

SELECT pg_catalog.setval('public.customers_id_seq', 10, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: orders_user
--

SELECT pg_catalog.setval('public.orders_id_seq', 10, true);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: orders_user
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: orders_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: orders fk_customer; Type: FK CONSTRAINT; Schema: public; Owner: orders_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- PostgreSQL database dump complete
--

\unrestrict A0YlrFhNTe6vcVCwuwe8BZgpbFi26bvcg6lhhscgYgNNho4tjfM8uHUeb6FAFmE

