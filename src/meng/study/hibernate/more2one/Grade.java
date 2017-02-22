package meng.study.hibernate.more2one;

import java.io.Serializable;

/**
 * 班级类
 * 
 * @author mengzhang6
 *
 */
public class Grade implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int gid;
	private String gname;
	private String gdesc;

	public Grade() {
	}

	public Grade(String gname, String gdesc) {
		this.gname = gname;
		this.gdesc = gdesc;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getGdesc() {
		return gdesc;
	}

	public void setGdesc(String gdesc) {
		this.gdesc = gdesc;
	}

	@Override
	public String toString() {
		return "Grade [gid=" + gid + ", gname=" + gname + ", gdesc=" + gdesc
				+ "]";
	}

}
