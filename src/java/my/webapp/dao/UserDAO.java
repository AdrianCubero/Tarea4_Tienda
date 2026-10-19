/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package my.webapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import my.webapp.database.Database;

public class UserDAO {

    public boolean validar(String usuario, String password) {

        boolean valido = false;

        try {

            Database db = new Database();
            Connection conn = db.getConnection();

            String sql =
                    "SELECT * FROM usuarios WHERE usuario=? AND password=?";

            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ps.setString(1, usuario);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                valido = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return valido;
    }
}
