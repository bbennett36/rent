/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dao;

import com.mycompany.rent.dto.ForRent;
import com.mycompany.rent.dto.Search;
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

    private static final String SQL_CREATE_FOR_RENT = "insert into for_rent(rent, street_address, city, state, zip, mj, grow, lat, lon, user_id, propType, unitNum, beds, bath, sqft, lease_terms) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    private static final String SQL_ALL_RENTALS = "select * from for_rent";
    private static final String SQL_GET_RENTAL = "select * from for_rent where id = ?";
    private static final String SQL_ADD_PHOTOS = "insert into images(prop_id, file_name) values (?,?)";
    private static final String SQL_GET_WITHIN_RADIUS = "SELECT *, ( 3959 * acos (cos ( radians(?) )* cos( radians( lat ) )* cos( radians( lon ) - radians(?) )+ sin ( radians(?) )* sin( radians( lat ) ))) AS distance FROM for_rent HAVING distance < ?";
    private static final String SQL_GET_IMAGEPATHS = "select * from images where prop_id = ?";
    private static final String SQL_GET_BY_USERID = "select * from for_rent where user_id = ?";

    private static final String SQL_ACTIVE_POST_COUNT = "SELECT COUNT(id) From for_rent";

    private static final String SQL_GET_PAGINATION_WITH_LIMIT = "SELECT * from for_rent LIMIT ?, 3";
    //lat lng lat dist

    @Override
    public void addPhotos(int propId, String fileName) {
        jdbc.update(SQL_ADD_PHOTOS,
                propId,
                fileName);
    }

    @Override
    public ForRent create(ForRent forRent) {
        jdbc.update(SQL_CREATE_FOR_RENT,
                forRent.getRent(),
                forRent.getStreetAddress(),
                forRent.getCity(),
                forRent.getState(),
                forRent.getZip(),
                forRent.isMjFriendly(),
                forRent.isGrowFriendly(),
                forRent.getLat(),
                forRent.getLon(),
                forRent.getUser_id(),
                forRent.getPropType(),
                forRent.getUnitNum(),
                forRent.getBeds(),
                forRent.getBaths(),
                forRent.getSqFt(),
                forRent.getLeaseTerms());

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

    @Override
    public List<ForRent> RentalRadius(String lat, String lng, String rad, int pageid, int total) {
        String sql_radius = "SELECT *, ( 3959 * acos (cos ( radians(" + lat + ") )* cos( radians( lat ) )* cos( radians( lon ) - radians(" + lng + ") )+ sin ( radians(" + lat + ") )* sin( radians( lat ) ))) AS distance FROM for_rent HAVING distance < " + rad + " limit " + (pageid - 1) + "," + total;
        return jdbc.query(sql_radius, new RentMapper());
    }

    @Override
    public int RentalRadiusCount(String lat, String lng, String rad) {
        String sql_radius2 = "SELECT *, ( 3959 * acos (cos ( radians(" + lat + ") )* cos( radians( lat ) )* cos( radians( lon ) - radians(" + lng + ") )+ sin ( radians(" + lat + ") )* sin( radians( lat ) ))) AS distance FROM for_rent HAVING distance < " + rad;
        List<ForRent> rentals = jdbc.query(sql_radius2, new RentMapper());
        return rentals.size();
    }

    @Override
    public List<String> getImagePaths(int id) {
        return jdbc.query(SQL_GET_IMAGEPATHS, new ImageMapper(), id);
    }

    @Override
    public List<ForRent> rentalsByUserId(int user_id) {
        return jdbc.query(SQL_GET_BY_USERID, new RentMapper(), user_id);
    }

    @Override
    public Integer getNumOfRentals() {
        List<Integer> count = jdbc.query(SQL_ACTIVE_POST_COUNT, new CountMapper());
        int numOfPosts = count.get(0);
        return numOfPosts;
    }

    @Override
    public List<ForRent> listRentalsWithLimit(Integer offset) {
        return jdbc.query(SQL_GET_PAGINATION_WITH_LIMIT, new RentMapper(), offset);
    }

//    private static final String SQL ="select * from Emp limit + (? - 1) + ?";
    @Override
    public List<ForRent> getRentalsByPage(int pageid, int total, Search search) {
//        String where = "";
//        if (search.getMaxBath() != null) {
////            where += " WHERE bath < " + search.getMaxBath();
//            where += (where == "") ? " WHERE " : " AND "
//                    + "search.getMaxBath() = " + search.getMaxBath();
//        }
//        String sql = "select * from for_rent " + where + " limit " + (pageid - 1) + "," + total;

        String sql = "SELECT * from for_rent";

        if (search.getMinPrice() != null) {
            if (!sql.toUpperCase().contains("WHERE")) {
                sql += " WHERE";

            }
            sql += " rent between " + search.getMinPrice() + " and " + search.getMaxPrice();
        }
//        if (bedrooms_defined ?) {
//            if (!basic_query.include ? ("WHERE")) {
//                basic_query += "WHERE"
//            } else {
//                basic_query += "AND "
//            }
//            basic_query += "bedrooms >" + bedrooms_count;
//        }
//        (...)
        sql += " limit " + (pageid - 1) + "," + total;
        return jdbc.query(sql, new RentMapper());

    }

    @Override
    public List<ForRent> getRentalsByPage(int pageid, int total) {
        String sql = "select * from for_rent limit " + (pageid - 1) + "," + total;
        return jdbc.query(sql, new RentMapper());

    }

    private final class RentMapper implements RowMapper<ForRent> {

        @Override
        public ForRent mapRow(ResultSet rs, int i) throws SQLException {

            ForRent fr = new ForRent();

            fr.setId(rs.getInt("id"));
            fr.setRent(rs.getInt("rent"));
            fr.setStreetAddress(rs.getString("street_address"));
            fr.setCity(rs.getString("city"));
            fr.setState(rs.getString("state"));
            fr.setZip(rs.getString("zip"));
            fr.setMjFriendly(rs.getBoolean("mj"));
            fr.setGrowFriendly(rs.getBoolean("grow"));
            fr.setLat(rs.getString("lat"));
            fr.setLon(rs.getString("lon"));
            fr.setUser_id(rs.getInt("user_id"));
            fr.setPropType(rs.getString("propType"));
            fr.setUnitNum(rs.getString("unitNum"));
            fr.setBeds(rs.getString("beds"));
            fr.setBeds(rs.getString("bath"));
            fr.setSqFt(rs.getString("sqft"));
            fr.setLeaseTerms(rs.getString("lease_terms"));
            fr.setImagePaths(getImagePaths(fr.getId()));

            return fr;

        }

    }

    private final class ImageMapper implements RowMapper<String> {

        @Override
        public String mapRow(ResultSet rs, int i) throws SQLException {
//            List<String> stops = new ArrayList();

            String stop = rs.getString("file_name");

            return stop;

        }

    }

    private static final class CountMapper implements RowMapper<Integer> {

        @Override
        public Integer mapRow(ResultSet rs, int i) throws SQLException {
            Integer count = rs.getInt(1);
            return count;
        }
    }

}
