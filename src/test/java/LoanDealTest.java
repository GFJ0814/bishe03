import com.stgj.entity.Loan;
import com.stgj.entity.Student;
import com.stgj.service.LoanService;
import com.stgj.service.impl.LoanServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by gfj43958 on 2018/5/12.
 * time:16:16
 * author:GuoFangjun
 */
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class LoanDealTest {

    @Autowired
    LoanService loanService;

    /**
     * 测试提交贷款申请
     */
    @Test
    public void testAddLoan(){

        Loan loan  = new Loan();
        for(int i =0;i<5;i++){
            loan.setLoan_reason("困难啊");
            loan.setStatus(1);
            loanService.addLoan(loan);
        }
    }

    /**
     * 查询所有贷款记录
     */
    @Test
    public void testFindAllLoan(){
        List<Loan> loans= loanService.findAllLoans();
        for(Loan loan:loans){
            System.out.println(loan);
        }

    }

    /**
     *查询单条记录
     */
    @Test
    public void testFindOneByid(){
//        Loan loan = loanService.findLoanById(2);
//        System.out.println(loan.getLoan_reason());
        //删除
       // loanService.delLoan(2);
        //修改
        Loan loan = new Loan();
        loan.setId(3);
        loan.setLoan_term(9);
        loan.setLoan_amount(2000);
        loan.setLoan_reason("你猜啊");
        loanService.updateLoan(loan);

    }

    @Test
    public void testPage(){
        List<Loan> loans =  loanService.findAllLoans();
        System.out.println("---总共的内容是------------------");
        shuchu(loans);
       int number = loanService.getAllAccount();
        System.out.printf("查到的总数是："+number);
        int page =1;
        int pageSize = 3;
        int pagesart = (page -1)*pageSize;
        int pages = number/3==0?number/3:number/3+1;
        loans=  loanService.findLoanByPage(pagesart);
        System.out.println("当前页面是："+page);
        System.out.println("一共有"+pages);
        shuchu(loans);
        page++;
        pagesart = (page -1)*pageSize;
        System.out.println("下一页的内容是：");

        loans = loanService.findLoanByPage(pagesart);
        shuchu(loans);
    }

    private void shuchu(List<Loan>  loans){
        for (Loan loan:loans) {
            System.out.println(loan.getId()+"\t"+loan.getLoan_amount()+"\t"+loan.getLoan_reason());
        }
    }


}
