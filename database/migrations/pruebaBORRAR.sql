------------------------------
-- Archivo de base de datos --
------------------------------

DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
      id            bigserial       PRIMARY KEY
    , nombre        VARCHAR(255)    NOT NULL UNIQUE
    , email         VARCHAR(255)    NOT NULL
    , rol           VARCHAR(255)    NOT NULL
    , nom_completo  VARCHAR(255)    NOT NULL
    , biografia     VARCHAR(255)
    , idioma        VARCHAR(255)
    , auth_key      VARCHAR(255)
    , password      VARCHAR(255)    NOT NULL


    $table->id();
            $table->string('nombre');
            $table->string('apellidos');
            $table->string('nickname');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->foreignId('current_team_id')->nullable();
            $table->string('profile_photo_path', 2048)->nullable();
            $table->timestamps();
);

DROP TABLE IF EXISTS galerias CASCADE;

CREATE TABLE galerias (
      id            bigserial       PRIMARY KEY
    , titulo        VARCHAR(40)     NOT NULL
    , user_id        bigint          NOT NULL REFERENCES usuarios(id)
);

DROP TABLE IF EXISTS colecciones CASCADE;

CREATE TABLE colecciones (
      id            bigserial       PRIMARY KEY
    , titulo        VARCHAR(40)     NOT NULL
    , por_defecto   BOOLEAN         NOT NULL
    , user_id    bigint          NOT NULL REFERENCES usuarios(id)
);

DROP TABLE IF EXISTS publicaciones CASCADE;

CREATE TABLE publicaciones (
      id            bigserial       PRIMARY KEY
    , titulo        VARCHAR(40)     NOT NULL
    , descripcion   VARCHAR(500)
    , user_id    bigint          NOT NULL REFERENCES usuarios(id)
);

DROP TABLE IF EXISTS galerias_publicaciones CASCADE;

CREATE TABLE galerias_publicaciones (
      id                bigserial       PRIMARY KEY
    , galeria_id        bigint          NOT NULL REFERENCES galerias(id)
    , publicacion_id    bigint          NOT NULL REFERENCES publicaciones(id)
);

DROP TABLE IF EXISTS colecciones_publicaciones CASCADE;

CREATE TABLE colecciones_publicaciones (
      id                bigserial       PRIMARY KEY
    , galeria_id        bigint          NOT NULL REFERENCES galerias(id)
    , publicacion_id    bigint          NOT NULL REFERENCES publicaciones(id)
);

DROP TABLE IF EXISTS archivos CASCADE;

CREATE TABLE archivos (
      id                bigserial       PRIMARY KEY
    , nombre            VARCHAR(255)    NOT NULL
    , extension         VARCHAR(10)     NOT NULL
    , publicacion_id    bigint          NOT NULL REFERENCES publicaciones(id)
);

DROP TABLE IF EXISTS avatares CASCADE;

CREATE TABLE avatares (
      id            bigserial       PRIMARY KEY
    , user_id    bigint          NOT NULL REFERENCES usuarios(id)
    , archivo_id    bigint          NOT NULL REFERENCES archivos(id)
);

DROP TABLE IF EXISTS recomendaciones CASCADE;

CREATE TABLE recomendaciones (
      id                bigserial       PRIMARY KEY
    , user_id        bigint          NOT NULL REFERENCES usuarios(id)
    , publicacion_id    bigint          NOT NULL REFERENCES publicaciones(id)
    , destinatario_id   bigint          NOT NULL REFERENCES usuarios(id)
    , texto             VARCHAR(255)
);

DROP TABLE IF EXISTS comentarios CASCADE;

CREATE TABLE comentarios (
      id            bigserial       PRIMARY KEY
    , puntos        smallint         NOT NULL
    , fortalezas    VARCHAR(255)    NOT NULL
    , consejos      VARCHAR(255)    NOT NULL
    , padre_id      bigint          REFERENCES comentarios(id)
    , created_at    timestamp(0)    NOT NULL DEFAULT current_timestamp
);

DROP TABLE IF EXISTS reportes CASCADE;

CREATE TABLE reportes (
      id            bigserial       PRIMARY KEY
    , reportador_id bigint          NOT NULL REFERENCES usuarios(id)
    , reportado_id  bigint          NOT NULL REFERENCES usuarios(id)
    , razon         VARCHAR(255)    NOT NULL
    , created_at    timestamp(0)    NOT NULL DEFAULT current_timestamp
);

DROP TABLE IF EXISTS mensajes CASCADE;

CREATE TABLE mensajes (
      id            bigserial       PRIMARY KEY
    , emisor_id     bigint          NOT NULL REFERENCES usuarios(id)
    , receptor_id   bigint          NOT NULL REFERENCES usuarios(id)
    , created_at    timestamp(0)    NOT NULL DEFAULT current_timestamp
);

DROP TABLE IF EXISTS seguidores CASCADE;

CREATE TABLE seguidores (
      id            bigserial      PRIMARY KEY
    , seguidor_id     bigint       NOT NULL REFERENCES usuarios(id)
    , seguido_id   bigint          NOT NULL REFERENCES usuarios(id)
);