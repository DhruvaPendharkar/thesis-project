import java.io.BufferedReader;
import java.io.FileReader;

/**
 * Created by dhruv on 3/7/2018.
 */
public class QuestionString {

    public static void main(String[] args){
        String questionsFilePath = "C:\\Users\\dhruv\\Desktop\\Research\\thesis-material\\Notes\\Questions.txt";
        String content = ReadFileContent(questionsFilePath);
        String[] questions = content.split("\n");
        GenerateTestForQuestion(questions);
    }

    private static void GenerateTestForQuestion(String[] questions) {
        String testFormat = "@Test\n" +
                "    // \n" +
                "    void TestSentence() {\n" +
                "        String content = \"%s\";\n" +
                "        Sentence sentence = Sentence.ParseSentence(content);\n" +
                "        System.out.println(Sentence.DependenciesToString(sentence));\n" +
                "        List<Rule> rules = sentence.GenerateRules();\n" +
                "        HashSet<String> ruleString = new HashSet<>();\n" +
                "        TreeSet<Rule> rulesSet = new TreeSet<>(rules);\n" +
                "        for(Rule rule : rulesSet){\n" +
                "            ruleString.add(rule.toString());\n" +
                "            System.out.println(rule.toString());\n" +
                "        }\n" +
                "\n" +
                "        Assert.assertEquals(0, ruleString.size());\n" +
                "    }";

        for(String question : questions){
            String testString = String.format(testFormat, question);
            System.out.println(testString);
        }
    }

    public static String ReadFileContent(String filePath) {
        String line;
        StringBuilder builder = new StringBuilder();
        try {
            FileReader fileReader = new FileReader(filePath);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while((line = bufferedReader.readLine()) != null) {
                if(line.equals("") || line.startsWith("-")) continue;
                builder.append(line + "\n");
            }

            bufferedReader.close();
        }
        catch(Exception ex) {
            System.out.println("Exception occured " + ex.getMessage());
        }
        return builder.toString();
    }
}
