import javafx.util.Pair;
import org.junit.Assert;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by dhruv on 2/12/2018.
 */
class KnowledgeGenerationTest {
    @Test
    void TestNintendoStory() throws IOException {
        String content = "Nintendo said on Thursday that Nintendo would soon terminate Nintendo smartphone_app Miitomo, " +
                "which gained attention as the game_makers_initial_foray into the smartphone business, because Miitomo failed " +
                "to attract enough players. A nintendo_spokesman said that, the decision was made to streamline Nintendo resources " +
                "to other smartphone_apps. The number of active users of the game has been declining. Miitomo, which Nintendo " +
                "introduced globally in March 2016, features the company Mii avatar_system and lets users communicate by exchanging " +
                "personal information such as favorite movies. Though the company described Miitomo as a game_app, analysts and " +
                "players viewed Miitomo more as a social-networking service and Miitomo failed to gain users from larger rivals " +
                "such as Facebook_Inc. Kyoto-based Nintendo said the free-to-play app_service would end on May 9. The app was a " +
                "failure since its early stage and Hideki_Yasuda had been saying that, Nintendo should shut down the service " +
                "as soon as possible, said Hideki_Yasuda, an analyst at Ace_Research_Institute. Hideki_Yasuda said that, without " +
                "a large number of active users, who would use the app daily, this kind of service is not attractive. Besides Miitomo, " +
                "Nintendo has introduced Super_Mario_Run, Fire_Emblem_Heroes and Animal_Crossing_Pocket_Camp as game_apps for smartphone users. " +
                "Super_Mario_Run, Fire_Emblem_Heroes and Animal_Crossing_Pocket_Camp have had more success than Miitomo, but the smartphone " +
                "business has yet to become a major revenue_generator for Nintendo. Company executives say that, the executives view " +
                "smartphone games as a way of attracting customers, who may later try out Nintendo machines such as the Switch.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Story%%");
        System.out.println("%%-------------------------------------------------------%%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(709, ruleString.size());
    }

    private void PrintRules(TreeSet<String> ruleString) {
        for(String rule : ruleString){
            System.out.println(String.format("%s.",rule));
        }
    }

}