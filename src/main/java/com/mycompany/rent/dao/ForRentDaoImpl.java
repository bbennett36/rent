/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dao;

import com.mycompany.rent.dto.ForRent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author brennan
 */
public class ForRentDaoImpl implements ForRentDao {

    private JdbcTemplate jdbc;

    public ForRentDaoImpl(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    private static final String SQL_CREATE_FOR_RENT = "insert into for_rent(rent, street_address, street_name, city, state, zip, mj, grow, lat, lon) values (?,?,?,?,?,?,?,?,?,?)";
    private static final String SQL_ALL_RENTALS = "select * from for_rent";
    private static final String SQL_GET_RENTAL = "select * from for_rent where id = ?";
    private static final String SQL_ADD_PHOTOS = "insert into images(prop_id, file_name) values (?,?)";
    
    @Override
    public void addPhotos(int id, String fileName) {
        jdbc.update(SQL_ADD_PHOTOS,
                id,
                fileName);
               


    }
    
    @Override
    public ForRent create(ForRent forRent) {
        jdbc.update(SQL_CREATE_FOR_RENT,
                forRent.getRent(),
                forRent.getStreetAddress(),
                forRent.getStreetName(),
                forRent.getCity(),
                forRent.getState(),
                forRent.getZip(),
                forRent.isMjFriendly(),
                forRent.isGrowFriendly(),
                forRent.getLat(),
                forRent.getLon());

        Integer id = jdbc.queryForObject("SELECT LAST_INSERT_ID()", Integer.class);

        forRent.setId(id);

        return forRent;

    }

    @Override
    public ForRent get(int id) {
        return jdbc.queryForObject(SQL_GET_RENTAL, new RentMapper(), id);
    }

    @Override
    public void update(ForRent forRent) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(ForRent forRent) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ForRent> allRentals() {
        return jdbc.query(SQL_ALL_RENTALS, new RentMapper());
    }

    private static final class RentMapper implements RowMapper<ForRent> {

        @Override
        public ForRent mapRow(ResultSet rs, int i) throws SQLException {

            ForRent fr = new ForRent();

            fr.setId(rs.getInt("id"));
            fr.setRent(rs.getInt("rent"));
            fr.setStreetAddress(rs.getString("street_address"));
            fr.setStreetName(rs.getString("street_name"));
            fr.setCity(rs.getString("city"));
            fr.setState(rs.getString("state"));
            fr.setZip(rs.getString("zip"));
            fr.setMjFriendly(rs.getBoolean("mj"));
            fr.setGrowFriendly(rs.getBoolean("grow"));
            fr.setLat(rs.getString("lat"));
            fr.setLon(rs.getString("lon"));
            

            return fr;

        }

    }

}
