package pitt.libhigh.dao;

import pitt.libhigh.bean.Group;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

/**
 * Created by Xynoci.
 */
public class GroupDao {

    private final int RECOMMEND_NUMBER = 5;


    public ArrayList<Group> buildSubscription(ArrayList<UUID> groupList) throws Exception {
        ArrayList<Group> subscription = new ArrayList<>();
        Connection connection = null;


        for (int i = 0; i < groupList.size(); i++) {
            try {
                // TODO: SELECT group_name and put it into Hashmap.
                // TODO: SELECT the latest post in the group and put it into Hashmap.
                Group group = new Group();
            } catch (Exception e) {
                throw new Exception(this.getClass() + ".buildSubscription: Database failure.");
            } finally {
                if (connection != null)
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        System.out.println(this.getClass() + ".buildSubscription: Could not close connection to database.");
                    }
            }
        }

        /********** THESE ARE TEST DATA. ***********/
        Group tempGroup = new Group("Web Technology", "After login: This is a temp post for test :)");
        subscription.add(tempGroup);
        subscription.add(tempGroup);
        subscription.add(tempGroup);
        subscription.add(tempGroup);
        /********** THESE ARE TEST DATA. **********/

        return subscription;
    }

    public ArrayList<Group> buildRecommendation() throws Exception {
        ArrayList<Group> subscription = new ArrayList<>();
        Connection connection = null;

        HashMap<String, Object> group = new HashMap<>();
        for (int i = 0; i < this.RECOMMEND_NUMBER; i++) {
            try {
                // TODO: SELECT [recommended] group_name and put it into Hashmap.
                // TODO: SELECT the latest post in the group and put it into Hashmap.
                Group recGroup = new Group();
            } catch (Exception e) {
                throw new Exception(this.getClass() + ".buildRecommendation: Database failure.");
            } finally {
                if (connection != null)
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        System.out.println(this.getClass() + ".buildRecommendation: Could not close connection to database.");
                    }
            }
        }

        /********** THESE ARE TEST DATA. ***********/
        Group tempGroup = new Group("Web Technology", "Not logged in: This is a temp post for test :)");
        subscription.add(tempGroup);
        subscription.add(tempGroup);
        subscription.add(tempGroup);
        subscription.add(tempGroup);
        subscription.add(tempGroup);
        /********** THESE ARE TEST DATA. **********/

        return subscription;
    }
}
