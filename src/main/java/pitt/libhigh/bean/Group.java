package pitt.libhigh.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

public class Group {

    private UUID groupId;
    private UUID createdBy;
    private Long createdAt;
    private String groupName;
    private String createdAtString;
    private String introMessage;
    private String Category;
    private String latestPost;
    private int status; // 0 for private, 1 for public
    private int memberCount;
    private boolean hasBgImg;
    private ArrayList<UUID> subscriberList;


    public Group() {
        super();
    }

    public Group(String groupName, String introMessage, UUID createdBy, int status){
        this.groupId = UUID.randomUUID();
        this.createdBy = createdBy;
        this.createdAt = System.currentTimeMillis();
        this.groupName = groupName;
        this.introMessage = introMessage;
        this.status=status;
        this.memberCount = 0;
        this.hasBgImg = false;
        this.subscriberList = new ArrayList<UUID>();

        String d = new Date(this.createdAt).toString();
        this.createdAtString = d.substring(4, 11) + "." + d.substring(24);

    }

    /********** USED FOR GENERATING TEST DATA. ***********/
    public Group(String groupName, String latestPost){
        this.groupId = UUID.randomUUID();
        this.createdBy = UUID.randomUUID();
        this.createdAt = System.currentTimeMillis();
        this.groupName = groupName;
        this.latestPost = latestPost;
        this.status = 1;
        this.memberCount = 511;
        this.hasBgImg = false;
    }

    public UUID getGroupId() {
        return groupId;
    }

    public void setGroupId(UUID groupId) {
        this.groupId = groupId;
    }

    public UUID getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(UUID createdBy) {
        this.createdBy = createdBy;
    }

    public Long getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Long createdAt) {
        this.createdAt = createdAt;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getCreatedAtString() {
        return createdAtString;
    }

    public void setCreatedAtString(String createdAtString) {
        this.createdAtString = createdAtString;
    }

    public String getIntroMessage() {
        return introMessage;
    }

    public void setIntroMessage(String introMessage) {
        this.introMessage = introMessage;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    public String getLatestPost() {
        return latestPost;
    }

    public void setLatestPost(String latestPost) {
        this.latestPost = latestPost;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getMemberCount() {
        return memberCount;
    }

    public void setMemberCount(int memberCount) {
        this.memberCount = memberCount;
    }

    public boolean isHasBgImg() {
        return hasBgImg;
    }

    public void setHasBgImg(boolean hasBgImg) {
        this.hasBgImg = hasBgImg;
    }

    public ArrayList<UUID> getSubscriberList() {
        return subscriberList;
    }

    public void setSubscriberList(ArrayList<UUID> subscriberList) {
        this.subscriberList = subscriberList;
    }
}
