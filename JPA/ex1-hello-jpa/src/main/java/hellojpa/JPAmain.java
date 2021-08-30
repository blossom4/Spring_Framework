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
			
			// 모든 member 조회
			List<Member> result = em.createQuery("select m from Member as m", Member.class).getResultList();
			
			for (Member member : result) {
				System.out.println("member.name: " + member.getName());
			}
			
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
		} finally {
			em.close();
		}

		emf.close();
	}

}
