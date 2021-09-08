package jpabook.jpashop.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

// 서로 다른 계층의 package에 있을 때는 이런식으로 import하여 연결할 수 있다.
import jpabook.jpashop.domain.item.Item;

@Entity
public class Category {
	
	@Id @GeneratedValue
	@Column(name = "category_id")
	private Long id;
	
	private String name;
	
	// category_item table을 만들어서 1 대 N, N 대 1로 만드는 것이 가장 좋다.
	// M 대 N은 실제로 사용하지 않는다.
	@ManyToMany
	@JoinTable(name = "category_item",
		joinColumns = @JoinColumn(name = "category_id"),
		inverseJoinColumns = @JoinColumn(name = "item_id"))
	private List<Item> items = new ArrayList<>();
	
	// 다른 Entity가 아니라 내부에서도 연결할 수 있다.
	@ManyToOne
	@JoinColumn(name = "parent_id")
	private Category parent;
	
	@OneToMany(mappedBy = "parent")
	private List<Category> child = new ArrayList<>();

}
