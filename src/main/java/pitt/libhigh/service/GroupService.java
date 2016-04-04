package pitt.libhigh.service;

import com.google.gson.Gson;
import pitt.libhigh.bean.Group;
import pitt.libhigh.bean.User;
import pitt.libhigh.dao.GroupDao;
import pitt.libhigh.utils.ServiceUtils;
import pitt.libhigh.utils.XmlUtils;
import spark.Session;

import java.util.ArrayList;
import java.util.UUID;

import static spark.Spark.get;


/**
 * Created by Xynoci.
 */
class GroupService {
    private Gson gson = new Gson();
    private ServiceUtils su = new ServiceUtils();
    private GroupDao gd = new GroupDao();
    private XmlUtils xu = new XmlUtils();


    /**
     * Group Service response to requests handling Group issues.
     */
    GroupService() {
        super();
        this.startServe();
    }

    private void startServe() {

        get("/myGroupList", (request, response) -> {
            ArrayList<Group> subscription = null;
            Session session = request.session(true);
            response.type("application/xml");
            if (su.hasUserLoggedIn(request, response)) {
                User u = ((User) session.attribute("user"));
                ArrayList<UUID> groutList = u.getGroupList();
                UUID userId = u.getUserId();
                try {
                    subscription = gd.buildSubscription(groutList);
                } catch (Exception e) {
                    System.out.println(this.getClass() + "/myGroupList: Database failure.");
                    e.printStackTrace();
                }
                return xu.buildGroupXML(userId, subscription);
            } else {
                try {
                    subscription = gd.buildRecommendation();
                } catch (Exception e) {
                    System.out.println(this.getClass() + "/myGroupList: Database failure.");
                    e.printStackTrace();
                }
                return xu.buildGroupXML(null, subscription);
            }
        });

    }
}
