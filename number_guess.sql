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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game (
    game_id integer NOT NULL,
    username character varying(22) NOT NULL,
    score integer NOT NULL
);


ALTER TABLE public.game OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.game.game_id;


--
-- Name: game game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game VALUES (1, 'Ved', 8);
INSERT INTO public.game VALUES (2, 'Ved', 11);
INSERT INTO public.game VALUES (3, 'Ved', 4);
INSERT INTO public.game VALUES (4, 'user_1685967266012', 178);
INSERT INTO public.game VALUES (5, 'user_1685967266012', 984);
INSERT INTO public.game VALUES (6, 'user_1685967266011', 851);
INSERT INTO public.game VALUES (7, 'user_1685967266011', 481);
INSERT INTO public.game VALUES (8, 'user_1685967266012', 628);
INSERT INTO public.game VALUES (9, 'user_1685967266012', 483);
INSERT INTO public.game VALUES (10, 'user_1685967266012', 593);
INSERT INTO public.game VALUES (11, 'user_1685967361695', 416);
INSERT INTO public.game VALUES (12, 'user_1685967361695', 50);
INSERT INTO public.game VALUES (13, 'user_1685967361694', 636);
INSERT INTO public.game VALUES (14, 'user_1685967361694', 86);
INSERT INTO public.game VALUES (15, 'user_1685967361695', 882);
INSERT INTO public.game VALUES (16, 'user_1685967361695', 748);
INSERT INTO public.game VALUES (17, 'user_1685967361695', 949);
INSERT INTO public.game VALUES (18, 'user_1685967453229', 180);
INSERT INTO public.game VALUES (19, 'user_1685967453229', 263);
INSERT INTO public.game VALUES (20, 'user_1685967453228', 446);
INSERT INTO public.game VALUES (21, 'user_1685967453228', 837);
INSERT INTO public.game VALUES (22, 'user_1685967453229', 635);
INSERT INTO public.game VALUES (23, 'user_1685967453229', 462);
INSERT INTO public.game VALUES (24, 'user_1685967453229', 318);
INSERT INTO public.game VALUES (25, 'user_1685967465988', 69);
INSERT INTO public.game VALUES (26, 'user_1685967465988', 415);
INSERT INTO public.game VALUES (27, 'user_1685967465987', 965);
INSERT INTO public.game VALUES (28, 'user_1685967465987', 11);
INSERT INTO public.game VALUES (29, 'user_1685967465988', 950);
INSERT INTO public.game VALUES (30, 'user_1685967465988', 651);
INSERT INTO public.game VALUES (31, 'user_1685967465988', 239);
INSERT INTO public.game VALUES (32, 'user_1685967555433', 140);
INSERT INTO public.game VALUES (33, 'user_1685967555433', 768);
INSERT INTO public.game VALUES (34, 'user_1685967555432', 1);
INSERT INTO public.game VALUES (35, 'user_1685967555432', 975);
INSERT INTO public.game VALUES (36, 'user_1685967555433', 503);
INSERT INTO public.game VALUES (37, 'user_1685967555433', 584);
INSERT INTO public.game VALUES (38, 'user_1685967555433', 854);
INSERT INTO public.game VALUES (39, 'user_1685967635195', 728);
INSERT INTO public.game VALUES (40, 'user_1685967635195', 828);
INSERT INTO public.game VALUES (41, 'user_1685967635194', 134);
INSERT INTO public.game VALUES (42, 'user_1685967635194', 915);
INSERT INTO public.game VALUES (43, 'user_1685967635195', 535);
INSERT INTO public.game VALUES (44, 'user_1685967635195', 573);
INSERT INTO public.game VALUES (45, 'user_1685967635195', 919);
INSERT INTO public.game VALUES (46, 'user_1685967654149', 134);
INSERT INTO public.game VALUES (47, 'user_1685967654149', 407);
INSERT INTO public.game VALUES (48, 'user_1685967654148', 845);
INSERT INTO public.game VALUES (49, 'user_1685967654148', 508);
INSERT INTO public.game VALUES (50, 'user_1685967654149', 455);
INSERT INTO public.game VALUES (51, 'user_1685967654149', 357);
INSERT INTO public.game VALUES (52, 'user_1685967654149', 518);
INSERT INTO public.game VALUES (53, 'user_1685967713638', 16);
INSERT INTO public.game VALUES (54, 'user_1685967713638', 789);
INSERT INTO public.game VALUES (55, 'user_1685967713637', 455);
INSERT INTO public.game VALUES (56, 'user_1685967713637', 77);
INSERT INTO public.game VALUES (57, 'user_1685967713638', 418);
INSERT INTO public.game VALUES (58, 'user_1685967713638', 371);
INSERT INTO public.game VALUES (59, 'user_1685967713638', 404);
INSERT INTO public.game VALUES (60, 'user_1685967813961', 663);
INSERT INTO public.game VALUES (61, 'user_1685967813961', 593);
INSERT INTO public.game VALUES (62, 'user_1685967813960', 363);
INSERT INTO public.game VALUES (63, 'user_1685967813960', 822);
INSERT INTO public.game VALUES (64, 'user_1685967813961', 933);
INSERT INTO public.game VALUES (65, 'user_1685967813961', 18);
INSERT INTO public.game VALUES (66, 'user_1685967813961', 816);
INSERT INTO public.game VALUES (67, 'user_1685967948621', 623);
INSERT INTO public.game VALUES (68, 'user_1685967948621', 794);
INSERT INTO public.game VALUES (69, 'user_1685967948620', 960);
INSERT INTO public.game VALUES (70, 'user_1685967948620', 455);
INSERT INTO public.game VALUES (71, 'user_1685967948621', 59);
INSERT INTO public.game VALUES (72, 'user_1685967948621', 371);
INSERT INTO public.game VALUES (73, 'user_1685967948621', 33);
INSERT INTO public.game VALUES (74, 'user_1685968417224', 516);
INSERT INTO public.game VALUES (75, 'user_1685968417224', 115);
INSERT INTO public.game VALUES (76, 'user_1685968417223', 246);
INSERT INTO public.game VALUES (77, 'user_1685968417223', 160);
INSERT INTO public.game VALUES (78, 'user_1685968417224', 595);
INSERT INTO public.game VALUES (79, 'user_1685968417224', 26);
INSERT INTO public.game VALUES (80, 'user_1685968417224', 414);
INSERT INTO public.game VALUES (107, 'user_1686025229402', 821);
INSERT INTO public.game VALUES (108, 'user_1686025229402', 87);
INSERT INTO public.game VALUES (109, 'user_1686025229401', 122);
INSERT INTO public.game VALUES (110, 'user_1686025229401', 970);
INSERT INTO public.game VALUES (111, 'user_1686025229402', 582);
INSERT INTO public.game VALUES (112, 'user_1686025229402', 740);
INSERT INTO public.game VALUES (113, 'user_1686025229402', 94);
INSERT INTO public.game VALUES (114, 'user_1686026033541', 775);
INSERT INTO public.game VALUES (115, 'user_1686026033541', 913);
INSERT INTO public.game VALUES (116, 'user_1686026033540', 809);
INSERT INTO public.game VALUES (117, 'user_1686026033540', 451);
INSERT INTO public.game VALUES (118, 'user_1686026033541', 715);
INSERT INTO public.game VALUES (119, 'user_1686026033541', 822);
INSERT INTO public.game VALUES (120, 'user_1686026033541', 839);
INSERT INTO public.game VALUES (121, 'user_1686026043743', 52);
INSERT INTO public.game VALUES (122, 'user_1686026043743', 162);
INSERT INTO public.game VALUES (123, 'user_1686026043742', 11);
INSERT INTO public.game VALUES (124, 'user_1686026043742', 700);
INSERT INTO public.game VALUES (125, 'user_1686026043743', 130);
INSERT INTO public.game VALUES (126, 'user_1686026043743', 423);
INSERT INTO public.game VALUES (127, 'user_1686026043743', 446);
INSERT INTO public.game VALUES (128, 'user_1686026048161', 800);
INSERT INTO public.game VALUES (129, 'user_1686026048161', 771);
INSERT INTO public.game VALUES (130, 'user_1686026048160', 943);
INSERT INTO public.game VALUES (131, 'user_1686026048160', 498);
INSERT INTO public.game VALUES (132, 'user_1686026048161', 455);
INSERT INTO public.game VALUES (133, 'user_1686026048161', 683);
INSERT INTO public.game VALUES (134, 'user_1686026048161', 719);
INSERT INTO public.game VALUES (135, 'user_1686026058916', 87);
INSERT INTO public.game VALUES (136, 'user_1686026058916', 540);
INSERT INTO public.game VALUES (137, 'user_1686026058915', 620);
INSERT INTO public.game VALUES (138, 'user_1686026058915', 8);
INSERT INTO public.game VALUES (139, 'user_1686026058916', 219);
INSERT INTO public.game VALUES (140, 'user_1686026058916', 937);
INSERT INTO public.game VALUES (141, 'user_1686026058916', 475);
INSERT INTO public.game VALUES (142, 'user_1686026149218', 1000);
INSERT INTO public.game VALUES (143, 'user_1686026149218', 185);
INSERT INTO public.game VALUES (144, 'user_1686026149217', 326);
INSERT INTO public.game VALUES (145, 'user_1686026149217', 872);
INSERT INTO public.game VALUES (146, 'user_1686026149218', 27);
INSERT INTO public.game VALUES (147, 'user_1686026149218', 128);
INSERT INTO public.game VALUES (148, 'user_1686026149218', 218);
INSERT INTO public.game VALUES (149, 'user_1686026157096', 80);
INSERT INTO public.game VALUES (150, 'user_1686026157096', 654);
INSERT INTO public.game VALUES (151, 'user_1686026157095', 524);
INSERT INTO public.game VALUES (152, 'user_1686026157095', 643);
INSERT INTO public.game VALUES (153, 'user_1686026157096', 15);
INSERT INTO public.game VALUES (154, 'user_1686026157096', 770);
INSERT INTO public.game VALUES (155, 'user_1686026157096', 825);
INSERT INTO public.game VALUES (156, 'user_1686026174106', 421);
INSERT INTO public.game VALUES (157, 'user_1686026174106', 765);
INSERT INTO public.game VALUES (158, 'user_1686026174105', 751);
INSERT INTO public.game VALUES (159, 'user_1686026174105', 634);
INSERT INTO public.game VALUES (160, 'user_1686026174106', 225);
INSERT INTO public.game VALUES (161, 'user_1686026174106', 910);
INSERT INTO public.game VALUES (162, 'user_1686026174106', 673);
INSERT INTO public.game VALUES (163, 'user_1686026223706', 526);
INSERT INTO public.game VALUES (164, 'user_1686026223706', 193);
INSERT INTO public.game VALUES (165, 'user_1686026223705', 924);
INSERT INTO public.game VALUES (166, 'user_1686026223705', 650);
INSERT INTO public.game VALUES (167, 'user_1686026223706', 982);
INSERT INTO public.game VALUES (168, 'user_1686026223706', 251);
INSERT INTO public.game VALUES (169, 'user_1686026223706', 396);
INSERT INTO public.game VALUES (170, 'user_1686026242068', 499);
INSERT INTO public.game VALUES (171, 'user_1686026242068', 14);
INSERT INTO public.game VALUES (172, 'user_1686026242067', 602);
INSERT INTO public.game VALUES (173, 'user_1686026242067', 520);
INSERT INTO public.game VALUES (174, 'user_1686026242068', 57);
INSERT INTO public.game VALUES (175, 'user_1686026242068', 581);
INSERT INTO public.game VALUES (176, 'user_1686026242068', 410);
INSERT INTO public.game VALUES (177, 'user_1686026576438', 305);
INSERT INTO public.game VALUES (178, 'user_1686026576438', 39);
INSERT INTO public.game VALUES (179, 'user_1686026576437', 889);
INSERT INTO public.game VALUES (180, 'user_1686026576437', 265);
INSERT INTO public.game VALUES (181, 'user_1686026576438', 887);
INSERT INTO public.game VALUES (182, 'user_1686026576438', 198);
INSERT INTO public.game VALUES (183, 'user_1686026576438', 857);
INSERT INTO public.game VALUES (184, 'user_1686026867391', 633);
INSERT INTO public.game VALUES (185, 'user_1686026867391', 14);
INSERT INTO public.game VALUES (186, 'user_1686026867390', 109);
INSERT INTO public.game VALUES (187, 'user_1686026867390', 336);
INSERT INTO public.game VALUES (188, 'user_1686026867391', 488);
INSERT INTO public.game VALUES (189, 'user_1686026867391', 643);
INSERT INTO public.game VALUES (190, 'user_1686026867391', 104);
INSERT INTO public.game VALUES (191, 'user_1686027005608', 364);
INSERT INTO public.game VALUES (192, 'user_1686027005608', 815);
INSERT INTO public.game VALUES (193, 'user_1686027005607', 702);
INSERT INTO public.game VALUES (194, 'user_1686027005607', 527);
INSERT INTO public.game VALUES (195, 'user_1686027005608', 507);
INSERT INTO public.game VALUES (196, 'user_1686027005608', 258);
INSERT INTO public.game VALUES (197, 'user_1686027005608', 798);
INSERT INTO public.game VALUES (198, 'user_1686027013935', 397);
INSERT INTO public.game VALUES (199, 'user_1686027013935', 893);
INSERT INTO public.game VALUES (200, 'user_1686027013934', 195);
INSERT INTO public.game VALUES (201, 'user_1686027013934', 492);
INSERT INTO public.game VALUES (202, 'user_1686027013935', 555);
INSERT INTO public.game VALUES (203, 'user_1686027013935', 426);
INSERT INTO public.game VALUES (204, 'user_1686027013935', 367);
INSERT INTO public.game VALUES (205, 'user_1686027019330', 491);
INSERT INTO public.game VALUES (206, 'user_1686027019330', 132);
INSERT INTO public.game VALUES (207, 'user_1686027019329', 540);
INSERT INTO public.game VALUES (208, 'user_1686027019329', 644);
INSERT INTO public.game VALUES (209, 'user_1686027019330', 607);
INSERT INTO public.game VALUES (210, 'user_1686027019330', 536);
INSERT INTO public.game VALUES (211, 'user_1686027019330', 427);
INSERT INTO public.game VALUES (212, 'user_1686027031261', 48);
INSERT INTO public.game VALUES (213, 'user_1686027031261', 79);
INSERT INTO public.game VALUES (214, 'user_1686027031260', 283);
INSERT INTO public.game VALUES (215, 'user_1686027031260', 345);
INSERT INTO public.game VALUES (216, 'user_1686027031261', 212);
INSERT INTO public.game VALUES (217, 'user_1686027031261', 837);
INSERT INTO public.game VALUES (218, 'user_1686027031261', 422);
INSERT INTO public.game VALUES (219, 'user_1686027126414', 703);
INSERT INTO public.game VALUES (220, 'user_1686027126414', 45);
INSERT INTO public.game VALUES (221, 'user_1686027126413', 357);
INSERT INTO public.game VALUES (222, 'user_1686027126413', 254);
INSERT INTO public.game VALUES (223, 'user_1686027126414', 481);
INSERT INTO public.game VALUES (224, 'user_1686027126414', 361);
INSERT INTO public.game VALUES (225, 'user_1686027126414', 460);
INSERT INTO public.game VALUES (226, 'user_1686027134143', 840);
INSERT INTO public.game VALUES (227, 'user_1686027134143', 315);
INSERT INTO public.game VALUES (228, 'user_1686027134142', 506);
INSERT INTO public.game VALUES (229, 'user_1686027134142', 272);
INSERT INTO public.game VALUES (230, 'user_1686027134143', 579);
INSERT INTO public.game VALUES (231, 'user_1686027134143', 886);
INSERT INTO public.game VALUES (232, 'user_1686027134143', 916);
INSERT INTO public.game VALUES (233, 'Ved', 4);
INSERT INTO public.game VALUES (234, 'user_1686027281413', 563);
INSERT INTO public.game VALUES (235, 'user_1686027281413', 347);
INSERT INTO public.game VALUES (236, 'user_1686027281412', 931);
INSERT INTO public.game VALUES (237, 'user_1686027281412', 311);
INSERT INTO public.game VALUES (238, 'user_1686027281413', 895);
INSERT INTO public.game VALUES (239, 'user_1686027281413', 763);
INSERT INTO public.game VALUES (240, 'user_1686027281413', 395);
INSERT INTO public.game VALUES (241, 'user_1686027289740', 908);
INSERT INTO public.game VALUES (242, 'user_1686027289740', 516);
INSERT INTO public.game VALUES (243, 'user_1686027289739', 175);
INSERT INTO public.game VALUES (244, 'user_1686027289739', 144);
INSERT INTO public.game VALUES (245, 'user_1686027289740', 437);
INSERT INTO public.game VALUES (246, 'user_1686027289740', 413);
INSERT INTO public.game VALUES (247, 'user_1686027289740', 307);


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 247, true);


--
-- Name: game game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

