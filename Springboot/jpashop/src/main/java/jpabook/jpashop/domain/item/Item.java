package jpabook.jpashop.domain.item;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToMany;

import jpabook.jpashop.domain.Category;
import lombok.Getter;
import lombok.Setter;

@Entity
// table을 하나에 모든 속성을 넣을 것인지 나눌것인지 선택한다.
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
// 여러 column들 중 어떤 것이 어떤 table에 연결되는 지를 구분한다.
@DiscriminatorColumn(name = "dtype")
@Getter @Setter
public abstract class Item {
	
	@Id @GeneratedValue
	@Column(name =  "item_id")
	private Long id;	
	
	private String name;
	
	private int price;
	
	private int stockQuantity;
	
	@ManyToMany(mappedBy = "items")
	private List<Category> categories = new ArrayList<>();
}
