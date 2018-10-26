package conn.conexion;

import java.sql.*;

public class Conexion {

    public Connection con;
    public String driver = "com.mysql.jdbc.Driver";
    public String cadena = "jdbc:mysql://localhost/integrador4c";
    public String usuario = "root";
    public String clave = "";

    public Connection conexion() {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(cadena, usuario, clave);
        } catch (ClassNotFoundException e1) {
            System.out.println("Error en el driver");
        } catch (SQLException e2) {
            System.out.println("Error en la conexion");
        }
        return con;
    }
}
