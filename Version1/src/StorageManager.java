import java.io.*;
import java.util.ArrayList;

/**
 * Created by dhruv on 11/8/2017.
 */
public class StorageManager {
    public static final String ONTOLOGY_FOLDER = "ontology";
    private String ontologyBasePath;
    private String outputFilePath;
    private String storyFilePath;

    public StorageManager(String outputFilePath, String ontologyBasePath, String storyFilePath){
        this.outputFilePath = outputFilePath;
        this.ontologyBasePath = ontologyBasePath + "\\" + ONTOLOGY_FOLDER;
        this.storyFilePath = storyFilePath;

        File ontologyBase = new File(this.ontologyBasePath);
        if(!ontologyBase.exists()){
            ontologyBase.mkdir();
        }
    }

    public String readFileContent() {
        String line;
        StringBuilder builder = new StringBuilder();
        try {
            FileReader fileReader = new FileReader(storyFilePath);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while((line = bufferedReader.readLine()) != null) {
                builder.append(line);
            }

            bufferedReader.close();
        }
        catch(Exception ex) {
            System.out.println("Exception occured " + ex.getMessage());
        }
        return builder.toString();
    }

    public void writeConceptToFile(String aspCode, String concept, ArrayList<String> headers, boolean shouldWriteToFile) throws IOException {
        String conceptBasePath = String.format("%s\\%s.lp", ontologyBasePath, concept);
        WriteASPCode(conceptBasePath, aspCode, headers, shouldWriteToFile);
    }

    public void writeStoryToFile(String aspCode, ArrayList<String> headers, boolean shouldWriteToFile) throws IOException {
        WriteASPCode(outputFilePath, aspCode, headers, shouldWriteToFile);
    }

    public static void WriteASPCode(String outputFilePath, String aspCode, ArrayList<String> headerFiles, boolean shouldWriteToFile) throws IOException {
        if(!shouldWriteToFile){
            System.out.print(aspCode);
            return;
        }

        StringBuilder builder = new StringBuilder();
        if(headerFiles != null) {
            for (String headerFile : headerFiles) {
                String headerFilesCode = String.format("#include('%s.lp').\n", headerFile.toLowerCase());
                builder.append(headerFilesCode);
            }
        }

        String headers = builder.toString();
        String code = String.format("%s \n %s", headers, aspCode);
        if(headers.equals("")){
            code = String.format("%s", aspCode);
        }

        FileWriter fileWriter = new FileWriter(outputFilePath);
        BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
        bufferedWriter.write(code);
        bufferedWriter.close();
    }
}
