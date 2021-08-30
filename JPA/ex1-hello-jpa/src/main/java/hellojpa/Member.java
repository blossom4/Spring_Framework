package hellojpa;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

// JPA가 관리하는 모든 객체는 @Entity를 붙여주어야 한다.
@Entity
// 테이블명을 바꿔줄 수 있다.
// @Table(name = "MBR")
public class Member {
	
	@Id
	private Long id;
	
	// DDL 생성기능
	@Column (name = "UserName", unique = true, length = 10)
	private String name;
	
	private int age;
	
	@Enumerated (EnumType.STRING)
	private RoleType roleType;
	
	// 과거버전
	@Temporal (TemporalType.TIMESTAMP)
	private Date createDate;
	@Temporal (TemporalType.TIMESTAMP)
	private Date lastModifiedDate;
	
	// 최신버전
	private LocalDate testLocalDate;
	private LocalDateTime testLocalDateTime;
	
	// varchar 범위를 넘어서는 큰 정보를 제한없이 넣을 때 사용한다.
	// clob: 매핑하는 field data가 String일 때
	// blob: 나머지 경우
	@Lob
	private String description;
	
	// DB와 관계없이 임시적으로 자유롭게 활용할 데잍
	@Transient
	private int temp;
	
	// class를 생성했다면 기본 생성자가 하나는 필요하다.
	public Member() {
		
	}
	
	public Member(Long id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public RoleType getRoleType() {
		return roleType;
	}
	public void setRoleType(RoleType roleType) {
		this.roleType = roleType;
	}
}
