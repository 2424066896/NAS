package cn.nas.tools;

import org.springframework.stereotype.Component;
import javax.jws.soap.SOAPBinding;
import java.text.SimpleDateFormat;
import java.util.Date;
@Component
//组件，组成的
public class Test {
    public static final String PREFIX = "NAS";
    private static long code;
    public  synchronized String nextCode() {
        code++;
        String str = new SimpleDateFormat("yyyyMMhhmmss").format(new Date());
        long m = Long.parseLong((str));
        m += code;
        return PREFIX + m;
    }


    public static void main(String[] args) {
        System.out.println(new Test().nextCode());
    }
}