
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Employee;

public class SpringUtil 
{
	public static void main(String arg[])
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		
		Employee employee=(Employee)context.getBean("emp");
		employee.display();
	}
}












