import org.junit.Assert;
import org.junit.jupiter.api.Test;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by dhruv on 2/11/2018.
 */
class StorageManagerTest {
    @Test
    void TestReadFileContent() throws IOException {
        String filename = "foobar";
        String extension = ".lp";

        File tempFile = File.createTempFile(filename, extension);
        tempFile.deleteOnExit();
        String content = "The decision was made to streamline nintendos resources to other smartphone_apps, " +
                "a nintendo_spokesman said. The number of active users of the game has been declining.";
        String filePath = tempFile.getAbsolutePath();
        FileOutputStream fileOutputStream = new FileOutputStream(filePath);
        DataOutputStream outStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
        outStream.writeBytes(content);
        outStream.close();

        StorageManager manager = new StorageManager("", "", filePath);
        String fileContent = manager.ReadFileContent();
        Assert.assertEquals(content, fileContent);
    }

    @Test
    void TestWriteConceptToFile() throws IOException {
        String filename = "foobar";
        String extension = ".lp";
        File tempFile = File.createTempFile(filename, extension);
        tempFile.deleteOnExit();
        String basePath = tempFile.getParent();
        String ontologyPath = String.format("%s\\ontology", tempFile.getParent());
        StorageManager manager = new StorageManager("", basePath, ontologyPath + "\\lion.lp");
        String aspCode = "predicate(term1, term2).";
        List<String> headers = new ArrayList<>();
        headers.add("lion");
        manager.WriteConceptToFile(aspCode, "lion", headers, true);
        String content = manager.ReadFileContent();
        File ontologyDir = new File(ontologyPath);
        ontologyDir.delete();
        String expectedCode = "#include('lion.lp').  predicate(term1, term2).";
        Assert.assertEquals(expectedCode, content);
    }

    @Test
    void TestWriteStoryToFile() throws IOException {
        String filename = "foobar";
        String extension = ".lp";
        File tempFile = File.createTempFile(filename, extension);
        tempFile.deleteOnExit();

        StorageManager manager = new StorageManager(tempFile.getAbsolutePath(), "", tempFile.getAbsolutePath());
        String aspCode = "predicate(term1, term2).";
        List<String> headers = new ArrayList<>();
        headers.add("lion");
        manager.WriteStoryToFile(aspCode, headers, true);
        String content = manager.ReadFileContent();
        String expectedCode = "#include('lion.lp').  predicate(term1, term2).";
        Assert.assertEquals(expectedCode, content);
    }
}