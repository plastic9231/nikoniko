package board.model;

import java.sql.Timestamp;

public class RecBoardVO {

	private int br_num;
	private String br_writer;
	private String br_content;
	private String br_subject;
	private String br_password;
	private int br_readcount;
	private int br_ref;
	private int br_step;
	private int br_depth;
	private Timestamp br_regdate;
	private String br_filename;
	

	public String getBr_filename() {
		return br_filename;
	}
	public void setBr_filename(String br_filename) {
		this.br_filename = br_filename;
	}
	
	public int getBr_num() {
		return br_num;
	}
	public void setBr_num(int br_num) {
		this.br_num = br_num;
	}
	public String getBr_writer() {
		return br_writer;
	}
	public void setBr_writer(String br_writer) {
		this.br_writer = br_writer;
	}
	public String getBr_content() {
		return br_content;
	}
	public void setBr_content(String br_content) {
		this.br_content = br_content;
	}
	public String getBr_subject() {
		return br_subject;
	}
	public void setBr_subject(String br_subject) {
		this.br_subject = br_subject;
	}
	public String getBr_password() {
		return br_password;
	}
	public void setBr_password(String br_password) {
		this.br_password = br_password;
	}
	public int getBr_readcount() {
		return br_readcount;
	}
	public void setBr_readcount(int br_readcount) {
		this.br_readcount = br_readcount;
	}
	public int getBr_ref() {
		return br_ref;
	}
	public void setBr_ref(int br_ref) {
		this.br_ref = br_ref;
	}
	public int getBr_step() {
		return br_step;
	}
	public void setBr_step(int br_step) {
		this.br_step = br_step;
	}
	public int getBr_depth() {
		return br_depth;
	}
	public void setBr_depth(int br_depth) {
		this.br_depth = br_depth;
	}
	public Timestamp getBr_regdate() {
		return br_regdate;
	}
	public void setBr_regdate(Timestamp br_regdate) {
		this.br_regdate = br_regdate;
	}
	
}
