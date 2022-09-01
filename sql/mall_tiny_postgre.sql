-- Table: public.ums_admin

-- DROP TABLE IF EXISTS public.ums_admin;

CREATE TABLE IF NOT EXISTS public.ums_admin
(
    id bigint NOT NULL DEFAULT nextval('ums_admin_id_seq'::regclass),
    username character varying(64) COLLATE pg_catalog."default" DEFAULT NULL::character varying,
    password character varying(64) COLLATE pg_catalog."default" DEFAULT NULL::character varying,
    icon character varying(500) COLLATE pg_catalog."default" DEFAULT NULL::character varying,
    email character varying(100) COLLATE pg_catalog."default" DEFAULT NULL::character varying,
    nick_name character varying(200) COLLATE pg_catalog."default" DEFAULT NULL::character varying,
    note character varying(500) COLLATE pg_catalog."default",
    create_time date,
    login_time date,
    status smallint,
    CONSTRAINT ums_admin_pkey PRIMARY KEY (id)
    )

    TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ums_admin
    OWNER to postgres;

COMMENT ON COLUMN public.ums_admin.icon
    IS '头像';

COMMENT ON COLUMN public.ums_admin.email
    IS '邮箱';

COMMENT ON COLUMN public.ums_admin.nick_name
    IS '昵称';

COMMENT ON COLUMN public.ums_admin.note
    IS '备注信息';

COMMENT ON COLUMN public.ums_admin.create_time
    IS '创建时间';

COMMENT ON COLUMN public.ums_admin.login_time
    IS '最后登录时间';

COMMENT ON COLUMN public.ums_admin.status
    IS '帐号启用状态：0->禁用；1->启用';


-- Table: public.ums_resource

-- DROP TABLE IF EXISTS public.ums_resource;

CREATE TABLE IF NOT EXISTS public.ums_resource
(
    id bigint NOT NULL,
    create_time date,
    name character varying(200) COLLATE pg_catalog."default",
    url character varying(200) COLLATE pg_catalog."default" DEFAULT NULL::character varying,
    description character varying(500) COLLATE pg_catalog."default" DEFAULT NULL::character varying,
    category_id bigint,
    CONSTRAINT ums_resource_pkey PRIMARY KEY (id)
    )

    TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ums_resource
    OWNER to postgres;

COMMENT ON COLUMN public.ums_resource.create_time
    IS '创建时间';

COMMENT ON COLUMN public.ums_resource.name
    IS '资源名称';

COMMENT ON COLUMN public.ums_resource.url
    IS '资源URL';

COMMENT ON COLUMN public.ums_resource.description
    IS '描述';

COMMENT ON COLUMN public.ums_resource.category_id
    IS '资源分类ID';
