package iblog.core;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alittlebao.iblog.core.domain.SysTest;
import com.alittlebao.iblog.core.service.SysTestService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:application_context.xml")
public class SysTestTest {

	@Resource
	private SysTestService sysTestService;

	// private ApplicationContext context;
	// @Before
	// public void init() {
	// context = new
	// ClassPathXmlApplicationContext("classpath:application_context.xml");
	// sysTestService = (SysTestService) context.getBean("sysTestService");
	// }

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
