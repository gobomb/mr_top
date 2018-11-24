import org.apache.hadoop.util.ToolRunner;

public class Top {
    public static void main(String[] args) throws Exception {
        String ocurrenceOut = "/kaola/order/intermediate";
        String[] counterArgs = {args[0], ocurrenceOut};
        int exitCode = ToolRunner.run(new kaola.TopCounter(), counterArgs);
        if (exitCode != 0) {
            System.exit(exitCode);
        }

        String[] sortArgs = {ocurrenceOut, args[1]};
        exitCode = ToolRunner.run(new kaola.TopSort(), sortArgs);
        System.exit(exitCode);
    }
}
