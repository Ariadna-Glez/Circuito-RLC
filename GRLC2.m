z0 = [0; 0]; %valores iniciales
tspan = [0 10e-3];  % Simulación de 10 ms

[t, z] = ode45(@RLC2, tspan, z0);

% ---------- Graficar resultados ----------
figure(1)
plot(t,z);

figure('Position', [50, 50, 600, 500]);

% Corriente i(t)
subplot(2,1,1);
plot(t*1e3, z(:,1), 'm', 'LineWidth', 2);
xlabel('Tiempo (ms)');
ylabel('Corriente i(t) (A)');
title('Corriente en el circuito RLC');
grid on;

% Voltaje en el capacitor vC(t)
subplot(2,1,2);
plot(t*1e3, z(:,2), 'c', 'LineWidth', 2);
xlabel('Tiempo (ms)');
ylabel('Voltaje v_C(t) (V)');
title('Voltaje en el capacitor');
grid on;
