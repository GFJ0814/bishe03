import org.junit.Test;

/**
 * Created by gfj43958 on 2018/5/27.
 * time:18:42
 * author:GuoFangjun
 */
public class ZhuaquTest {

    @Test
    public void testString() {
        String a = "hello";
        String b = new String("hello");
        System.out.println(a==b);
        String s0 = "ab";
        final String s1 = "b";
        String s2 = "a" + s1;
        System.out.println("===========test9============");
        System.out.println((s0 == s2)); //result = true

    }
}
