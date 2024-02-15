/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package operaciones;

public class Calculadora {

    //Atributos
    private double numero;

    //Metodos
    public Calculadora(double numero) {
        this.numero = numero;
    }

    public double calValorAbsoluto() {
        return Math.abs(this.numero);
    }

    //arcotangente
    public double calValorArcotangente() {
        return Math.atan(this.numero);
    }

    public double calValorSeno() {
        return Math.sin(this.numero);
    }

    public double calValorCoseno() {
        return Math.cos(this.numero);
    }

    public double calValorTangente() {
        return Math.tan(this.numero);
    }

    public double potenciaCuadrado() {
        return Math.pow(this.numero, 2);
    }

    public double potenciaCubo() {
        return Math.pow(this.numero, 3);
    }

    public double redondeo() {
        return Math.round(this.numero);
    }
}
