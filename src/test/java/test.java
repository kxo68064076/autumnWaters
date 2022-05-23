import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.Order;
import com.woniu.phoneCity.service.IOrderService;
import com.woniu.phoneCity.service.OrderServiceImpl;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class test {
    ApplicationContext ac ;
    IOrderService orderService;

    @Before  //每次执行测试的时候 优先执行  初始化 ac 对象
    public void init(){
        ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//        userService = (IUserService) ac.getBean("userService");
        orderService = (IOrderService) ac.getBean("IOrderService");
    }

    @Test
    public void test01(){
        PageInfo<Order> order = orderService.findAllOrder(1, 5);
        for (Order order1: order.getList()){
            System.out.println(order1);
        }
    }

}
