package iblog.core;

import java.util.Arrays;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alittlebao.iblog.core.domain.SysTest;
import com.alittlebao.iblog.core.service.SysTestService;

public class SysTestTest {

	private ApplicationContext context;
	private SysTestService sysTestService;

	@Before
	public void init() {
		context = new ClassPathXmlApplicationContext("classpath:application_context.xml");
		sysTestService = (SysTestService) context.getBean("sysTestService");
	}

	@Test
	public void testFindById() {
		SysTest sysTest = sysTestService.findById(2);
		System.out.println(sysTest);
	}

	@Test
	public void testFindByIds() {
		List<SysTest> sysTests = sysTestService.findByIds(Arrays.asList(2, 3));
		for (SysTest sysTest : sysTests) {
			System.out.println(sysTest);
		}
	}
}
