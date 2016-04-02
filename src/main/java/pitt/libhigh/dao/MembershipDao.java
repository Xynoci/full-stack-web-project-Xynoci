package pitt.libhigh.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

/**
 * Created by Xynoci.
 */
public class MembershipDao {
    public boolean checkUserEmailExistence(String userAccount) throws Exception {
        Date date = new Date();
        Connection connection = null;
        try {
            // TODO: database query goes here.
        } catch (Exception e) {
            throw new Exception(this.getClass()+": Database failure.");
        } finally {
            if (connection != null)
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.out.println("Could not close connection to database.");
                }
        }
        return date.getTime() % 9 == 0;
    }
}
