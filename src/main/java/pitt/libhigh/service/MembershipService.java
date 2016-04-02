package pitt.libhigh.service;

import java.util.HashMap;

import static spark.Spark.*;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import pitt.libhigh.dao.MembershipDao;

/**
 * Created by Xynoci.
 */
public class MembershipService {

    public static void main(String[] args) {
        port(Integer.valueOf(System.getenv("PORT")));
        staticFileLocation("/public");

        MembershipService ms = new MembershipService();
    }

    public MembershipService() {
        super();

        post("/register", (request, response) -> {
            HashMap<String, Object> attributes = new HashMap<>();
            String userName = request.queryParams("userName");
            String userAccount = request.queryParams("userAccount");
            attributes.put("userName", userName);
            attributes.put("userAccount", userAccount);

            System.out.println(userName + ", " + userAccount);

            MembershipService ms = new MembershipService();
            try {
                if (ms.checkExistence(userAccount)) {
                    System.out.println("User " + userAccount + " is existed.");
                    attributes.put("errMessage", "Email has already been used.");
                    return new ModelAndView(attributes, "register.ftl");
                } else {
                    return new ModelAndView(attributes, "seats.ftl");
                }
            } catch (Exception e) {
                e.printStackTrace();
                attributes.put("errMessage", "Server Error.");
                return new ModelAndView(attributes, "register.ftl");
            }
        }, new FreeMarkerEngine());
    }


    private boolean checkExistence(String userAccount) throws Exception {
        MembershipDao md = new MembershipDao();
        try {
            return md.checkUserEmailExistence(userAccount);
        } catch (Exception e) {
            throw new Exception(this.getClass() + ".checkExistence()");
        }
    }
}
