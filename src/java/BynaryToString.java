import java.util.Arrays;
import java.util.stream.Collectors;

public class BynaryToString {
    
    public static String binaryToText(String binary) {
    return Arrays.stream(binary.split("(?<=\\G.{8})"))/* regex to split the bits array by 8*/
                 .parallel()
                 .map(eightBits -> (char)Integer.parseInt(eightBits, 2))
                 .collect(
                                 StringBuilder::new,
                                 StringBuilder::append,
                                 StringBuilder::append
                 ).toString();
}
}
