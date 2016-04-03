package pitt.libhigh.dao;

import pitt.libhigh.bean.User;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Xynoci.
 */
public class MembershipDao {

    private Date date = new Date();

    public void insertUser(User u) throws Exception {
        Connection connection = null;
        try {
            // TODO: insert new record.
        } catch (Exception e) {
            throw new Exception(this.getClass() + ".addUser: Database failure.");
        } finally {
            if (connection != null)
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.out.println(this.getClass() + ".addUser: Could not close connection to database.");
                }
        }
    }

    public boolean notExist(String userAccount) throws Exception {

        Connection connection = null;
        try {
            // TODO: database query goes here.
        } catch (Exception e) {
            throw new Exception(this.getClass() + ".notExist: Database failure.");
        } finally {
            if (connection != null)
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.out.println(this.getClass() + ".notExist: Could not close connection to database.");
                }
        }
        return date.getTime() % 9 != 0;
    }

    public User selectByUserAccount(String userAccount, String password) throws Exception {
        Connection connection = null;
        User u = null;
        try {
            // TODO: SELECT user by userAccount from database.
            String userName = "";
            UUID userId = UUID.randomUUID();
            u = new User(userAccount, password, userName, userId);

            return date.getTime() % 9 == 0 ? null : u;
        } catch (Exception e) {
            throw new Exception(this.getClass() + ".selectUserByAccount: Database failure.");
        } finally {
            if (connection != null)
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.out.println(this.getClass() + ".selectUserByAccount: Could not close connection to database.");
                }
        }
    }

    public User selectByUserId(UUID userId, String password) {
        return null;
    }
}
