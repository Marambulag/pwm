Práctica: Módulo PWM para Control de Servomotor en FPGA DE10-Lite

Objetivo:
Desarrollar un módulo en Verilog que genere una señal PWM (modulación por ancho de pulso) para controlar la posición de un servomotor en la FPGA DE10-Lite. La variación del ciclo de trabajo (duty cycle) se realizará mediante los botones de la tarjeta.

Materiales Necesarios:
Tarjeta FPGA DE10-Lit

Software Intel Quartus Prime Lite

Servomotor compatible con señal PWM (ejemplo: SG90, MG995)

Fuente de alimentación externa para el servomotor (5V)

Conexiones de cables jumper

Descripción del Funcionamiento:
El módulo PWM generará una señal con una frecuencia de 50 Hz (período de 20 ms), adecuada para el control de servomotores.

El duty cycle (ancho de pulso) determinará la posición del servomotor:

1 ms (~5% duty cycle) → Posición mínima

1.5 ms (~7.5% duty cycle) → Posición central

2 ms (~10% duty cycle) → Posición máxima

Se usarán los botones de la FPGA para aumentar o disminuir el duty cycle en incrementos pequeños (ejemplo: 0.1 ms por pulsación).
