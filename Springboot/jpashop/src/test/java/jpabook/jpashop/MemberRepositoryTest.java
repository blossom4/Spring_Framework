/**
 * 
 */
package jpabook.jpashop;

import static org.junit.Assert.*;
import org.junit.jupiter.api.Test;

/**
 * @author blossom
 *
 */
import org.assertj.core.api.Assertions;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MemberRepositoryTest {

	@Autowired MemberRepository memberRepository;
	
	@Test
	@Transactional
	@Rollback(false)
//	// Test를 하고 DB를 원래상태로 되돌리는데 Rollback(false)이면 변경된 상태로 유지한다.
//	@Rollback(false)
	public void testMember() throws Exception {
		
		// given
		Member member = new Member();
		member.setUsername("Pepe");
		
		// when
		Long savedId = memberRepository.save(member);
		Member findMember = memberRepository.find(savedId);
		
		// then
		Assertions.assertThat(findMember.getId()).isEqualTo(member.getId());
		Assertions.assertThat(findMember.getUsername()).isEqualTo(member.getUsername());
	}

}