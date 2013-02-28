package modelo;
import java.sql.Date;

public class usuario {

	
	
	persona persona = new persona();
	String cod_usuario;
	String login;
	String passw;
	String cod_creador_usu;
	String rol;
	Date fecha_registro;
	int estado;
public usuario(){
	
}
	
	public String getRol() {
		return rol;
	}
	public void setRol(String rol) {
		this.rol = rol;
	}
	public persona getPersona() {
		return persona;
	}
	public void setPersona(persona persona) {
		this.persona = persona;
	}
	public String getCod_usuario() {
		return cod_usuario;
	}
	public void setCod_usuario(String cod_usuario) {
		this.cod_usuario = cod_usuario;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassw() {
		return passw;
	}
	public void setPassw(String passw) {
		this.passw = passw;
	}
	public String getCod_creador_usu() {
		return cod_creador_usu;
	}
	public void setCod_creador_usu(String cod_creador_usu) {
		this.cod_creador_usu = cod_creador_usu;
	}
	public Date getFecha_registro() {
		return fecha_registro;
	}
	public void setFecha_registro(Date fecha_registro) {
		this.fecha_registro = fecha_registro;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	
	
}
