package modelo;

public class persona {
	private String cod_Persona;
	private String nombre;
	private String apellido;
	private String sexo;
	private String fecha_nac;
	private int tipo_persona;
	private String direccion;
	private String email;
	private String cod_usuario;
	private int estado;
	private String no_ident;
	private int tipo_ident;
	private String distrito;
	private String provincia;
	private String departamento;
	private String pais;
	public persona(){
		
	}
	
	
	public String getCod_Persona() {
		return cod_Persona;
	}


	public void setCod_Persona(String cod_Persona) {
		this.cod_Persona = cod_Persona;
	}


	public int getTipo_persona() {
		return tipo_persona;
	}


	public void setTipo_persona(int tipo_persona) {
		this.tipo_persona = tipo_persona;
	}


	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getFecha_nac() {
		return fecha_nac;
	}
	public void setFecha_nac(String fecha_nac) {
		this.fecha_nac = fecha_nac;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCod_usuario() {
		return cod_usuario;
	}
	public void setCod_usuario(String cod_usuario) {
		this.cod_usuario = cod_usuario;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	public String getNo_ident() {
		return no_ident;
	}
	public void setNo_ident(String no_ident) {
		this.no_ident = no_ident;
	}
	public int getTipo_ident() {
		return tipo_ident;
	}
	public void setTipo_ident(int tipo_ident) {
		this.tipo_ident = tipo_ident;
	}
	public String getDistrito() {
		return distrito;
	}
	public void setDistrito(String distrito) {
		this.distrito = distrito;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public String getDepartamento() {
		return departamento;
	}
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	public String getPais() {
		return pais;
	}
	public void setPais(String pais) {
		this.pais = pais;
	}
	public int getTipoPersona() {
		return estado;
	}
	public void setTipoPersona(int tipo_persona) {
		this.tipo_persona = tipo_persona;
	}

}
