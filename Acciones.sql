ALTER TABLE multimedias DROP CONSTRAINT FK_multimedia;
ALTER TABLE multimedias ADD CONSTRAINT FK_multimedia FOREIGN KEY (idDirector) REFERENCES directores(id) ON DELETE SET NULL;

ALTER TABLE categorias DROP CONSTRAINT FK_categoriasM;
ALTER TABLE categorias ADD CONSTRAINT FK_categoriasM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE premiosMultimedia DROP CONSTRAINT FK_premiosMUL;
ALTER TABLE premiosMultimedia ADD CONSTRAINT FK_premiosMUL FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE temporadas DROP CONSTRAINT FK_temporadas;
ALTER TABLE temporadas ADD CONSTRAINT FK_temporadas FOREIGN KEY (idSeries) REFERENCES series(id) ON DELETE CASCADE;

ALTER TABLE capitulosSeries DROP CONSTRAINT FK_capitulosSE;
ALTER TABLE capitulosSeries ADD CONSTRAINT FK_capitulosSE FOREIGN KEY (idSerie) REFERENCES series(id) ON DELETE CASCADE;

ALTER TABLE capitulosDocumentales DROP CONSTRAINT FK_capitulosDoc;
ALTER TABLE capitulosDocumentales ADD CONSTRAINT FK_capitulosDoc FOREIGN KEY (idDocumental) REFERENCES documentales(id) ON DELETE CASCADE;

ALTER TABLE actua DROP CONSTRAINT FK_actuaA;
ALTER TABLE actua ADD CONSTRAINT FK_actuaA FOREIGN KEY (idActor) REFERENCES actores(id) ON DELETE SET NULL;

ALTER TABLE actua DROP CONSTRAINT FK_actuaM;
ALTER TABLE actua ADD CONSTRAINT FK_actuaM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE premiosActores DROP CONSTRAINT FK_premiosActo;
ALTER TABLE premiosActores ADD CONSTRAINT FK_premiosActo FOREIGN KEY (idActor) REFERENCES actores(id) ON DELETE CASCADE;

ALTER TABLE observa DROP CONSTRAINT FK_observaM;
ALTER TABLE observa ADD CONSTRAINT FK_observaM FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE SET NULL;

ALTER TABLE observa DROP CONSTRAINT FK_observaP;
ALTER TABLE observa ADD CONSTRAINT FK_observaP FOREIGN KEY (idPlantilla) REFERENCES plantillas(id) ON DELETE SET NULL;

ALTER TABLE plantillas DROP CONSTRAINT FK_plantillas;
ALTER TABLE plantillas ADD CONSTRAINT FK_plantillas FOREIGN KEY (idSuscripcion) REFERENCES suscripciones(id) ON DELETE CASCADE;

ALTER TABLE suscripciones DROP CONSTRAINT FK_suscripcionesU;
ALTER TABLE suscripciones ADD CONSTRAINT FK_suscripcionesU FOREIGN KEY (idUsuario) REFERENCES usuarios(id) ON DELETE CASCADE;

ALTER TABLE suscripciones DROP CONSTRAINT FK_suscripcionesP;
ALTER TABLE suscripciones ADD CONSTRAINT FK_suscripcionesP FOREIGN KEY (idPlan) REFERENCES planes(id) ON DELETE SET NULL;

/*ALTER TABLE definicionVistas DROP CONSTRAINT FK_definicionV;
ALTER TABLE definicionVistas ADD CONSTRAINT FK_definicionV FOREIGN KEY (idSuscripcion) REFERENCES suscripciones(id) ;*/

ALTER TABLE solicita DROP CONSTRAINT FK_solicitaU;
ALTER TABLE solicita ADD CONSTRAINT FK_solicitaU FOREIGN KEY (idUsuario) REFERENCES usuarios(id) ON DELETE SET NULL;

ALTER TABLE solicita DROP CONSTRAINT FK_solicitaS;
ALTER TABLE solicita ADD CONSTRAINT FK_solicitaS FOREIGN KEY (idSolicitud) REFERENCES solicitudes(id) ON DELETE CASCADE;

ALTER TABLE categoriasSeries DROP CONSTRAINT FK_categoriasS;
ALTER TABLE categoriasSeries ADD CONSTRAINT FK_categoriasS FOREIGN KEY (idSerie) REFERENCES series(id) ON DELETE CASCADE;

ALTER TABLE categoriasDocumentales DROP CONSTRAINT FK_categoriasD;
ALTER TABLE categoriasDocumentales ADD CONSTRAINT FK_categoriasD FOREIGN KEY (idDocumental) REFERENCES documentales(id) ON DELETE CASCADE;

ALTER TABLE series DROP CONSTRAINT FK_seriesi;
ALTER TABLE series ADD CONSTRAINT FK_seriesi FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE documentales DROP CONSTRAINT FK_documentalesi;
ALTER TABLE documentales ADD CONSTRAINT FK_documentalesi FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;

ALTER TABLE peliculas DROP CONSTRAINT FK_peliculasi;
ALTER TABLE peliculas ADD CONSTRAINT FK_peliculasi FOREIGN KEY (idMultimedia) REFERENCES multimedias(id) ON DELETE CASCADE;