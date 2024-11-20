% Datos del caso
acusado(3, "Thanos", "El Titán Loco").
crimen(3, genocidio).
crimen(3, destruccion_masiva).
crimen(3, coercion).
nivel_empatia(3, muy_bajo).

% Recuerdos disponibles
recuerdo_disponible("sufrimiento de las víctimas").
recuerdo_disponible("dolor de los sobrevivientes").
recuerdo_disponible("impacto en ecosistemas destruidos").

% Resultados esperados
resultado_esperado(3, "desarrollo de empatía y reflexión ética").

% Reglas del sistema

% Selección de recuerdos según el crimen y nivel de empatía
seleccionar_recuerdo(Crimen, Empatia, Recuerdo) :-
    crimen(_, Crimen),
    nivel_empatia(_, Empatia),
    (
        (Crimen = genocidio, Empatia = muy_bajo, Recuerdo = "sufrimiento de las víctimas");
        (Crimen = destruccion_masiva, Empatia = muy_bajo, Recuerdo = "impacto en ecosistemas destruidos");
        (Crimen = coercion, Empatia = muy_bajo, Recuerdo = "dolor de los sobrevivientes")
    ).

% Evaluar impacto del recuerdo
evaluar_impacto(Recuerdo, Impacto) :-
    (
        Recuerdo = "sufrimiento de las víctimas", Impacto = "generación de empatía";
        Recuerdo = "dolor de los sobrevivientes", Impacto = "reflexión emocional";
        Recuerdo = "impacto en ecosistemas destruidos", Impacto = "conciencia ecológica"
    ).

% Proceso de rehabilitación
rehabilitacion(Acusado, Resultado) :-
    acusado(Acusado, _, _),
    seleccionar_recuerdo(_, muy_bajo, Recuerdo),
    evaluar_impacto(Recuerdo, Impacto),
    Impacto = "generación de empatía",
    Resultado = "rehabilitación parcial".

