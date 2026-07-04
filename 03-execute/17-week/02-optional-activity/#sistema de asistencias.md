\#sistema de asistencias





problema: Instructor comenta la inconformidad con el tiempo que se pierde tomando asistencia desde el Sofia plus



Objetivo: Reducir el tiempo de registro de asistencia permitiendo que cada aprendiz registre su propia asistencia mediante un carnet NFC, mientras el instructor supervisa el proceso.



**requisitos:**



&#x09;**funcionales:** RF-01. El instructor debe poder iniciar una sesión de asistencia.

&#x09;	RF-02. El sistema debe habilitar el lector NFC durante la sesión activa.	

&#x09;	RF-03. El aprendiz debe registrar su asistencia acercando su carnet NFC al lector.

&#x09;	RF-04. El sistema debe identificar automáticamente al aprendiz mediante el identificador único del carnet.

&#x09;	RF-05. El sistema debe registrar automáticamente la fecha y la hora del registro de asistencia.

&#x09;	RF-06. El sistema debe impedir registrar más de una asistencia por sesión.

&#x09;	RF-07. El sistema debe mostrar una confirmación del registro exitoso.

&#x09;	RF-08. El instructor debe poder modificar o anular un registro de asistencia cuando sea necesario.

&#x09;	RF-09. El sistema debe generar reportes de asistencia por ficha, aprendiz y fecha.

&#x09;	RF-10. El instructor debe poder registrar manualmente la asistencia de un aprendiz cuando no sea posible realizar el registro mediante NFC.

&#x09;	RF-11. El sistema debe solicitar el motivo del registro manual (olvido del carnet, daño del carnet o falla del lector NFC).

&#x09;	RF-12. En caso de falla del lector NFC, el sistema deberá permitir continuar el registro de asistencia mediante el mecanismo manual.	

&#x09;	RF-13. El instructor debe poder finalizar la sesión de asistencia.

&#x09;	RF-14. El sistema solo debe permitir el registro de asistencias mientras la sesión se encuentre activa.	



&#x09;**no funcionales:** RNF-01. El tiempo de lectura del carnet NFC no debe superar 1 segundo.

&#x09;	RNF-02. El sistema debe registrar correctamente al menos el 99 % de las lecturas NFC.

&#x09;	RNF-03. Solo el instructor autorizado podrá iniciar o finalizar una sesión de asistencia.

&#x09;	RNF-04. La información de asistencia deberá almacenarse de forma segura.

&#x09;	RNF-05. El sistema deberá funcionar incluso con grupos de hasta 40 aprendices sin degradar su rendimiento.

&#x09;	RNF-06. Todo registro manual deberá almacenar el instructor que realizó la acción, la fecha y la hora del registro.

&#x09;	RNF-07. El sistema debe garantizar la conservación de la información registrada durante fallas del lector NFC.

&#x09;		

