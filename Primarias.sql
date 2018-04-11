ALTER TABLE multimedias ADD CONSTRAINT PK_multimedia PRIMARY KEY (id);
ALTER TABLE premiosMultimedia ADD CONSTRAINT PK_premiosM PRIMARY KEY (id,idMultimedia);
ALTER TABLE series ADD CONSTRAINT PK_series PRIMARY KEY (id);
ALTER TABLE temporadas ADD CONSTRAINT PK_temporadas PRIMARY KEY (id,idSeries);
ALTER TABLE capitulosSeries ADD CONSTRAINT PK_capitulosS PRIMARY KEY (id,idSerie);
ALTER TABLE documentales ADD CONSTRAINT PK_documentales PRIMARY KEY (id);
ALTER TABLE capitulosDocumentales ADD CONSTRAINT PK_capitulosDo PRIMARY KEY (id,idDocumental);
ALTER TABLE directores ADD CONSTRAINT PK_directores PRIMARY KEY (id);
ALTER TABLE actua ADD CONSTRAINT PK_actua PRIMARY KEY (idActor,idMultimedia);
ALTER TABLE actores ADD CONSTRAINT PK_actores PRIMARY KEY (id);
ALTER TABLE premiosActores ADD CONSTRAINT PK_premiosAc PRIMARY KEY (id,idActor);
ALTER TABLE observa ADD CONSTRAINT PK_observa PRIMARY KEY (idMultimedia,idPlantilla);
ALTER TABLE plantillas ADD CONSTRAINT PK_plantillas PRIMARY KEY(id);
ALTER TABLE suscripciones ADD CONSTRAINT PK_suscripciones PRIMARY KEY(id);
ALTER TABLE definicionVistas ADD CONSTRAINT PK_definiiconV PRIMARY KEY (nombre,idSuscripcion);
ALTER TABLE usuarios ADD CONSTRAINT PK_usuarios PRIMARY KEY (id);
ALTER TABLE solicita ADD CONSTRAINT PK_solicita PRIMARY KEY (idUsuario,idSolicitud);
ALTER TABLE solicitudes ADD CONSTRAINT PK_solicitudes PRIMARY KEY (id);
ALTER TABLE planes ADD CONSTRAINT PK_planes PRIMARY KEY (id);
ALTER TABLE categorias ADD CONSTRAINT PK_categoriasM PRIMARY KEY (id,idMultimedia);
ALTER TABLE categoriasSeries ADD CONSTRAINT PK_categoriasS PRIMARY KEY (id,idSerie);
ALTER TABLE categoriasDocumentales ADD CONSTRAINT PK_categoriasD PRIMARY KEY (id,idDocumental);