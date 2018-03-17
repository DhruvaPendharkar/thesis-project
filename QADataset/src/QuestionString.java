import java.io.BufferedReader;
import java.io.FileReader;

/**
 * Created by dhruv on 3/7/2018.
 */
public class QuestionString {

    public static void main(String[] args){
        String questionsFilePath = "C:\\Users\\dhruv\\Desktop\\Research\\thesis-material\\Notes\\InputQuestion.txt";
        String content = ReadFileContent(questionsFilePath);
        String[] questions = content.split("\n");
        GenerateTestForQuestion(questions);
    }

    private static void GenerateTestForQuestion(String[] questions) {
        String testFormat = "@Test\n" +
                "    // \n" +
                "    void TestSentence() {\n" +
                "        String content = \"%s\";\n" +
                "        Question question = new Question(content);\n" +
                "        System.out.println(Sentence.DependenciesToString(question));\n" +
                "        List<Rule> rules = question.GenerateAllRules();\n" +
                "        LiteralType type = LiteralType.FACT;\n" +
                "        System.out.println(\"/*----------------  \" + type.toString() + \"  ------------------*/\");\n" +
                "        for(Rule rule : rules){\n" +
                "            if(type != rule.maxRuleQuality) {\n" +
                "                type = rule.maxRuleQuality;\n" +
                "                System.out.println(\"/*----------------  \" + type.toString() + \"  ------------------*/\");\n" +
                "            }\n" +
                "            System.out.println(String.format(\"Assert.assertTrue(ruleString.contains(\\\"%s\\\"));\", rule.toString()));\n" +
                "        }\n" +
                "\n" +
                "        System.out.print(\"\\n\\n\");\n" +
                "        List<String> ruleString = new ArrayList<>();\n" +
                "        for(Rule rule : rules){\n" +
                "            System.out.println(String.format(\"%s.\", rule.toString()));\n" +
                "            ruleString.add(rule.toString());\n" +
                "        }\n" +
                "\n" +
                "        Assert.assertEquals(0, ruleString.size());\n" +
                "    }";

        for(String question : questions){
            String testString = String.format(testFormat, question, question, question);
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
