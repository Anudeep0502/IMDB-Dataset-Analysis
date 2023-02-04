CREATE TABLE IF NOT EXISTS public.title_basics
(
    tconst character varying(80),
    titletype character varying(80),
    primarytitle varchar(80),
    originaltitle varchar(80),
    isadult boolean,
    startyear integer,
    runtimeminutes integer,
    genres varchar(100),
    CONSTRAINT title_basics_pkey PRIMARY KEY (tconst)
);

CREATE TABLE IF NOT EXISTS public.name_basics
(
    nconst VARCHAR(80),
    primaryname VARCHAR(100),
    birthyear integer,
    deathyear integer,
    primaryprofession character varying(300), 
    knownfortitles character varying(300),
    CONSTRAINT name_basics_pkey PRIMARY KEY (nconst)
)



CREATE TABLE IF NOT EXISTS public.title_ratings
(
    tconst character varying(80),
    averagerating numeric,
    numvotes integer,
    CONSTRAINT title_ratings_tconst_fkey FOREIGN KEY (tconst)
        REFERENCES public.title_basics (tconst)
        ON update cascade
)


CREATE TABLE IF NOT EXISTS public.title_crew
(
    tconst character varying(80),
    directors character varying(10000),
    writers character varying(10000),
	constraint title_crew_fk foreign key(tconst) REFERENCES
	title_basics(tconst) on update cascade,
	constraint title_del_fk foreign key(tconst) REFERENCES
	title_basics(tconst) on delete cascade
);


CREATE TABLE IF NOT EXISTS public.title_episode
(
    tconst character varying(80),
    parenttconst character varying(80),
    seasonnumber integer,
    episodenumber integer,
    CONSTRAINT fk_name FOREIGN KEY (tconst)
        REFERENCES public.title_basics (tconst)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
	)
	
	
CREATE TABLE IF NOT EXISTS public.title_principals
(
    tconst character varying(80),
    ordering integer,
    nconst character varying(200),
    category character varying(100),
    job character varying(500),
    characters character varying(200),
    CONSTRAINT fk_tconst FOREIGN KEY (tconst)
        REFERENCES public.title_basics (tconst) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT title_principals_nconst_fkey FOREIGN KEY (nconst)
        REFERENCES public.name_basics (nconst) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT title_principals_tconst_fkey FOREIGN KEY (tconst)
        REFERENCES public.title_basics (tconst)
        ON UPDATE cascade
        ON DELETE cascade
)












