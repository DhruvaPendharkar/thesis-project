import javafx.util.Pair;
import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.List;
import java.util.TreeSet;

/**
 * Created by dhruv on 2/12/2018.
 */
class KnowledgeGenerationTest {
    @BeforeAll
    static void TestSetupParser() {
        Sentence.SetupLexicalizedParser();
        Assert.assertNotNull(Sentence.parser);
        Assert.assertNotNull(Sentence.pipeline);
    }

    @BeforeEach
    void InitializeTest(){
        Word.eventId = 1;
    }

    @Test
    void TestNintendoStory() throws IOException {
        String content = "Nintendo said on Thursday that Nintendo would soon terminate Nintendo smartphone_app Miitomo," +
        " which gained attention as the game_makers_initial_foray into the smartphone business, because Miitomo failed " +
        "to attract enough players. A nintendo_spokesman said that, the decision was made to streamline Nintendo " +
        "resources to other smartphone_apps. The number of active users of the game has been declining. Miitomo, which " +
        "Nintendo introduced globally in March 2016, features the company Mii avatar_system and lets users communicate " +
        "by exchanging personal information such as favorite movies. Though the company described Miitomo as a game_app," +
        " analysts and players viewed Miitomo more as a social-networking service and Miitomo failed to gain users from " +
        "larger rivals such as Facebook_Inc. Kyoto-based Nintendo said the free-to-play app_service would end on May 9. " +
        "The app was a failure since Mittomo's early stage and Hideki_Yasuda had been saying that, Nintendo should shut " +
        "down the service as soon as possible, said Hideki_Yasuda, an analyst at Ace_Research_Institute. Hideki_Yasuda " +
        "said that, without a large number of active users, users would use the app daily, this kind of service is not " +
        "attractive. Besides Miitomo, Nintendo has introduced Super_Mario_Run, Fire_Emblem_Heroes and " +
        "Animal_Crossing_Pocket_Camp as game_apps for smartphone users. Super_Mario_Run, Fire_Emblem_Heroes and " +
        "Animal_Crossing_Pocket_Camp have had more success than Miitomo, but the smartphone business has yet to become " +
        "a major revenue_generator for Nintendo. Company executives say that, the executives view smartphone games as a " +
        "way of attracting customers, customers may later try out Nintendo machines such as the Switch.";
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
        Assert.assertEquals(161, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(751, ruleString.size());
    }

    @Test
    void TestABCStory_1() throws IOException {
        String content = "The American Broadcasting Company (ABC), stylized in the network's logo as abc since 1957, is " +
        "an American commercial broadcast television network that is owned by the Disney_ABC_Television_Group, a subsidiary " +
        "of Disney_Media_Networks division of The_Walt_Disney_Company. The ABC network is part of The_Big_Three television " +
        "networks. The network is headquartered on Columbus_Avenue and West_66th_Street in Manhattan, with additional major " +
        "offices and production facilities in New_York_City, Los_Angeles and Burbank in California.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(54, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(410, ruleString.size());
    }

    @Test
    void TestAmazonForestStory_1() throws IOException {
        String content = "The Amazon_rainforest, also known in English as Amazonia or the Amazon_Jungle, is a moist " +
        "broadleafed forest that covers most of the Amazon_basin of South_America. This basin encompasses 7,000,000 " +
        "square_kilometre, of which 5,500,000 square_kilometre are covered by the rainforest. The Amazon_Rainforest " +
        "includes territory belonging to nine nations. The majority of the forest is contained within Brazil with 60 " +
        "percent of the rainforest, followed by Peru with 13 percent, Colombia with 10 percent, and with minor amounts " +
        "in Venezuela, Ecuador, Bolivia, Guyana, Suriname and French_Guiana. States or departments in four nations contain " +
        "the word, Amazonas, in their name. The Amazon represents over half of the planet's remaining rainforests, and " +
        "comprises of the largest and most biodiverse tract of tropical rainforest in the world, with an estimated 390 " +
        "billion individual trees divided into 16,000 species.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(113, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(604, ruleString.size());
    }

    @Test
    void TestApolloStory_1() throws IOException {
        String content = "The Apollo program, also known as Project_Apollo, was the third United_States human spaceflight " +
        "program carried out by the National_Aeronautics_and_Space_Administration (NASA), which accomplished landing the " +
        "first humans on the Moon from 1969 to 1972. First conceived during Dwight_D_Eisenhower's administration as a " +
        "three-man spacecraft to follow the one-man Project_Mercury, which put the first Americans in space, Apollo was " +
        "later dedicated to president John_F_Kennedy's national goal of 'landing a man on the Moon and returning him safely " +
        "to the Earth' by the end of the 1960s, which John_F_Kennedy proposed in an address to Congress in May 25 1961. " +
        "Project_Mercury was followed by the two-man Project_Gemini (1962 – 1966). The first manned flight of Apollo was in 1968.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(93, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(652, ruleString.size());
    }

    @Test
    void TestComplexityStory_1() throws IOException {
        String content = "Computational_complexity_theory is a branch of the theory_of_computation, in theoretical " +
        "computer_science, the branch focuses on classifying computational problems according to the problem's " +
        "inherent difficulty, and relating complexity_classes to each other. A computational problem is understood " +
        "to be a task that is in principle amenable to being solved by a computer, which is equivalent to stating " +
        "that the problem may be solved by mechanical_application of mathematical steps such as an algorithm.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(49, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(268, ruleString.size());
    }

    @Test
    void TestCtenophoraStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestEuropeanUnionLawStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestGenghisKhanStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestGeologyStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestImmuneSystemStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestJacksonvilleStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestKenyaStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestMartin_LutherStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestNikolaTeslaStory_1() throws IOException {
        String content = "Nikola_Tesla (10 July 1856 – 7 January 1943) was a serbian-american " +
        "inventor, electrical engineer, mechanical engineer, physicist, and futurist best known for Nikola_Tesla's " +
        "contributions to the design of the modern alternating_current (AC) electricity supply system.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(38, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(232, ruleString.size());
    }

    @Test
    void TestNormanStory_1() throws IOException {
        String content = "The Normans were the people who, in the 10th and 11th centuries, gave Norman's name " +
        "to Normandy, which is a region in France. Normans descended from the Norse raiders and pirates from " +
        "Denmark_Iceland and Norway, Normans, under Normans's leader, Rollo, agreed to swear fealty to " +
        "King_Charles_III of West_Francia. Normans's descendants, through generations of assimilating and mixing " +
        "with the native Frankish_and_Roman-Gaulish populations, would gradually merge with the Carolingian_based " +
        "cultures of West_Francia. The distinct cultural and ethnic identity of the Normans emerged initially in " +
        "the first half of the 10th century, and the cultural and ethnic identity continued to evolve over the " +
        "succeeding centuries.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(80, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(388, ruleString.size());
    }

    @Test
    void TestOxygenStory_1() throws IOException {
        String content = "Oxygen is a chemical element with symbol_O and atomic_number 8. Oxygen is a member of the chalcogen_group on the " +
        "periodic_table and is a highly reactive nonmetal, and oxidizing agent that readily forms compounds, like oxides, with most elements. " +
        "By mass, oxygen is the third-most abundant element in the universe, after hydrogen and helium. At standard temperature and pressure, " +
        "two atoms of oxygen bind to form dioxygen, a colorless and odorless diatomic gas with the formula_O2. Diatomic oxygen_gas constitutes " +
        "20.8 percent of the Earth's atmosphere. Monitoring of atmospheric oxygen_levels show a global downward trend, because of the burning " +
        "of fossil-fuel. Oxygen is the most abundant element by mass in the Earth's crust as part of oxide_compounds, such as silicon_dioxide, " +
        "making up almost half of the crust's mass.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(95, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(579, ruleString.size());
    }

    @Test
    void TestRhineStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestSouthern_CaliforniaStory_1() throws IOException {
        String content = "";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    void TestSteamEngineStory_1() throws IOException {
        String content = "Steam_engines are external combustion_engines, where the working fluid is separate from the combustion products. " +
        "Non-combustion heat sources such as solar power, nuclear power or geothermal energy may be used. The ideal thermodynamic cycle " +
        "used to analyze this process is called the Rankine cycle. In the Rankine cycle, water is heated and transforms into steam within a boiler " +
        "operating at a high pressure. When expanded through pistons or turbines, mechanical work is done. The reduced-pressure steam is " +
        "then condensed and pumped back into the boiler.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(73, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(500, ruleString.size());
    }

    @Test
    void TestSuperBowlStory_1() throws IOException {
        String content = "Super_Bowl_50 was an american_football game. Super_Bowl_50 was to determine the champion of " +
        "the National Football League (NFL) for the 2015 season. The American_Football_Conference's (AFC) champion team, " +
        "Denver_Broncos, defeated the National_Football_Conference's (NFC) champion team, Carolina_Panthers, by 24_10 to " +
        "earn AFC third Super_Bowl title. As Super_Bowl_50 was the 50th Super_Bowl, the league emphasized the " +
        "'golden anniversary' with various gold_themed initiatives, as well as temporarily suspending the tradition of " +
        "naming each Super_Bowl with roman_numerals, under the tradition the game would have been known as Super_Bowl_L," +
        " so that the logo could prominently feature the Arabic_numerals_50. The game was played on February 7 2016, " +
        "at Levis_Stadium, in the San_Francisco_Bay_Area, at Santa_Clara in California.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(78, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(272, ruleString.size());
    }

    @Test
    void TestWarsawStory_1() throws IOException {
        String content = "One_of_the_most_famous people born in Warsaw was Maria_Sklodowska_Curie, Maria_Curie " +
        "achieved international recognition for Maria_Curie's research on radioactivity and was the first " +
        "female recipient of the Nobel Prize. The famous musicians include Wladyslaw_Szpilman and Frederic_Chopin. " +
        "Though Chopin was born in the village of Zelazowa_Wola about 60_km from Warsaw, Chopin moved to the city " +
        "with Chopin's family, when Chopin was seven_months_old. Casimir_Pulaski, a polish general and hero of the " +
        "American Revolutionary War, was born in Warsaw in 1745.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(56, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(365, ruleString.size());
    }

    private void PrintRules(TreeSet<String> ruleString) {
        for(String rule : ruleString){
            System.out.println(String.format("%s.",rule));
        }
    }
}