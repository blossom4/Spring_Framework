package hellojpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class JPAmain {

	public static void main(String[] args) {
		EntityManagerFactory emf =  Persistence.createEntityManagerFactory("hello");
		EntityManager em = emf.createEntityManager();
		EntityTransaction tx = em.getTransaction();
		
		tx.begin();
		
		try {
//			// insert
//			Member member = new Member();
//			member.setId(1L);
//			member.setName("HelloA");
//			member.setId(2L);
//			member.setName("HelloB");
//			
//			em.persist(member);
			
//			// select
//			Member findMember = em.find(Member.class, 1L);
//			System.out.println("findMember.id: " + findMember.getId());
//			System.out.println("findMember.name: " + findMember.getName());
			
//			// delete
//			Member findMember = em.find(Member.class, 1L);
//			em.remove(findMember);
			
//			// update
//			Member findMember = em.find(Member.class, 2L);
//			findMember.setName("Hello2");
			
//			// 모든 member 조회
//			List<Member> result = em.createQuery("select m from Member as m", Member.class).getResultList();
//			
//			for (Member member : result) {
//				System.out.println("member.name: " + member.getName());
//			}
			
//			// 비영속 (persist를 하기 전)
//			Member member = new Member();
//			member.setId(4L);
//			member.setName("Hello4");
//			
//			// 영속 (아직 DB에 저장되지 않은 상태)
//			System.out.println("BEFORE");
//			em.persist(member);
//			System.out.println("AFTER");
//			
//			// 이렇게 조회하면 select query가 실행되지 않는다.
//			// 위에 em.persist로 1차캐시에 저장을 해주었기 때문에 1차캐시에서 바로 data를 가져온다.
//			Member findMember = em.find(Member.class, 4L);
//			System.out.println("findMember.id: " + findMember.getId());
//			System.out.println("findMember.name: " + findMember.getName());
			
//			// 2L을 처음 조회 할 때는 1차캐시에 data가 없어서 DB에서 가져오기 때문에 select query를 보내고,
//			// 두 번째 조회 할 때는 1차캐시에서 가져오기 때문에 select query를 보내지 않는다.
//			Member findMember1 = em.find(Member.class, 2L);
//			Member findMember2 = em.find(Member.class, 2L);
//			
//			// persist Entity는 동일성을 보장해준다.
//			System.out.println("findMember1 == finMember2: " + (findMember1 == findMember2));
			
//			// Persist Entity를 모아서 한 번에 보낼 수 있다.
//			Member member1 = new Member(5L, "name5");
//			Member member2 = new Member(6L, "name6");
//			
//			em.persist(member1);
//			em.persist(member2);
			
//			// Entity에서 값을 바꾸면 JPA에서 직접 query를 보내지 않아도,
//			// transaction이 commit 되는 시점에 자동으로 수정이 된다.
//			Member findMember = em.find(Member.class, 5L);
//			findMember.setName("setChanged");
			
//			Member member = new Member(7L, "7th");
//			em.persist(member);
//			// 1차캐쉬나 쓰기지연SQL에 쌓여있는 변경내용을 DB에 동기화 한다.
//			em.flush();
			
//			Member findMember = em.find(Member.class, 7L);
//			findMember.setName("7777");
//			
//			// 방법 1
//			// 특정 Entity만 준영속 상태로 변경한다.
//			// 기존 Persist Entity의 속성이 적용되지 않는다.
//			em.detach(findMember);
//			// 방법 2
//			// 1차캐시를 전부 삭제한다. 영속성 Entity 초기화
//			em.clear();
//			// 방법 3
//			// Entity를 닫아버리면 더이상 변화가 일어나지 않는다.
//			em.close();
			
//			Member member = new Member();
//			member.setId(1L);
//			member.setName("A1");
//			member.setRoleType(RoleType.USER);
//			
//			em.persist(member);
			
			Member member = new Member();
			member.setName("Myname");
			
			em.persist(member);
			
			// commit을 해야 DB에 query를 보내준다. 
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
		} finally {
			em.close();
		}

		emf.close();
	}

}
