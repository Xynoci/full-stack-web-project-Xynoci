package pitt.libhigh.bean;

import java.util.ArrayList;
import java.util.UUID;

public class Group {

	private UUID groupId;
	private int memberCount;
	private ArrayList<UUID> subscriberList;
	private Long createdAt;
	private UUID createdBy;
	private String createdAtString;

	public Group() {
		super();
	}

}
