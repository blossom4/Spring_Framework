package jpabook.jpashop.domain;

import javax.persistence.*;

@Entity
public class OrderItem {

	@Id @GeneratedValue
	@Column(name = "order_item_id")
	private Long id;
//	@Column(name = "order_id")
//	private Long orderId;
	@ManyToOne
	@JoinColumn(name = "order_id")
	private Order order;
//	@Column(name = "item_id")
//	private Long itemId;
	@ManyToOne
	@JoinColumn(name = "item_id")
	private Item item;
	
	private int orderPrice;
	private int count;
	
	// Getter and Setter
	public Long getId() {
		return id;
	}
	public Order getOrder() {
		return order;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}