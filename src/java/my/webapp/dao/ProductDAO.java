/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package my.webapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import my.webapp.database.Database;
import my.webapp.model.Producto;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    public boolean insertar(Producto producto) {

        boolean resultado = false;

        try {

            Database db = new Database();
            Connection conn = db.getConnection();

            String sql =
                "INSERT INTO productos(nombre, precio, stock) VALUES (?, ?, ?)";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, producto.getNombre());
            ps.setDouble(2, producto.getPrecio());
            ps.setInt(3, producto.getStock());

            resultado = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return resultado;
    }

     public List<Producto> listar() {

          List<Producto> productos = new ArrayList<>();

        try {

            Database db = new Database();
            Connection conn = db.getConnection();

            String sql = "SELECT * FROM productos";

            PreparedStatement ps =
                      conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Producto p = new Producto();

                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setPrecio(rs.getDouble("precio"));
                p.setStock(rs.getInt("stock"));

                productos.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return productos;
    }

                
public void eliminar(int id) {

    try {

        Database db = new Database();
        Connection conn = db.getConnection();

        String sql = "DELETE FROM productos WHERE id=?";

        PreparedStatement ps =
                conn.prepareStatement(sql);

        ps.setInt(1, id);

        ps.executeUpdate();

    } catch (Exception e) {
        e.printStackTrace();
  }
}
}

