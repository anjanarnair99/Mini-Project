
import java.util.ArrayList;
import java.util.List;

public class NDBGeneration {
    String ndb="", temp="";
    public String NdbGenerate(String bineryData){
        List<String> temp2 = new ArrayList<>();
        temp2=getParts(bineryData, 2);
        
        for (String s : temp2)
        {
            ndb += s;
        }
        /*getParts(bineryData, 2).stream().map((part) -> {
            System.out.println(part);
            System.out.println(temp);
            return part;
        }).map((part) -> {
            if("00".equals(part)){
                ndb=ndb+"0";
                temp="0";
               
            }
            return part;
        }).map((part) -> {
            if("01".equals(part)){
                ndb=ndb+"1";
                temp="1";
            }
            return part;
        }).map((part) -> {
            if("10".equals(part)){
                ndb=ndb+"*";
                temp="*";
            }
            return part;
        }).forEachOrdered((part) -> {
            if("11".equals(part)){
                ndb=ndb+"*";
                temp="*";
            }
            else{
                ndb=ndb+part;
                temp=part;
            }
        });*/
        return ndb;
    }
    
    private static List<String> getParts(String string, int partitionSize) {
        List<String> parts = new ArrayList<>();
        List<String> temp = new ArrayList<>();
        int len = string.length();
        for (int i=0; i<len; i+=partitionSize)
        {
            parts.add(string.substring(i, Math.min(len, i + partitionSize)));
        }
        
        for(int j=0;j<parts.size();j++){
            
           if("00".equals(parts.get(j))){  temp.add("0"); }
           else if("01".equals(parts.get(j))){ temp.add("1"); }
           else if("10".equals(parts.get(j))){ temp.add("*"); }
           else if("11".equals(parts.get(j))){ temp.add("*"); }
           else{ temp.add(parts.get(j)); } 
        }
        return temp;
    }
   
}
