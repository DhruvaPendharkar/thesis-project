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
        String testFormat = "";

        for(String question : questions){
            String testString = String.format(testFormat, question);
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
