package com.vienmv.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;

import com.vienmv.dao.CartDao;
import com.vienmv.dao.CategoryDao;
import com.vienmv.dao.ProductDao;
import com.vienmv.jdbc.JDBCConnection;
import com.vienmv.model.Cart;
import com.vienmv.model.Category;
import com.vienmv.model.Product;
import com.vienmv.model.User;
import com.vienmv.service.CategoryService;
import com.vienmv.service.UserService;
import com.vienmv.service.impl.CategoryServiceImpl;
import com.vienmv.service.impl.UserServiceImpl;

public class CartDaoImpl extends JDBCConnection implements CartDao {
	UserService userS = new UserServiceImpl();

	@Override
	public void insert(Cart cart) {
		String sql = "INSERT INTO cart(id_user, buy_date) VALUES (?,?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ResultSet generatedKeys = ps.getGeneratedKeys();
			ps.setInt(1, cart.getBuyer().getId());
			ps.setDate(2, new Date(cart.getBuyDate().getTime()));
			if (generatedKeys.next()) {
				int id = generatedKeys.getInt(1);
				cart.setId(id);// set id vao doi tuong cart
			}
			ps.executeUpdate();

			// Lay ID set ve
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Cart cart) {
		String sql = "UPDATE cart SET id_user = ?, buy_date = ? WHERE id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, cart.getBuyer().getId());
			ps.setDate(2, new Date(cart.getBuyDate().getTime()));
			ps.setInt(3, cart.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM cart WHERE id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Cart get(int id) {
		String sql = "SELECT cart.id, cart.buy_date, user.name, user.username, user.id AS user_id "
				+ "FROM cart INNER JOIN user " + "ON cart.id_user = user.id WHERE cart.id=?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userS.get(rs.getInt("user_id"));

				Cart cart = new Cart();
				cart.setId(rs.getInt("id"));
				cart.setBuyDate(rs.getDate("buy_date"));
				cart.setBuyer(user);

				return cart;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Cart> getAll() {
		List<Cart> cartList = new ArrayList<Cart>();
		String sql = "SELECT cart.id, cart.buy_date, user.name, user.username, user.id AS user_id "
				+ "FROM cart INNER JOIN user " + "ON cart.id_user = user.id";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userS.get(rs.getInt("user_id"));

				Cart cart = new Cart();
				cart.setId(rs.getInt("id"));
				cart.setBuyDate(rs.getDate("buy_date"));
				cart.setBuyer(user);

				cartList.add(cart);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cartList;
	}

	public List<Cart> search(String name) {
		List<Cart> cartList = new ArrayList<Cart>();
		String sql = "SELECT cart.id, cart.buy_date, user.name, user.username, user.id AS user_id "
				+ "FROM cart INNER JOIN user " + "ON cart.id_user = user.id LIKE user.name = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userS.get(rs.getInt("user_id"));

				Cart cart = new Cart();
				cart.setId(rs.getInt("id"));
				cart.setBuyDate(rs.getDate("buy_date"));
				cart.setBuyer(user);

				cartList.add(cart);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cartList;
	}

	@Override
	public Cart get(String name) {
		// TODO Auto-generated method stub
		return null;
	}
}
