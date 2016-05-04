package testSpring;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lcf.shop.adminuser.dao.AdminUserDao;
import com.lcf.shop.user.service.UserService;

public class TestSpring {
	static ClassPathXmlApplicationContext context=null;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		System.out.println("ddd");
		context = new  ClassPathXmlApplicationContext("applictionContext.xml");
		System.out.println("ddd");
	}

	@Test
	public void test() {
		System.out.println("ddd");
UserService aud=	 (UserService) context.getBean("UserService");
	System.out.println(aud);
	System.out.println("ddd");
	}

}
