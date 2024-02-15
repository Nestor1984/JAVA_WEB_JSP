
package logica;

public class IMC {
    
    //Atributos
    private String nombre;
    private float peso;
    private float altura;
    private boolean seRealizoElCalculo = false;

    //Metodos
    public IMC() {
    }

    public IMC(String nombre, float peso, float altura) {
        this.nombre = nombre;
        this.peso = peso;
        this.altura = altura;
    }
    
    public float realizarCalculo(){
        return (float) (this.peso/Math.pow(this.altura, 2));
    }
    
    public String obtenerNombre(){
        return "Su nombre es: " + this.nombre;
    }
    
    public boolean siSeRealizoElCalculo(){
        float aux = realizarCalculo();
        return (aux > 0)? true: false; // Si el calculo es positivo
    }
    
}
