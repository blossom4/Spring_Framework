package hellojpa;

import javax.persistence.*;

@Entity
public class Team {

	@Id @GeneratedValue
	@Column(name = "team_id")
	private Long id;
	private String name;
	
	// Getter and Setter
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
	
	
}
