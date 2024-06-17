PGDMP  +    8                |         	   bibliteca    16.3    16.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397 	   bibliteca    DATABASE     |   CREATE DATABASE bibliteca WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE bibliteca;
                postgres    false            �            1259    16429    Autor    TABLE     �   CREATE TABLE public."Autor" (
    id integer NOT NULL,
    autor text NOT NULL,
    fecha_nac date,
    fecha_f date,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public."Autor";
       public         heap    postgres    false            �            1259    16428    Autor_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Autor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Autor_id_seq";
       public          postgres    false    222            �           0    0    Autor_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Autor_id_seq" OWNED BY public."Autor".id;
          public          postgres    false    221            �            1259    16569    Autor_pertenece    TABLE     �   CREATE TABLE public."Autor_pertenece" (
    id integer NOT NULL,
    id_libro integer NOT NULL,
    id_autor integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
 %   DROP TABLE public."Autor_pertenece";
       public         heap    postgres    false            �            1259    16568    Autor_pertenece_id_autor_seq    SEQUENCE     �   CREATE SEQUENCE public."Autor_pertenece_id_autor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Autor_pertenece_id_autor_seq";
       public          postgres    false    246            �           0    0    Autor_pertenece_id_autor_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Autor_pertenece_id_autor_seq" OWNED BY public."Autor_pertenece".id_autor;
          public          postgres    false    245            �            1259    16567    Autor_pertenece_id_libro_seq    SEQUENCE     �   CREATE SEQUENCE public."Autor_pertenece_id_libro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Autor_pertenece_id_libro_seq";
       public          postgres    false    246            �           0    0    Autor_pertenece_id_libro_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Autor_pertenece_id_libro_seq" OWNED BY public."Autor_pertenece".id_libro;
          public          postgres    false    244            �            1259    16566    Autor_pertenece_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Autor_pertenece_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Autor_pertenece_id_seq";
       public          postgres    false    246            �           0    0    Autor_pertenece_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Autor_pertenece_id_seq" OWNED BY public."Autor_pertenece".id;
          public          postgres    false    243            �            1259    16504 
   Biblioteca    TABLE     '  CREATE TABLE public."Biblioteca" (
    id integer NOT NULL,
    biblioteca text NOT NULL,
    ubicacion text,
    capacidad_pers numeric,
    id_usuario integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
     DROP TABLE public."Biblioteca";
       public         heap    postgres    false            �            1259    16502    Biblioteca_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Biblioteca_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Biblioteca_id_seq";
       public          postgres    false    237            �           0    0    Biblioteca_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Biblioteca_id_seq" OWNED BY public."Biblioteca".id;
          public          postgres    false    235            �            1259    16503    Biblioteca_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Biblioteca_id_usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Biblioteca_id_usuario_seq";
       public          postgres    false    237            �           0    0    Biblioteca_id_usuario_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Biblioteca_id_usuario_seq" OWNED BY public."Biblioteca".id_usuario;
          public          postgres    false    236            �            1259    16487    Bitacora    TABLE     *  CREATE TABLE public."Bitacora" (
    id integer NOT NULL,
    accion text,
    fecha date,
    hora time without time zone,
    modulo text,
    id_usuario integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public."Bitacora";
       public         heap    postgres    false            �            1259    16485    Bitacora_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Bitacora_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Bitacora_id_seq";
       public          postgres    false    234            �           0    0    Bitacora_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Bitacora_id_seq" OWNED BY public."Bitacora".id;
          public          postgres    false    232            �            1259    16486    Bitacora_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Bitacora_id_usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Bitacora_id_usuario_seq";
       public          postgres    false    234            �           0    0    Bitacora_id_usuario_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Bitacora_id_usuario_seq" OWNED BY public."Bitacora".id_usuario;
          public          postgres    false    233            �            1259    16449 	   Coleccion    TABLE     �   CREATE TABLE public."Coleccion" (
    id integer NOT NULL,
    coleccion text NOT NULL,
    descripcion text,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" time without time zone
);
    DROP TABLE public."Coleccion";
       public         heap    postgres    false            �            1259    16448    Coleccion_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Coleccion_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Coleccion_id_seq";
       public          postgres    false    226            �           0    0    Coleccion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Coleccion_id_seq" OWNED BY public."Coleccion".id;
          public          postgres    false    225                       1259    16706    Detalle_prestamo    TABLE     �  CREATE TABLE public."Detalle_prestamo" (
    id integer NOT NULL,
    id_prestamo integer NOT NULL,
    id_persona integer NOT NULL,
    hora_devolucion time without time zone,
    hora_salida time without time zone,
    observacion text,
    fecha_devolucion date,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
 &   DROP TABLE public."Detalle_prestamo";
       public         heap    postgres    false                       1259    16705    Detalle_prestamo_id_persona_seq    SEQUENCE     �   CREATE SEQUENCE public."Detalle_prestamo_id_persona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Detalle_prestamo_id_persona_seq";
       public          postgres    false    270            �           0    0    Detalle_prestamo_id_persona_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Detalle_prestamo_id_persona_seq" OWNED BY public."Detalle_prestamo".id_persona;
          public          postgres    false    269                       1259    16704     Detalle_prestamo_id_prestamo_seq    SEQUENCE     �   CREATE SEQUENCE public."Detalle_prestamo_id_prestamo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Detalle_prestamo_id_prestamo_seq";
       public          postgres    false    270            �           0    0     Detalle_prestamo_id_prestamo_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Detalle_prestamo_id_prestamo_seq" OWNED BY public."Detalle_prestamo".id_prestamo;
          public          postgres    false    268                       1259    16703    Detalle_prestamo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Detalle_prestamo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Detalle_prestamo_id_seq";
       public          postgres    false    270            �           0    0    Detalle_prestamo_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Detalle_prestamo_id_seq" OWNED BY public."Detalle_prestamo".id;
          public          postgres    false    267            �            1259    16459    Donador    TABLE     �   CREATE TABLE public."Donador" (
    id integer NOT NULL,
    donadores text NOT NULL,
    celular numeric NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public."Donador";
       public         heap    postgres    false            �            1259    16458    Donador_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Donador_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Donador_id_seq";
       public          postgres    false    228            �           0    0    Donador_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Donador_id_seq" OWNED BY public."Donador".id;
          public          postgres    false    227            �            1259    16439 	   Editorial    TABLE     �   CREATE TABLE public."Editorial" (
    id integer NOT NULL,
    editorial text NOT NULL,
    ubicacion text,
    anio numeric,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public."Editorial";
       public         heap    postgres    false            �            1259    16438    Editorial_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Editorial_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Editorial_id_seq";
       public          postgres    false    224            �           0    0    Editorial_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Editorial_id_seq" OWNED BY public."Editorial".id;
          public          postgres    false    223            �            1259    16590    Estado_libro    TABLE       CREATE TABLE public."Estado_libro" (
    id integer NOT NULL,
    fecha date NOT NULL,
    descripcion text,
    id_libro integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
 "   DROP TABLE public."Estado_libro";
       public         heap    postgres    false            �            1259    16589    Estado_libro_id_libro_seq    SEQUENCE     �   CREATE SEQUENCE public."Estado_libro_id_libro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Estado_libro_id_libro_seq";
       public          postgres    false    249            �           0    0    Estado_libro_id_libro_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Estado_libro_id_libro_seq" OWNED BY public."Estado_libro".id_libro;
          public          postgres    false    248            �            1259    16588    Estado_libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Estado_libro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Estado_libro_id_seq";
       public          postgres    false    249            �           0    0    Estado_libro_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Estado_libro_id_seq" OWNED BY public."Estado_libro".id;
          public          postgres    false    247            �            1259    16419    Genero    TABLE     �   CREATE TABLE public."Genero" (
    id integer NOT NULL,
    genero text NOT NULL,
    descripcion text,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public."Genero";
       public         heap    postgres    false            �            1259    16418    Genero_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Genero_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Genero_id_seq";
       public          postgres    false    220            �           0    0    Genero_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Genero_id_seq" OWNED BY public."Genero".id;
          public          postgres    false    219            �            1259    16524    Libro    TABLE     �  CREATE TABLE public."Libro" (
    id integer NOT NULL,
    titulo text NOT NULL,
    descripcion text,
    nro_paginas numeric,
    estado_prestamo boolean,
    fecha_version date,
    id_biblioteca integer NOT NULL,
    id_editorial integer NOT NULL,
    id_coleccion integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public."Libro";
       public         heap    postgres    false                       1259    16670    Libro_catalogo    TABLE     9  CREATE TABLE public."Libro_catalogo" (
    id integer NOT NULL,
    nro_libros_prestados numeric,
    nro_libros_disponibles numeric,
    nro_libros numeric,
    id_libro integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
 $   DROP TABLE public."Libro_catalogo";
       public         heap    postgres    false            �            1259    16521    Libro_id_biblioteca_seq    SEQUENCE     �   CREATE SEQUENCE public."Libro_id_biblioteca_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Libro_id_biblioteca_seq";
       public          postgres    false    242            �           0    0    Libro_id_biblioteca_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Libro_id_biblioteca_seq" OWNED BY public."Libro".id_biblioteca;
          public          postgres    false    239            �            1259    16523    Libro_id_coleccion_seq    SEQUENCE     �   CREATE SEQUENCE public."Libro_id_coleccion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Libro_id_coleccion_seq";
       public          postgres    false    242            �           0    0    Libro_id_coleccion_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Libro_id_coleccion_seq" OWNED BY public."Libro".id_coleccion;
          public          postgres    false    241            �            1259    16522    Libro_id_editorial_seq    SEQUENCE     �   CREATE SEQUENCE public."Libro_id_editorial_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Libro_id_editorial_seq";
       public          postgres    false    242            �           0    0    Libro_id_editorial_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Libro_id_editorial_seq" OWNED BY public."Libro".id_editorial;
          public          postgres    false    240            �            1259    16520    Libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Libro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Libro_id_seq";
       public          postgres    false    242            �           0    0    Libro_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Libro_id_seq" OWNED BY public."Libro".id;
          public          postgres    false    238                        1259    16629    Nota_salida    TABLE     �   CREATE TABLE public."Nota_salida" (
    id integer NOT NULL,
    fecha date,
    estado numeric,
    id_libro integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
 !   DROP TABLE public."Nota_salida";
       public         heap    postgres    false            �            1259    16628    Noota_salida_id_libro_seq    SEQUENCE     �   CREATE SEQUENCE public."Noota_salida_id_libro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Noota_salida_id_libro_seq";
       public          postgres    false    256            �           0    0    Noota_salida_id_libro_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."Noota_salida_id_libro_seq" OWNED BY public."Nota_salida".id_libro;
          public          postgres    false    255            �            1259    16627    Noota_salida_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Noota_salida_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Noota_salida_id_seq";
       public          postgres    false    256            �           0    0    Noota_salida_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public."Noota_salida_id_seq" OWNED BY public."Nota_salida".id;
          public          postgres    false    254                       1259    16647    Nota_entrega    TABLE       CREATE TABLE public."Nota_entrega" (
    id integer NOT NULL,
    fecha date,
    estado numeric,
    id_libro integer NOT NULL,
    id_donador integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
 "   DROP TABLE public."Nota_entrega";
       public         heap    postgres    false                       1259    16646    Nota_entrega_id_donador_seq    SEQUENCE     �   CREATE SEQUENCE public."Nota_entrega_id_donador_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Nota_entrega_id_donador_seq";
       public          postgres    false    260            �           0    0    Nota_entrega_id_donador_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Nota_entrega_id_donador_seq" OWNED BY public."Nota_entrega".id_donador;
          public          postgres    false    259                       1259    16645    Nota_entrega_id_libro_seq    SEQUENCE     �   CREATE SEQUENCE public."Nota_entrega_id_libro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Nota_entrega_id_libro_seq";
       public          postgres    false    260            �           0    0    Nota_entrega_id_libro_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Nota_entrega_id_libro_seq" OWNED BY public."Nota_entrega".id_libro;
          public          postgres    false    258                       1259    16644    Nota_entrega_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Nota_entrega_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Nota_entrega_id_seq";
       public          postgres    false    260            �           0    0    Nota_entrega_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Nota_entrega_id_seq" OWNED BY public."Nota_entrega".id;
          public          postgres    false    257            �            1259    16408    Persona    TABLE       CREATE TABLE public."Persona" (
    id integer NOT NULL,
    nombre text NOT NULL,
    celular numeric,
    ci numeric,
    correo text NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAT" timestamp without time zone
);
    DROP TABLE public."Persona";
       public         heap    postgres    false            �            1259    16407    Personas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Personas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Personas_id_seq";
       public          postgres    false    218            �           0    0    Personas_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public."Personas_id_seq" OWNED BY public."Persona".id;
          public          postgres    false    217            
           1259    16687    Prestamo    TABLE     �  CREATE TABLE public."Prestamo" (
    id integer NOT NULL,
    fecha_ini date,
    fecha_fin date,
    observacion text,
    mora numeric,
    dias_atraso numeric,
    multa_por_dia money,
    multa_total money,
    tipo_prestamo boolean,
    id_libro_catalgo integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public."Prestamo";
       public         heap    postgres    false            	           1259    16686    Prestamo_id_libro_catalgo_seq    SEQUENCE     �   CREATE SEQUENCE public."Prestamo_id_libro_catalgo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Prestamo_id_libro_catalgo_seq";
       public          postgres    false    266            �           0    0    Prestamo_id_libro_catalgo_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Prestamo_id_libro_catalgo_seq" OWNED BY public."Prestamo".id_libro_catalgo;
          public          postgres    false    265                       1259    16685    Prestamo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Prestamo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Prestamo_id_seq";
       public          postgres    false    266            �           0    0    Prestamo_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Prestamo_id_seq" OWNED BY public."Prestamo".id;
          public          postgres    false    264            �            1259    16399    Rol    TABLE     �   CREATE TABLE public."Rol" (
    id integer NOT NULL,
    rol text NOT NULL,
    descripcion text,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    state boolean DEFAULT true
);
    DROP TABLE public."Rol";
       public         heap    postgres    false            �            1259    16398 
   Rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Rol_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."Rol_id_seq";
       public          postgres    false    216            �           0    0 
   Rol_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."Rol_id_seq" OWNED BY public."Rol".id;
          public          postgres    false    215            �            1259    16608    Tiene_genero    TABLE     �   CREATE TABLE public."Tiene_genero" (
    id integer NOT NULL,
    id_genero integer NOT NULL,
    id_libro integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
 "   DROP TABLE public."Tiene_genero";
       public         heap    postgres    false            �            1259    16606    Tiene_genero_id_genero_seq    SEQUENCE     �   CREATE SEQUENCE public."Tiene_genero_id_genero_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Tiene_genero_id_genero_seq";
       public          postgres    false    253            �           0    0    Tiene_genero_id_genero_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Tiene_genero_id_genero_seq" OWNED BY public."Tiene_genero".id_genero;
          public          postgres    false    251            �            1259    16607    Tiene_genero_id_libro_seq    SEQUENCE     �   CREATE SEQUENCE public."Tiene_genero_id_libro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Tiene_genero_id_libro_seq";
       public          postgres    false    253            �           0    0    Tiene_genero_id_libro_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Tiene_genero_id_libro_seq" OWNED BY public."Tiene_genero".id_libro;
          public          postgres    false    252            �            1259    16605    Tiene_genero_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tiene_genero_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Tiene_genero_id_seq";
       public          postgres    false    253            �           0    0    Tiene_genero_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Tiene_genero_id_seq" OWNED BY public."Tiene_genero".id;
          public          postgres    false    250            �            1259    16470    Usuario    TABLE     *  CREATE TABLE public."Usuario" (
    id integer NOT NULL,
    usuario text NOT NULL,
    password text NOT NULL,
    id_persona integer NOT NULL,
    state boolean DEFAULT true,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    id_rol integer NOT NULL
);
    DROP TABLE public."Usuario";
       public         heap    postgres    false            �            1259    16469    Usuario_id_persona_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_id_persona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Usuario_id_persona_seq";
       public          postgres    false    231            �           0    0    Usuario_id_persona_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Usuario_id_persona_seq" OWNED BY public."Usuario".id_persona;
          public          postgres    false    230                       1259    16727    Usuario_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_id_rol_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Usuario_id_rol_seq";
       public          postgres    false    231            �           0    0    Usuario_id_rol_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Usuario_id_rol_seq" OWNED BY public."Usuario".id_rol;
          public          postgres    false    271            �            1259    16468    Usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Usuario_id_seq";
       public          postgres    false    231            �           0    0    Usuario_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Usuario_id_seq" OWNED BY public."Usuario".id;
          public          postgres    false    229                       1259    16669    ibro_catalog_id_libro_seq    SEQUENCE     �   CREATE SEQUENCE public.ibro_catalog_id_libro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ibro_catalog_id_libro_seq;
       public          postgres    false    263            �           0    0    ibro_catalog_id_libro_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ibro_catalog_id_libro_seq OWNED BY public."Libro_catalogo".id_libro;
          public          postgres    false    262                       1259    16668    ibro_catalog_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ibro_catalog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ibro_catalog_id_seq;
       public          postgres    false    263            �           0    0    ibro_catalog_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ibro_catalog_id_seq OWNED BY public."Libro_catalogo".id;
          public          postgres    false    261            �           2604    16432    Autor id    DEFAULT     h   ALTER TABLE ONLY public."Autor" ALTER COLUMN id SET DEFAULT nextval('public."Autor_id_seq"'::regclass);
 9   ALTER TABLE public."Autor" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16572    Autor_pertenece id    DEFAULT     |   ALTER TABLE ONLY public."Autor_pertenece" ALTER COLUMN id SET DEFAULT nextval('public."Autor_pertenece_id_seq"'::regclass);
 C   ALTER TABLE public."Autor_pertenece" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    243    246            �           2604    16573    Autor_pertenece id_libro    DEFAULT     �   ALTER TABLE ONLY public."Autor_pertenece" ALTER COLUMN id_libro SET DEFAULT nextval('public."Autor_pertenece_id_libro_seq"'::regclass);
 I   ALTER TABLE public."Autor_pertenece" ALTER COLUMN id_libro DROP DEFAULT;
       public          postgres    false    244    246    246            �           2604    16574    Autor_pertenece id_autor    DEFAULT     �   ALTER TABLE ONLY public."Autor_pertenece" ALTER COLUMN id_autor SET DEFAULT nextval('public."Autor_pertenece_id_autor_seq"'::regclass);
 I   ALTER TABLE public."Autor_pertenece" ALTER COLUMN id_autor DROP DEFAULT;
       public          postgres    false    246    245    246            �           2604    16507    Biblioteca id    DEFAULT     r   ALTER TABLE ONLY public."Biblioteca" ALTER COLUMN id SET DEFAULT nextval('public."Biblioteca_id_seq"'::regclass);
 >   ALTER TABLE public."Biblioteca" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    237    237            �           2604    16508    Biblioteca id_usuario    DEFAULT     �   ALTER TABLE ONLY public."Biblioteca" ALTER COLUMN id_usuario SET DEFAULT nextval('public."Biblioteca_id_usuario_seq"'::regclass);
 F   ALTER TABLE public."Biblioteca" ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    16490    Bitacora id    DEFAULT     n   ALTER TABLE ONLY public."Bitacora" ALTER COLUMN id SET DEFAULT nextval('public."Bitacora_id_seq"'::regclass);
 <   ALTER TABLE public."Bitacora" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    232    234            �           2604    16491    Bitacora id_usuario    DEFAULT     ~   ALTER TABLE ONLY public."Bitacora" ALTER COLUMN id_usuario SET DEFAULT nextval('public."Bitacora_id_usuario_seq"'::regclass);
 D   ALTER TABLE public."Bitacora" ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    16452    Coleccion id    DEFAULT     p   ALTER TABLE ONLY public."Coleccion" ALTER COLUMN id SET DEFAULT nextval('public."Coleccion_id_seq"'::regclass);
 =   ALTER TABLE public."Coleccion" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16709    Detalle_prestamo id    DEFAULT     ~   ALTER TABLE ONLY public."Detalle_prestamo" ALTER COLUMN id SET DEFAULT nextval('public."Detalle_prestamo_id_seq"'::regclass);
 D   ALTER TABLE public."Detalle_prestamo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    267    270            �           2604    16710    Detalle_prestamo id_prestamo    DEFAULT     �   ALTER TABLE ONLY public."Detalle_prestamo" ALTER COLUMN id_prestamo SET DEFAULT nextval('public."Detalle_prestamo_id_prestamo_seq"'::regclass);
 M   ALTER TABLE public."Detalle_prestamo" ALTER COLUMN id_prestamo DROP DEFAULT;
       public          postgres    false    270    268    270            �           2604    16711    Detalle_prestamo id_persona    DEFAULT     �   ALTER TABLE ONLY public."Detalle_prestamo" ALTER COLUMN id_persona SET DEFAULT nextval('public."Detalle_prestamo_id_persona_seq"'::regclass);
 L   ALTER TABLE public."Detalle_prestamo" ALTER COLUMN id_persona DROP DEFAULT;
       public          postgres    false    270    269    270            �           2604    16462 
   Donador id    DEFAULT     l   ALTER TABLE ONLY public."Donador" ALTER COLUMN id SET DEFAULT nextval('public."Donador_id_seq"'::regclass);
 ;   ALTER TABLE public."Donador" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16442    Editorial id    DEFAULT     p   ALTER TABLE ONLY public."Editorial" ALTER COLUMN id SET DEFAULT nextval('public."Editorial_id_seq"'::regclass);
 =   ALTER TABLE public."Editorial" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16593    Estado_libro id    DEFAULT     v   ALTER TABLE ONLY public."Estado_libro" ALTER COLUMN id SET DEFAULT nextval('public."Estado_libro_id_seq"'::regclass);
 @   ALTER TABLE public."Estado_libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    249    249            �           2604    16594    Estado_libro id_libro    DEFAULT     �   ALTER TABLE ONLY public."Estado_libro" ALTER COLUMN id_libro SET DEFAULT nextval('public."Estado_libro_id_libro_seq"'::regclass);
 F   ALTER TABLE public."Estado_libro" ALTER COLUMN id_libro DROP DEFAULT;
       public          postgres    false    248    249    249            �           2604    16422 	   Genero id    DEFAULT     j   ALTER TABLE ONLY public."Genero" ALTER COLUMN id SET DEFAULT nextval('public."Genero_id_seq"'::regclass);
 :   ALTER TABLE public."Genero" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16527    Libro id    DEFAULT     h   ALTER TABLE ONLY public."Libro" ALTER COLUMN id SET DEFAULT nextval('public."Libro_id_seq"'::regclass);
 9   ALTER TABLE public."Libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    238    242            �           2604    16528    Libro id_biblioteca    DEFAULT     ~   ALTER TABLE ONLY public."Libro" ALTER COLUMN id_biblioteca SET DEFAULT nextval('public."Libro_id_biblioteca_seq"'::regclass);
 D   ALTER TABLE public."Libro" ALTER COLUMN id_biblioteca DROP DEFAULT;
       public          postgres    false    239    242    242            �           2604    16529    Libro id_editorial    DEFAULT     |   ALTER TABLE ONLY public."Libro" ALTER COLUMN id_editorial SET DEFAULT nextval('public."Libro_id_editorial_seq"'::regclass);
 C   ALTER TABLE public."Libro" ALTER COLUMN id_editorial DROP DEFAULT;
       public          postgres    false    242    240    242            �           2604    16530    Libro id_coleccion    DEFAULT     |   ALTER TABLE ONLY public."Libro" ALTER COLUMN id_coleccion SET DEFAULT nextval('public."Libro_id_coleccion_seq"'::regclass);
 C   ALTER TABLE public."Libro" ALTER COLUMN id_coleccion DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    16673    Libro_catalogo id    DEFAULT     v   ALTER TABLE ONLY public."Libro_catalogo" ALTER COLUMN id SET DEFAULT nextval('public.ibro_catalog_id_seq'::regclass);
 B   ALTER TABLE public."Libro_catalogo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    261    263            �           2604    16674    Libro_catalogo id_libro    DEFAULT     �   ALTER TABLE ONLY public."Libro_catalogo" ALTER COLUMN id_libro SET DEFAULT nextval('public.ibro_catalog_id_libro_seq'::regclass);
 H   ALTER TABLE public."Libro_catalogo" ALTER COLUMN id_libro DROP DEFAULT;
       public          postgres    false    262    263    263            �           2604    16650    Nota_entrega id    DEFAULT     v   ALTER TABLE ONLY public."Nota_entrega" ALTER COLUMN id SET DEFAULT nextval('public."Nota_entrega_id_seq"'::regclass);
 @   ALTER TABLE public."Nota_entrega" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    260    260            �           2604    16651    Nota_entrega id_libro    DEFAULT     �   ALTER TABLE ONLY public."Nota_entrega" ALTER COLUMN id_libro SET DEFAULT nextval('public."Nota_entrega_id_libro_seq"'::regclass);
 F   ALTER TABLE public."Nota_entrega" ALTER COLUMN id_libro DROP DEFAULT;
       public          postgres    false    258    260    260            �           2604    16652    Nota_entrega id_donador    DEFAULT     �   ALTER TABLE ONLY public."Nota_entrega" ALTER COLUMN id_donador SET DEFAULT nextval('public."Nota_entrega_id_donador_seq"'::regclass);
 H   ALTER TABLE public."Nota_entrega" ALTER COLUMN id_donador DROP DEFAULT;
       public          postgres    false    260    259    260            �           2604    16632    Nota_salida id    DEFAULT     u   ALTER TABLE ONLY public."Nota_salida" ALTER COLUMN id SET DEFAULT nextval('public."Noota_salida_id_seq"'::regclass);
 ?   ALTER TABLE public."Nota_salida" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    254    256            �           2604    16633    Nota_salida id_libro    DEFAULT     �   ALTER TABLE ONLY public."Nota_salida" ALTER COLUMN id_libro SET DEFAULT nextval('public."Noota_salida_id_libro_seq"'::regclass);
 E   ALTER TABLE public."Nota_salida" ALTER COLUMN id_libro DROP DEFAULT;
       public          postgres    false    256    255    256            �           2604    16411 
   Persona id    DEFAULT     m   ALTER TABLE ONLY public."Persona" ALTER COLUMN id SET DEFAULT nextval('public."Personas_id_seq"'::regclass);
 ;   ALTER TABLE public."Persona" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16690    Prestamo id    DEFAULT     n   ALTER TABLE ONLY public."Prestamo" ALTER COLUMN id SET DEFAULT nextval('public."Prestamo_id_seq"'::regclass);
 <   ALTER TABLE public."Prestamo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    264    266            �           2604    16691    Prestamo id_libro_catalgo    DEFAULT     �   ALTER TABLE ONLY public."Prestamo" ALTER COLUMN id_libro_catalgo SET DEFAULT nextval('public."Prestamo_id_libro_catalgo_seq"'::regclass);
 J   ALTER TABLE public."Prestamo" ALTER COLUMN id_libro_catalgo DROP DEFAULT;
       public          postgres    false    266    265    266            �           2604    16402    Rol id    DEFAULT     d   ALTER TABLE ONLY public."Rol" ALTER COLUMN id SET DEFAULT nextval('public."Rol_id_seq"'::regclass);
 7   ALTER TABLE public."Rol" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16611    Tiene_genero id    DEFAULT     v   ALTER TABLE ONLY public."Tiene_genero" ALTER COLUMN id SET DEFAULT nextval('public."Tiene_genero_id_seq"'::regclass);
 @   ALTER TABLE public."Tiene_genero" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    250    253            �           2604    16612    Tiene_genero id_genero    DEFAULT     �   ALTER TABLE ONLY public."Tiene_genero" ALTER COLUMN id_genero SET DEFAULT nextval('public."Tiene_genero_id_genero_seq"'::regclass);
 G   ALTER TABLE public."Tiene_genero" ALTER COLUMN id_genero DROP DEFAULT;
       public          postgres    false    251    253    253            �           2604    16613    Tiene_genero id_libro    DEFAULT     �   ALTER TABLE ONLY public."Tiene_genero" ALTER COLUMN id_libro SET DEFAULT nextval('public."Tiene_genero_id_libro_seq"'::regclass);
 F   ALTER TABLE public."Tiene_genero" ALTER COLUMN id_libro DROP DEFAULT;
       public          postgres    false    252    253    253            �           2604    16473 
   Usuario id    DEFAULT     l   ALTER TABLE ONLY public."Usuario" ALTER COLUMN id SET DEFAULT nextval('public."Usuario_id_seq"'::regclass);
 ;   ALTER TABLE public."Usuario" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    229    231            �           2604    16474    Usuario id_persona    DEFAULT     |   ALTER TABLE ONLY public."Usuario" ALTER COLUMN id_persona SET DEFAULT nextval('public."Usuario_id_persona_seq"'::regclass);
 C   ALTER TABLE public."Usuario" ALTER COLUMN id_persona DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16728    Usuario id_rol    DEFAULT     t   ALTER TABLE ONLY public."Usuario" ALTER COLUMN id_rol SET DEFAULT nextval('public."Usuario_id_rol_seq"'::regclass);
 ?   ALTER TABLE public."Usuario" ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    271    231            �          0    16429    Autor 
   TABLE DATA           a   COPY public."Autor" (id, autor, fecha_nac, fecha_f, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    222   d      �          0    16569    Autor_pertenece 
   TABLE DATA           d   COPY public."Autor_pertenece" (id, id_libro, id_autor, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    246   �      �          0    16504 
   Biblioteca 
   TABLE DATA           ~   COPY public."Biblioteca" (id, biblioteca, ubicacion, capacidad_pers, id_usuario, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   �      �          0    16487    Bitacora 
   TABLE DATA           r   COPY public."Bitacora" (id, accion, fecha, hora, modulo, id_usuario, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    234   �      �          0    16449 	   Coleccion 
   TABLE DATA           b   COPY public."Coleccion" (id, coleccion, descripcion, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    226   �      �          0    16706    Detalle_prestamo 
   TABLE DATA           �   COPY public."Detalle_prestamo" (id, id_prestamo, id_persona, hora_devolucion, hora_salida, observacion, fecha_devolucion, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    270   �      �          0    16459    Donador 
   TABLE DATA           \   COPY public."Donador" (id, donadores, celular, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    228         �          0    16439 	   Editorial 
   TABLE DATA           f   COPY public."Editorial" (id, editorial, ubicacion, anio, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    224   /      �          0    16590    Estado_libro 
   TABLE DATA           k   COPY public."Estado_libro" (id, fecha, descripcion, id_libro, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   L      �          0    16419    Genero 
   TABLE DATA           \   COPY public."Genero" (id, genero, descripcion, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   i      �          0    16524    Libro 
   TABLE DATA           �   COPY public."Libro" (id, titulo, descripcion, nro_paginas, estado_prestamo, fecha_version, id_biblioteca, id_editorial, id_coleccion, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    242   �      �          0    16670    Libro_catalogo 
   TABLE DATA           �   COPY public."Libro_catalogo" (id, nro_libros_prestados, nro_libros_disponibles, nro_libros, id_libro, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   �      �          0    16647    Nota_entrega 
   TABLE DATA           r   COPY public."Nota_entrega" (id, fecha, estado, id_libro, id_donador, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    260   �      �          0    16629    Nota_salida 
   TABLE DATA           e   COPY public."Nota_salida" (id, fecha, estado, id_libro, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    256   �      �          0    16408    Persona 
   TABLE DATA           e   COPY public."Persona" (id, nombre, celular, ci, correo, state, "createdAt", "updatedAT") FROM stdin;
    public          postgres    false    218   �      �          0    16687    Prestamo 
   TABLE DATA           �   COPY public."Prestamo" (id, fecha_ini, fecha_fin, observacion, mora, dias_atraso, multa_por_dia, multa_total, tipo_prestamo, id_libro_catalgo, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    266         �          0    16399    Rol 
   TABLE DATA           V   COPY public."Rol" (id, rol, descripcion, "createdAt", "updatedAt", state) FROM stdin;
    public          postgres    false    216   4      �          0    16608    Tiene_genero 
   TABLE DATA           b   COPY public."Tiene_genero" (id, id_genero, id_libro, state, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    253   Q      �          0    16470    Usuario 
   TABLE DATA           o   COPY public."Usuario" (id, usuario, password, id_persona, state, "createdAt", "updatedAt", id_rol) FROM stdin;
    public          postgres    false    231   n      �           0    0    Autor_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Autor_id_seq"', 1, false);
          public          postgres    false    221            �           0    0    Autor_pertenece_id_autor_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Autor_pertenece_id_autor_seq"', 1, false);
          public          postgres    false    245            �           0    0    Autor_pertenece_id_libro_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Autor_pertenece_id_libro_seq"', 1, false);
          public          postgres    false    244            �           0    0    Autor_pertenece_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Autor_pertenece_id_seq"', 1, false);
          public          postgres    false    243            �           0    0    Biblioteca_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Biblioteca_id_seq"', 1, false);
          public          postgres    false    235            �           0    0    Biblioteca_id_usuario_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Biblioteca_id_usuario_seq"', 1, false);
          public          postgres    false    236            �           0    0    Bitacora_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Bitacora_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    Bitacora_id_usuario_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Bitacora_id_usuario_seq"', 1, false);
          public          postgres    false    233            �           0    0    Coleccion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Coleccion_id_seq"', 1, false);
          public          postgres    false    225            �           0    0    Detalle_prestamo_id_persona_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Detalle_prestamo_id_persona_seq"', 1, false);
          public          postgres    false    269            �           0    0     Detalle_prestamo_id_prestamo_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Detalle_prestamo_id_prestamo_seq"', 1, false);
          public          postgres    false    268            �           0    0    Detalle_prestamo_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Detalle_prestamo_id_seq"', 1, false);
          public          postgres    false    267            �           0    0    Donador_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Donador_id_seq"', 1, false);
          public          postgres    false    227            �           0    0    Editorial_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Editorial_id_seq"', 1, false);
          public          postgres    false    223            �           0    0    Estado_libro_id_libro_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Estado_libro_id_libro_seq"', 1, false);
          public          postgres    false    248            �           0    0    Estado_libro_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Estado_libro_id_seq"', 1, false);
          public          postgres    false    247            �           0    0    Genero_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Genero_id_seq"', 1, false);
          public          postgres    false    219            �           0    0    Libro_id_biblioteca_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Libro_id_biblioteca_seq"', 1, false);
          public          postgres    false    239            �           0    0    Libro_id_coleccion_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Libro_id_coleccion_seq"', 1, false);
          public          postgres    false    241                        0    0    Libro_id_editorial_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Libro_id_editorial_seq"', 1, false);
          public          postgres    false    240                       0    0    Libro_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Libro_id_seq"', 1, false);
          public          postgres    false    238                       0    0    Noota_salida_id_libro_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Noota_salida_id_libro_seq"', 1, false);
          public          postgres    false    255                       0    0    Noota_salida_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Noota_salida_id_seq"', 1, false);
          public          postgres    false    254                       0    0    Nota_entrega_id_donador_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Nota_entrega_id_donador_seq"', 1, false);
          public          postgres    false    259                       0    0    Nota_entrega_id_libro_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Nota_entrega_id_libro_seq"', 1, false);
          public          postgres    false    258                       0    0    Nota_entrega_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Nota_entrega_id_seq"', 1, false);
          public          postgres    false    257                       0    0    Personas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Personas_id_seq"', 1, false);
          public          postgres    false    217                       0    0    Prestamo_id_libro_catalgo_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Prestamo_id_libro_catalgo_seq"', 1, false);
          public          postgres    false    265            	           0    0    Prestamo_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Prestamo_id_seq"', 1, false);
          public          postgres    false    264            
           0    0 
   Rol_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Rol_id_seq"', 1, false);
          public          postgres    false    215                       0    0    Tiene_genero_id_genero_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Tiene_genero_id_genero_seq"', 1, false);
          public          postgres    false    251                       0    0    Tiene_genero_id_libro_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Tiene_genero_id_libro_seq"', 1, false);
          public          postgres    false    252                       0    0    Tiene_genero_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Tiene_genero_id_seq"', 1, false);
          public          postgres    false    250                       0    0    Usuario_id_persona_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Usuario_id_persona_seq"', 1, false);
          public          postgres    false    230                       0    0    Usuario_id_rol_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Usuario_id_rol_seq"', 1, false);
          public          postgres    false    271                       0    0    Usuario_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Usuario_id_seq"', 1, false);
          public          postgres    false    229                       0    0    ibro_catalog_id_libro_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ibro_catalog_id_libro_seq', 1, false);
          public          postgres    false    262                       0    0    ibro_catalog_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ibro_catalog_id_seq', 1, false);
          public          postgres    false    261            �           2606    16437    Autor pk_autor 
   CONSTRAINT     N   ALTER TABLE ONLY public."Autor"
    ADD CONSTRAINT pk_autor PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Autor" DROP CONSTRAINT pk_autor;
       public            postgres    false    222            �           2606    16577 "   Autor_pertenece pk_autor_pertenece 
   CONSTRAINT     b   ALTER TABLE ONLY public."Autor_pertenece"
    ADD CONSTRAINT pk_autor_pertenece PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Autor_pertenece" DROP CONSTRAINT pk_autor_pertenece;
       public            postgres    false    246            �           2606    16513    Biblioteca pk_biblioteca 
   CONSTRAINT     X   ALTER TABLE ONLY public."Biblioteca"
    ADD CONSTRAINT pk_biblioteca PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Biblioteca" DROP CONSTRAINT pk_biblioteca;
       public            postgres    false    237            �           2606    16496    Bitacora pk_bitacora 
   CONSTRAINT     T   ALTER TABLE ONLY public."Bitacora"
    ADD CONSTRAINT pk_bitacora PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Bitacora" DROP CONSTRAINT pk_bitacora;
       public            postgres    false    234            �           2606    16457    Coleccion pk_coleccion 
   CONSTRAINT     V   ALTER TABLE ONLY public."Coleccion"
    ADD CONSTRAINT pk_coleccion PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Coleccion" DROP CONSTRAINT pk_coleccion;
       public            postgres    false    226            �           2606    16716 $   Detalle_prestamo pk_detalle_prestamo 
   CONSTRAINT     d   ALTER TABLE ONLY public."Detalle_prestamo"
    ADD CONSTRAINT pk_detalle_prestamo PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Detalle_prestamo" DROP CONSTRAINT pk_detalle_prestamo;
       public            postgres    false    270            �           2606    16467    Donador pk_donador 
   CONSTRAINT     R   ALTER TABLE ONLY public."Donador"
    ADD CONSTRAINT pk_donador PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Donador" DROP CONSTRAINT pk_donador;
       public            postgres    false    228            �           2606    16447    Editorial pk_editorial 
   CONSTRAINT     V   ALTER TABLE ONLY public."Editorial"
    ADD CONSTRAINT pk_editorial PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Editorial" DROP CONSTRAINT pk_editorial;
       public            postgres    false    224            �           2606    16599    Estado_libro pk_estado_libro 
   CONSTRAINT     \   ALTER TABLE ONLY public."Estado_libro"
    ADD CONSTRAINT pk_estado_libro PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Estado_libro" DROP CONSTRAINT pk_estado_libro;
       public            postgres    false    249            �           2606    16427    Genero pk_genero 
   CONSTRAINT     P   ALTER TABLE ONLY public."Genero"
    ADD CONSTRAINT pk_genero PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Genero" DROP CONSTRAINT pk_genero;
       public            postgres    false    220            �           2606    16679     Libro_catalogo pk_libro_catalogo 
   CONSTRAINT     `   ALTER TABLE ONLY public."Libro_catalogo"
    ADD CONSTRAINT pk_libro_catalogo PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Libro_catalogo" DROP CONSTRAINT pk_libro_catalogo;
       public            postgres    false    263            �           2606    16535    Libro pk_libros 
   CONSTRAINT     O   ALTER TABLE ONLY public."Libro"
    ADD CONSTRAINT pk_libros PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public."Libro" DROP CONSTRAINT pk_libros;
       public            postgres    false    242            �           2606    16657    Nota_entrega pk_nota_entrada 
   CONSTRAINT     \   ALTER TABLE ONLY public."Nota_entrega"
    ADD CONSTRAINT pk_nota_entrada PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Nota_entrega" DROP CONSTRAINT pk_nota_entrada;
       public            postgres    false    260            �           2606    16638    Nota_salida pk_nota_salida 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Nota_salida"
    ADD CONSTRAINT pk_nota_salida PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Nota_salida" DROP CONSTRAINT pk_nota_salida;
       public            postgres    false    256            �           2606    16416    Persona pk_personas 
   CONSTRAINT     S   ALTER TABLE ONLY public."Persona"
    ADD CONSTRAINT pk_personas PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public."Persona" DROP CONSTRAINT pk_personas;
       public            postgres    false    218            �           2606    16696    Prestamo pk_prestamo 
   CONSTRAINT     T   ALTER TABLE ONLY public."Prestamo"
    ADD CONSTRAINT pk_prestamo PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Prestamo" DROP CONSTRAINT pk_prestamo;
       public            postgres    false    266            �           2606    16406 
   Rol pk_rol 
   CONSTRAINT     J   ALTER TABLE ONLY public."Rol"
    ADD CONSTRAINT pk_rol PRIMARY KEY (id);
 6   ALTER TABLE ONLY public."Rol" DROP CONSTRAINT pk_rol;
       public            postgres    false    216            �           2606    16616    Tiene_genero pk_tiene_genero 
   CONSTRAINT     \   ALTER TABLE ONLY public."Tiene_genero"
    ADD CONSTRAINT pk_tiene_genero PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Tiene_genero" DROP CONSTRAINT pk_tiene_genero;
       public            postgres    false    253            �           2606    16479    Usuario pk_usuario 
   CONSTRAINT     R   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT pk_usuario;
       public            postgres    false    231            �           2606    16583    Autor_pertenece fk_autor    FK CONSTRAINT     |   ALTER TABLE ONLY public."Autor_pertenece"
    ADD CONSTRAINT fk_autor FOREIGN KEY (id_autor) REFERENCES public."Autor"(id);
 D   ALTER TABLE ONLY public."Autor_pertenece" DROP CONSTRAINT fk_autor;
       public          postgres    false    246    4807    222            �           2606    16546    Libro fk_biblioteca    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libro"
    ADD CONSTRAINT fk_biblioteca FOREIGN KEY (id_biblioteca) REFERENCES public."Biblioteca"(id);
 ?   ALTER TABLE ONLY public."Libro" DROP CONSTRAINT fk_biblioteca;
       public          postgres    false    237    4819    242            �           2606    16536    Libro fk_coleccion    FK CONSTRAINT     ~   ALTER TABLE ONLY public."Libro"
    ADD CONSTRAINT fk_coleccion FOREIGN KEY (id_coleccion) REFERENCES public."Coleccion"(id);
 >   ALTER TABLE ONLY public."Libro" DROP CONSTRAINT fk_coleccion;
       public          postgres    false    242    4811    226            �           2606    16663    Nota_entrega fk_donador    FK CONSTRAINT        ALTER TABLE ONLY public."Nota_entrega"
    ADD CONSTRAINT fk_donador FOREIGN KEY (id_donador) REFERENCES public."Donador"(id);
 C   ALTER TABLE ONLY public."Nota_entrega" DROP CONSTRAINT fk_donador;
       public          postgres    false    4813    228    260            �           2606    16541    Libro fk_editorial    FK CONSTRAINT     ~   ALTER TABLE ONLY public."Libro"
    ADD CONSTRAINT fk_editorial FOREIGN KEY (id_editorial) REFERENCES public."Editorial"(id);
 >   ALTER TABLE ONLY public."Libro" DROP CONSTRAINT fk_editorial;
       public          postgres    false    4809    242    224            �           2606    16617    Tiene_genero fk_genero    FK CONSTRAINT     |   ALTER TABLE ONLY public."Tiene_genero"
    ADD CONSTRAINT fk_genero FOREIGN KEY (id_genero) REFERENCES public."Genero"(id);
 B   ALTER TABLE ONLY public."Tiene_genero" DROP CONSTRAINT fk_genero;
       public          postgres    false    253    4805    220            �           2606    16578    Autor_pertenece fk_libro    FK CONSTRAINT     |   ALTER TABLE ONLY public."Autor_pertenece"
    ADD CONSTRAINT fk_libro FOREIGN KEY (id_libro) REFERENCES public."Libro"(id);
 D   ALTER TABLE ONLY public."Autor_pertenece" DROP CONSTRAINT fk_libro;
       public          postgres    false    242    246    4821            �           2606    16600    Estado_libro fk_libro    FK CONSTRAINT     y   ALTER TABLE ONLY public."Estado_libro"
    ADD CONSTRAINT fk_libro FOREIGN KEY (id_libro) REFERENCES public."Libro"(id);
 A   ALTER TABLE ONLY public."Estado_libro" DROP CONSTRAINT fk_libro;
       public          postgres    false    4821    249    242            �           2606    16639    Nota_salida fk_libro    FK CONSTRAINT     x   ALTER TABLE ONLY public."Nota_salida"
    ADD CONSTRAINT fk_libro FOREIGN KEY (id_libro) REFERENCES public."Libro"(id);
 @   ALTER TABLE ONLY public."Nota_salida" DROP CONSTRAINT fk_libro;
       public          postgres    false    256    242    4821            �           2606    16658    Nota_entrega fk_libro    FK CONSTRAINT     y   ALTER TABLE ONLY public."Nota_entrega"
    ADD CONSTRAINT fk_libro FOREIGN KEY (id_libro) REFERENCES public."Libro"(id);
 A   ALTER TABLE ONLY public."Nota_entrega" DROP CONSTRAINT fk_libro;
       public          postgres    false    4821    260    242            �           2606    16680    Libro_catalogo fk_libro    FK CONSTRAINT     {   ALTER TABLE ONLY public."Libro_catalogo"
    ADD CONSTRAINT fk_libro FOREIGN KEY (id_libro) REFERENCES public."Libro"(id);
 C   ALTER TABLE ONLY public."Libro_catalogo" DROP CONSTRAINT fk_libro;
       public          postgres    false    4821    242    263            �           2606    16697    Prestamo fk_libro_catalogo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Prestamo"
    ADD CONSTRAINT fk_libro_catalogo FOREIGN KEY (id_libro_catalgo) REFERENCES public."Libro_catalogo"(id);
 F   ALTER TABLE ONLY public."Prestamo" DROP CONSTRAINT fk_libro_catalogo;
       public          postgres    false    266    263    4833            �           2606    16561    Usuario fk_persona    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT fk_persona FOREIGN KEY (id_persona) REFERENCES public."Persona"(id) NOT VALID;
 >   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT fk_persona;
       public          postgres    false    4803    231    218            �           2606    16722    Detalle_prestamo fk_persona    FK CONSTRAINT     �   ALTER TABLE ONLY public."Detalle_prestamo"
    ADD CONSTRAINT fk_persona FOREIGN KEY (id_persona) REFERENCES public."Persona"(id);
 G   ALTER TABLE ONLY public."Detalle_prestamo" DROP CONSTRAINT fk_persona;
       public          postgres    false    4803    218    270            �           2606    16717    Detalle_prestamo fk_prestamo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Detalle_prestamo"
    ADD CONSTRAINT fk_prestamo FOREIGN KEY (id_prestamo) REFERENCES public."Prestamo"(id);
 H   ALTER TABLE ONLY public."Detalle_prestamo" DROP CONSTRAINT fk_prestamo;
       public          postgres    false    266    4835    270            �           2606    16735    Usuario fk_rol    FK CONSTRAINT     x   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT fk_rol FOREIGN KEY (id_rol) REFERENCES public."Rol"(id) NOT VALID;
 :   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT fk_rol;
       public          postgres    false    216    231    4801            �           2606    16551    Biblioteca fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public."Biblioteca"
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id) NOT VALID;
 A   ALTER TABLE ONLY public."Biblioteca" DROP CONSTRAINT fk_usuario;
       public          postgres    false    237    4815    231            �           2606    16556    Bitacora fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public."Bitacora"
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id) NOT VALID;
 ?   ALTER TABLE ONLY public."Bitacora" DROP CONSTRAINT fk_usuario;
       public          postgres    false    231    234    4815            �           2606    16622    Tiene_genero id_libro    FK CONSTRAINT     y   ALTER TABLE ONLY public."Tiene_genero"
    ADD CONSTRAINT id_libro FOREIGN KEY (id_libro) REFERENCES public."Libro"(id);
 A   ALTER TABLE ONLY public."Tiene_genero" DROP CONSTRAINT id_libro;
       public          postgres    false    242    253    4821            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     