import org.apache.hadoop.util.ToolRunner;

public class Top {
    public static void main(String[] args) throws Exception {
        int exitCode = ToolRunner.run(new kaola.TopCounter(), args);
        System.exit(exitCode);
    }
}
