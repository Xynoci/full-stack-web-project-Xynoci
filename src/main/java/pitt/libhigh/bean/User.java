/**
 * 
 */
package pitt.libhigh.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

/**
 * @author Xynoci
 *
 */
public class User {

	/**
	 * 
	 */

	private final UUID userId;
	private final String userAccount;
	private final Long registeration; // Registration time in milliseconds.
	private String password;
	private String userName;
	private String gender;
	private String[] location; // 0: country; 1: state
	private String url;
	private String bio;
	private boolean hasAvatar;
	private ArrayList<UUID> groupList;
	private Integer postCount;
	private Integer followerCount;
	private Integer followingCount;

	public User(String userAccount, String password, String userName, UUID userId) {
		super();
		Date date = new Date();
		this.userId = userId;
		this.userAccount = userAccount;
		this.registeration = date.getTime();
		this.password = password;
		this.userName = userName;
		this.gender = "";
		this.location = new String[] { "", "" };
		this.url = "";
		this.bio = "";
		this.hasAvatar = false;
		this.groupList = new ArrayList<UUID>();
		this.postCount = 0;
		this.followerCount = 0;
		this.followingCount = 0;
	}

	public void addFollower(int number) {
		this.followerCount += number;
	}

	public void reduceFollower(int number) {
		this.followerCount -= number;
	}

	public void addFollowing(int number) {
		this.followingCount += number;
	}

	public void reduceFollowing(int number) {
		this.followingCount -= number;
	}

	public void addPost(int number) {
		this.postCount += number;
	}

	public void reducePost(int number) {
		this.postCount -= number;
	}

	public void subscribeToGroup(UUID groupId) {
		this.groupList.add(groupId);
	}

	public void unsubscribeFromGroup(UUID groupId) {
		this.groupList.remove(groupId);
	}

	public boolean hasSubscribedToGroup(UUID groupId) {
			return this.groupList.contains(groupId);
	}

	public UUID getUserId() {
		return userId;
	}

	public String getuserAccount() {
		return userAccount;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getuserName() {
		return userName;
	}

	public void setuserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String[] getLocation() {
		return location;
	}

	public void setLocation(String[] location) {
		this.location = location;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public Long getRegisteration() {
		return registeration;
	}

	public boolean isHasAvatar() {
		return hasAvatar;
	}

	public void setHasAvatar(boolean hasAvatar) {
		this.hasAvatar = hasAvatar;
	}

	public Integer getPostCount() {
		return postCount;
	}

	public void setPostCount(Integer postCount) {
		this.postCount = postCount;
	}

	public Integer getFollowerCount() {
		return followerCount;
	}

	public void setFollowerCount(Integer followerCount) {
		this.followerCount = followerCount;
	}

	public Integer getFollowingCount() {
		return followingCount;
	}

	public void setFollowingCount(Integer followingCount) {
		this.followingCount = followingCount;
	}

	public ArrayList<UUID> getGroupList() {
		return groupList;
	}

}
