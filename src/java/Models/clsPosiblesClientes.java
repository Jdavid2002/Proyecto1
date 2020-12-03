/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Juan David
 */
public class clsPosiblesClientes {

    public String stEmpresa;
    public String stNombre;

    public String getStEmpresa() {
        return stEmpresa;
    }

    public void setStEmpresa(String stEmpresa) {
        this.stEmpresa = stEmpresa;
    }

    public String getStNombre() {
        return stNombre;
    }

    public void setStNombre(String stNombre) {
        this.stNombre = stNombre;
    }

    public String getStApellido() {
        return stApellido;
    }

    public void setStApellido(String stApellido) {
        this.stApellido = stApellido;
    }

    public String getStTitulo() {
        return stTitulo;
    }

    public void setStTitulo(String stTitulo) {
        this.stTitulo = stTitulo;
    }

    public String getStCorreoElectronico() {
        return stCorreoElectronico;
    }

    public void setStCorreoElectronico(String stCorreoElectronico) {
        this.stCorreoElectronico = stCorreoElectronico;
    }

    public String getStTelefono() {
        return stTelefono;
    }

    public void setStTelefono(String stTelefono) {
        this.stTelefono = stTelefono;
    }

    public String getStFax() {
        return stFax;
    }

    public void setStFax(String stFax) {
        this.stFax = stFax;
    }

    public String getStMovil() {
        return stMovil;
    }

    public void setStMovil(String stMovil) {
        this.stMovil = stMovil;
    }

    public String getStSitioweb() {
        return stSitioweb;
    }

    public void setStSitioweb(String stSitioweb) {
        this.stSitioweb = stSitioweb;
    }

    public clsFuentePosibleCliente getObclsFuentePosibleCliente() {
        return obclsFuentePosibleCliente;
    }

    public void setObclsFuentePosibleCliente(clsFuentePosibleCliente obclsFuentePosibleCliente) {
        this.obclsFuentePosibleCliente = obclsFuentePosibleCliente;
    }

    public clsEstadoPosibleCliente getObclsEstadoPosibleCliente() {
        return obclsEstadoPosibleCliente;
    }

    public void setObclsEstadoPosibleCliente(clsEstadoPosibleCliente obclsEstadoPosibleCliente) {
        this.obclsEstadoPosibleCliente = obclsEstadoPosibleCliente;
    }

    public clsSector getObclsSector() {
        return obclsSector;
    }

    public void setObclsSector(clsSector obclsSector) {
        this.obclsSector = obclsSector;
    }

    public int getIntCantidadEmpleados() {
        return intCantidadEmpleados;
    }

    public void setIntCantidadEmpleados(int intCantidadEmpleados) {
        this.intCantidadEmpleados = intCantidadEmpleados;
    }

    public double getDbIngresosAnuales() {
        return dbIngresosAnuales;
    }

    public void setDbIngresosAnuales(double dbIngresosAnuales) {
        this.dbIngresosAnuales = dbIngresosAnuales;
    }

    public clsCalificacion getObclsCalificacion() {
        return obclsCalificacion;
    }

    public void setObclsCalificacion(clsCalificacion obclsCalificacion) {
        this.obclsCalificacion = obclsCalificacion;
    }

    public boolean isBlNoParticipacionCorreoElectronico() {
        return blNoParticipacionCorreoElectronico;
    }

    public void setBlNoParticipacionCorreoElectronico(boolean blNoParticipacionCorreoElectronico) {
        this.blNoParticipacionCorreoElectronico = blNoParticipacionCorreoElectronico;
    }

    public String getStIDSkype() {
        return stIDSkype;
    }

    public void setStIDSkype(String stIDSkype) {
        this.stIDSkype = stIDSkype;
    }

    public String getStTwitter() {
        return stTwitter;
    }

    public void setStTwitter(String stTwitter) {
        this.stTwitter = stTwitter;
    }

    public String getStCorreoElectronicoSecundario() {
        return stCorreoElectronicoSecundario;
    }

    public void setStCorreoElectronicoSecundario(String stCorreoElectronicoSecundario) {
        this.stCorreoElectronicoSecundario = stCorreoElectronicoSecundario;
    }
    
    //Atributos y Propiedades
    public String stApellido;
    public String stTitulo;
    public String stCorreoElectronico;
    public String stTelefono;
    public String stFax;
    public String stMovil;
    public String stSitioweb;
    public clsFuentePosibleCliente obclsFuentePosibleCliente;
    public clsEstadoPosibleCliente obclsEstadoPosibleCliente;
    public clsSector  obclsSector ;
    public int intCantidadEmpleados;
    public double dbIngresosAnuales;
    public clsCalificacion obclsCalificacion;
    public boolean blNoParticipacionCorreoElectronico;
    public String stIDSkype;
    public String stTwitter;
    public String stCorreoElectronicoSecundario;
}
