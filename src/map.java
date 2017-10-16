import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * 午分享
 */
public class map {

    public static void main(String[] args) {

        Map<Integer,String> map = new HashMap<>();
        map.put(1,"a");
        map.put(2,"b");
        map.put(3,"c");
        map.put(4,"d");

        System.out.println(map.size());

        System.out.println("1111111111111111111");
        for (Integer in : map.keySet()) {
            System.out.println(in+":"+map.get(in));
        }
        System.out.println("2222222222222222222");
        Iterator<Map.Entry<Integer,String>> it = map.entrySet().iterator();

        while (it.hasNext()){
            Map.Entry<Integer,String> entry = it.next();
            System.out.println(entry.getKey()+":"+entry.getValue());

        }
        System.out.println("3333333333333333333");
        for (String s : map.values()
             ) {
            System.out.println(s);

        }



    }



}
