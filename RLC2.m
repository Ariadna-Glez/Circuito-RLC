function dz = RLC2(t, z)
    % Parametros del circuito
    R = 120;       % resistencia ohms
    L = 4e-3;      % inductor
    C = 0.1e-6;    % capacito faradios
    Vmax = 5;      % amplitud del pulso voltios
    T = 2e-3;      % periodo del impulso segundos

    % Entrada: Tren de pulsos cuadrados
    vi = Vmax * (mod(t, T) < T/2);

    %--------------------%
    dz = zeros(2,1);

    %----- Dinamica del sistema -----%

    dz(1) = z(2);
    dz(2) = (-R/L) * z(2) - (1/(L*C)) * z(1) + (1/(L*C)) * vi;


end