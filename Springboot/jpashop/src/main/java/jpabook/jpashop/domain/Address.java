package jpabook.jpashop.domain;

import javax.persistence.Embeddable;

import lombok.Getter;
import lombok.Setter;

// 내장타입이라는 뜻이다.
@Embeddable
@Getter @Setter
public class Address {

	private String city;
	
	private String street;
	
	private String zipcode;
}
