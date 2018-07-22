package pl.coderslab.warsztatsamochodowycrm.dao;

import pl.coderslab.warsztatsamochodowycrm.db.DbUtil;
import pl.coderslab.warsztatsamochodowycrm.model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {

    public static List<Order> loadAll() throws SQLException {
        Connection c = DbUtil.getConn();
        final String SQL = "SELECT * FROM orders;";

        PreparedStatement ps = c.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();

        List<Order> result = new ArrayList<>();

        while (rs.next()){
            final int id = rs.getInt("id");
            final String register = rs.getString("register");
            final String details = rs.getString("details");
            final String owner = rs.getString("owner");

            result.add(new Order(id, register, details, owner));
        }

        rs.close();
        ps.close();

        return result;

    }

}
