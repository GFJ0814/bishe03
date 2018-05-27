import com.stgj.entity.News;
import com.stgj.service.NewsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by gfj43958 on 2018/5/20.
 * time:19:21
 * author:GuoFangjun
 */
@ContextConfiguration(locations ={"classpath:spring-mybatis.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class NewsServiceTest {

    @Autowired
    NewsService newsService;

    @Test
    public void testNews(){
        List<News> newsList = newsService.findAllNewsByPage(1);
        for(News news:newsList){
            System.out.println(news);
        }
    }
}
