% Datos del caso
acusado(2, "Harold Shipman", "Doctor Muerte").
crimen(2, asesinato_en_serie).
crimen(2, falsificacion_documentos).
nivel_empatia(2, muy_bajo).

% Recuerdos disponibles
recuerdo_disponible("dolor de las familias").
recuerdo_disponible("sufrimiento de las víctimas").
recuerdo_disponible("perdida irreparable").

% Resultados esperados
resultado_esperado(2, "remordimiento y conciencia moral").

% Reglas del sistema

% Selección de recuerdos basada en el crimen y nivel de empatía
seleccionar_recuerdo(Crimen, Empatia, Recuerdo) :-
    crimen(_, Crimen),
    nivel_empatia(_, Empatia),
    (
        (Crimen = asesinato_en_serie, Empatia = muy_bajo, Recuerdo = "sufrimiento de las víctimas");
        (Crimen = falsificacion_documentos, Empatia = muy_bajo, Recuerdo = "dolor de las familias")
    ).

% Evaluar impacto del recuerdo
evaluar_impacto(Recuerdo, Impacto) :-
    (
        Recuerdo = "sufrimiento de las víctimas", Impacto = "generación de empatía";
        Recuerdo = "dolor de las familias", Impacto = "reflexión emocional";
        Recuerdo = "perdida irreparable", Impacto = "remordimiento profundo"
    ).

% Proceso de rehabilitación
rehabilitacion(Acusado, Resultado) :-
    acusado(Acusado, _, _),
    seleccionar_recuerdo(_, muy_bajo, Recuerdo),
    evaluar_impacto(Recuerdo, Impacto),
    Impacto = "remordimiento profundo",
    Resultado = "rehabilitación parcial".
