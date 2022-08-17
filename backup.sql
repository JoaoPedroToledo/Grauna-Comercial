PGDMP                         z            grauna    11.15    11.15 �    f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            i           1262    16393    grauna    DATABASE     �   CREATE DATABASE grauna WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE grauna;
             postgres    false            �            1259    16394    AnaliseCotacao    TABLE     Z  CREATE TABLE public."AnaliseCotacao" (
    id integer NOT NULL,
    numero_cotacao character(15),
    cliente character(100),
    contato character(100),
    materia_prima character(100),
    pn character(100),
    rev character(100),
    quantidade numeric(100,0),
    data date,
    assinatura numeric(1000,0),
    risco_nt boolean,
    detalhe_risco_nt character(255),
    risco_pe boolean,
    detalhe_risco_pe character(255),
    risco_fin boolean,
    detalhe_risco_fin character(255),
    rec_disp boolean,
    detalhe_rec_disp character(255),
    risco_trat boolean,
    detalhe_risco_trat character(255),
    anot_risco boolean,
    detalhe_anot_risco character(255),
    not_aplicable boolean,
    detalhe_not_qualify character(255),
    detalhe_embalagem character(255),
    detalhe_terc_proce character(255),
    not_recurring boolean,
    use_device boolean,
    total_not_recurring numeric(1000,0),
    total_use_device numeric(1000,0),
    obs character(500),
    tolerancia character(5),
    detalhe_tol character(255),
    concatena character(50),
    trat_superf character(50),
    trat_termi character(50),
    alodine boolean,
    anod_crom boolean,
    liq_pen boolean,
    primer boolean,
    antib boolean,
    pu boolean,
    passi boolean,
    jat_micro boolean,
    anod_col boolean,
    anod_sulf_inc boolean,
    part_magn boolean,
    shoot boolean,
    cadmio boolean,
    fosf boolean,
    jatea boolean,
    oxid_negra boolean,
    oleo_prot boolean,
    zinco boolean,
    ataque_nit boolean,
    cromo boolean,
    desidro boolean,
    cliente_avis boolean,
    decline boolean,
    cert_qualidade boolean,
    not_qualify boolean,
    embalagem boolean,
    terc_proce boolean,
    client_process boolean,
    dimen character(1),
    clientes character(40),
    pk_id_cliente integer,
    pk_id_empresa integer,
    pk_id_materia_prima integer
);
 $   DROP TABLE public."AnaliseCotacao";
       public         postgres    false            �            1259    16400 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    16403    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    197            j           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    198            �            1259    16405    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    16408    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    199            k           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    200            �            1259    16410    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    16413    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            l           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    202            �            1259    16415 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    16421    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    16424    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    204            m           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    205            �            1259    16426    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    203            n           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    16428    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    16431 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    207            o           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    208            �            1259    16433    cliente    TABLE     j   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome_empresa character(30) NOT NULL
);
    DROP TABLE public.cliente;
       public         postgres    false            �            1259    16436    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    16443    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    210            p           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    211            �            1259    16445    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    16448    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    212            q           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    213            �            1259    16450    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    16456    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    214            r           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    215            �            1259    16458    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    16464    employee_register_cotacao    TABLE       CREATE TABLE public.employee_register_cotacao (
    id integer NOT NULL,
    fullname_id integer,
    mobile_id integer,
    position_id integer,
    empresa_id integer,
    tipo character varying(100),
    valor_icms numeric,
    valor_ipi numeric,
    valor_iss numeric,
    valor_cofins numeric,
    valor_irr numeric,
    valor_csll numeric,
    class_fiscal character varying(100),
    entrega character varying(40),
    pagamento character varying(50),
    valid_prop character varying(15),
    hr_maq money,
    mp money,
    trat_superf money,
    trat_termi money,
    transp money,
    n_recorr money,
    preco_total money,
    preco_ipi money,
    preco_icms money,
    preco_venda money,
    bafo money,
    f_1250_hrfabri numeric,
    f_1250_hr numeric,
    fk_trat_superf numeric
);
 -   DROP TABLE public.employee_register_cotacao;
       public         postgres    false            �            1259    16470     employee_register_cotacao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_register_cotacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.employee_register_cotacao_id_seq;
       public       postgres    false    217            s           0    0     employee_register_cotacao_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.employee_register_cotacao_id_seq OWNED BY public.employee_register_cotacao.id;
            public       postgres    false    218            �            1259    16472    employee_register_dimensao    TABLE     m   CREATE TABLE public.employee_register_dimensao (
    id integer NOT NULL,
    classe character varying(1)
);
 .   DROP TABLE public.employee_register_dimensao;
       public         postgres    false            �            1259    16475 !   employee_register_dimensao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_register_dimensao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.employee_register_dimensao_id_seq;
       public       postgres    false    219            t           0    0 !   employee_register_dimensao_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.employee_register_dimensao_id_seq OWNED BY public.employee_register_dimensao.id;
            public       postgres    false    220            �            1259    16477    employee_register_employee    TABLE     �  CREATE TABLE public.employee_register_employee (
    id integer NOT NULL,
    fullname character varying(100) NOT NULL,
    emp_code character varying(3),
    mobile character varying(15) NOT NULL,
    position_id integer NOT NULL,
    empresa_id integer,
    materia_id integer,
    quantidade integer,
    assinatura character varying(30),
    cotacao character(30),
    risco_nt boolean,
    det_risco_nt character varying(255),
    risco_pe boolean,
    det_risco_pe character varying(255),
    risco_fin boolean,
    det_risco_fin character varying(255),
    rec_disp boolean,
    det_rec_disp character varying(255),
    tol boolean,
    det_tol character varying(255),
    risco_trat boolean,
    det_risco_trat character varying(255),
    anot_risco boolean,
    det_anot_risco character varying(255),
    not_aplic boolean,
    decline boolean,
    av_cli boolean,
    data_final date,
    req_cert character(5),
    det_req_cert character varying(255),
    proc_qual character(5),
    det_proc_qual character varying(255),
    req_embal character(5),
    det_req_embal character varying(255),
    alt_cli character(5),
    proc_terc character(5),
    dimensao_id integer,
    tratsuperfmag_id integer,
    tratsuperfmet_id integer,
    orcam integer,
    rev character varying(30),
    senha_id integer,
    obs character varying(500),
    not_rec boolean,
    use_device boolean,
    descricao character varying(100),
    trat_superf character varying,
    trat_term character varying,
    data_atual date,
    hora_final character varying(10),
    det_alt_cli character varying(255),
    assinatura1 character varying(30),
    fk_trat_superf character varying
);
 .   DROP TABLE public.employee_register_employee;
       public         postgres    false            �            1259    16483 !   employee_register_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_register_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.employee_register_employee_id_seq;
       public       postgres    false    221            u           0    0 !   employee_register_employee_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.employee_register_employee_id_seq OWNED BY public.employee_register_employee.id;
            public       postgres    false    222            �            1259    16485    employee_register_empresa    TABLE     k   CREATE TABLE public.employee_register_empresa (
    id integer NOT NULL,
    nome character varying(40)
);
 -   DROP TABLE public.employee_register_empresa;
       public         postgres    false            �            1259    16488     employee_register_empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_register_empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.employee_register_empresa_id_seq;
       public       postgres    false    223            v           0    0     employee_register_empresa_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.employee_register_empresa_id_seq OWNED BY public.employee_register_empresa.id;
            public       postgres    false    224            �            1259    16490    employee_register_material    TABLE     x   CREATE TABLE public.employee_register_material (
    id integer NOT NULL,
    materia character varying(45) NOT NULL
);
 .   DROP TABLE public.employee_register_material;
       public         postgres    false            �            1259    16493 !   employee_register_material_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_register_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.employee_register_material_id_seq;
       public       postgres    false    225            w           0    0 !   employee_register_material_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.employee_register_material_id_seq OWNED BY public.employee_register_material.id;
            public       postgres    false    226            �            1259    16495    employee_register_ncm    TABLE     �   CREATE TABLE public.employee_register_ncm (
    id integer,
    codigo character varying(30),
    aliquota character varying(30),
    icms character varying(30)
);
 )   DROP TABLE public.employee_register_ncm;
       public         postgres    false            �            1259    16498    employee_register_position    TABLE     v   CREATE TABLE public.employee_register_position (
    id integer NOT NULL,
    title character varying(50) NOT NULL
);
 .   DROP TABLE public.employee_register_position;
       public         postgres    false            �            1259    16501 !   employee_register_position_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_register_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.employee_register_position_id_seq;
       public       postgres    false    228            x           0    0 !   employee_register_position_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.employee_register_position_id_seq OWNED BY public.employee_register_position.id;
            public       postgres    false    229            �            1259    16503    employee_register_senha    TABLE     j   CREATE TABLE public.employee_register_senha (
    id integer NOT NULL,
    senha character varying(20)
);
 +   DROP TABLE public.employee_register_senha;
       public         postgres    false            �            1259    16506    employee_register_senha_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_register_senha_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.employee_register_senha_id_seq;
       public       postgres    false    230            y           0    0    employee_register_senha_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.employee_register_senha_id_seq OWNED BY public.employee_register_senha.id;
            public       postgres    false    231            �            1259    16508    employee_register_tratsuperfmag    TABLE     �  CREATE TABLE public.employee_register_tratsuperfmag (
    id integer NOT NULL,
    limite numeric(1000,0),
    fornecedor character varying(250),
    classe "char",
    alodine money,
    anod_crom money,
    liq_pen money,
    primer_epoxi money,
    antib money,
    pu money,
    pass money,
    jateamento money,
    anod_sulf_inc money,
    anod_sulf_color money,
    part_magn money
);
 3   DROP TABLE public.employee_register_tratsuperfmag;
       public         postgres    false            �            1259    16511 &   employee_register_tratsuperfmag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_register_tratsuperfmag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.employee_register_tratsuperfmag_id_seq;
       public       postgres    false    232            z           0    0 &   employee_register_tratsuperfmag_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.employee_register_tratsuperfmag_id_seq OWNED BY public.employee_register_tratsuperfmag.id;
            public       postgres    false    233            �            1259    16513    employee_register_tratsuperfmet    TABLE       CREATE TABLE public.employee_register_tratsuperfmet (
    id integer NOT NULL,
    classe numeric(1000,0),
    limite "char",
    alodine money,
    jateamento money,
    anod_incolor money,
    liq_pen money,
    primer_ant money,
    pu money,
    alod_pass money
);
 3   DROP TABLE public.employee_register_tratsuperfmet;
       public         postgres    false            �            1259    16516 &   employee_register_tratsuperfmet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_register_tratsuperfmet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.employee_register_tratsuperfmet_id_seq;
       public       postgres    false    234            {           0    0 &   employee_register_tratsuperfmet_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.employee_register_tratsuperfmet_id_seq OWNED BY public.employee_register_tratsuperfmet.id;
            public       postgres    false    235            �            1259    16518    empresa    TABLE     �   CREATE TABLE public.empresa (
    id_empresa integer NOT NULL,
    nome_funcionario character(45) NOT NULL,
    pk_id_cliente integer
);
    DROP TABLE public.empresa;
       public         postgres    false            �            1259    16521    materia_prima    TABLE     s   CREATE TABLE public.materia_prima (
    id_material integer NOT NULL,
    material character(40),
    peso real
);
 !   DROP TABLE public.materia_prima;
       public         postgres    false            �            1259    16524    ncm    TABLE     v   CREATE TABLE public.ncm (
    codigo integer NOT NULL,
    aliquota numeric(20,0) NOT NULL,
    icms numeric(20,0)
);
    DROP TABLE public.ncm;
       public         postgres    false            �            1259    16527    pecas    TABLE     �   CREATE TABLE public.pecas (
    id_pecas integer NOT NULL,
    descricao character varying NOT NULL,
    valor money NOT NULL
);
    DROP TABLE public.pecas;
       public         postgres    false            �            1259    16533    polls_analisecotacao    TABLE     �  CREATE TABLE public.polls_analisecotacao (
    id integer NOT NULL,
    numero_cotacao character varying(100) NOT NULL,
    pn character varying(50) NOT NULL,
    rev character varying(50) NOT NULL,
    quantidade integer NOT NULL,
    data timestamp with time zone NOT NULL,
    assinatura character varying(50) NOT NULL,
    risco_nt boolean NOT NULL,
    detalhe_risco_nt character varying(255) NOT NULL,
    risco_pe boolean NOT NULL,
    detalhe_risco_pe character varying(255) NOT NULL,
    risco_fin boolean NOT NULL,
    detalhe_risco_fin character varying(255) NOT NULL,
    rec_disp boolean NOT NULL,
    detalhe_rec_disp character varying(255) NOT NULL,
    tolerancia boolean NOT NULL,
    detalhe_tol character varying(255) NOT NULL,
    risco_trat boolean NOT NULL,
    detalhe_risco_trat character varying(255) NOT NULL,
    trat_termi character varying(255) NOT NULL,
    alodine boolean NOT NULL,
    anod_crom boolean NOT NULL,
    liq_pen boolean NOT NULL,
    primer boolean NOT NULL,
    antib boolean NOT NULL,
    pu boolean NOT NULL,
    passi boolean NOT NULL,
    jat_micro boolean NOT NULL,
    anod_col boolean NOT NULL,
    anod_sulf_inc boolean NOT NULL,
    part_magn boolean NOT NULL,
    shoot boolean NOT NULL,
    cadmio boolean NOT NULL,
    fosf boolean NOT NULL,
    jatea boolean NOT NULL,
    oxid_negra boolean NOT NULL,
    oleo_prot boolean NOT NULL,
    zinco boolean NOT NULL,
    ataque_nit boolean NOT NULL,
    cromo boolean NOT NULL,
    desidro boolean NOT NULL,
    dimen character varying(1) NOT NULL,
    anot_risco boolean NOT NULL,
    detalhe_anot_risco character varying(255) NOT NULL,
    not_aplicable boolean NOT NULL,
    decline boolean NOT NULL,
    cliente_avis boolean NOT NULL,
    cert_qualidade boolean NOT NULL,
    not_qualify boolean NOT NULL,
    embalagem boolean NOT NULL,
    client_process boolean NOT NULL,
    terc_proce boolean NOT NULL,
    not_recurring boolean NOT NULL,
    use_device boolean NOT NULL,
    total_not_recurring numeric(6,2) NOT NULL,
    total_use_device numeric(6,2) NOT NULL,
    obs text NOT NULL,
    cliente_id integer NOT NULL,
    contato_id integer NOT NULL,
    materia_prima_id integer NOT NULL
);
 (   DROP TABLE public.polls_analisecotacao;
       public         postgres    false            �            1259    16539    polls_analisecotacao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.polls_analisecotacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.polls_analisecotacao_id_seq;
       public       postgres    false    240            |           0    0    polls_analisecotacao_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.polls_analisecotacao_id_seq OWNED BY public.polls_analisecotacao.id;
            public       postgres    false    241            �            1259    16541    polls_cliente    TABLE     p   CREATE TABLE public.polls_cliente (
    id integer NOT NULL,
    nome_empresa character varying(30) NOT NULL
);
 !   DROP TABLE public.polls_cliente;
       public         postgres    false            �            1259    16544    polls_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.polls_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.polls_cliente_id_seq;
       public       postgres    false    242            }           0    0    polls_cliente_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.polls_cliente_id_seq OWNED BY public.polls_cliente.id;
            public       postgres    false    243            �            1259    16546    polls_cotacao_an    TABLE     4  CREATE TABLE public.polls_cotacao_an (
    id_cotacao integer NOT NULL,
    tipo character varying(1) NOT NULL,
    valor_icms numeric(6,2) NOT NULL,
    valor_pis numeric(6,2) NOT NULL,
    valor_ipi numeric(6,2) NOT NULL,
    valor_iss numeric(6,2) NOT NULL,
    valor_cofins numeric(6,2) NOT NULL,
    valor_ir numeric(6,2) NOT NULL,
    valor_csll numeric(6,2) NOT NULL,
    entrega character varying(20) NOT NULL,
    pagamento character varying(20) NOT NULL,
    valid_prop character varying(20) NOT NULL,
    materia_prima character varying(20) NOT NULL
);
 $   DROP TABLE public.polls_cotacao_an;
       public         postgres    false            �            1259    16549    polls_cotacao_an_id_cotacao_seq    SEQUENCE     �   CREATE SEQUENCE public.polls_cotacao_an_id_cotacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.polls_cotacao_an_id_cotacao_seq;
       public       postgres    false    244            ~           0    0    polls_cotacao_an_id_cotacao_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.polls_cotacao_an_id_cotacao_seq OWNED BY public.polls_cotacao_an.id_cotacao;
            public       postgres    false    245            �            1259    16551    polls_empresa    TABLE     t   CREATE TABLE public.polls_empresa (
    id integer NOT NULL,
    nome_funcionario character varying(45) NOT NULL
);
 !   DROP TABLE public.polls_empresa;
       public         postgres    false            �            1259    16554    polls_empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.polls_empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.polls_empresa_id_seq;
       public       postgres    false    246                       0    0    polls_empresa_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.polls_empresa_id_seq OWNED BY public.polls_empresa.id;
            public       postgres    false    247            �            1259    16556    polls_materia_prima    TABLE     r   CREATE TABLE public.polls_materia_prima (
    id integer NOT NULL,
    material character varying(50) NOT NULL
);
 '   DROP TABLE public.polls_materia_prima;
       public         postgres    false            �            1259    16559    polls_materia_prima_id_seq    SEQUENCE     �   CREATE SEQUENCE public.polls_materia_prima_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.polls_materia_prima_id_seq;
       public       postgres    false    248            �           0    0    polls_materia_prima_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.polls_materia_prima_id_seq OWNED BY public.polls_materia_prima.id;
            public       postgres    false    249            *           2604    16561    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197            +           2604    16562    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199            ,           2604    16563    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201            -           2604    16564    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    203            .           2604    16565    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204            /           2604    16566    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207            0           2604    16567    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210            2           2604    16568    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212            3           2604    16569    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214            4           2604    16570    employee_register_cotacao id    DEFAULT     �   ALTER TABLE ONLY public.employee_register_cotacao ALTER COLUMN id SET DEFAULT nextval('public.employee_register_cotacao_id_seq'::regclass);
 K   ALTER TABLE public.employee_register_cotacao ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    217            5           2604    16571    employee_register_dimensao id    DEFAULT     �   ALTER TABLE ONLY public.employee_register_dimensao ALTER COLUMN id SET DEFAULT nextval('public.employee_register_dimensao_id_seq'::regclass);
 L   ALTER TABLE public.employee_register_dimensao ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219            6           2604    16572    employee_register_employee id    DEFAULT     �   ALTER TABLE ONLY public.employee_register_employee ALTER COLUMN id SET DEFAULT nextval('public.employee_register_employee_id_seq'::regclass);
 L   ALTER TABLE public.employee_register_employee ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221            7           2604    16573    employee_register_empresa id    DEFAULT     �   ALTER TABLE ONLY public.employee_register_empresa ALTER COLUMN id SET DEFAULT nextval('public.employee_register_empresa_id_seq'::regclass);
 K   ALTER TABLE public.employee_register_empresa ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223            8           2604    16574    employee_register_material id    DEFAULT     �   ALTER TABLE ONLY public.employee_register_material ALTER COLUMN id SET DEFAULT nextval('public.employee_register_material_id_seq'::regclass);
 L   ALTER TABLE public.employee_register_material ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225            9           2604    16575    employee_register_position id    DEFAULT     �   ALTER TABLE ONLY public.employee_register_position ALTER COLUMN id SET DEFAULT nextval('public.employee_register_position_id_seq'::regclass);
 L   ALTER TABLE public.employee_register_position ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228            :           2604    16576    employee_register_senha id    DEFAULT     �   ALTER TABLE ONLY public.employee_register_senha ALTER COLUMN id SET DEFAULT nextval('public.employee_register_senha_id_seq'::regclass);
 I   ALTER TABLE public.employee_register_senha ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230            ;           2604    16577 "   employee_register_tratsuperfmag id    DEFAULT     �   ALTER TABLE ONLY public.employee_register_tratsuperfmag ALTER COLUMN id SET DEFAULT nextval('public.employee_register_tratsuperfmag_id_seq'::regclass);
 Q   ALTER TABLE public.employee_register_tratsuperfmag ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232            <           2604    16578 "   employee_register_tratsuperfmet id    DEFAULT     �   ALTER TABLE ONLY public.employee_register_tratsuperfmet ALTER COLUMN id SET DEFAULT nextval('public.employee_register_tratsuperfmet_id_seq'::regclass);
 Q   ALTER TABLE public.employee_register_tratsuperfmet ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234            =           2604    16579    polls_analisecotacao id    DEFAULT     �   ALTER TABLE ONLY public.polls_analisecotacao ALTER COLUMN id SET DEFAULT nextval('public.polls_analisecotacao_id_seq'::regclass);
 F   ALTER TABLE public.polls_analisecotacao ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240            >           2604    16580    polls_cliente id    DEFAULT     t   ALTER TABLE ONLY public.polls_cliente ALTER COLUMN id SET DEFAULT nextval('public.polls_cliente_id_seq'::regclass);
 ?   ALTER TABLE public.polls_cliente ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242            ?           2604    16581    polls_cotacao_an id_cotacao    DEFAULT     �   ALTER TABLE ONLY public.polls_cotacao_an ALTER COLUMN id_cotacao SET DEFAULT nextval('public.polls_cotacao_an_id_cotacao_seq'::regclass);
 J   ALTER TABLE public.polls_cotacao_an ALTER COLUMN id_cotacao DROP DEFAULT;
       public       postgres    false    245    244            @           2604    16582    polls_empresa id    DEFAULT     t   ALTER TABLE ONLY public.polls_empresa ALTER COLUMN id SET DEFAULT nextval('public.polls_empresa_id_seq'::regclass);
 ?   ALTER TABLE public.polls_empresa ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246            A           2604    16583    polls_materia_prima id    DEFAULT     �   ALTER TABLE ONLY public.polls_materia_prima ALTER COLUMN id SET DEFAULT nextval('public.polls_materia_prima_id_seq'::regclass);
 E   ALTER TABLE public.polls_materia_prima ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248            .          0    16394    AnaliseCotacao 
   TABLE DATA               b  COPY public."AnaliseCotacao" (id, numero_cotacao, cliente, contato, materia_prima, pn, rev, quantidade, data, assinatura, risco_nt, detalhe_risco_nt, risco_pe, detalhe_risco_pe, risco_fin, detalhe_risco_fin, rec_disp, detalhe_rec_disp, risco_trat, detalhe_risco_trat, anot_risco, detalhe_anot_risco, not_aplicable, detalhe_not_qualify, detalhe_embalagem, detalhe_terc_proce, not_recurring, use_device, total_not_recurring, total_use_device, obs, tolerancia, detalhe_tol, concatena, trat_superf, trat_termi, alodine, anod_crom, liq_pen, primer, antib, pu, passi, jat_micro, anod_col, anod_sulf_inc, part_magn, shoot, cadmio, fosf, jatea, oxid_negra, oleo_prot, zinco, ataque_nit, cromo, desidro, cliente_avis, decline, cert_qualidade, not_qualify, embalagem, terc_proce, client_process, dimen, clientes, pk_id_cliente, pk_id_empresa, pk_id_materia_prima) FROM stdin;
    public       postgres    false    196   �P      /          0    16400 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    197   �P      1          0    16405    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    199   �P      3          0    16410    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   Q      5          0    16415 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    203   �S      6          0    16421    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    204   �S      9          0    16428    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    207   T      ;          0    16433    cliente 
   TABLE DATA               ;   COPY public.cliente (id_cliente, nome_empresa) FROM stdin;
    public       postgres    false    209   T      <          0    16436    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    210   ;T      >          0    16445    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    212   XT      @          0    16450    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    214   JU      B          0    16458    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    216    W      C          0    16464    employee_register_cotacao 
   TABLE DATA               |  COPY public.employee_register_cotacao (id, fullname_id, mobile_id, position_id, empresa_id, tipo, valor_icms, valor_ipi, valor_iss, valor_cofins, valor_irr, valor_csll, class_fiscal, entrega, pagamento, valid_prop, hr_maq, mp, trat_superf, trat_termi, transp, n_recorr, preco_total, preco_ipi, preco_icms, preco_venda, bafo, f_1250_hrfabri, f_1250_hr, fk_trat_superf) FROM stdin;
    public       postgres    false    217   =W      E          0    16472    employee_register_dimensao 
   TABLE DATA               @   COPY public.employee_register_dimensao (id, classe) FROM stdin;
    public       postgres    false    219   ZW      G          0    16477    employee_register_employee 
   TABLE DATA               �  COPY public.employee_register_employee (id, fullname, emp_code, mobile, position_id, empresa_id, materia_id, quantidade, assinatura, cotacao, risco_nt, det_risco_nt, risco_pe, det_risco_pe, risco_fin, det_risco_fin, rec_disp, det_rec_disp, tol, det_tol, risco_trat, det_risco_trat, anot_risco, det_anot_risco, not_aplic, decline, av_cli, data_final, req_cert, det_req_cert, proc_qual, det_proc_qual, req_embal, det_req_embal, alt_cli, proc_terc, dimensao_id, tratsuperfmag_id, tratsuperfmet_id, orcam, rev, senha_id, obs, not_rec, use_device, descricao, trat_superf, trat_term, data_atual, hora_final, det_alt_cli, assinatura1, fk_trat_superf) FROM stdin;
    public       postgres    false    221   �W      I          0    16485    employee_register_empresa 
   TABLE DATA               =   COPY public.employee_register_empresa (id, nome) FROM stdin;
    public       postgres    false    223   �Y      K          0    16490    employee_register_material 
   TABLE DATA               A   COPY public.employee_register_material (id, materia) FROM stdin;
    public       postgres    false    225   +Z      M          0    16495    employee_register_ncm 
   TABLE DATA               K   COPY public.employee_register_ncm (id, codigo, aliquota, icms) FROM stdin;
    public       postgres    false    227   }[      N          0    16498    employee_register_position 
   TABLE DATA               ?   COPY public.employee_register_position (id, title) FROM stdin;
    public       postgres    false    228   \      P          0    16503    employee_register_senha 
   TABLE DATA               <   COPY public.employee_register_senha (id, senha) FROM stdin;
    public       postgres    false    230   @\      R          0    16508    employee_register_tratsuperfmag 
   TABLE DATA               �   COPY public.employee_register_tratsuperfmag (id, limite, fornecedor, classe, alodine, anod_crom, liq_pen, primer_epoxi, antib, pu, pass, jateamento, anod_sulf_inc, anod_sulf_color, part_magn) FROM stdin;
    public       postgres    false    232   u\      T          0    16513    employee_register_tratsuperfmet 
   TABLE DATA               �   COPY public.employee_register_tratsuperfmet (id, classe, limite, alodine, jateamento, anod_incolor, liq_pen, primer_ant, pu, alod_pass) FROM stdin;
    public       postgres    false    234   �]      V          0    16518    empresa 
   TABLE DATA               N   COPY public.empresa (id_empresa, nome_funcionario, pk_id_cliente) FROM stdin;
    public       postgres    false    236   �^      W          0    16521    materia_prima 
   TABLE DATA               D   COPY public.materia_prima (id_material, material, peso) FROM stdin;
    public       postgres    false    237   �^      X          0    16524    ncm 
   TABLE DATA               5   COPY public.ncm (codigo, aliquota, icms) FROM stdin;
    public       postgres    false    238   �^      Y          0    16527    pecas 
   TABLE DATA               ;   COPY public.pecas (id_pecas, descricao, valor) FROM stdin;
    public       postgres    false    239   _      Z          0    16533    polls_analisecotacao 
   TABLE DATA               �  COPY public.polls_analisecotacao (id, numero_cotacao, pn, rev, quantidade, data, assinatura, risco_nt, detalhe_risco_nt, risco_pe, detalhe_risco_pe, risco_fin, detalhe_risco_fin, rec_disp, detalhe_rec_disp, tolerancia, detalhe_tol, risco_trat, detalhe_risco_trat, trat_termi, alodine, anod_crom, liq_pen, primer, antib, pu, passi, jat_micro, anod_col, anod_sulf_inc, part_magn, shoot, cadmio, fosf, jatea, oxid_negra, oleo_prot, zinco, ataque_nit, cromo, desidro, dimen, anot_risco, detalhe_anot_risco, not_aplicable, decline, cliente_avis, cert_qualidade, not_qualify, embalagem, client_process, terc_proce, not_recurring, use_device, total_not_recurring, total_use_device, obs, cliente_id, contato_id, materia_prima_id) FROM stdin;
    public       postgres    false    240    _      \          0    16541    polls_cliente 
   TABLE DATA               9   COPY public.polls_cliente (id, nome_empresa) FROM stdin;
    public       postgres    false    242   =_      ^          0    16546    polls_cotacao_an 
   TABLE DATA               �   COPY public.polls_cotacao_an (id_cotacao, tipo, valor_icms, valor_pis, valor_ipi, valor_iss, valor_cofins, valor_ir, valor_csll, entrega, pagamento, valid_prop, materia_prima) FROM stdin;
    public       postgres    false    244   Z_      `          0    16551    polls_empresa 
   TABLE DATA               =   COPY public.polls_empresa (id, nome_funcionario) FROM stdin;
    public       postgres    false    246   w_      b          0    16556    polls_materia_prima 
   TABLE DATA               ;   COPY public.polls_materia_prima (id, material) FROM stdin;
    public       postgres    false    248   �_      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    198            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    200            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 66, true);
            public       postgres    false    202            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    205            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    208            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       postgres    false    211            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);
            public       postgres    false    213            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
            public       postgres    false    215            �           0    0     employee_register_cotacao_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.employee_register_cotacao_id_seq', 1, false);
            public       postgres    false    218            �           0    0 !   employee_register_dimensao_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.employee_register_dimensao_id_seq', 1, false);
            public       postgres    false    220            �           0    0 !   employee_register_employee_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.employee_register_employee_id_seq', 10, true);
            public       postgres    false    222            �           0    0     employee_register_empresa_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.employee_register_empresa_id_seq', 1, false);
            public       postgres    false    224            �           0    0 !   employee_register_material_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.employee_register_material_id_seq', 1, false);
            public       postgres    false    226            �           0    0 !   employee_register_position_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.employee_register_position_id_seq', 1, false);
            public       postgres    false    229            �           0    0    employee_register_senha_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.employee_register_senha_id_seq', 1, false);
            public       postgres    false    231            �           0    0 &   employee_register_tratsuperfmag_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.employee_register_tratsuperfmag_id_seq', 1, false);
            public       postgres    false    233            �           0    0 &   employee_register_tratsuperfmet_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.employee_register_tratsuperfmet_id_seq', 1, false);
            public       postgres    false    235            �           0    0    polls_analisecotacao_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.polls_analisecotacao_id_seq', 1, false);
            public       postgres    false    241            �           0    0    polls_cliente_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.polls_cliente_id_seq', 1, false);
            public       postgres    false    243            �           0    0    polls_cotacao_an_id_cotacao_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.polls_cotacao_an_id_cotacao_seq', 1, false);
            public       postgres    false    245            �           0    0    polls_empresa_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.polls_empresa_id_seq', 1, false);
            public       postgres    false    247            �           0    0    polls_materia_prima_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.polls_materia_prima_id_seq', 1, false);
            public       postgres    false    249            �           2606    16585    ncm NCM_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ncm
    ADD CONSTRAINT "NCM_pkey" PRIMARY KEY (codigo);
 8   ALTER TABLE ONLY public.ncm DROP CONSTRAINT "NCM_pkey";
       public         postgres    false    238            C           2606    16587    AnaliseCotacao analises_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."AnaliseCotacao"
    ADD CONSTRAINT analises_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."AnaliseCotacao" DROP CONSTRAINT analises_pkey;
       public         postgres    false    196            F           2606    16589    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    197            K           2606    16591 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    199    199            N           2606    16593 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    199            H           2606    16595    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    197            Q           2606    16597 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            S           2606    16599 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            [           2606    16601 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    204            ^           2606    16603 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    204    204            U           2606    16605    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    203            a           2606    16607 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    207            d           2606    16609 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    207    207            X           2606    16611     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    203            f           2606    16613    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    209            i           2606    16615 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    210            l           2606    16617 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    212    212            n           2606    16619 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    212            p           2606    16621 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    214            s           2606    16623 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    216            v           2606    16625 8   employee_register_cotacao employee_register_cotacao_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.employee_register_cotacao
    ADD CONSTRAINT employee_register_cotacao_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.employee_register_cotacao DROP CONSTRAINT employee_register_cotacao_pkey;
       public         postgres    false    217            x           2606    16627 :   employee_register_dimensao employee_register_dimensao_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.employee_register_dimensao
    ADD CONSTRAINT employee_register_dimensao_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.employee_register_dimensao DROP CONSTRAINT employee_register_dimensao_pkey;
       public         postgres    false    219            z           2606    16629 :   employee_register_employee employee_register_employee_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.employee_register_employee
    ADD CONSTRAINT employee_register_employee_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.employee_register_employee DROP CONSTRAINT employee_register_employee_pkey;
       public         postgres    false    221            }           2606    16631 8   employee_register_empresa employee_register_empresa_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.employee_register_empresa
    ADD CONSTRAINT employee_register_empresa_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.employee_register_empresa DROP CONSTRAINT employee_register_empresa_pkey;
       public         postgres    false    223                       2606    16633 :   employee_register_material employee_register_material_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.employee_register_material
    ADD CONSTRAINT employee_register_material_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.employee_register_material DROP CONSTRAINT employee_register_material_pkey;
       public         postgres    false    225            �           2606    16635 :   employee_register_position employee_register_position_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.employee_register_position
    ADD CONSTRAINT employee_register_position_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.employee_register_position DROP CONSTRAINT employee_register_position_pkey;
       public         postgres    false    228            �           2606    16637 4   employee_register_senha employee_register_senha_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.employee_register_senha
    ADD CONSTRAINT employee_register_senha_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.employee_register_senha DROP CONSTRAINT employee_register_senha_pkey;
       public         postgres    false    230            �           2606    16639 D   employee_register_tratsuperfmag employee_register_tratsuperfmag_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_tratsuperfmag
    ADD CONSTRAINT employee_register_tratsuperfmag_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.employee_register_tratsuperfmag DROP CONSTRAINT employee_register_tratsuperfmag_pkey;
       public         postgres    false    232            �           2606    16641 D   employee_register_tratsuperfmet employee_register_tratsuperfmet_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_tratsuperfmet
    ADD CONSTRAINT employee_register_tratsuperfmet_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.employee_register_tratsuperfmet DROP CONSTRAINT employee_register_tratsuperfmet_pkey;
       public         postgres    false    234            �           2606    16643    empresa empresa_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id_empresa);
 >   ALTER TABLE ONLY public.empresa DROP CONSTRAINT empresa_pkey;
       public         postgres    false    236            �           2606    16645     materia_prima materia_prima_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.materia_prima
    ADD CONSTRAINT materia_prima_pkey PRIMARY KEY (id_material);
 J   ALTER TABLE ONLY public.materia_prima DROP CONSTRAINT materia_prima_pkey;
       public         postgres    false    237            �           2606    16647    pecas pecas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pecas
    ADD CONSTRAINT pecas_pkey PRIMARY KEY (id_pecas);
 :   ALTER TABLE ONLY public.pecas DROP CONSTRAINT pecas_pkey;
       public         postgres    false    239            �           2606    16649 .   polls_analisecotacao polls_analisecotacao_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.polls_analisecotacao
    ADD CONSTRAINT polls_analisecotacao_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.polls_analisecotacao DROP CONSTRAINT polls_analisecotacao_pkey;
       public         postgres    false    240            �           2606    16651     polls_cliente polls_cliente_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.polls_cliente
    ADD CONSTRAINT polls_cliente_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.polls_cliente DROP CONSTRAINT polls_cliente_pkey;
       public         postgres    false    242            �           2606    16653 &   polls_cotacao_an polls_cotacao_an_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.polls_cotacao_an
    ADD CONSTRAINT polls_cotacao_an_pkey PRIMARY KEY (id_cotacao);
 P   ALTER TABLE ONLY public.polls_cotacao_an DROP CONSTRAINT polls_cotacao_an_pkey;
       public         postgres    false    244            �           2606    16655     polls_empresa polls_empresa_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.polls_empresa
    ADD CONSTRAINT polls_empresa_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.polls_empresa DROP CONSTRAINT polls_empresa_pkey;
       public         postgres    false    246            �           2606    16657 ,   polls_materia_prima polls_materia_prima_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.polls_materia_prima
    ADD CONSTRAINT polls_materia_prima_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.polls_materia_prima DROP CONSTRAINT polls_materia_prima_pkey;
       public         postgres    false    248            D           1259    16658    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    197            I           1259    16659 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    199            L           1259    16660 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    199            O           1259    16661 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            Y           1259    16662 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    204            \           1259    16663 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    204            _           1259    16664 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    207            b           1259    16665 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    207            V           1259    16666     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    203            g           1259    16667 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    210            j           1259    16668 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    210            q           1259    16669 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    216            t           1259    16670 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    216            {           1259    16671 /   employee_register_employee_position_id_c7c8c467    INDEX     }   CREATE INDEX employee_register_employee_position_id_c7c8c467 ON public.employee_register_employee USING btree (position_id);
 C   DROP INDEX public.employee_register_employee_position_id_c7c8c467;
       public         postgres    false    221            �           1259    16672 (   polls_analisecotacao_cliente_id_03d351b3    INDEX     o   CREATE INDEX polls_analisecotacao_cliente_id_03d351b3 ON public.polls_analisecotacao USING btree (cliente_id);
 <   DROP INDEX public.polls_analisecotacao_cliente_id_03d351b3;
       public         postgres    false    240            �           1259    16673 (   polls_analisecotacao_contato_id_87e7b7c5    INDEX     o   CREATE INDEX polls_analisecotacao_contato_id_87e7b7c5 ON public.polls_analisecotacao USING btree (contato_id);
 <   DROP INDEX public.polls_analisecotacao_contato_id_87e7b7c5;
       public         postgres    false    240            �           1259    16674 .   polls_analisecotacao_materia_prima_id_50b10b54    INDEX     {   CREATE INDEX polls_analisecotacao_materia_prima_id_50b10b54 ON public.polls_analisecotacao USING btree (materia_prima_id);
 B   DROP INDEX public.polls_analisecotacao_materia_prima_id_50b10b54;
       public         postgres    false    240            �           2606    16675 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    199    201    2899            �           2606    16680 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    199    197    2888            �           2606    16685 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    212    2926            �           2606    16690 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    204    197    2888            �           2606    16695 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    2901    204    203            �           2606    16700 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    201    207    2899            �           2606    16705 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    203    207    2901            �           2606    16710 &   employee_register_employee dimensao_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_employee
    ADD CONSTRAINT dimensao_id FOREIGN KEY (dimensao_id) REFERENCES public.employee_register_dimensao(id) DEFERRABLE INITIALLY DEFERRED;
 P   ALTER TABLE ONLY public.employee_register_employee DROP CONSTRAINT dimensao_id;
       public       postgres    false    219    221    2936            �           2606    16715 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    212    210    2926            �           2606    16720 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    203    210    2901            �           2606    16725 Q   employee_register_employee employee_register_em_position_id_c7c8c467_fk_employee_    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_employee
    ADD CONSTRAINT employee_register_em_position_id_c7c8c467_fk_employee_ FOREIGN KEY (position_id) REFERENCES public.employee_register_position(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.employee_register_employee DROP CONSTRAINT employee_register_em_position_id_c7c8c467_fk_employee_;
       public       postgres    false    228    221    2945            �           2606    16730 %   employee_register_employee empresa_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_employee
    ADD CONSTRAINT empresa_id FOREIGN KEY (empresa_id) REFERENCES public.employee_register_empresa(id) DEFERRABLE INITIALLY DEFERRED;
 O   ALTER TABLE ONLY public.employee_register_employee DROP CONSTRAINT empresa_id;
       public       postgres    false    2941    223    221            �           2606    16735 %   employee_register_cotacao fullname_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_cotacao
    ADD CONSTRAINT fullname_id FOREIGN KEY (fullname_id) REFERENCES public.employee_register_employee(id) DEFERRABLE INITIALLY DEFERRED;
 O   ALTER TABLE ONLY public.employee_register_cotacao DROP CONSTRAINT fullname_id;
       public       postgres    false    217    2938    221            �           2606    16740 &   employee_register_employee material_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_employee
    ADD CONSTRAINT material_id FOREIGN KEY (materia_id) REFERENCES public.employee_register_material(id) DEFERRABLE INITIALLY DEFERRED;
 P   ALTER TABLE ONLY public.employee_register_employee DROP CONSTRAINT material_id;
       public       postgres    false    225    221    2943            �           2606    16745    empresa pk_id_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT pk_id_cliente FOREIGN KEY (pk_id_cliente) REFERENCES public.cliente(id_cliente);
 ?   ALTER TABLE ONLY public.empresa DROP CONSTRAINT pk_id_cliente;
       public       postgres    false    2918    236    209            �           2606    16750    AnaliseCotacao pk_id_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public."AnaliseCotacao"
    ADD CONSTRAINT pk_id_cliente FOREIGN KEY (pk_id_cliente) REFERENCES public.cliente(id_cliente);
 H   ALTER TABLE ONLY public."AnaliseCotacao" DROP CONSTRAINT pk_id_cliente;
       public       postgres    false    2918    196    209            �           2606    16755    AnaliseCotacao pk_id_empresa    FK CONSTRAINT     �   ALTER TABLE ONLY public."AnaliseCotacao"
    ADD CONSTRAINT pk_id_empresa FOREIGN KEY (pk_id_empresa) REFERENCES public.empresa(id_empresa);
 H   ALTER TABLE ONLY public."AnaliseCotacao" DROP CONSTRAINT pk_id_empresa;
       public       postgres    false    236    2953    196            �           2606    16760 "   AnaliseCotacao pk_id_materia_prima    FK CONSTRAINT     �   ALTER TABLE ONLY public."AnaliseCotacao"
    ADD CONSTRAINT pk_id_materia_prima FOREIGN KEY (pk_id_materia_prima) REFERENCES public.materia_prima(id_material);
 N   ALTER TABLE ONLY public."AnaliseCotacao" DROP CONSTRAINT pk_id_materia_prima;
       public       postgres    false    2955    237    196            �           2606    16765 Q   polls_analisecotacao polls_analisecotacao_cliente_id_03d351b3_fk_polls_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.polls_analisecotacao
    ADD CONSTRAINT polls_analisecotacao_cliente_id_03d351b3_fk_polls_cliente_id FOREIGN KEY (cliente_id) REFERENCES public.polls_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.polls_analisecotacao DROP CONSTRAINT polls_analisecotacao_cliente_id_03d351b3_fk_polls_cliente_id;
       public       postgres    false    240    2966    242            �           2606    16770 Q   polls_analisecotacao polls_analisecotacao_contato_id_87e7b7c5_fk_polls_empresa_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.polls_analisecotacao
    ADD CONSTRAINT polls_analisecotacao_contato_id_87e7b7c5_fk_polls_empresa_id FOREIGN KEY (contato_id) REFERENCES public.polls_empresa(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.polls_analisecotacao DROP CONSTRAINT polls_analisecotacao_contato_id_87e7b7c5_fk_polls_empresa_id;
       public       postgres    false    2970    246    240            �           2606    16775 P   polls_analisecotacao polls_analisecotacao_materia_prima_id_50b10b54_fk_polls_mat    FK CONSTRAINT     �   ALTER TABLE ONLY public.polls_analisecotacao
    ADD CONSTRAINT polls_analisecotacao_materia_prima_id_50b10b54_fk_polls_mat FOREIGN KEY (materia_prima_id) REFERENCES public.polls_materia_prima(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.polls_analisecotacao DROP CONSTRAINT polls_analisecotacao_materia_prima_id_50b10b54_fk_polls_mat;
       public       postgres    false    240    248    2972            �           2606    16780 #   employee_register_employee senha_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_employee
    ADD CONSTRAINT senha_id FOREIGN KEY (senha_id) REFERENCES public.employee_register_senha(id) DEFERRABLE INITIALLY DEFERRED;
 M   ALTER TABLE ONLY public.employee_register_employee DROP CONSTRAINT senha_id;
       public       postgres    false    2947    230    221            �           2606    16785 +   employee_register_employee tratsuperfmag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_employee
    ADD CONSTRAINT tratsuperfmag_id FOREIGN KEY (tratsuperfmag_id) REFERENCES public.employee_register_tratsuperfmag(id) DEFERRABLE INITIALLY DEFERRED;
 U   ALTER TABLE ONLY public.employee_register_employee DROP CONSTRAINT tratsuperfmag_id;
       public       postgres    false    2949    221    232            �           2606    16790 +   employee_register_employee tratsuperfmet_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_register_employee
    ADD CONSTRAINT tratsuperfmet_id FOREIGN KEY (tratsuperfmet_id) REFERENCES public.employee_register_tratsuperfmet(id) DEFERRABLE INITIALLY DEFERRED;
 U   ALTER TABLE ONLY public.employee_register_employee DROP CONSTRAINT tratsuperfmet_id;
       public       postgres    false    2951    234    221            .      x������ � �      /      x������ � �      1      x������ � �      3   �  x�}�M�� ���)r�Q�@��\����0iK��lg������;_�(��o;����O����%���o?CP�����1*N�	���n�`�*�΢7ݲt�(TP-`�.Q���J3�	{���yz>D��7��fZF�H\�R"P$������o� %�Wq�(�=�{���uW����p���f@j�U���xC�+-0�f'���m�	�<Q�A팝�n�P2c�,׎m�-�ǵ���8Y��IPG��^�.�*IͼW���J����? 'αq�a��LjC�4kA���'̐ 8�����4������>��8����l���-��?�&�CP�M TN\s���C��ɬ8������1w�GcX�IhXd�������[��j4=�~z9'�J�И�$2V�I[�E&�a Y"�1-ݺ]c,��aQF����d�Fɔ������k�w-w���k��w]�]7u�{!myZ�t;`�ў4;=$o�'K���a2F����ZZF�H�HKjD���:��ay��_w����]Și�Y�+`X�}*F7{�,�>գ׽z��s�
y�u�V0���c��[���y���|�/�y�7.>�eL�4�2�b諐,0)�
Y�rq�O+��I? Ò2����R23��LI��\)I��,	�_�,		�����T�"`MuC��rA���~l��z�� �*��      5      x������ � �      6      x������ � �      9      x������ � �      ;      x������ � �      <      x������ � �      >   �   x���Kn�0D��a���ߥ�A(�C@?��·�R�AZt��7:zDI.䉓�G��\�EUr���L5�N���+����Z͖��W��)��u�Օ�:JD�g#On�탴2�}�+)6�c����ɸ
��Jl��N��0��'�?�CKV��vx�w�y��f�K�&#�C��������&��?rl��N�!���K�UN/�;h���w��?|�S7��      @   �  x���[�� �gg��D��b�e$��"�K�3jv_��'m��<����?&�����r�\lc`��oC��GG� ���0��.xc����	.����ƞ{?�� #�T��w��0^�D盙]?~9���=��p�ʰ�i���p`�3���)�"Sr[376,n6��{���7��m�.�*%)ʔ�(�Sט.��>�T� Y�ћB�J�����ND����H�ܸO���>QVئ�T��vK�&w��pP�u�ʗ�l�q�y����q6���^\}a��l|��Z΋��k�U�Mj�:z�ʿ�(j�1�7N�P�,�DW��wb�FlKL6���xs.m���4����Hu\�$W�.qU�����,@�Z�w	� >@v���=i�WJ�)|��)	��h��'�"�#!�[����)�����V�|����$���y: 䂻      B      x������ � �      C      x������ � �      E   4   x��A@  @�����%�t��3�Ӆ�H1q��Q�y�4>�LwL���\      G   �  x����N�0���Sd�B����̈́J� ��P&�`#E*NI^����7ȋq�S�@hS�Ė�8��w�}a�z� !�!�gi�d�LD��U��2B�#��Qpt=�!x�P�(��ɎL7σ>�&�����b%�qvU�DN��U=�A�|�k�D���t�x�Ns�Q�V��'�)��%@}�;V&О�7�a�W�g����O��rg��-+@�j�@`�O/���N��>�i~�r����J�OS��d ߑ0�K�����`��}��V~�z�6x+k��րڈ���W�Gz��c�}��s `r��2�"��ꃪږw���'�Q�9����`}j�AfuHC���^�N����g� �?�k�ս��{�/����=r�cE�WQ�o�3I�ϧx.���9��Ĺ�Jf�P�9.2)��ʒ�=E:UQ����T��e��8&��x�'��T��޽��d�Ӭ��t� '�d�      I   �   x�M�=
�@��z�{1�[�� �ml>�!,��$��Ie�)�bnaa�oFy��0�p����gu7�H��tG�\������[u��?aq���T��5��Q����pE*��_)���@AhM���iaTΖ�b�o~,����7      K   B  x�m�Qr� E�y�`Iy��|���
C4�f�����WW��
��Z��=��{$e����rg�W@f @
�@.
�ƻ����|	L��]F}��s����9��7�`�m1Gt�n{@ܸ�9 �pߠ��}|D�C;~v��a�ປ���reЀ�R�Rc��9i�b]X��Y�=�:Ϋڌw����X��}jU�8����7Rk�����9�v���|\�����2�6|��k>��k��/&����M?�')X���VQ�@`'�9k*��쳫Ǐ88%��H�����+$���VWis�p�x�($U^� ����p      M   {   x�E���0�3.f�1�K��c�'�Qo�l�+�$3!�TF�*�'�q�o��@>b�x�'��dZ9�F�G��ur�
j� P�9q&!%k��%]W��tJe[�Lb��G�My~��?��*$      N   (   x�3�t�M*JL-�2�t,�L*:���˘��Շ+F��� �J�      P   %   x�3��,��K-UpN,* �2��L�L�Ab1z\\\ +6�      R      x��ֽr� ��"CF]O�alӏ�s�Li���� ���7��_L����%�{��]o�?��.��>ϧ�z.�K��p�i��{F`�G�R6,�R0 {r�pf�ašW!f�$�|�F���Ң+�m�G�pjދ�Vi9�*��:
�õ�o��w��=	�������m�ҧd��:(,��i¥�ې��	/�P|ra����E���0Q�|��U��?Vj�=��n�~\���ڑL���	�qLl�/.L>�?�����"+�e�j��p�
����z���Y0fa      T   �   x�UQ9n�0��W�H90H��]�N�:�G,Jv��b�HH��~�������^�D�<^E?.FSRgz�����p �R�f��+trfz[��:Lj�襥�ɍ5�]��H�y/�f����P]`�c
���R�u��nN2�(����~��:��vw�Q�ø�h��s]��������qpL��uB�U�d�U�M�W�<�����?ň�S�a��`��v���w��ʽ+���qmbw���*�߭���aT      V      x������ � �      W      x������ � �      X      x������ � �      Y      x������ � �      Z      x������ � �      \      x������ � �      ^      x������ � �      `      x������ � �      b      x������ � �     