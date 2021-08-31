package hellojpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class JpaMain {

	public static void main(String[] args) {
		EntityManagerFactory emf =  Persistence.createEntityManagerFactory("ex2-hello-jpa");
		EntityManager em = emf.createEntityManager();
		EntityTransaction tx = em.getTransaction();
		
		tx.begin();
		
		try {
			// 1번팀 생성
			Team team = new Team();
			team.setName("Team1");
			// 2번팀 생성
			Team team2 = new Team();
			team2.setName("Team2");
			
			// DB에 저장
			em.persist(team);
			em.persist(team2);
			
			// 1번멤버 생성
			Member member = new Member();
			member.setUsername("member1");
			// 1번팀에 등록
			member.setTeam(team);
			
			em.persist(member);
			
//			// 1번멤버의 아이디로 1번멤버가 소속된 팀정보를 찾는다.
//			Member findMember = em.find(Member.class, member.getId());
//			Team findTeam = findMember.getTeam();
//			
//			System.out.println("findTeam: " + findTeam.getName());
//			
//			// 1번멤버가 소속된 팀을 2번팀으로 바꾼다.
//			Team newTeam = em.find(Team.class, 2L);
//			findMember.setTeam(newTeam);
			
			em.flush();
			em.clear();
			
			Member findMember = em.find(Member.class, member.getId());
			List<Member> members = findMember.getTeam().getMembers();
			
			for (Member m : members) {
				System.out.println("m: " + m.getUsername());
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
