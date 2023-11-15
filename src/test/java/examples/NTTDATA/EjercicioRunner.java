package examples.NTTDATA;

import com.intuit.karate.junit5.Karate;

class EjercicioRunner {
    
    @Karate.Test
    Karate testEjercicio() {
        return Karate.run("Ejercicio_API").relativeTo(getClass());
    }    

}
